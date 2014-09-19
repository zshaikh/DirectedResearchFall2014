package com.fusepowered.util;

public enum FuseMailError
{
    FUSE_MAIL_NOT_CONNECTED(2), 
    FUSE_MAIL_NO_ERROR(0), 
    FUSE_MAIL_REQUEST_FAILED(3), 
    FUSE_MAIL_SERVER_ERROR(1);
    
    private int errorCode;
    
    private FuseMailError(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseMailError getFuseMailErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseMailError.FUSE_MAIL_NO_ERROR;
            }
            case 1: {
                return FuseMailError.FUSE_MAIL_SERVER_ERROR;
            }
            case 2: {
                return FuseMailError.FUSE_MAIL_NOT_CONNECTED;
            }
            case 3: {
                return FuseMailError.FUSE_MAIL_REQUEST_FAILED;
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
