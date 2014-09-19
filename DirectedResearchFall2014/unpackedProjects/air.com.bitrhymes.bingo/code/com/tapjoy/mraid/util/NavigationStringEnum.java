package com.tapjoy.mraid.util;

public enum NavigationStringEnum
{
    BACK("back"), 
    CLOSE("close"), 
    FORWARD("forward"), 
    NONE("none"), 
    REFRESH("refresh");
    
    private String text;
    
    private NavigationStringEnum(final String text) {
        this.text = text;
    }
    
    public static NavigationStringEnum fromString(final String s) {
        if (s != null) {
            for (final NavigationStringEnum navigationStringEnum : values()) {
                if (s.equalsIgnoreCase(navigationStringEnum.text)) {
                    return navigationStringEnum;
                }
            }
        }
        return null;
    }
    
    public String getText() {
        return this.text;
    }
}
