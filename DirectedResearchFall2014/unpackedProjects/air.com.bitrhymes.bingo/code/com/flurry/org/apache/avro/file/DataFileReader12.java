package com.flurry.org.apache.avro.file;

import com.flurry.org.apache.avro.*;
import com.flurry.org.apache.avro.util.*;
import java.nio.*;
import java.util.*;
import com.flurry.org.apache.avro.io.*;
import java.io.*;

public class DataFileReader12<D> implements FileReader<D>, Closeable
{
    private static final String CODEC = "codec";
    private static final String COUNT = "count";
    private static final long FOOTER_BLOCK = -1L;
    static final byte[] MAGIC;
    private static final String NULL_CODEC = "null";
    private static final String SCHEMA = "schema";
    private static final String SYNC = "sync";
    private static final int SYNC_INTERVAL = 16000;
    private static final int SYNC_SIZE = 16;
    private static final byte VERSION;
    private long blockCount;
    private long blockStart;
    private long count;
    private DataFileReader.SeekableInputStream in;
    private Map<String, byte[]> meta;
    private D peek;
    private DatumReader<D> reader;
    private Schema schema;
    private byte[] sync;
    private byte[] syncBuffer;
    private BinaryDecoder vin;
    
    static {
        MAGIC = new byte[] { 79, 98, 106, 0 };
    }
    
    public DataFileReader12(final SeekableInput seekableInput, final DatumReader<D> reader) throws IOException {
        super();
        this.meta = new HashMap<String, byte[]>();
        this.sync = new byte[16];
        this.syncBuffer = new byte[16];
        this.in = new DataFileReader.SeekableInputStream(seekableInput);
        final byte[] a2 = new byte[4];
        this.in.read(a2);
        if (!Arrays.equals(DataFileReader12.MAGIC, a2)) {
            throw new IOException("Not a data file.");
        }
        final long length = this.in.length();
        this.in.seek(length - 4L);
        this.seek(length - ((this.in.read() << 24) + (this.in.read() << 16) + (this.in.read() << 8) + this.in.read()));
        long n = this.vin.readMapStart();
        if (n > 0L) {
            do {
                for (long n2 = 0L; n2 < n; ++n2) {
                    final String string = this.vin.readString(null).toString();
                    final ByteBuffer bytes = this.vin.readBytes(null);
                    final byte[] dst = new byte[bytes.remaining()];
                    bytes.get(dst);
                    this.meta.put(string, dst);
                }
                n = this.vin.mapNext();
            } while (n != 0L);
        }
        this.sync = this.getMeta("sync");
        this.count = this.getMetaLong("count");
        final String metaString = this.getMetaString("codec");
        if (metaString != null && !metaString.equals("null")) {
            throw new IOException("Unknown codec: " + metaString);
        }
        this.schema = Schema.parse(this.getMetaString("schema"));
        (this.reader = reader).setSchema(this.schema);
        this.seek(DataFileReader12.MAGIC.length);
    }
    
    private void skipSync() throws IOException {
        this.vin.readFixed(this.syncBuffer);
        if (!Arrays.equals(this.syncBuffer, this.sync)) {
            throw new IOException("Invalid sync!");
        }
    }
    
    @Override
    public void close() throws IOException {
        synchronized (this) {
            this.in.close();
        }
    }
    
    public byte[] getMeta(final String s) {
        synchronized (this) {
            return this.meta.get(s);
        }
    }
    
    public long getMetaLong(final String s) {
        synchronized (this) {
            return Long.parseLong(this.getMetaString(s));
        }
    }
    
    public String getMetaString(final String s) {
        synchronized (this) {
            final byte[] meta = this.getMeta(s);
            String s2;
            if (meta == null) {
                s2 = null;
            }
            else {
                try {
                    s2 = new String(meta, "UTF-8");
                }
                catch (UnsupportedEncodingException cause) {
                    throw new RuntimeException(cause);
                }
            }
            return s2;
        }
    }
    
    @Override
    public Schema getSchema() {
        return this.schema;
    }
    
    @Override
    public boolean hasNext() {
        if (this.peek != null || this.blockCount != 0L) {
            return true;
        }
        this.peek = this.next();
        return this.peek != null;
    }
    
    @Override
    public Iterator<D> iterator() {
        return this;
    }
    
    @Override
    public D next() {
        if (this.peek != null) {
            final D peek = this.peek;
            this.peek = null;
            return peek;
        }
        try {
            return (D)this.next(null);
        }
        catch (IOException cause) {
            throw new RuntimeException(cause);
        }
    }
    
    @Override
    public D next(final D n) throws IOException {
        // monitorenter(this)
        while (true) {
            Label_0098: {
                try {
                    while (this.blockCount == 0L) {
                        if (this.in.tell() == this.in.length()) {
                            return null;
                        }
                        this.skipSync();
                        this.blockCount = this.vin.readLong();
                        if (this.blockCount != -1L) {
                            continue;
                        }
                        this.seek(this.vin.readLong() + this.in.tell());
                    }
                    break Label_0098;
                    return null;
                }
                finally {
                }
                // monitorexit(this)
            }
            --this.blockCount;
            return this.reader.read(n, this.vin);
        }
    }
    
    @Override
    public boolean pastSync(final long n) throws IOException {
        return this.blockStart >= 16L + n || this.blockStart >= this.in.length();
    }
    
    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }
    
    public void seek(final long blockStart) throws IOException {
        synchronized (this) {
            this.in.seek(blockStart);
            this.blockCount = 0L;
            this.blockStart = blockStart;
            this.vin = DecoderFactory.get().binaryDecoder(this.in, this.vin);
        }
    }
    
    @Override
    public void sync(final long n) throws IOException {
        while (true) {
            int n2 = 0;
            int n3 = 0;
            Label_0183:Label_0081_Outer:
            while (true) {
            Label_0156:
                while (true) {
                    Label_0150: {
                        synchronized (this) {
                            if (16L + this.in.tell() >= this.in.length()) {
                                this.seek(this.in.length());
                            }
                            else {
                                this.in.seek(n);
                                this.vin.readFixed(this.syncBuffer);
                                n2 = 0;
                                if (this.in.tell() >= this.in.length()) {
                                    break Label_0183;
                                }
                                n3 = 0;
                                if (n3 < this.sync.length && this.sync[n3] == this.syncBuffer[(n2 + n3) % this.sync.length]) {
                                    break Label_0150;
                                }
                                if (n3 != this.sync.length) {
                                    break Label_0156;
                                }
                                this.seek(this.in.tell() - 16L);
                            }
                            return;
                        }
                    }
                    ++n3;
                    continue;
                }
                this.syncBuffer[n2 % this.sync.length] = (byte)this.in.read();
                ++n2;
                continue Label_0081_Outer;
            }
            this.seek(this.in.length());
        }
    }
    
    @Override
    public long tell() throws IOException {
        return this.in.tell();
    }
}
