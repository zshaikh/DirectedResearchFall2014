package com.flurry.org.codehaus.jackson.io;

import java.io.*;

public final class MergedStream extends InputStream
{
    byte[] _buffer;
    protected final IOContext _context;
    final int _end;
    final InputStream _in;
    int _ptr;
    
    public MergedStream(final IOContext context, final InputStream in, final byte[] buffer, final int ptr, final int end) {
        super();
        this._context = context;
        this._in = in;
        this._buffer = buffer;
        this._ptr = ptr;
        this._end = end;
    }
    
    private void freeMergedBuffer() {
        final byte[] buffer = this._buffer;
        if (buffer != null) {
            this._buffer = null;
            if (this._context != null) {
                this._context.releaseReadIOBuffer(buffer);
            }
        }
    }
    
    @Override
    public int available() throws IOException {
        if (this._buffer != null) {
            return this._end - this._ptr;
        }
        return this._in.available();
    }
    
    @Override
    public void close() throws IOException {
        this.freeMergedBuffer();
        this._in.close();
    }
    
    @Override
    public void mark(final int readlimit) {
        if (this._buffer == null) {
            this._in.mark(readlimit);
        }
    }
    
    @Override
    public boolean markSupported() {
        return this._buffer == null && this._in.markSupported();
    }
    
    @Override
    public int read() throws IOException {
        if (this._buffer != null) {
            final int n = 0xFF & this._buffer[this._ptr++];
            if (this._ptr >= this._end) {
                this.freeMergedBuffer();
            }
            return n;
        }
        return this._in.read();
    }
    
    @Override
    public int read(final byte[] array) throws IOException {
        return this.read(array, 0, array.length);
    }
    
    @Override
    public int read(final byte[] b, final int off, int len) throws IOException {
        if (this._buffer != null) {
            final int n = this._end - this._ptr;
            if (len > n) {
                len = n;
            }
            System.arraycopy(this._buffer, this._ptr, b, off, len);
            this._ptr += len;
            if (this._ptr >= this._end) {
                this.freeMergedBuffer();
            }
            return len;
        }
        return this._in.read(b, off, len);
    }
    
    @Override
    public void reset() throws IOException {
        if (this._buffer == null) {
            this._in.reset();
        }
    }
    
    @Override
    public long skip(long n) throws IOException {
        long n2 = 0L;
        if (this._buffer != null) {
            final int n3 = this._end - this._ptr;
            if (n3 > n) {
                this._ptr += (int)n;
                return n;
            }
            this.freeMergedBuffer();
            n2 += n3;
            n -= n3;
        }
        if (n > 0L) {
            n2 += this._in.skip(n);
        }
        return n2;
    }
}
