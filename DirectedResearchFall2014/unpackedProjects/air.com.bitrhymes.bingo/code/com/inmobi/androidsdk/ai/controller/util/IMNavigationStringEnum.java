package com.inmobi.androidsdk.ai.controller.util;

public enum IMNavigationStringEnum
{
    BACK("BACK", 2, "back"), 
    CLOSE("CLOSE", 1, "close"), 
    FORWARD("FORWARD", 3, "forward"), 
    NONE("NONE", 0, "none"), 
    REFRESH("REFRESH", 4, "refresh");
    
    private String a;
    
    static {
        b = new IMNavigationStringEnum[] { IMNavigationStringEnum.NONE, IMNavigationStringEnum.CLOSE, IMNavigationStringEnum.BACK, IMNavigationStringEnum.FORWARD, IMNavigationStringEnum.REFRESH };
    }
    
    private IMNavigationStringEnum(final String name, final int ordinal, final String a) {
        this.a = a;
    }
    
    public static IMNavigationStringEnum fromString(final String s) {
        if (s != null) {
            for (final IMNavigationStringEnum imNavigationStringEnum : values()) {
                if (s.equalsIgnoreCase(imNavigationStringEnum.a)) {
                    return imNavigationStringEnum;
                }
            }
        }
        return null;
    }
    
    public String getText() {
        return this.a;
    }
}
