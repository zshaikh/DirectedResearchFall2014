package com.flurry.org.apache.avro.file;

import java.nio.*;
import java.io.*;

final class NullCodec extends Codec
{
    private static final NullCodec INSTANCE;
    public static final CodecFactory OPTION;
    
    static {
        INSTANCE = new NullCodec();
        OPTION = new Option();
    }
    
    @Override
    ByteBuffer compress(final ByteBuffer byteBuffer) throws IOException {
        return byteBuffer;
    }
    
    @Override
    ByteBuffer decompress(final ByteBuffer byteBuffer) throws IOException {
        return byteBuffer;
    }
    
    @Override
    public boolean equals(final Object o) {
        return this == o || this.getClass() == o.getClass();
    }
    
    @Override
    String getName() {
        return "null";
    }
    
    @Override
    public int hashCode() {
        return 2;
    }
    
    static class Option extends CodecFactory
    {
        @Override
        protected Codec createInstance() {
            return NullCodec.INSTANCE;
        }
    }
}
