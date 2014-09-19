package com.inmobi.androidsdk.impl;

public final class IMAdException extends Exception
{
    public static final int INVALID_APP_ID = 800;
    public static final int INVALID_REQUEST = 300;
    public static final int NO_FILL = 100;
    public static final int PARSE_ERROR = 200;
    public static final int SANDBOX_BADIP = 500;
    public static final int SANDBOX_OOF = 400;
    public static final int SANDBOX_UA = 700;
    public static final int SANDBOX_UAND = 600;
    private static final long serialVersionUID = -3924043691624251411L;
    private int a;
    
    public IMAdException(final String message, final int a) {
        super(message);
        this.a = 300;
        this.a = a;
    }
    
    public IMAdException(final String message, final Exception cause, final int a) {
        super(message, cause);
        this.a = 300;
        this.a = a;
    }
    
    public int getCode() {
        return this.a;
    }
    
    public void setCode(final int a) {
        this.a = a;
    }
}
