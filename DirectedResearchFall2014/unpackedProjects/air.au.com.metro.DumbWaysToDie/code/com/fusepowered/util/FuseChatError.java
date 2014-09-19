package com.fusepowered.util;

public enum FuseChatError
{
    FUSE_CHAT_NONE(0), 
    FUSE_CHAT_NOT_CONNECTED(1), 
    FUSE_CHAT_REQUEST_FAILED(2);
    
    private int errorCode;
    
    private FuseChatError(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseChatError getFuseChatErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseChatError.FUSE_CHAT_NONE;
            }
            case 0: {
                return FuseChatError.FUSE_CHAT_NONE;
            }
            case 1: {
                return FuseChatError.FUSE_CHAT_NOT_CONNECTED;
            }
            case 2: {
                return FuseChatError.FUSE_CHAT_REQUEST_FAILED;
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
