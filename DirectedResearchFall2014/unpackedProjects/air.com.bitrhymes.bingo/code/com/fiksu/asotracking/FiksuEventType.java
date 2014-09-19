package com.fiksu.asotracking;

public enum FiksuEventType
{
    CONVERSION("CONVERSION", 0, "Conversion"), 
    CUSTOM_EVENT_01("CUSTOM_EVENT_01", 7, "Custom01"), 
    LAUNCH("LAUNCH", 1, "Launch"), 
    NOTIFICATION_LAUNCH("NOTIFICATION_LAUNCH", 2, "NotificationLaunch"), 
    NOTIFICATION_RESUME("NOTIFICATION_RESUME", 4, "NotificationResume"), 
    PURCHASE("PURCHASE", 6, "Purchase"), 
    RATING("RATING", 8, "Rating"), 
    REGISTRATION("REGISTRATION", 5, "Registration"), 
    RESUME("RESUME", 3, "Resume");
    
    private final String mName;
    
    private FiksuEventType(final String name, final int ordinal, final String mName) {
        this.mName = mName;
    }
    
    public final String getName() {
        return this.mName;
    }
}
