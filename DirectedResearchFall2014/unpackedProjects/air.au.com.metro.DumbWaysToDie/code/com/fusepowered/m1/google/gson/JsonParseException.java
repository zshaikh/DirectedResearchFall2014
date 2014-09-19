package com.fusepowered.m1.google.gson;

public class JsonParseException extends RuntimeException
{
    static final long serialVersionUID = -4086729973971783390L;
    
    public JsonParseException(final String message) {
        super(message);
    }
    
    public JsonParseException(final String message, final Throwable cause) {
        super(message, cause);
    }
    
    public JsonParseException(final Throwable cause) {
        super(cause);
    }
}
