package com.facebook.internal;

import java.io.*;

class FileLruCache$CloseCallbackOutputStream extends OutputStream
{
    final FileLruCache$StreamCloseCallback callback;
    final OutputStream innerStream;
    
    FileLruCache$CloseCallbackOutputStream(final OutputStream innerStream, final FileLruCache$StreamCloseCallback callback) {
        super();
        this.innerStream = innerStream;
        this.callback = callback;
    }
    
    @Override
    public void close() {
        try {
            this.innerStream.close();
        }
        finally {
            this.callback.onClose();
        }
    }
    
    @Override
    public void flush() {
        this.innerStream.flush();
    }
    
    @Override
    public void write(final int n) {
        this.innerStream.write(n);
    }
    
    @Override
    public void write(final byte[] b) {
        this.innerStream.write(b);
    }
    
    @Override
    public void write(final byte[] b, final int off, final int len) {
        this.innerStream.write(b, off, len);
    }
}
