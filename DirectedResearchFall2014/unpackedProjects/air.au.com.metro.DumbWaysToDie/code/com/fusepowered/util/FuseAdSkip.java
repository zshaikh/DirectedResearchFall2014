package com.fusepowered.util;

public enum FuseAdSkip
{
    FUSE_AD_SKIP_NO_HTML(0), 
    FUSE_AD_SKIP_TIMEOUT(1);
    
    private int errorCode;
    
    private FuseAdSkip(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseAdSkip getFuseAdSkipErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseAdSkip.FUSE_AD_SKIP_NO_HTML;
            }
            case 0: {
                return FuseAdSkip.FUSE_AD_SKIP_NO_HTML;
            }
            case 1: {
                return FuseAdSkip.FUSE_AD_SKIP_TIMEOUT;
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
