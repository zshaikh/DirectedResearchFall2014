package com.flurry.org.apache.avro;

import java.io.*;

public class AvroRemoteException extends IOException
{
    private Object value;
    
    protected AvroRemoteException() {
        super();
    }
    
    public AvroRemoteException(final Object value) {
        String string;
        if (value != null) {
            string = value.toString();
        }
        else {
            string = null;
        }
        super(string);
        this.value = value;
    }
    
    public AvroRemoteException(final Object value, final Throwable cause) {
        String string;
        if (value != null) {
            string = value.toString();
        }
        else {
            string = null;
        }
        super(string, cause);
        this.value = value;
    }
    
    public AvroRemoteException(final Throwable cause) {
        this((Object)cause.toString());
        this.initCause(cause);
    }
    
    public Object getValue() {
        return this.value;
    }
}
