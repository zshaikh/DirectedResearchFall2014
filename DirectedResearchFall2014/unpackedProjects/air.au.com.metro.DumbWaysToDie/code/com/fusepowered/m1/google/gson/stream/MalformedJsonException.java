package com.fusepowered.m1.google.gson.stream;

import java.io.*;

public final class MalformedJsonException extends IOException
{
    private static final long serialVersionUID = 1L;
    
    public MalformedJsonException(final String message) {
        super(message);
    }
    
    public MalformedJsonException(final String message, final Throwable cause) {
        super(message);
        this.initCause(cause);
    }
    
    public MalformedJsonException(final Throwable cause) {
        super();
        this.initCause(cause);
    }
}
