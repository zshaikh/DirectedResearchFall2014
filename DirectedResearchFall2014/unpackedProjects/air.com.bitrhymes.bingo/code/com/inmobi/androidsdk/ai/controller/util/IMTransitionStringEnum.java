package com.inmobi.androidsdk.ai.controller.util;

public enum IMTransitionStringEnum
{
    DEFAULT("DEFAULT", 0, "default"), 
    DISSOLVE("DISSOLVE", 1, "dissolve"), 
    FADE("FADE", 2, "fade"), 
    NONE("NONE", 6, "none"), 
    ROLL("ROLL", 3, "roll"), 
    SLIDE("SLIDE", 4, "slide"), 
    ZOOM("ZOOM", 5, "zoom");
    
    private String a;
    
    static {
        b = new IMTransitionStringEnum[] { IMTransitionStringEnum.DEFAULT, IMTransitionStringEnum.DISSOLVE, IMTransitionStringEnum.FADE, IMTransitionStringEnum.ROLL, IMTransitionStringEnum.SLIDE, IMTransitionStringEnum.ZOOM, IMTransitionStringEnum.NONE };
    }
    
    private IMTransitionStringEnum(final String name, final int ordinal, final String a) {
        this.a = a;
    }
    
    public static IMTransitionStringEnum fromString(final String s) {
        if (s != null) {
            for (final IMTransitionStringEnum imTransitionStringEnum : values()) {
                if (s.equalsIgnoreCase(imTransitionStringEnum.a)) {
                    return imTransitionStringEnum;
                }
            }
        }
        return null;
    }
    
    public String getText() {
        return this.a;
    }
}
