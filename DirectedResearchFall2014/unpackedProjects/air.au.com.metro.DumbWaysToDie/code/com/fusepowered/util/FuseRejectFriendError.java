package com.fusepowered.util;

public enum FuseRejectFriendError
{
    FUSE_REJECT_FRIEND_BAD_ID(1), 
    FUSE_REJECT_FRIEND_NOT_CONNECTED(2), 
    FUSE_REJECT_FRIEND_NO_ERROR(0), 
    FUSE_REJECT_FRIEND_REQUEST_FAILED(3);
    
    private int errorCode;
    
    private FuseRejectFriendError(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseRejectFriendError getFuseRejectFriendErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseRejectFriendError.FUSE_REJECT_FRIEND_NO_ERROR;
            }
            case 0: {
                return FuseRejectFriendError.FUSE_REJECT_FRIEND_NO_ERROR;
            }
            case 1: {
                return FuseRejectFriendError.FUSE_REJECT_FRIEND_BAD_ID;
            }
            case 2: {
                return FuseRejectFriendError.FUSE_REJECT_FRIEND_NOT_CONNECTED;
            }
            case 3: {
                return FuseRejectFriendError.FUSE_REJECT_FRIEND_REQUEST_FAILED;
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
