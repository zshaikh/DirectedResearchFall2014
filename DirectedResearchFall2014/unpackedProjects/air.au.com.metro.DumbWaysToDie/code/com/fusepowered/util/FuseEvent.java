package com.fusepowered.util;

public enum FuseEvent
{
    FUSE_EVENT_BAD_VAL(1), 
    FUSE_EVENT_NULL_PARAMETER(2), 
    FUSE_EVENT_OK(0);
    
    private int errorCode;
    
    private FuseEvent(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseEvent getFuseEventByCode(final int n) {
        switch (n) {
            default: {
                return FuseEvent.FUSE_EVENT_OK;
            }
            case 0: {
                return FuseEvent.FUSE_EVENT_OK;
            }
            case 1: {
                return FuseEvent.FUSE_EVENT_BAD_VAL;
            }
            case 2: {
                return FuseEvent.FUSE_EVENT_NULL_PARAMETER;
            }
        }
    }
    
    public int getErrorCode() {
        return this.errorCode;
    }
    
    public void setErrorCode(final int errorCode) {
        this.errorCode = errorCode;
    }
}
