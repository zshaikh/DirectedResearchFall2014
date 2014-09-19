package com.facebook;

public class FacebookException extends RuntimeException
{
    static final long serialVersionUID = 1L;
    
    public FacebookException() {
        super();
    }
    
    public FacebookException(final String message) {
        super(message);
    }
    
    public FacebookException(final String message, final Throwable cause) {
        super(message, cause);
    }
    
    public FacebookException(final Throwable cause) {
        super(cause);
    }
}
