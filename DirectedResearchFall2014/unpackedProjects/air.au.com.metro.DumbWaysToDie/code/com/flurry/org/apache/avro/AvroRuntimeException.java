package com.flurry.org.apache.avro;

public class AvroRuntimeException extends RuntimeException
{
    public AvroRuntimeException(final String message) {
        super(message);
    }
    
    public AvroRuntimeException(final String message, final Throwable cause) {
        super(message, cause);
    }
    
    public AvroRuntimeException(final Throwable cause) {
        super(cause);
    }
}
