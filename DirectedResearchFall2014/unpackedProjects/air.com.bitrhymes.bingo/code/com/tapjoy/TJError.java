package com.tapjoy;

public class TJError
{
    public int code;
    public String message;
    
    public TJError(final int code, final String message) {
        super();
        this.code = code;
        this.message = message;
    }
}
