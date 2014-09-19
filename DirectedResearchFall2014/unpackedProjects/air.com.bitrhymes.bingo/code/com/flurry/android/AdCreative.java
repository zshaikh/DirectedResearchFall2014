package com.flurry.android;

public class AdCreative
{
    public static final String kAlignmentBottom = "bottom";
    public static final String kAlignmentCenter = "center";
    public static final String kAlignmentLeft = "left";
    public static final String kAlignmentMiddle = "middle";
    public static final String kAlignmentRight = "right";
    public static final String kAlignmentTop = "top";
    public static final String kFixBoth = "both";
    public static final String kFixHeight = "height";
    public static final String kFixNone = "none";
    public static final String kFixWidth = "width";
    public static final String kFormatBanner = "banner";
    public static final String kFormatCustom = "custom";
    public static final String kFormatTakeover = "takeover";
    private int i;
    private int j;
    private String k;
    private String l;
    private String m;
    
    AdCreative(final int i, final int j, final String k, final String l, final String m) {
        super();
        this.i = i;
        this.j = j;
        this.k = k;
        this.l = l;
        this.m = m;
    }
    
    public String getAlignment() {
        return this.m;
    }
    
    public String getFix() {
        return this.l;
    }
    
    public String getFormat() {
        return this.k;
    }
    
    public int getHeight() {
        return this.i;
    }
    
    public int getWidth() {
        return this.j;
    }
}
