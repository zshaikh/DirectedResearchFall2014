package com.flurry.org.apache.avro.io;

import com.flurry.org.apache.avro.util.*;
import java.io.*;
import java.nio.*;

public class BinaryDecoder extends Decoder
{
    private byte[] buf;
    private int limit;
    private int minPos;
    private int pos;
    private final Utf8 scratchUtf8;
    private ByteSource source;
    
    protected BinaryDecoder() {
        super();
        this.source = null;
        this.buf = null;
        this.minPos = 0;
        this.pos = 0;
        this.limit = 0;
        this.scratchUtf8 = new Utf8();
    }
    
    BinaryDecoder(final InputStream inputStream, final int n) {
        super();
        this.source = null;
        this.buf = null;
        this.minPos = 0;
        this.pos = 0;
        this.limit = 0;
        this.scratchUtf8 = new Utf8();
        this.configure(inputStream, n);
    }
    
    BinaryDecoder(final byte[] array, final int n, final int n2) {
        super();
        this.source = null;
        this.buf = null;
        this.minPos = 0;
        this.pos = 0;
        this.limit = 0;
        this.scratchUtf8 = new Utf8();
        this.configure(array, n, n2);
    }
    
    private void configureSource(final int n, final ByteSource source) {
        if (this.source != null) {
            this.source.detach();
        }
        source.attach(n, this);
        this.source = source;
    }
    
    private long doSkipItems() throws IOException {
        long n;
        for (n = this.readInt(); n < 0L; n = this.readInt()) {
            this.doSkipBytes(this.readLong());
        }
        return n;
    }
    
    private void ensureBounds(final int n) throws IOException {
        final int n2 = this.limit - this.pos;
        if (n2 < n) {
            this.source.compactAndFill(this.buf, this.pos, this.minPos, n2);
        }
    }
    
    private long innerLongDecode(final long n) throws IOException {
        int n2 = 1;
        final int n3 = 0xFF & this.buf[this.pos];
        long n4 = n ^ (0x7FL & n3) << 28;
        if (n3 > 127) {
            final byte[] buf = this.buf;
            final int pos = this.pos;
            final int n5 = n2 + 1;
            final int n6 = 0xFF & buf[pos + n2];
            n4 ^= (0x7FL & n6) << 35;
            if (n6 > 127) {
                final byte[] buf2 = this.buf;
                final int pos2 = this.pos;
                n2 = n5 + 1;
                final int n7 = 0xFF & buf2[pos2 + 2];
                n4 ^= (0x7FL & n7) << 42;
                if (n7 > 127) {
                    final byte[] buf3 = this.buf;
                    final int pos3 = this.pos;
                    ++n2;
                    final int n8 = 0xFF & buf3[pos3 + 3];
                    n4 ^= (0x7FL & n8) << 49;
                    if (n8 > 127) {
                        final byte[] buf4 = this.buf;
                        final int pos4 = this.pos;
                        ++n2;
                        final int n9 = 0xFF & buf4[pos4 + 4];
                        n4 ^= (0x7FL & n9) << 56;
                        if (n9 > 127) {
                            final byte[] buf5 = this.buf;
                            final int pos5 = this.pos;
                            ++n2;
                            final int n10 = 0xFF & buf5[pos5 + 5];
                            n4 ^= (0x7FL & n10) << 63;
                            if (n10 > 127) {
                                throw new IOException("Invalid long encoding");
                            }
                        }
                    }
                }
            }
            else {
                n2 = n5;
            }
        }
        this.pos += n2;
        return n4;
    }
    
    @Override
    public long arrayNext() throws IOException {
        return this.doReadItemCount();
    }
    
    BinaryDecoder configure(final InputStream inputStream, final int n) {
        this.configureSource(n, (ByteSource)new InputStreamByteSource(inputStream));
        return this;
    }
    
    BinaryDecoder configure(final byte[] array, final int n, final int n2) {
        this.configureSource(8192, (ByteSource)new ByteArrayByteSource(array, n, n2));
        return this;
    }
    
    protected void doReadBytes(final byte[] array, final int n, final int n2) throws IOException {
        final int n3 = this.limit - this.pos;
        if (n2 <= n3) {
            System.arraycopy(this.buf, this.pos, array, n, n2);
            this.pos += n2;
            return;
        }
        System.arraycopy(this.buf, this.pos, array, n, n3);
        final int n4 = n + n3;
        final int n5 = n2 - n3;
        this.pos = this.limit;
        this.source.readRaw(array, n4, n5);
    }
    
    protected long doReadItemCount() throws IOException {
        long long1 = this.readLong();
        if (long1 < 0L) {
            this.readLong();
            long1 = -long1;
        }
        return long1;
    }
    
    protected void doSkipBytes(final long n) throws IOException {
        final int n2 = this.limit - this.pos;
        if (n <= n2) {
            this.pos += (int)n;
            return;
        }
        this.pos = 0;
        this.limit = 0;
        this.source.skipSourceBytes(n - n2);
    }
    
    BufferAccessor getBufferAccessor() {
        return new BufferAccessor(this);
    }
    
    public InputStream inputStream() {
        return this.source;
    }
    
    public boolean isEnd() throws IOException {
        if (this.limit - this.pos > 0) {
            return false;
        }
        if (this.source.isEof()) {
            return true;
        }
        final int tryReadRaw = this.source.tryReadRaw(this.buf, 0, this.buf.length);
        this.pos = 0;
        this.limit = tryReadRaw;
        return tryReadRaw == 0;
    }
    
    @Override
    public long mapNext() throws IOException {
        return this.doReadItemCount();
    }
    
    @Override
    public long readArrayStart() throws IOException {
        return this.doReadItemCount();
    }
    
    @Override
    public boolean readBoolean() throws IOException {
        if (this.limit == this.pos) {
            this.limit = this.source.tryReadRaw(this.buf, 0, this.buf.length);
            this.pos = 0;
            if (this.limit == 0) {
                throw new EOFException();
            }
        }
        return (0xFF & this.buf[this.pos++]) == 0x1;
    }
    
    @Override
    public ByteBuffer readBytes(final ByteBuffer byteBuffer) throws IOException {
        final int int1 = this.readInt();
        ByteBuffer allocate;
        if (byteBuffer != null && int1 <= byteBuffer.capacity()) {
            allocate = byteBuffer;
            allocate.clear();
        }
        else {
            allocate = ByteBuffer.allocate(int1);
        }
        this.doReadBytes(allocate.array(), allocate.position(), int1);
        allocate.limit(int1);
        return allocate;
    }
    
    @Override
    public double readDouble() throws IOException {
        this.ensureBounds(8);
        final int n = (0xFF & this.buf[this.pos]) | (0xFF & this.buf[this.pos + 1]) << 8 | (0xFF & this.buf[this.pos + 2]) << 16 | (0xFF & this.buf[this.pos + 3]) << 24;
        final int n2 = (0xFF & this.buf[this.pos + 4]) | (0xFF & this.buf[this.pos + 5]) << 8 | (0xFF & this.buf[this.pos + 6]) << 16 | (0xFF & this.buf[this.pos + 7]) << 24;
        if (8 + this.pos > this.limit) {
            throw new EOFException();
        }
        this.pos += 8;
        return Double.longBitsToDouble((0xFFFFFFFFL & n) | n2 << 32);
    }
    
    @Override
    public int readEnum() throws IOException {
        return this.readInt();
    }
    
    @Override
    public void readFixed(final byte[] array, final int n, final int n2) throws IOException {
        this.doReadBytes(array, n, n2);
    }
    
    @Override
    public float readFloat() throws IOException {
        this.ensureBounds(4);
        final int n = (0xFF & this.buf[this.pos]) | (0xFF & this.buf[this.pos + 1]) << 8 | (0xFF & this.buf[this.pos + 2]) << 16 | (0xFF & this.buf[this.pos + 3]) << 24;
        if (4 + this.pos > this.limit) {
            throw new EOFException();
        }
        this.pos += 4;
        return Float.intBitsToFloat(n);
    }
    
    @Override
    public int readIndex() throws IOException {
        return this.readInt();
    }
    
    @Override
    public int readInt() throws IOException {
        this.ensureBounds(5);
        int n = 1;
        final int n2 = 0xFF & this.buf[this.pos];
        int n3 = n2 & 0x7F;
        if (n2 > 127) {
            final byte[] buf = this.buf;
            final int pos = this.pos;
            final int n4 = n + 1;
            final int n5 = 0xFF & buf[pos + n];
            n3 ^= (n5 & 0x7F) << 7;
            if (n5 > 127) {
                final byte[] buf2 = this.buf;
                final int pos2 = this.pos;
                n = n4 + 1;
                final int n6 = 0xFF & buf2[pos2 + 2];
                n3 ^= (n6 & 0x7F) << 14;
                if (n6 > 127) {
                    final byte[] buf3 = this.buf;
                    final int pos3 = this.pos;
                    ++n;
                    final int n7 = 0xFF & buf3[pos3 + 3];
                    n3 ^= (n7 & 0x7F) << 21;
                    if (n7 > 127) {
                        final byte[] buf4 = this.buf;
                        final int pos4 = this.pos;
                        ++n;
                        final int n8 = 0xFF & buf4[pos4 + 4];
                        n3 ^= (n8 & 0x7F) << 28;
                        if (n8 > 127) {
                            throw new IOException("Invalid int encoding");
                        }
                    }
                }
            }
            else {
                n = n4;
            }
        }
        this.pos += n;
        if (this.pos > this.limit) {
            throw new EOFException();
        }
        return n3 >>> 1 ^ -(n3 & 0x1);
    }
    
    @Override
    public long readLong() throws IOException {
        this.ensureBounds(10);
        final int n = 0xFF & this.buf[this.pos++];
        final int n2 = n & 0x7F;
        long innerLongDecode;
        if (n > 127) {
            final int n3 = 0xFF & this.buf[this.pos++];
            final int n4 = n2 ^ (n3 & 0x7F) << 7;
            if (n3 > 127) {
                final int n5 = 0xFF & this.buf[this.pos++];
                final int n6 = n4 ^ (n5 & 0x7F) << 14;
                if (n5 > 127) {
                    final int n7 = 0xFF & this.buf[this.pos++];
                    final int n8 = n6 ^ (n7 & 0x7F) << 21;
                    if (n7 > 127) {
                        innerLongDecode = this.innerLongDecode(n8);
                    }
                    else {
                        innerLongDecode = n8;
                    }
                }
                else {
                    innerLongDecode = n6;
                }
            }
            else {
                innerLongDecode = n4;
            }
        }
        else {
            innerLongDecode = n2;
        }
        if (this.pos > this.limit) {
            throw new EOFException();
        }
        return innerLongDecode >>> 1 ^ -(0x1L & innerLongDecode);
    }
    
    @Override
    public long readMapStart() throws IOException {
        return this.doReadItemCount();
    }
    
    @Override
    public void readNull() throws IOException {
    }
    
    @Override
    public Utf8 readString(final Utf8 utf8) throws IOException {
        final int int1 = this.readInt();
        Utf8 utf2;
        if (utf8 != null) {
            utf2 = utf8;
        }
        else {
            utf2 = new Utf8();
        }
        utf2.setByteLength(int1);
        if (int1 != 0) {
            this.doReadBytes(utf2.getBytes(), 0, int1);
        }
        return utf2;
    }
    
    @Override
    public String readString() throws IOException {
        return this.readString(this.scratchUtf8).toString();
    }
    
    @Override
    public long skipArray() throws IOException {
        return this.doSkipItems();
    }
    
    @Override
    public void skipBytes() throws IOException {
        this.doSkipBytes(this.readInt());
    }
    
    @Override
    public void skipFixed(final int n) throws IOException {
        this.doSkipBytes(n);
    }
    
    @Override
    public long skipMap() throws IOException {
        return this.doSkipItems();
    }
    
    @Override
    public void skipString() throws IOException {
        this.doSkipBytes(this.readInt());
    }
    
    static class BufferAccessor
    {
        private byte[] buf;
        private final BinaryDecoder decoder;
        boolean detached;
        private int limit;
        private int pos;
        
        private BufferAccessor(final BinaryDecoder decoder) {
            super();
            this.detached = false;
            this.decoder = decoder;
        }
        
        void detach() {
            this.buf = this.decoder.buf;
            this.pos = this.decoder.pos;
            this.limit = this.decoder.limit;
            this.detached = true;
        }
        
        byte[] getBuf() {
            if (this.detached) {
                return this.buf;
            }
            return this.decoder.buf;
        }
        
        int getLim() {
            if (this.detached) {
                return this.limit;
            }
            return this.decoder.limit;
        }
        
        int getPos() {
            if (this.detached) {
                return this.pos;
            }
            return this.decoder.pos;
        }
        
        void setBuf(final byte[] buf, final int pos, final int n) {
            if (this.detached) {
                this.buf = buf;
                this.limit = pos + n;
                this.pos = pos;
                return;
            }
            this.decoder.buf = buf;
            this.decoder.limit = pos + n;
            this.decoder.pos = pos;
            this.decoder.minPos = pos;
        }
        
        void setLimit(final int limit) {
            if (this.detached) {
                this.limit = limit;
                return;
            }
            this.decoder.limit = limit;
        }
        
        void setPos(final int pos) {
            if (this.detached) {
                this.pos = pos;
                return;
            }
            this.decoder.pos = pos;
        }
    }
    
    private static class ByteArrayByteSource extends ByteSource
    {
        private boolean compacted;
        private byte[] data;
        private int max;
        private int position;
        
        private ByteArrayByteSource(final byte[] data, final int position, final int max) {
            super();
            this.compacted = false;
            if (data.length < 16 || max < 16) {
                System.arraycopy(data, position, this.data = new byte[16], 0, max);
                this.position = 0;
                this.max = max;
                return;
            }
            this.data = data;
            this.position = position;
            this.max = position + max;
        }
        
        @Override
        protected void attach(final int n, final BinaryDecoder binaryDecoder) {
            binaryDecoder.buf = this.data;
            binaryDecoder.pos = this.position;
            binaryDecoder.minPos = this.position;
            binaryDecoder.limit = this.max;
            this.ba = new BufferAccessor(binaryDecoder);
        }
        
        @Override
        public void close() throws IOException {
            this.ba.setPos(this.ba.getLim());
        }
        
        @Override
        protected void compactAndFill(final byte[] array, final int n, final int n2, final int n3) throws IOException {
            if (!this.compacted) {
                final byte[] array2 = new byte[n3 + 16];
                System.arraycopy(array, n, array2, 0, n3);
                this.ba.setBuf(array2, 0, n3);
                this.compacted = true;
            }
        }
        
        public boolean isEof() {
            return this.ba.getLim() - this.ba.getPos() == 0;
        }
        
        @Override
        public int read() throws IOException {
            this.max = this.ba.getLim();
            this.position = this.ba.getPos();
            if (this.position >= this.max) {
                return -1;
            }
            final int n = 0xFF & this.ba.getBuf()[this.position++];
            this.ba.setPos(this.position);
            return n;
        }
        
        @Override
        protected void readRaw(final byte[] array, final int n, final int n2) throws IOException {
            if (this.tryReadRaw(array, n, n2) < n2) {
                throw new EOFException();
            }
        }
        
        @Override
        protected void skipSourceBytes(final long n) throws IOException {
            if (this.trySkipBytes(n) < n) {
                throw new EOFException();
            }
        }
        
        @Override
        protected int tryReadRaw(final byte[] array, final int n, final int n2) throws IOException {
            return 0;
        }
        
        @Override
        protected long trySkipBytes(final long n) throws IOException {
            this.max = this.ba.getLim();
            this.position = this.ba.getPos();
            final long n2 = this.max - this.position;
            if (n2 >= n) {
                this.position += (int)n;
                this.ba.setPos(this.position);
                return n;
            }
            this.position += (int)n2;
            this.ba.setPos(this.position);
            return n2;
        }
    }
    
    abstract static class ByteSource extends InputStream
    {
        protected BufferAccessor ba;
        
        protected void attach(final int n, final BinaryDecoder binaryDecoder) {
            binaryDecoder.buf = new byte[n];
            binaryDecoder.pos = 0;
            binaryDecoder.minPos = 0;
            binaryDecoder.limit = 0;
            this.ba = new BufferAccessor(binaryDecoder);
        }
        
        @Override
        public int available() throws IOException {
            return this.ba.getLim() - this.ba.getPos();
        }
        
        protected void compactAndFill(final byte[] array, final int n, final int pos, final int n2) throws IOException {
            System.arraycopy(array, n, array, pos, n2);
            this.ba.setPos(pos);
            this.ba.setLimit(n2 + this.tryReadRaw(array, pos + n2, array.length - n2));
        }
        
        protected void detach() {
            this.ba.detach();
        }
        
        abstract boolean isEof();
        
        @Override
        public int read(final byte[] array, final int n, final int n2) throws IOException {
            final int lim = this.ba.getLim();
            final int pos = this.ba.getPos();
            final byte[] buf = this.ba.getBuf();
            final int n3 = lim - pos;
            if (n3 >= n2) {
                System.arraycopy(buf, pos, array, n, n2);
                this.ba.setPos(pos + n2);
                return n2;
            }
            System.arraycopy(buf, pos, array, n, n3);
            this.ba.setPos(pos + n3);
            final int n4 = n3 + this.tryReadRaw(array, n + n3, n2 - n3);
            if (n4 == 0) {
                return -1;
            }
            return n4;
        }
        
        protected abstract void readRaw(final byte[] p0, final int p1, final int p2) throws IOException;
        
        @Override
        public long skip(final long n) throws IOException {
            final int lim = this.ba.getLim();
            final int pos = this.ba.getPos();
            final int n2 = lim - pos;
            if (n2 > n) {
                this.ba.setPos((int)(n + pos));
                return n;
            }
            this.ba.setPos(lim);
            return this.trySkipBytes(n - n2) + n2;
        }
        
        protected abstract void skipSourceBytes(final long p0) throws IOException;
        
        protected abstract int tryReadRaw(final byte[] p0, final int p1, final int p2) throws IOException;
        
        protected abstract long trySkipBytes(final long p0) throws IOException;
    }
    
    private static class InputStreamByteSource extends ByteSource
    {
        private InputStream in;
        protected boolean isEof;
        
        private InputStreamByteSource(final InputStream in) {
            super();
            this.isEof = false;
            this.in = in;
        }
        
        @Override
        public void close() throws IOException {
            this.in.close();
        }
        
        public boolean isEof() {
            return this.isEof;
        }
        
        @Override
        public int read() throws IOException {
            if (this.ba.getLim() - this.ba.getPos() == 0) {
                return this.in.read();
            }
            final int pos = this.ba.getPos();
            final int n = 0xFF & this.ba.getBuf()[pos];
            this.ba.setPos(pos + 1);
            return n;
        }
        
        @Override
        protected void readRaw(final byte[] b, int off, int i) throws IOException {
            while (i > 0) {
                final int read = this.in.read(b, off, i);
                if (read < 0) {
                    this.isEof = true;
                    throw new EOFException();
                }
                i -= read;
                off += read;
            }
        }
        
        @Override
        protected void skipSourceBytes(long n) throws IOException {
            int n2 = 0;
            while (n > 0L) {
                final long skip = this.in.skip(n);
                if (skip > 0L) {
                    n -= skip;
                }
                else {
                    if (skip != 0L) {
                        this.isEof = true;
                        throw new EOFException();
                    }
                    if (n2 != 0) {
                        this.isEof = true;
                        throw new EOFException();
                    }
                    n2 = 1;
                }
            }
        }
        
        @Override
        protected int tryReadRaw(final byte[] b, int off, final int n) throws IOException {
            int len = n;
            while (true) {
                Label_0031: {
                    if (len <= 0) {
                        break Label_0031;
                    }
                    try {
                        final int read = this.in.read(b, off, len);
                        if (read < 0) {
                            this.isEof = true;
                            return n - len;
                        }
                        len -= read;
                        off += read;
                    }
                    catch (EOFException ex) {
                        this.isEof = true;
                        return n - len;
                    }
                }
            }
        }
        
        @Override
        protected long trySkipBytes(final long n) throws IOException {
            long n2 = n;
            int n3 = 0;
            while (n2 > 0L) {
                Label_0075: {
                    try {
                        final long skip = this.in.skip(n);
                        if (skip > 0L) {
                            n2 -= skip;
                            continue;
                        }
                        if (skip == 0L) {
                            if (n3 == 0) {
                                break Label_0075;
                            }
                            this.isEof = true;
                        }
                        else {
                            this.isEof = true;
                        }
                    }
                    catch (EOFException ex) {
                        this.isEof = true;
                    }
                    break;
                }
                n3 = 1;
            }
            return n - n2;
        }
    }
}
