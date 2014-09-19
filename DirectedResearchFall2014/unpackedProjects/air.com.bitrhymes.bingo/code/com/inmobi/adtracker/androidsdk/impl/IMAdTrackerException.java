package com.inmobi.adtracker.androidsdk.impl;

public class IMAdTrackerException extends RuntimeException
{
    private static final long serialVersionUID = -5524586385223714640L;
    
    public IMAdTrackerException(final String message) {
        super();
        throw new RuntimeException(message);
    }
}
