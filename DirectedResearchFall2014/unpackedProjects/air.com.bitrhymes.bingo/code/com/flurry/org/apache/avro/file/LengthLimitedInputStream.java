package com.flurry.org.apache.avro.file;

import java.io.*;

class LengthLimitedInputStream extends FilterInputStream
{
    private long remaining;
    
    protected LengthLimitedInputStream(final InputStream in, final long remaining) {
        super(in);
        this.remaining = remaining;
    }
    
    private int remainingInt() {
        return (int)Math.min(this.remaining, 2147483647L);
    }
    
    @Override
    public int available() throws IOException {
        return Math.min(super.available(), this.remainingInt());
    }
    
    @Override
    public int read() throws IOException {
        if (this.remaining > 0L) {
            final int read = super.read();
            if (read != -1) {
                --this.remaining;
            }
            return read;
        }
        return -1;
    }
    
    @Override
    public int read(final byte[] array) throws IOException {
        return this.read(array, 0, array.length);
    }
    
    @Override
    public int read(final byte[] b, final int off, int remainingInt) throws IOException {
        if (this.remaining == 0L) {
            return -1;
        }
        if (remainingInt > this.remaining) {
            remainingInt = this.remainingInt();
        }
        final int read = super.read(b, off, remainingInt);
        if (read != -1) {
            this.remaining -= read;
        }
        return read;
    }
    
    @Override
    public long skip(final long b) throws IOException {
        final long skip = super.skip(Math.min(this.remaining, b));
        this.remaining -= skip;
        return skip;
    }
}
