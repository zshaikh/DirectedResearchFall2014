package com.inmobi.androidsdk.impl;

import java.io.*;

public class IMAdUnit implements Serializable
{
    private static final long serialVersionUID = 7987544297386338802L;
    private AdActionNames a;
    private AdTypes b;
    private String c;
    private String d;
    private boolean e;
    private String f;
    private String g;
    private int h;
    private int i;
    
    public IMAdUnit() {
        super();
        this.b = AdTypes.NONE;
        this.a = AdActionNames.AdActionName_Web;
    }
    
    public static AdActionNames adActionNamefromString(final String s) {
        AdActionNames adActionNames = AdActionNames.AdActionName_None;
        if (s != null) {
            if (s.equalsIgnoreCase("call")) {
                adActionNames = AdActionNames.AdActionName_Call;
            }
            else {
                if (s.equalsIgnoreCase("sms")) {
                    return AdActionNames.AdActionName_SMS;
                }
                if (s.equalsIgnoreCase("search")) {
                    return AdActionNames.AdActionName_Search;
                }
                if (s.equalsIgnoreCase("android")) {
                    return AdActionNames.AdActionName_Android;
                }
                if (s.equalsIgnoreCase("web")) {
                    return AdActionNames.AdActionName_Web;
                }
                if (s.equalsIgnoreCase("map")) {
                    return AdActionNames.AdActionName_Map;
                }
                if (s.equalsIgnoreCase("audio")) {
                    return AdActionNames.AdActionName_Audio;
                }
                if (s.equalsIgnoreCase("video")) {
                    return AdActionNames.AdActionName_Video;
                }
                return AdActionNames.AdActionName_None;
            }
        }
        return adActionNames;
    }
    
    public static AdTypes adTypefromString(final String s) {
        AdTypes adTypes = AdTypes.NONE;
        if (s != null) {
            if (s.equalsIgnoreCase("banner")) {
                adTypes = AdTypes.BANNER;
            }
            else {
                if (s.equalsIgnoreCase("text")) {
                    return AdTypes.TEXT;
                }
                if (s.equalsIgnoreCase("search")) {
                    return AdTypes.SEARCH;
                }
                if (s.equalsIgnoreCase("rm")) {
                    return AdTypes.RICH_MEDIA;
                }
            }
        }
        return adTypes;
    }
    
    public AdActionNames getAdActionName() {
        return this.a;
    }
    
    public AdTypes getAdType() {
        return this.b;
    }
    
    public String getCDATABlock() {
        return this.g;
    }
    
    public String getDefaultTargetUrl() {
        return this.d;
    }
    
    public String getDeviceInfoUploadUrl() {
        return this.f;
    }
    
    public int getHeight() {
        return this.i;
    }
    
    public String getTargetUrl() {
        return this.c;
    }
    
    public int getWidth() {
        return this.h;
    }
    
    public boolean isSendDeviceInfo() {
        return this.e;
    }
    
    public void setAdActionName(final AdActionNames a) {
        this.a = a;
    }
    
    public void setAdType(final AdTypes b) {
        this.b = b;
    }
    
    public void setCDATABlock(final String g) {
        this.g = g;
    }
    
    public void setDefaultTargetUrl(final String d) {
        this.d = d;
    }
    
    public void setDeviceInfoUploadUrl(final String f) {
        this.f = f;
    }
    
    public void setHeight(final int i) {
        this.i = i;
    }
    
    public void setSendDeviceInfo(final boolean e) {
        this.e = e;
    }
    
    public void setTargetUrl(final String c) {
        this.c = c;
    }
    
    public void setWidth(final int h) {
        this.h = h;
    }
    
    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer();
        sb.append("AdUnit: ");
        sb.append(" adActionName: " + this.a);
        sb.append(" adType: " + this.b);
        sb.append(" targetUrl: " + this.c);
        sb.append(" width: " + this.h);
        sb.append(" height: " + this.i);
        return sb.toString();
    }
    
    public enum AdActionNames
    {
        AdActionName_Android("AdActionName_Android", 5), 
        AdActionName_Audio("AdActionName_Audio", 7), 
        AdActionName_Call("AdActionName_Call", 4), 
        AdActionName_Map("AdActionName_Map", 6), 
        AdActionName_None("AdActionName_None", 0), 
        AdActionName_SMS("AdActionName_SMS", 2), 
        AdActionName_Search("AdActionName_Search", 3), 
        AdActionName_Video("AdActionName_Video", 8), 
        AdActionName_Web("AdActionName_Web", 1);
        
        static {
            a = new AdActionNames[] { AdActionNames.AdActionName_None, AdActionNames.AdActionName_Web, AdActionNames.AdActionName_SMS, AdActionNames.AdActionName_Search, AdActionNames.AdActionName_Call, AdActionNames.AdActionName_Android, AdActionNames.AdActionName_Map, AdActionNames.AdActionName_Audio, AdActionNames.AdActionName_Video };
        }
        
        @Override
        public String toString() {
            return super.toString().replaceFirst("AdActionName_", "").toLowerCase();
        }
    }
    
    public enum AdTypes
    {
        BANNER("BANNER", 2), 
        NONE("NONE", 0), 
        RICH_MEDIA("RICH_MEDIA", 4), 
        SEARCH("SEARCH", 3), 
        TEXT("TEXT", 1);
        
        static {
            a = new AdTypes[] { AdTypes.NONE, AdTypes.TEXT, AdTypes.BANNER, AdTypes.SEARCH, AdTypes.RICH_MEDIA };
        }
        
        @Override
        public String toString() {
            return super.toString().replaceFirst("AdType_", "").toLowerCase();
        }
    }
}
