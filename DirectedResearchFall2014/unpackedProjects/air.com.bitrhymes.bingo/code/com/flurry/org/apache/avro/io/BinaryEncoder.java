package com.flurry.org.apache.avro.io;

import java.io.*;
import java.nio.*;
import com.flurry.org.apache.avro.util.*;

public abstract class BinaryEncoder extends Encoder
{
    public abstract int bytesBuffered();
    
    @Override
    public void setItemCount(final long n) throws IOException {
        if (n > 0L) {
            this.writeLong(n);
        }
    }
    
    @Override
    public void startItem() throws IOException {
    }
    
    @Override
    public void writeArrayEnd() throws IOException {
        this.writeZero();
    }
    
    @Override
    public void writeArrayStart() throws IOException {
    }
    
    @Override
    public void writeBytes(final ByteBuffer byteBuffer) throws IOException {
        final int position = byteBuffer.position();
        this.writeBytes(byteBuffer.array(), position + byteBuffer.arrayOffset(), byteBuffer.limit() - position);
    }
    
    @Override
    public void writeBytes(final byte[] array, final int n, final int n2) throws IOException {
        if (n2 == 0) {
            this.writeZero();
            return;
        }
        this.writeInt(n2);
        this.writeFixed(array, n, n2);
    }
    
    @Override
    public void writeEnum(final int n) throws IOException {
        this.writeInt(n);
    }
    
    @Override
    public void writeIndex(final int n) throws IOException {
        this.writeInt(n);
    }
    
    @Override
    public void writeMapEnd() throws IOException {
        this.writeZero();
    }
    
    @Override
    public void writeMapStart() throws IOException {
    }
    
    @Override
    public void writeNull() throws IOException {
    }
    
    @Override
    public void writeString(final Utf8 utf8) throws IOException {
        this.writeBytes(utf8.getBytes(), 0, utf8.getByteLength());
    }
    
    @Override
    public void writeString(final String s) throws IOException {
        if (s.length() == 0) {
            this.writeZero();
            return;
        }
        final byte[] bytes = s.getBytes("UTF-8");
        this.writeInt(bytes.length);
        this.writeFixed(bytes, 0, bytes.length);
    }
    
    protected abstract void writeZero() throws IOException;
}
