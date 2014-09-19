package com.flurry.org.apache.avro.file;

import java.nio.*;
import com.flurry.org.apache.avro.*;
import java.io.*;
import com.flurry.org.apache.avro.util.*;
import com.flurry.org.apache.avro.io.*;
import java.util.*;

public class DataFileStream<D> implements Iterator<D>, Iterable<D>, Closeable
{
    private boolean availableBlock;
    private DataBlock block;
    ByteBuffer blockBuffer;
    long blockCount;
    long blockRemaining;
    private long blockSize;
    private Codec codec;
    BinaryDecoder datumIn;
    private Header header;
    private DatumReader<D> reader;
    byte[] syncBuffer;
    BinaryDecoder vin;
    
    protected DataFileStream(final DatumReader<D> reader) throws IOException {
        super();
        this.availableBlock = false;
        this.datumIn = null;
        this.syncBuffer = new byte[16];
        this.block = null;
        this.reader = reader;
    }
    
    public DataFileStream(final InputStream inputStream, final DatumReader<D> reader) throws IOException {
        super();
        this.availableBlock = false;
        this.datumIn = null;
        this.syncBuffer = new byte[16];
        this.block = null;
        this.reader = reader;
        this.initialize(inputStream);
    }
    
    protected void blockFinished() throws IOException {
    }
    
    @Override
    public void close() throws IOException {
        this.vin.inputStream().close();
    }
    
    public long getBlockCount() {
        return this.blockCount;
    }
    
    public Header getHeader() {
        return this.header;
    }
    
    public byte[] getMeta(final String s) {
        return this.header.meta.get(s);
    }
    
    public List<String> getMetaKeys() {
        return this.header.metaKeyList;
    }
    
    public long getMetaLong(final String s) {
        return Long.parseLong(this.getMetaString(s));
    }
    
    public String getMetaString(final String s) {
        final byte[] meta = this.getMeta(s);
        if (meta == null) {
            return null;
        }
        try {
            return new String(meta, "UTF-8");
        }
        catch (UnsupportedEncodingException cause) {
            throw new RuntimeException(cause);
        }
    }
    
    public Schema getSchema() {
        return this.header.schema;
    }
    
    @Override
    public boolean hasNext() {
        try {
            if (this.blockRemaining == 0L) {
                if (this.datumIn != null && !this.datumIn.isEnd()) {
                    throw new IOException("Block read partially, the data may be corrupt");
                }
                if (this.hasNextBlock()) {
                    (this.block = this.nextRawBlock(this.block)).decompressUsing(this.codec);
                    this.blockBuffer = this.block.getAsByteBuffer();
                    this.datumIn = DecoderFactory.get().binaryDecoder(this.blockBuffer.array(), this.blockBuffer.arrayOffset() + this.blockBuffer.position(), this.blockBuffer.remaining(), this.datumIn);
                }
            }
            return this.blockRemaining != 0L;
        }
        catch (IOException ex) {
            throw new AvroRuntimeException(ex);
        }
        catch (EOFException ex2) {
            return false;
        }
    }
    
    boolean hasNextBlock() {
        try {
            if (this.availableBlock) {
                return true;
            }
            if (this.vin.isEnd()) {
                return false;
            }
            this.blockRemaining = this.vin.readLong();
            this.blockSize = this.vin.readLong();
            if (this.blockSize > 2147483647L || this.blockSize < 0L) {
                throw new IOException("Block size invalid or too large for this implementation: " + this.blockSize);
            }
            this.blockCount = this.blockRemaining;
            return this.availableBlock = true;
        }
        catch (IOException ex) {
            throw new AvroRuntimeException(ex);
        }
        catch (EOFException ex2) {
            return false;
        }
    }
    
    void initialize(final InputStream inputStream) throws IOException {
        this.header = new Header();
        this.vin = DecoderFactory.get().binaryDecoder(inputStream, this.vin);
        final byte[] a2 = new byte[DataFileConstants.MAGIC.length];
        try {
            this.vin.readFixed(a2);
            if (!Arrays.equals(DataFileConstants.MAGIC, a2)) {
                throw new IOException("Not a data file.");
            }
        }
        catch (IOException ex) {
            throw new IOException("Not a data file.");
        }
        long n = this.vin.readMapStart();
        if (n > 0L) {
            do {
                for (long n2 = 0L; n2 < n; ++n2) {
                    final String string = this.vin.readString(null).toString();
                    final ByteBuffer bytes = this.vin.readBytes(null);
                    final byte[] dst = new byte[bytes.remaining()];
                    bytes.get(dst);
                    this.header.meta.put(string, dst);
                    this.header.metaKeyList.add(string);
                }
                n = this.vin.mapNext();
            } while (n != 0L);
        }
        this.vin.readFixed(this.header.sync);
        this.header.metaKeyList = (List<String>)Collections.unmodifiableList((List<?>)this.header.metaKeyList);
        this.header.schema = Schema.parse(this.getMetaString("avro.schema"), false);
        this.codec = this.resolveCodec();
        this.reader.setSchema(this.header.schema);
    }
    
    void initialize(final InputStream inputStream, final Header header) throws IOException {
        this.header = header;
        this.codec = this.resolveCodec();
        this.reader.setSchema(header.schema);
    }
    
    @Override
    public Iterator<D> iterator() {
        return this;
    }
    
    @Override
    public D next() {
        try {
            return (D)this.next(null);
        }
        catch (IOException ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public D next(final D n) throws IOException {
        if (!this.hasNext()) {
            throw new NoSuchElementException();
        }
        final D read = this.reader.read(n, this.datumIn);
        final long blockRemaining = this.blockRemaining - 1L;
        this.blockRemaining = blockRemaining;
        if (0L == blockRemaining) {
            this.blockFinished();
        }
        return read;
    }
    
    public ByteBuffer nextBlock() throws IOException {
        if (!this.hasNext()) {
            throw new NoSuchElementException();
        }
        if (this.blockRemaining != this.blockCount) {
            throw new IllegalStateException("Not at block start.");
        }
        this.blockRemaining = 0L;
        this.datumIn = null;
        return this.blockBuffer;
    }
    
    DataBlock nextRawBlock(DataBlock dataBlock) throws IOException {
        if (!this.hasNextBlock()) {
            throw new NoSuchElementException();
        }
        if (dataBlock == null || dataBlock.data.length < (int)this.blockSize) {
            dataBlock = new DataBlock(this.blockRemaining, (int)this.blockSize);
        }
        else {
            dataBlock.numEntries = this.blockRemaining;
            dataBlock.blockSize = (int)this.blockSize;
        }
        this.vin.readFixed(dataBlock.data, 0, dataBlock.blockSize);
        this.vin.readFixed(this.syncBuffer);
        if (!Arrays.equals(this.syncBuffer, this.header.sync)) {
            throw new IOException("Invalid sync!");
        }
        this.availableBlock = false;
        return dataBlock;
    }
    
    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }
    
    Codec resolveCodec() {
        final String metaString = this.getMetaString("avro.codec");
        if (metaString != null) {
            return CodecFactory.fromString(metaString).createInstance();
        }
        return CodecFactory.nullCodec().createInstance();
    }
    
    static class DataBlock
    {
        private int blockSize;
        private byte[] data;
        private long numEntries;
        private int offset;
        
        private DataBlock(final long numEntries, final int blockSize) {
            super();
            this.offset = 0;
            this.data = new byte[blockSize];
            this.numEntries = numEntries;
            this.blockSize = blockSize;
        }
        
        DataBlock(final ByteBuffer byteBuffer, final long numEntries) {
            super();
            this.offset = 0;
            this.data = byteBuffer.array();
            this.blockSize = byteBuffer.remaining();
            this.offset = byteBuffer.arrayOffset() + byteBuffer.position();
            this.numEntries = numEntries;
        }
        
        void compressUsing(final Codec codec) throws IOException {
            final ByteBuffer compress = codec.compress(this.getAsByteBuffer());
            this.data = compress.array();
            this.blockSize = compress.remaining();
        }
        
        void decompressUsing(final Codec codec) throws IOException {
            final ByteBuffer decompress = codec.decompress(this.getAsByteBuffer());
            this.data = decompress.array();
            this.blockSize = decompress.remaining();
        }
        
        ByteBuffer getAsByteBuffer() {
            return ByteBuffer.wrap(this.data, this.offset, this.blockSize);
        }
        
        int getBlockSize() {
            return this.blockSize;
        }
        
        byte[] getData() {
            return this.data;
        }
        
        long getNumEntries() {
            return this.numEntries;
        }
        
        void writeBlockTo(final BinaryEncoder binaryEncoder, final byte[] array) throws IOException {
            binaryEncoder.writeLong(this.numEntries);
            binaryEncoder.writeLong(this.blockSize);
            binaryEncoder.writeFixed(this.data, this.offset, this.blockSize);
            binaryEncoder.writeFixed(array);
            binaryEncoder.flush();
        }
    }
    
    public static final class Header
    {
        Map<String, byte[]> meta;
        private transient List<String> metaKeyList;
        Schema schema;
        byte[] sync;
        
        private Header() {
            super();
            this.meta = new HashMap<String, byte[]>();
            this.metaKeyList = new ArrayList<String>();
            this.sync = new byte[16];
        }
    }
}
