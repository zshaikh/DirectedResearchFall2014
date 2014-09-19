package com.fusepowered.util;

public enum FuseRemoveFriendError
{
    FUSE_REMOVE_FRIEND_BAD_ID(1), 
    FUSE_REMOVE_FRIEND_NOT_CONNECTED(2), 
    FUSE_REMOVE_FRIEND_NO_ERROR(0), 
    FUSE_REMOVE_FRIEND_REQUEST_FAILED(3);
    
    private int errorCode;
    
    private FuseRemoveFriendError(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseRemoveFriendError getFuseRemoveFriendErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseRemoveFriendError.FUSE_REMOVE_FRIEND_NO_ERROR;
            }
            case 0: {
                return FuseRemoveFriendError.FUSE_REMOVE_FRIEND_NO_ERROR;
            }
            case 1: {
                return FuseRemoveFriendError.FUSE_REMOVE_FRIEND_BAD_ID;
            }
            case 2: {
                return FuseRemoveFriendError.FUSE_REMOVE_FRIEND_NOT_CONNECTED;
            }
            case 3: {
                return FuseRemoveFriendError.FUSE_REMOVE_FRIEND_REQUEST_FAILED;
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
