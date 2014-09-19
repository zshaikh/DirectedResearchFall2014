package com.facebook.internal;

import java.io.*;

final class FileLruCache$CopyingInputStream extends InputStream
{
    final InputStream input;
    final OutputStream output;
    
    FileLruCache$CopyingInputStream(final InputStream input, final OutputStream output) {
        super();
        this.input = input;
        this.output = output;
    }
    
    @Override
    public final int available() {
        return this.input.available();
    }
    
    @Override
    public final void close() {
        try {
            this.input.close();
        }
        finally {
            this.output.close();
        }
    }
    
    @Override
    public final void mark(final int n) {
        throw new UnsupportedOperationException();
    }
    
    @Override
    public final boolean markSupported() {
        return false;
    }
    
    @Override
    public final int read() {
        final int read = this.input.read();
        if (read >= 0) {
            this.output.write(read);
        }
        return read;
    }
    
    @Override
    public final int read(final byte[] array) {
        final int read = this.input.read(array);
        if (read > 0) {
            this.output.write(array, 0, read);
        }
        return read;
    }
    
    @Override
    public final int read(final byte[] array, final int n, final int len) {
        final int read = this.input.read(array, n, len);
        if (read > 0) {
            this.output.write(array, n, read);
        }
        return read;
    }
    
    @Override
    public final void reset() {
        synchronized (this) {
            throw new UnsupportedOperationException();
        }
    }
    
    @Override
    public final long skip(final long n) {
        final byte[] array = new byte[1024];
        long n2;
        int read;
        for (n2 = 0L; n2 < n; n2 += read) {
            read = this.read(array, 0, (int)Math.min(n - n2, array.length));
            if (read < 0) {
                return n2;
            }
        }
        return n2;
    }
}
