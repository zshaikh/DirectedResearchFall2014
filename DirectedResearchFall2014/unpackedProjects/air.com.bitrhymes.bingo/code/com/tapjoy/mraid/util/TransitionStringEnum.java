package com.tapjoy.mraid.util;

public enum TransitionStringEnum
{
    DEFAULT("default"), 
    DISSOLVE("dissolve"), 
    FADE("fade"), 
    NONE("none"), 
    ROLL("roll"), 
    SLIDE("slide"), 
    ZOOM("zoom");
    
    private String text;
    
    private TransitionStringEnum(final String text) {
        this.text = text;
    }
    
    public static TransitionStringEnum fromString(final String s) {
        if (s != null) {
            for (final TransitionStringEnum transitionStringEnum : values()) {
                if (s.equalsIgnoreCase(transitionStringEnum.text)) {
                    return transitionStringEnum;
                }
            }
        }
        return null;
    }
    
    public String getText() {
        return this.text;
    }
}
