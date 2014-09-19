package com.fusepowered.util;

public enum FuseAdErrors
{
    FUSE_AD_NOT_CONNECTED(1), 
    FUSE_AD_NO_ERROR(0);
    
    private int errorCode;
    
    private FuseAdErrors(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseAdErrors getFuseAdErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseAdErrors.FUSE_AD_NO_ERROR;
            }
            case 0: {
                return FuseAdErrors.FUSE_AD_NO_ERROR;
            }
            case 1: {
                return FuseAdErrors.FUSE_AD_NOT_CONNECTED;
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
