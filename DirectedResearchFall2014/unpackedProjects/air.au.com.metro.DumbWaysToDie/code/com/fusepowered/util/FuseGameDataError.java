package com.fusepowered.util;

public enum FuseGameDataError
{
    FUSE_GD_ERROR_NONE(0), 
    FUSE_GD_ERROR_NOT_CONNECTED(2), 
    FUSE_GD_ERROR_NO_ACCOUNT(1), 
    FUSE_GD_ERROR_REQUEST_FAILED(3), 
    FUSE_GD_ERROR_XML_PARSE_ERROR(4);
    
    private int errorCode;
    
    private FuseGameDataError(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseGameDataError getFuseGameDataErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseGameDataError.FUSE_GD_ERROR_NONE;
            }
            case 0: {
                return FuseGameDataError.FUSE_GD_ERROR_NONE;
            }
            case 1: {
                return FuseGameDataError.FUSE_GD_ERROR_NO_ACCOUNT;
            }
            case 2: {
                return FuseGameDataError.FUSE_GD_ERROR_NOT_CONNECTED;
            }
            case 3: {
                return FuseGameDataError.FUSE_GD_ERROR_REQUEST_FAILED;
            }
            case 4: {
                return FuseGameDataError.FUSE_GD_ERROR_XML_PARSE_ERROR;
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
