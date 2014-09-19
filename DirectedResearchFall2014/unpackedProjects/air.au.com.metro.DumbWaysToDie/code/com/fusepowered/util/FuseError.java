package com.fusepowered.util;

public enum FuseError
{
    FUSE_ERROR_NONE(0), 
    FUSE_ERROR_NOT_CONNECTED(1), 
    FUSE_ERROR_REQUEST_FAILED(2), 
    FUSE_ERROR_XML_PARSE_ERROR(3);
    
    private int errorCode;
    
    private FuseError(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseError getFuseErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseError.FUSE_ERROR_NONE;
            }
            case 0: {
                return FuseError.FUSE_ERROR_NONE;
            }
            case 1: {
                return FuseError.FUSE_ERROR_NOT_CONNECTED;
            }
            case 2: {
                return FuseError.FUSE_ERROR_REQUEST_FAILED;
            }
            case 3: {
                return FuseError.FUSE_ERROR_XML_PARSE_ERROR;
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
