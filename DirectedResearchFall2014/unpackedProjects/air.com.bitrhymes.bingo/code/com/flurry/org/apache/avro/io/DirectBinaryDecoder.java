package com.flurry.org.apache.avro.io;

import com.flurry.org.apache.avro.util.*;
import java.io.*;
import java.nio.*;

class DirectBinaryDecoder extends BinaryDecoder
{
    private final byte[] buf;
    private ByteReader byteReader;
    private InputStream in;
    
    DirectBinaryDecoder(final InputStream inputStream) {
        super();
        this.buf = new byte[8];
        this.configure(inputStream);
    }
    
    DirectBinaryDecoder configure(final InputStream in) {
        this.in = in;
        Object byteReader;
        if (in instanceof ByteBufferInputStream) {
            byteReader = new ReuseByteReader((ByteBufferInputStream)in);
        }
        else {
            byteReader = new ByteReader();
        }
        this.byteReader = (ByteReader)byteReader;
        return this;
    }
    
    @Override
    protected void doReadBytes(final byte[] b, int off, int len) throws IOException {
        while (true) {
            final int read = this.in.read(b, off, len);
            if (read == len || len == 0) {
                return;
            }
            if (read < 0) {
                throw new EOFException();
            }
            off += read;
            len -= read;
        }
    }
    
    @Override
    protected void doSkipBytes(long n) throws IOException {
        while (n > 0L) {
            final long skip = this.in.skip(n);
            if (skip <= 0L) {
                throw new EOFException();
            }
            n -= skip;
        }
    }
    
    @Override
    public InputStream inputStream() {
        return this.in;
    }
    
    @Override
    public boolean isEnd() throws IOException {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public boolean readBoolean() throws IOException {
        final int read = this.in.read();
        if (read < 0) {
            throw new EOFException();
        }
        return read == 1;
    }
    
    @Override
    public ByteBuffer readBytes(final ByteBuffer byteBuffer) throws IOException {
        return this.byteReader.read(byteBuffer, this.readInt());
    }
    
    @Override
    public double readDouble() throws IOException {
        this.doReadBytes(this.buf, 0, 8);
        return Double.longBitsToDouble((0xFFL & this.buf[0]) | (0xFFL & this.buf[1]) << 8 | (0xFFL & this.buf[2]) << 16 | (0xFFL & this.buf[3]) << 24 | (0xFFL & this.buf[4]) << 32 | (0xFFL & this.buf[5]) << 40 | (0xFFL & this.buf[6]) << 48 | (0xFFL & this.buf[7]) << 56);
    }
    
    @Override
    public float readFloat() throws IOException {
        this.doReadBytes(this.buf, 0, 4);
        return Float.intBitsToFloat((0xFF & this.buf[0]) | (0xFF & this.buf[1]) << 8 | (0xFF & this.buf[2]) << 16 | (0xFF & this.buf[3]) << 24);
    }
    
    @Override
    public int readInt() throws IOException {
        int n = 0;
        int i = 0;
        do {
            final int read = this.in.read();
            if (read < 0) {
                throw new EOFException();
            }
            n |= (read & 0x7F) << i;
            if ((read & 0x80) == 0x0) {
                return n >>> 1 ^ -(n & 0x1);
            }
            i += 7;
        } while (i < 32);
        throw new IOException("Invalid int encoding");
    }
    
    @Override
    public long readLong() throws IOException {
        long n = 0L;
        int i = 0;
        do {
            final int read = this.in.read();
            if (read < 0) {
                throw new EOFException();
            }
            n |= (0x7FL & read) << i;
            if ((read & 0x80) == 0x0) {
                return n >>> 1 ^ -(0x1L & n);
            }
            i += 7;
        } while (i < 64);
        throw new IOException("Invalid long encoding");
    }
    
    private class ByteReader
    {
        public ByteBuffer read(final ByteBuffer byteBuffer, final int n) throws IOException {
            ByteBuffer allocate;
            if (byteBuffer != null && n <= byteBuffer.capacity()) {
                allocate = byteBuffer;
                allocate.clear();
            }
            else {
                allocate = ByteBuffer.allocate(n);
            }
            DirectBinaryDecoder.this.doReadBytes(allocate.array(), allocate.position(), n);
            allocate.limit(n);
            return allocate;
        }
    }
    
    private class ReuseByteReader extends ByteReader
    {
        private final ByteBufferInputStream bbi;
        
        public ReuseByteReader(final ByteBufferInputStream bbi) {
            super();
            this.bbi = bbi;
        }
        
        @Override
        public ByteBuffer read(final ByteBuffer byteBuffer, final int n) throws IOException {
            if (byteBuffer != null) {
                return super.read(byteBuffer, n);
            }
            return this.bbi.readBuffer(n);
        }
    }
}
