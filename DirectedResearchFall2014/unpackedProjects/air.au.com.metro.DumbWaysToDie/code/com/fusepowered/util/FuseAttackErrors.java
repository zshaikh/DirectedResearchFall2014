package com.fusepowered.util;

public enum FuseAttackErrors
{
    FUSE_ATTACK_NOT_CONNECTED(1), 
    FUSE_ATTACK_NO_ERROR(0), 
    FUSE_ATTACK_REQUEST_FAILED(2), 
    FUSE_ATTACK_SERVER_ERROR(3);
    
    private int errorCode;
    
    private FuseAttackErrors(final int errorCode) {
        this.errorCode = errorCode;
    }
    
    public static FuseAttackErrors getFuseAttackErrorByCode(final int n) {
        switch (n) {
            default: {
                return FuseAttackErrors.FUSE_ATTACK_NO_ERROR;
            }
            case 0: {
                return FuseAttackErrors.FUSE_ATTACK_NO_ERROR;
            }
            case 1: {
                return FuseAttackErrors.FUSE_ATTACK_NOT_CONNECTED;
            }
            case 2: {
                return FuseAttackErrors.FUSE_ATTACK_REQUEST_FAILED;
            }
            case 3: {
                return FuseAttackErrors.FUSE_ATTACK_SERVER_ERROR;
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
