package com.flurry.org.codehaus.jackson;

import java.io.*;

public class JsonProcessingException extends IOException
{
    static final long serialVersionUID = 123L;
    protected JsonLocation mLocation;
    
    protected JsonProcessingException(final String message) {
        super(message);
    }
    
    protected JsonProcessingException(final String s, final JsonLocation jsonLocation) {
        this(s, jsonLocation, null);
    }
    
    protected JsonProcessingException(final String message, final JsonLocation mLocation, final Throwable cause) {
        super(message);
        if (cause != null) {
            this.initCause(cause);
        }
        this.mLocation = mLocation;
    }
    
    protected JsonProcessingException(final String s, final Throwable t) {
        this(s, null, t);
    }
    
    protected JsonProcessingException(final Throwable t) {
        this(null, null, t);
    }
    
    public JsonLocation getLocation() {
        return this.mLocation;
    }
    
    @Override
    public String getMessage() {
        String message = super.getMessage();
        if (message == null) {
            message = "N/A";
        }
        final JsonLocation location = this.getLocation();
        if (location != null) {
            final StringBuilder sb = new StringBuilder();
            sb.append(message);
            sb.append('\n');
            sb.append(" at ");
            sb.append(location.toString());
            return sb.toString();
        }
        return message;
    }
    
    @Override
    public String toString() {
        return this.getClass().getName() + ": " + this.getMessage();
    }
}
