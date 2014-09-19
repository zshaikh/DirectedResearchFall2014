package com.fusepowered.util;

public enum FuseFriendsListError
{
    FUSE_FRIENDS_LIST_NOT_CONNECTED(2), 
    FUSE_FRIENDS_LIST_NO_ERROR(0), 
    FUSE_FRIENDS_LIST_REQUEST_FAILED(3), 
    FUSE_FRIENDS_LIST_SERVER_ERROR(1);
    
    private int errorCode;
    
    private FuseFriendsListError(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseFriendsListError getFuseFriendsListErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseFriendsListError.FUSE_FRIENDS_LIST_NO_ERROR;
            }
            case 0: {
                return FuseFriendsListError.FUSE_FRIENDS_LIST_NO_ERROR;
            }
            case 1: {
                return FuseFriendsListError.FUSE_FRIENDS_LIST_SERVER_ERROR;
            }
            case 2: {
                return FuseFriendsListError.FUSE_FRIENDS_LIST_NOT_CONNECTED;
            }
            case 3: {
                return FuseFriendsListError.FUSE_FRIENDS_LIST_REQUEST_FAILED;
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
