package com.fusepowered.util;

public enum AccountType
{
    FUSE_DEVICE_ID(7), 
    FUSE_EMAIL(6), 
    FUSE_FACEBOOK(2), 
    FUSE_GAMECENTER(1), 
    FUSE_GOOGLE_PLAY(8), 
    FUSE_OPENFEINT(4), 
    FUSE_TWITTER(3), 
    FUSE_USER(5), 
    NONE(0);
    
    private int accountNumber;
    
    private AccountType(final int accountNumber) {
        this.accountNumber = accountNumber;
    }
    
    public static AccountType getAccountTypeByNumber(final int n) {
        switch (n) {
            default: {
                return AccountType.NONE;
            }
            case 0: {
                return AccountType.NONE;
            }
            case 1: {
                return AccountType.FUSE_GAMECENTER;
            }
            case 2: {
                return AccountType.FUSE_FACEBOOK;
            }
            case 3: {
                return AccountType.FUSE_TWITTER;
            }
            case 4: {
                return AccountType.FUSE_OPENFEINT;
            }
            case 5: {
                return AccountType.FUSE_USER;
            }
            case 6: {
                return AccountType.FUSE_EMAIL;
            }
            case 7: {
                return AccountType.FUSE_DEVICE_ID;
            }
            case 8: {
                return AccountType.FUSE_GOOGLE_PLAY;
            }
        }
    }
    
    public int getAccountNumber() {
        return this.accountNumber;
    }
    
    public void setAccountNumber(final int accountNumber) {
        this.accountNumber = accountNumber;
    }
}
