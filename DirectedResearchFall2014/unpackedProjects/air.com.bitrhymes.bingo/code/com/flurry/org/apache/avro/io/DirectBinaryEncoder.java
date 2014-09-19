package com.flurry.org.apache.avro.io;

import java.io.*;

public class DirectBinaryEncoder extends BinaryEncoder
{
    private final byte[] buf;
    private OutputStream out;
    
    DirectBinaryEncoder(final OutputStream outputStream) {
        super();
        this.buf = new byte[12];
        this.configure(outputStream);
    }
    
    @Override
    public int bytesBuffered() {
        return 0;
    }
    
    DirectBinaryEncoder configure(final OutputStream out) {
        if (out == null) {
            throw new NullPointerException("OutputStream cannot be null!");
        }
        this.out = out;
        return this;
    }
    
    @Override
    public void flush() throws IOException {
        this.out.flush();
    }
    
    @Override
    public void writeBoolean(final boolean b) throws IOException {
        final OutputStream out = this.out;
        int n;
        if (b) {
            n = 1;
        }
        else {
            n = 0;
        }
        out.write(n);
    }
    
    @Override
    public void writeDouble(final double n) throws IOException {
        final byte[] b = new byte[8];
        this.out.write(b, 0, BinaryData.encodeDouble(n, b, 0));
    }
    
    @Override
    public void writeFixed(final byte[] b, final int off, final int len) throws IOException {
        this.out.write(b, off, len);
    }
    
    @Override
    public void writeFloat(final float n) throws IOException {
        this.out.write(this.buf, 0, BinaryData.encodeFloat(n, this.buf, 0));
    }
    
    @Override
    public void writeInt(final int n) throws IOException {
        final int n2 = n << 1 ^ n >> 31;
        if ((n2 & 0xFFFFFF80) == 0x0) {
            this.out.write(n2);
            return;
        }
        if ((n2 & 0xFFFFC000) == 0x0) {
            this.out.write(n2 | 0x80);
            this.out.write(n2 >>> 7);
            return;
        }
        this.out.write(this.buf, 0, BinaryData.encodeInt(n, this.buf, 0));
    }
    
    @Override
    public void writeLong(final long n) throws IOException {
        final long n2 = n << 1 ^ n >> 63;
        if ((0xFFFFFFFF80000000L & n2) == 0x0L) {
            int n3;
            for (n3 = (int)n2; (n3 & 0xFFFFFF80) != 0x0; n3 >>>= 7) {
                this.out.write((byte)(0xFF & (n3 | 0x80)));
            }
            this.out.write((byte)n3);
            return;
        }
        this.out.write(this.buf, 0, BinaryData.encodeLong(n, this.buf, 0));
    }
    
    @Override
    protected void writeZero() throws IOException {
        this.out.write(0);
    }
}
