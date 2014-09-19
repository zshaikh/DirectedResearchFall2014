package com.fusepowered.util;

public enum FuseMigrateFriendsError
{
    FUSE_MIGRATE_FRIEND_BAD_ID(1), 
    FUSE_MIGRATE_FRIEND_NOT_CONNECTED(2), 
    FUSE_MIGRATE_FRIEND_NO_ERROR(0), 
    FUSE_MIGRATE_FRIEND_REQUEST_FAILED(3);
    
    private int errorCode;
    
    private FuseMigrateFriendsError(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseMigrateFriendsError getFuseMigrateFriendsErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseMigrateFriendsError.FUSE_MIGRATE_FRIEND_NO_ERROR;
            }
            case 0: {
                return FuseMigrateFriendsError.FUSE_MIGRATE_FRIEND_NO_ERROR;
            }
            case 1: {
                return FuseMigrateFriendsError.FUSE_MIGRATE_FRIEND_BAD_ID;
            }
            case 2: {
                return FuseMigrateFriendsError.FUSE_MIGRATE_FRIEND_NOT_CONNECTED;
            }
            case 3: {
                return FuseMigrateFriendsError.FUSE_MIGRATE_FRIEND_REQUEST_FAILED;
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
