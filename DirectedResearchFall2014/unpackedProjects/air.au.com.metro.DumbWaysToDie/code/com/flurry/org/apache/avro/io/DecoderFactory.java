package com.flurry.org.apache.avro.io;

import com.flurry.org.apache.avro.*;
import java.io.*;

public class DecoderFactory
{
    static final int DEFAULT_BUFFER_SIZE = 8192;
    private static final DecoderFactory DEFAULT_FACTORY;
    int binaryDecoderBufferSize;
    
    static {
        DEFAULT_FACTORY = new DefaultDecoderFactory();
    }
    
    public DecoderFactory() {
        super();
        this.binaryDecoderBufferSize = 8192;
    }
    
    @Deprecated
    public static DecoderFactory defaultFactory() {
        return get();
    }
    
    public static DecoderFactory get() {
        return DecoderFactory.DEFAULT_FACTORY;
    }
    
    public BinaryDecoder binaryDecoder(final InputStream inputStream, final BinaryDecoder binaryDecoder) {
        if (binaryDecoder == null || !binaryDecoder.getClass().equals(BinaryDecoder.class)) {
            return new BinaryDecoder(inputStream, this.binaryDecoderBufferSize);
        }
        return binaryDecoder.configure(inputStream, this.binaryDecoderBufferSize);
    }
    
    public BinaryDecoder binaryDecoder(final byte[] array, final int n, final int n2, final BinaryDecoder binaryDecoder) {
        if (binaryDecoder == null || !binaryDecoder.getClass().equals(BinaryDecoder.class)) {
            return new BinaryDecoder(array, n, n2);
        }
        return binaryDecoder.configure(array, n, n2);
    }
    
    public BinaryDecoder binaryDecoder(final byte[] array, final BinaryDecoder binaryDecoder) {
        return this.binaryDecoder(array, 0, array.length, binaryDecoder);
    }
    
    public DecoderFactory configureDecoderBufferSize(int binaryDecoderBufferSize) {
        if (binaryDecoderBufferSize < 32) {
            binaryDecoderBufferSize = 32;
        }
        if (binaryDecoderBufferSize > 16777216) {
            binaryDecoderBufferSize = 16777216;
        }
        this.binaryDecoderBufferSize = binaryDecoderBufferSize;
        return this;
    }
    
    @Deprecated
    public BinaryDecoder createBinaryDecoder(final InputStream inputStream, final BinaryDecoder binaryDecoder) {
        return this.binaryDecoder(inputStream, binaryDecoder);
    }
    
    @Deprecated
    public BinaryDecoder createBinaryDecoder(final byte[] array, final int n, final int n2, final BinaryDecoder binaryDecoder) {
        if (binaryDecoder == null || !binaryDecoder.getClass().equals(BinaryDecoder.class)) {
            return new BinaryDecoder(array, n, n2);
        }
        return binaryDecoder.configure(array, n, n2);
    }
    
    @Deprecated
    public BinaryDecoder createBinaryDecoder(final byte[] array, final BinaryDecoder binaryDecoder) {
        return this.binaryDecoder(array, 0, array.length, binaryDecoder);
    }
    
    public BinaryDecoder directBinaryDecoder(final InputStream inputStream, final BinaryDecoder binaryDecoder) {
        if (binaryDecoder == null || !binaryDecoder.getClass().equals(DirectBinaryDecoder.class)) {
            return new DirectBinaryDecoder(inputStream);
        }
        return ((DirectBinaryDecoder)binaryDecoder).configure(inputStream);
    }
    
    public int getConfiguredBufferSize() {
        return this.binaryDecoderBufferSize;
    }
    
    public JsonDecoder jsonDecoder(final Schema schema, final InputStream inputStream) throws IOException {
        return new JsonDecoder(schema, inputStream);
    }
    
    public JsonDecoder jsonDecoder(final Schema schema, final String s) throws IOException {
        return new JsonDecoder(schema, s);
    }
    
    public ResolvingDecoder resolvingDecoder(final Schema schema, final Schema schema2, final Decoder decoder) throws IOException {
        return new ResolvingDecoder(schema, schema2, decoder);
    }
    
    public ValidatingDecoder validatingDecoder(final Schema schema, final Decoder decoder) throws IOException {
        return new ValidatingDecoder(schema, decoder);
    }
    
    private static class DefaultDecoderFactory extends DecoderFactory
    {
        @Override
        public DecoderFactory configureDecoderBufferSize(final int n) {
            throw new IllegalArgumentException("This Factory instance is Immutable");
        }
    }
}
