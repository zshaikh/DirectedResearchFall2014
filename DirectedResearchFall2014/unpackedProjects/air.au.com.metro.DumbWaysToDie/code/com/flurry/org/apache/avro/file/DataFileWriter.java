package com.flurry.org.apache.avro.file;

import com.flurry.org.apache.avro.*;
import java.rmi.server.*;
import java.security.*;
import java.nio.*;
import com.flurry.org.apache.avro.generic.*;
import com.flurry.org.apache.avro.io.*;
import java.util.*;
import java.io.*;

public class DataFileWriter<D> implements Closeable, Flushable
{
    private long blockCount;
    private BinaryEncoder bufOut;
    private NonCopyingByteArrayOutputStream buffer;
    private Codec codec;
    private DatumWriter<D> dout;
    private boolean isOpen;
    private final Map<String, byte[]> meta;
    private BufferedFileOutputStream out;
    private Schema schema;
    private byte[] sync;
    private int syncInterval;
    private BinaryEncoder vout;
    
    public DataFileWriter(final DatumWriter<D> dout) {
        super();
        this.meta = new HashMap<String, byte[]>();
        this.syncInterval = 16000;
        this.dout = dout;
    }
    
    private void assertNotOpen() {
        if (this.isOpen) {
            throw new AvroRuntimeException("already open");
        }
    }
    
    private void assertOpen() {
        if (!this.isOpen) {
            throw new AvroRuntimeException("not open");
        }
    }
    
    private int bufferInUse() {
        return this.buffer.size() + this.bufOut.bytesBuffered();
    }
    
    private static byte[] generateSync() {
        try {
            final MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update((new UID() + "@" + System.currentTimeMillis()).getBytes());
            return instance.digest();
        }
        catch (NoSuchAlgorithmException cause) {
            throw new RuntimeException(cause);
        }
    }
    
    private void init(final OutputStream outputStream) throws IOException {
        this.out = new BufferedFileOutputStream(outputStream);
        final EncoderFactory encoderFactory = new EncoderFactory();
        this.vout = encoderFactory.binaryEncoder(this.out, null);
        this.dout.setSchema(this.schema);
        this.buffer = new NonCopyingByteArrayOutputStream(Math.min((int)(1.25 * this.syncInterval), 1073741822));
        this.bufOut = encoderFactory.binaryEncoder(this.buffer, null);
        if (this.codec == null) {
            this.codec = CodecFactory.nullCodec().createInstance();
        }
        this.isOpen = true;
    }
    
    public static boolean isReservedMeta(final String s) {
        return s.startsWith("avro.");
    }
    
    private void resetBufferTo(final int len) throws IOException {
        this.bufOut.flush();
        final byte[] byteArray = this.buffer.toByteArray();
        this.buffer.reset();
        this.buffer.write(byteArray, 0, len);
    }
    
    private DataFileWriter<D> setMetaInternal(final String s, final String s2) {
        try {
            return this.setMetaInternal(s, s2.getBytes("UTF-8"));
        }
        catch (UnsupportedEncodingException cause) {
            throw new RuntimeException(cause);
        }
    }
    
    private DataFileWriter<D> setMetaInternal(final String s, final byte[] array) {
        this.assertNotOpen();
        this.meta.put(s, array);
        return this;
    }
    
    private void writeBlock() throws IOException {
        if (this.blockCount > 0L) {
            this.bufOut.flush();
            final DataFileStream.DataBlock dataBlock = new DataFileStream.DataBlock(this.buffer.getByteArrayAsByteBuffer(), this.blockCount);
            dataBlock.compressUsing(this.codec);
            dataBlock.writeBlockTo(this.vout, this.sync);
            this.buffer.reset();
            this.blockCount = 0L;
        }
    }
    
    private void writeIfBlockFull() throws IOException {
        if (this.bufferInUse() >= this.syncInterval) {
            this.writeBlock();
        }
    }
    
    public void append(final D n) throws IOException {
        this.assertOpen();
        final int bufferInUse = this.bufferInUse();
        try {
            this.dout.write(n, this.bufOut);
            ++this.blockCount;
            this.writeIfBlockFull();
        }
        catch (IOException ex) {
            this.resetBufferTo(bufferInUse);
            throw new AppendWriteException(ex);
        }
        catch (RuntimeException ex2) {
            this.resetBufferTo(bufferInUse);
            throw new AppendWriteException(ex2);
        }
    }
    
    public void appendAllFrom(final DataFileStream<D> obj, final boolean b) throws IOException {
        this.assertOpen();
        if (!this.schema.equals(obj.getSchema())) {
            throw new IOException("Schema from file " + obj + " does not match");
        }
        this.writeBlock();
        final Codec resolveCodec = obj.resolveCodec();
        final boolean equals = this.codec.equals(resolveCodec);
        DataFileStream.DataBlock dataBlock = null;
        if (equals) {
            dataBlock = null;
            if (!b) {
                while (obj.hasNextBlock()) {
                    dataBlock = obj.nextRawBlock(dataBlock);
                    dataBlock.writeBlockTo(this.vout, this.sync);
                }
                return;
            }
        }
        while (obj.hasNextBlock()) {
            dataBlock = obj.nextRawBlock(dataBlock);
            dataBlock.decompressUsing(resolveCodec);
            dataBlock.compressUsing(this.codec);
            dataBlock.writeBlockTo(this.vout, this.sync);
        }
    }
    
    public void appendEncoded(final ByteBuffer byteBuffer) throws IOException {
        this.assertOpen();
        final int position = byteBuffer.position();
        this.bufOut.writeFixed(byteBuffer.array(), position, byteBuffer.limit() - position);
        ++this.blockCount;
        this.writeIfBlockFull();
    }
    
    public DataFileWriter<D> appendTo(final File file) throws IOException {
        this.assertNotOpen();
        if (!file.exists()) {
            throw new FileNotFoundException("Not found: " + file);
        }
        final RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        final DataFileReader dataFileReader = new DataFileReader((SeekableInput)new SeekableFileInput(randomAccessFile.getFD()), new GenericDatumReader<Object>());
        this.schema = dataFileReader.getSchema();
        this.sync = dataFileReader.getHeader().sync;
        this.meta.putAll(dataFileReader.getHeader().meta);
        final byte[] bytes = this.meta.get("avro.codec");
        if (bytes != null) {
            this.codec = CodecFactory.fromString(new String(bytes, "UTF-8")).createInstance();
        }
        else {
            this.codec = CodecFactory.nullCodec().createInstance();
        }
        randomAccessFile.close();
        this.init(new FileOutputStream(file, true));
        return this;
    }
    
    @Override
    public void close() throws IOException {
        this.flush();
        this.out.close();
        this.isOpen = false;
    }
    
    public DataFileWriter<D> create(final Schema schema, final File file) throws IOException {
        return this.create(schema, new FileOutputStream(file));
    }
    
    public DataFileWriter<D> create(final Schema schema, final OutputStream outputStream) throws IOException {
        this.assertNotOpen();
        this.schema = schema;
        this.setMetaInternal("avro.schema", schema.toString());
        this.sync = generateSync();
        this.init(outputStream);
        this.vout.writeFixed(DataFileConstants.MAGIC);
        this.vout.writeMapStart();
        this.vout.setItemCount(this.meta.size());
        for (final Map.Entry<String, byte[]> entry : this.meta.entrySet()) {
            this.vout.startItem();
            this.vout.writeString(entry.getKey());
            this.vout.writeBytes(entry.getValue());
        }
        this.vout.writeMapEnd();
        this.vout.writeFixed(this.sync);
        this.vout.flush();
        return this;
    }
    
    @Override
    public void flush() throws IOException {
        this.sync();
        this.vout.flush();
    }
    
    public DataFileWriter<D> setCodec(final CodecFactory codecFactory) {
        this.assertNotOpen();
        this.codec = codecFactory.createInstance();
        this.setMetaInternal("avro.codec", this.codec.getName());
        return this;
    }
    
    public DataFileWriter<D> setMeta(final String s, final long i) {
        return this.setMeta(s, Long.toString(i));
    }
    
    public DataFileWriter<D> setMeta(final String s, final String s2) {
        try {
            return this.setMeta(s, s2.getBytes("UTF-8"));
        }
        catch (UnsupportedEncodingException cause) {
            throw new RuntimeException(cause);
        }
    }
    
    public DataFileWriter<D> setMeta(final String str, final byte[] array) {
        if (isReservedMeta(str)) {
            throw new AvroRuntimeException("Cannot set reserved meta key: " + str);
        }
        return this.setMetaInternal(str, array);
    }
    
    public DataFileWriter<D> setSyncInterval(final int n) {
        if (n < 32 || n > 1073741824) {
            throw new IllegalArgumentException("Invalid syncInterval value: " + n);
        }
        this.syncInterval = n;
        return this;
    }
    
    public long sync() throws IOException {
        this.assertOpen();
        this.writeBlock();
        return this.out.tell();
    }
    
    public static class AppendWriteException extends RuntimeException
    {
        public AppendWriteException(final Exception cause) {
            super(cause);
        }
    }
    
    private class BufferedFileOutputStream extends BufferedOutputStream
    {
        private long position;
        
        public BufferedFileOutputStream(final OutputStream outputStream) throws IOException {
            super(null);
            this.out = new PositionFilter(outputStream);
        }
        
        public long tell() {
            return this.position + this.count;
        }
        
        private class PositionFilter extends FilterOutputStream
        {
            public PositionFilter(final OutputStream out) throws IOException {
                super(out);
            }
            
            @Override
            public void write(final byte[] b, final int off, final int len) throws IOException {
                this.out.write(b, off, len);
                BufferedFileOutputStream.this.position += len;
            }
        }
    }
    
    private static class NonCopyingByteArrayOutputStream extends ByteArrayOutputStream
    {
        NonCopyingByteArrayOutputStream(final int size) {
            super(size);
        }
        
        ByteBuffer getByteArrayAsByteBuffer() {
            return ByteBuffer.wrap(this.buf, 0, this.count);
        }
    }
}
