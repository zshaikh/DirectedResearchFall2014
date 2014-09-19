package com.flurry.org.codehaus.jackson.io;

import java.io.*;

abstract class BaseReader extends Reader
{
    protected static final int LAST_VALID_UNICODE_CHAR = 1114111;
    protected static final char NULL_BYTE;
    protected static final char NULL_CHAR;
    protected byte[] _buffer;
    protected final IOContext _context;
    protected InputStream _in;
    protected int _length;
    protected int _ptr;
    protected char[] _tmpBuf;
    
    protected BaseReader(final IOContext context, final InputStream in, final byte[] buffer, final int ptr, final int length) {
        super();
        this._tmpBuf = null;
        this._context = context;
        this._in = in;
        this._buffer = buffer;
        this._ptr = ptr;
        this._length = length;
    }
    
    @Override
    public void close() throws IOException {
        final InputStream in = this._in;
        if (in != null) {
            this._in = null;
            this.freeBuffers();
            in.close();
        }
    }
    
    public final void freeBuffers() {
        final byte[] buffer = this._buffer;
        if (buffer != null) {
            this._buffer = null;
            this._context.releaseReadIOBuffer(buffer);
        }
    }
    
    @Override
    public int read() throws IOException {
        if (this._tmpBuf == null) {
            this._tmpBuf = new char[1];
        }
        if (this.read(this._tmpBuf, 0, 1) < 1) {
            return -1;
        }
        return this._tmpBuf[0];
    }
    
    protected void reportBounds(final char[] array, final int i, final int j) throws IOException {
        throw new ArrayIndexOutOfBoundsException("read(buf," + i + "," + j + "), cbuf[" + array.length + "]");
    }
    
    protected void reportStrangeStream() throws IOException {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }
}
