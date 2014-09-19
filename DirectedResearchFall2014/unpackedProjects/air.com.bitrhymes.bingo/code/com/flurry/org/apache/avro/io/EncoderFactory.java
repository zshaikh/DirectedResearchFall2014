package com.flurry.org.apache.avro.io;

import com.flurry.org.codehaus.jackson.*;
import java.io.*;
import com.flurry.org.apache.avro.*;

public class EncoderFactory
{
    private static final int DEFAULT_BLOCK_BUFFER_SIZE = 65536;
    private static final int DEFAULT_BUFFER_SIZE = 2048;
    private static final EncoderFactory DEFAULT_FACTORY;
    private static final int MAX_BLOCK_BUFFER_SIZE = 1073741824;
    private static final int MIN_BLOCK_BUFFER_SIZE = 64;
    protected int binaryBlockSize;
    protected int binaryBufferSize;
    
    static {
        DEFAULT_FACTORY = new DefaultEncoderFactory();
    }
    
    public EncoderFactory() {
        super();
        this.binaryBufferSize = 2048;
        this.binaryBlockSize = 65536;
    }
    
    public static EncoderFactory get() {
        return EncoderFactory.DEFAULT_FACTORY;
    }
    
    public BinaryEncoder binaryEncoder(final OutputStream outputStream, final BinaryEncoder binaryEncoder) {
        if (binaryEncoder == null || !binaryEncoder.getClass().equals(BufferedBinaryEncoder.class)) {
            return new BufferedBinaryEncoder(outputStream, this.binaryBufferSize);
        }
        return ((BufferedBinaryEncoder)binaryEncoder).configure(outputStream, this.binaryBufferSize);
    }
    
    public BinaryEncoder blockingBinaryEncoder(final OutputStream outputStream, final BinaryEncoder binaryEncoder) {
        if (binaryEncoder == null || !binaryEncoder.getClass().equals(BlockingBinaryEncoder.class)) {
            return new BlockingBinaryEncoder(outputStream, this.binaryBlockSize, 32);
        }
        return ((BlockingBinaryEncoder)binaryEncoder).configure(outputStream, this.binaryBlockSize, 32);
    }
    
    public EncoderFactory configureBlockSize(int binaryBufferSize) {
        if (binaryBufferSize < 64) {
            binaryBufferSize = 64;
        }
        if (binaryBufferSize > 1073741824) {
            binaryBufferSize = 1073741824;
        }
        this.binaryBufferSize = binaryBufferSize;
        return this;
    }
    
    public EncoderFactory configureBufferSize(int binaryBufferSize) {
        if (binaryBufferSize < 32) {
            binaryBufferSize = 32;
        }
        if (binaryBufferSize > 16777216) {
            binaryBufferSize = 16777216;
        }
        this.binaryBufferSize = binaryBufferSize;
        return this;
    }
    
    public BinaryEncoder directBinaryEncoder(final OutputStream outputStream, final BinaryEncoder binaryEncoder) {
        if (binaryEncoder == null || !binaryEncoder.getClass().equals(DirectBinaryEncoder.class)) {
            return new DirectBinaryEncoder(outputStream);
        }
        return ((DirectBinaryEncoder)binaryEncoder).configure(outputStream);
    }
    
    public int getBlockSize() {
        return this.binaryBlockSize;
    }
    
    public int getBufferSize() {
        return this.binaryBufferSize;
    }
    
    public JsonEncoder jsonEncoder(final Schema schema, final JsonGenerator jsonGenerator) throws IOException {
        return new JsonEncoder(schema, jsonGenerator);
    }
    
    public JsonEncoder jsonEncoder(final Schema schema, final OutputStream outputStream) throws IOException {
        return new JsonEncoder(schema, outputStream);
    }
    
    public ValidatingEncoder validatingEncoder(final Schema schema, final Encoder encoder) throws IOException {
        return new ValidatingEncoder(schema, encoder);
    }
    
    private static class DefaultEncoderFactory extends EncoderFactory
    {
        @Override
        public EncoderFactory configureBlockSize(final int n) {
            throw new AvroRuntimeException("Default EncoderFactory cannot be configured");
        }
        
        @Override
        public EncoderFactory configureBufferSize(final int n) {
            throw new AvroRuntimeException("Default EncoderFactory cannot be configured");
        }
    }
}
