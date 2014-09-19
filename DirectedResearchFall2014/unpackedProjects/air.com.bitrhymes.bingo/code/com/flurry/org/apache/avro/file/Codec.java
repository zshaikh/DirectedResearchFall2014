package com.flurry.org.apache.avro.file;

import java.nio.*;
import java.io.*;

abstract class Codec
{
    abstract ByteBuffer compress(final ByteBuffer p0) throws IOException;
    
    abstract ByteBuffer decompress(final ByteBuffer p0) throws IOException;
    
    @Override
    public abstract boolean equals(final Object p0);
    
    abstract String getName();
    
    @Override
    public abstract int hashCode();
    
    @Override
    public String toString() {
        return this.getName();
    }
}
