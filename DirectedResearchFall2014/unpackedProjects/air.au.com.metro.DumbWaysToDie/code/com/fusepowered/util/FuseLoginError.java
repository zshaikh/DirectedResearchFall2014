package com.fusepowered.util;

public enum FuseLoginError
{
    FUSE_ACCOUNT_NOT_CONNECTED(2), 
    FUSE_ACCOUNT_NO_ERROR(0), 
    FUSE_ACCOUNT_REQUEST_FAILED(3), 
    FUSE_ACCOUNT_SERVER_ERROR(1), 
    FUSE_ACCOUNT_SESSION_FAILURE(4), 
    FUSE_ERROR_XML_PARSE_ERROR(5);
    
    private int errorCode;
    
    private FuseLoginError(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseLoginError getFuseLoginErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseLoginError.FUSE_ACCOUNT_NO_ERROR;
            }
            case 0: {
                return FuseLoginError.FUSE_ACCOUNT_NO_ERROR;
            }
            case 1: {
                return FuseLoginError.FUSE_ACCOUNT_SERVER_ERROR;
            }
            case 2: {
                return FuseLoginError.FUSE_ACCOUNT_NOT_CONNECTED;
            }
            case 3: {
                return FuseLoginError.FUSE_ACCOUNT_REQUEST_FAILED;
            }
            case 4: {
                return FuseLoginError.FUSE_ACCOUNT_SESSION_FAILURE;
            }
            case 5: {
                return FuseLoginError.FUSE_ERROR_XML_PARSE_ERROR;
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
