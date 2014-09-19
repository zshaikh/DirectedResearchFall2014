package com.fusepowered.util;

import android.util.*;

public class Ad
{
    public static final int AD_PROVIDERS = 5;
    public static final int AD_PROVIDER_APPLIFIER = 4;
    public static final int AD_PROVIDER_FUSE = 1;
    public static final int AD_PROVIDER_MILLENIAL = 3;
    public static final int AD_PROVIDER_MOPUB = 2;
    public static final int AD_PROVIDER_NONE = 0;
    public static final int AD_PROVIDER_VUNGLE = 5;
    private String action;
    private String attributes;
    private boolean displayed;
    private String htmlBody;
    private int id;
    public int lh;
    public int lw;
    public int o;
    public int ph;
    public String phoneLandscape;
    public String phonePortrait;
    public int pw;
    public String tabletLandscape;
    public String tabletPortrait;
    public int type;
    public int[] waterfall;
    
    Ad() {
        super();
        this.waterfall = new int[5];
        for (int i = 0; i < 5; ++i) {
            this.waterfall[i] = 0;
        }
        for (int j = 0; j < 5; ++j) {
            Log.d("AD", "This is the type index " + j + " This is the type " + this.waterfall[j]);
        }
    }
    
    public static boolean isValidAdType(final int n) {
        switch (n) {
            default: {
                return false;
            }
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5: {
                return true;
            }
        }
    }
    
    public String getAction() {
        return this.action;
    }
    
    public String getHtmlBody() {
        return this.htmlBody;
    }
    
    public int getId() {
        return this.id;
    }
    
    public String getScreenAttributes() {
        return this.attributes;
    }
    
    public boolean hasHtmlBody() {
        return this.htmlBody != null && this.htmlBody.length() > 0;
    }
    
    public boolean isDisplayed() {
        return this.displayed;
    }
    
    public void setAction(final String action) {
        this.action = action;
    }
    
    public void setDisplayed(final boolean displayed) {
        this.displayed = displayed;
    }
    
    public void setHtmlBody(final String htmlBody) {
        this.htmlBody = htmlBody;
    }
    
    public void setId(final int id) {
        this.id = id;
    }
    
    public void setScreenAttributes(final String attributes) {
        this.attributes = attributes;
    }
    
    @Override
    public String toString() {
        return "Ad [id=" + this.id + ", htmlBody=" + this.htmlBody + ", action=" + this.action + ", displayed=" + this.displayed + ']';
    }
    
    public boolean waterfallContains(final int n) {
        for (int i = 0; i < this.waterfall.length; ++i) {
            if (this.waterfall[i] == n) {
                return true;
            }
        }
        return false;
    }
}
