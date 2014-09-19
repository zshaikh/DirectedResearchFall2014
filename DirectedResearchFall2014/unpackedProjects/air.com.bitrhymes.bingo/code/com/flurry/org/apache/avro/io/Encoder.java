package com.flurry.org.apache.avro.io;

import java.io.*;
import java.nio.*;
import com.flurry.org.apache.avro.util.*;

public abstract class Encoder implements Flushable
{
    public abstract void setItemCount(final long p0) throws IOException;
    
    public abstract void startItem() throws IOException;
    
    public abstract void writeArrayEnd() throws IOException;
    
    public abstract void writeArrayStart() throws IOException;
    
    public abstract void writeBoolean(final boolean p0) throws IOException;
    
    public abstract void writeBytes(final ByteBuffer p0) throws IOException;
    
    public void writeBytes(final byte[] array) throws IOException {
        this.writeBytes(array, 0, array.length);
    }
    
    public abstract void writeBytes(final byte[] p0, final int p1, final int p2) throws IOException;
    
    public abstract void writeDouble(final double p0) throws IOException;
    
    public abstract void writeEnum(final int p0) throws IOException;
    
    public void writeFixed(final byte[] array) throws IOException {
        this.writeFixed(array, 0, array.length);
    }
    
    public abstract void writeFixed(final byte[] p0, final int p1, final int p2) throws IOException;
    
    public abstract void writeFloat(final float p0) throws IOException;
    
    public abstract void writeIndex(final int p0) throws IOException;
    
    public abstract void writeInt(final int p0) throws IOException;
    
    public abstract void writeLong(final long p0) throws IOException;
    
    public abstract void writeMapEnd() throws IOException;
    
    public abstract void writeMapStart() throws IOException;
    
    public abstract void writeNull() throws IOException;
    
    public abstract void writeString(final Utf8 p0) throws IOException;
    
    public void writeString(final CharSequence charSequence) throws IOException {
        if (charSequence instanceof Utf8) {
            this.writeString((Utf8)charSequence);
            return;
        }
        this.writeString(charSequence.toString());
    }
    
    public void writeString(final String s) throws IOException {
        this.writeString(new Utf8(s));
    }
}
