package com.fusepowered.util;

public enum FuseAddFriendError
{
    FUSE_ADD_FRIEND_BAD_ID(1), 
    FUSE_ADD_FRIEND_NOT_CONNECTED(2), 
    FUSE_ADD_FRIEND_NO_ERROR(0), 
    FUSE_ADD_FRIEND_REQUEST_FAILED(3);
    
    private int errorCode;
    
    private FuseAddFriendError(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseAddFriendError getFuseAddFriendErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseAddFriendError.FUSE_ADD_FRIEND_NO_ERROR;
            }
            case 0: {
                return FuseAddFriendError.FUSE_ADD_FRIEND_NO_ERROR;
            }
            case 1: {
                return FuseAddFriendError.FUSE_ADD_FRIEND_BAD_ID;
            }
            case 2: {
                return FuseAddFriendError.FUSE_ADD_FRIEND_NOT_CONNECTED;
            }
            case 3: {
                return FuseAddFriendError.FUSE_ADD_FRIEND_REQUEST_FAILED;
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
