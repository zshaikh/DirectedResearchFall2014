package com.flurry.org.apache.avro;

public class AvroTypeException extends AvroRuntimeException
{
    public AvroTypeException(final String s) {
        super(s);
    }
    
    public AvroTypeException(final String s, final Throwable t) {
        super(s, t);
    }
}
