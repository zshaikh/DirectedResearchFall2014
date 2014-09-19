package com.fusepowered.util;

public enum FuseAcceptFriendError
{
    FUSE_ACCEPT_FRIEND_BAD_ID(1), 
    FUSE_ACCEPT_FRIEND_NOT_CONNECTED(2), 
    FUSE_ACCEPT_FRIEND_NO_ERROR(0), 
    FUSE_ACCEPT_FRIEND_REQUEST_FAILED(3);
    
    private int errorCode;
    
    private FuseAcceptFriendError(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseAcceptFriendError getFuseAcceptFriendErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseAcceptFriendError.FUSE_ACCEPT_FRIEND_NO_ERROR;
            }
            case 0: {
                return FuseAcceptFriendError.FUSE_ACCEPT_FRIEND_NO_ERROR;
            }
            case 1: {
                return FuseAcceptFriendError.FUSE_ACCEPT_FRIEND_BAD_ID;
            }
            case 2: {
                return FuseAcceptFriendError.FUSE_ACCEPT_FRIEND_NOT_CONNECTED;
            }
            case 3: {
                return FuseAcceptFriendError.FUSE_ACCEPT_FRIEND_REQUEST_FAILED;
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
