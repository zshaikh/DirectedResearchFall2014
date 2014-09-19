package com.fusepowered.util;

public enum FuseAttackRobberyEventType
{
    FUSE_ATTACK(0), 
    FUSE_ROBBERY(1), 
    FUSE_UNKNOWN(2);
    
    private int eventCode;
    
    private FuseAttackRobberyEventType(final int eventCode) {
        this.eventCode = eventCode;
    }
    
    public static FuseAttackRobberyEventType getFuseAttackRobberyEventTypeByCode(final int n) {
        switch (n) {
            default: {
                return FuseAttackRobberyEventType.FUSE_UNKNOWN;
            }
            case 0: {
                return FuseAttackRobberyEventType.FUSE_ATTACK;
            }
            case 1: {
                return FuseAttackRobberyEventType.FUSE_ROBBERY;
            }
        }
    }
    
    public int getEventCode() {
        return this.eventCode;
    }
    
    public void setEventCode(final int eventCode) {
        this.eventCode = eventCode;
    }
}
