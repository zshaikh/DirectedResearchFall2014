package com.flurry.org.apache.avro;

public class SchemaParseException extends AvroRuntimeException
{
    public SchemaParseException(final String s) {
        super(s);
    }
    
    public SchemaParseException(final Throwable t) {
        super(t);
    }
}
