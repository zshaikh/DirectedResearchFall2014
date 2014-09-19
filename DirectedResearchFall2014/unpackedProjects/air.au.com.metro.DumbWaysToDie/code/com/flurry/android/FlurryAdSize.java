package com.flurry.android;

public enum FlurryAdSize
{
    BANNER_BOTTOM(2), 
    BANNER_TOP(1), 
    FULLSCREEN(3);
    
    private int et;
    
    private FlurryAdSize(final int et) {
        this.et = et;
    }
    
    static FlurryAdSize a(final AdSpaceLayout adSpaceLayout) {
        final String string = adSpaceLayout.getFormat().toString();
        final String[] split = adSpaceLayout.getAlignment().toString().split("-");
        if (string.equals("takeover")) {
            return FlurryAdSize.FULLSCREEN;
        }
        if (split[0].equals("b")) {
            return FlurryAdSize.BANNER_BOTTOM;
        }
        return FlurryAdSize.BANNER_TOP;
    }
    
    final int getValue() {
        return this.et;
    }
}
