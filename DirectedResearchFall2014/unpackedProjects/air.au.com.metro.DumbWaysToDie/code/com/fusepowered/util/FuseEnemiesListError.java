package com.fusepowered.util;

public enum FuseEnemiesListError
{
    FUSE_ENEMIES_LIST_NOT_CONNECTED(1), 
    FUSE_ENEMIES_LIST_NO_ERROR(0), 
    FUSE_ENEMIES_LIST_REQUEST_FAILED(2), 
    FUSE_ENEMIES_LIST_SERVER_ERROR(3);
    
    private int errorCode;
    
    private FuseEnemiesListError(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseEnemiesListError getFuseEnemiesListErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseEnemiesListError.FUSE_ENEMIES_LIST_NO_ERROR;
            }
            case 0: {
                return FuseEnemiesListError.FUSE_ENEMIES_LIST_NO_ERROR;
            }
            case 1: {
                return FuseEnemiesListError.FUSE_ENEMIES_LIST_NOT_CONNECTED;
            }
            case 2: {
                return FuseEnemiesListError.FUSE_ENEMIES_LIST_REQUEST_FAILED;
            }
            case 3: {
                return FuseEnemiesListError.FUSE_ENEMIES_LIST_SERVER_ERROR;
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
