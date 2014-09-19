package com.flurry.org.codehaus.jackson.io;

import com.flurry.org.codehaus.jackson.util.*;
import java.io.*;

public final class SegmentedStringWriter extends Writer
{
    protected final TextBuffer _buffer;
    
    public SegmentedStringWriter(final BufferRecycler bufferRecycler) {
        super();
        this._buffer = new TextBuffer(bufferRecycler);
    }
    
    @Override
    public Writer append(final char c) {
        this.write(c);
        return this;
    }
    
    @Override
    public Writer append(final CharSequence charSequence) {
        final String string = charSequence.toString();
        this._buffer.append(string, 0, string.length());
        return this;
    }
    
    @Override
    public Writer append(final CharSequence charSequence, final int n, final int n2) {
        final String string = charSequence.subSequence(n, n2).toString();
        this._buffer.append(string, 0, string.length());
        return this;
    }
    
    @Override
    public void close() {
    }
    
    @Override
    public void flush() {
    }
    
    public String getAndClear() {
        final String contentsAsString = this._buffer.contentsAsString();
        this._buffer.releaseBuffers();
        return contentsAsString;
    }
    
    @Override
    public void write(final int n) {
        this._buffer.append((char)n);
    }
    
    @Override
    public void write(final String s) {
        this._buffer.append(s, 0, s.length());
    }
    
    @Override
    public void write(final String s, final int n, final int n2) {
        this._buffer.append(s, 0, s.length());
    }
    
    @Override
    public void write(final char[] array) {
        this._buffer.append(array, 0, array.length);
    }
    
    @Override
    public void write(final char[] array, final int n, final int n2) {
        this._buffer.append(array, n, n2);
    }
}
