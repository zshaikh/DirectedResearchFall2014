package com.applovin.sdk;

public class AppLovinAd
{
    private final String a;
    private final AppLovinAdSize b;
    private final String c;
    private final String d;
    private final String e;
    
    public AppLovinAd(final String s, final AppLovinAdSize appLovinAdSize, final String s2, final String s3) {
        this(s, appLovinAdSize, s2, s3, null);
    }
    
    public AppLovinAd(final String a, final AppLovinAdSize b, final String c, final String d, final String e) {
        super();
        if (a == null) {
            throw new IllegalArgumentException("No html specified");
        }
        if (b == null) {
            throw new IllegalArgumentException("No size specified");
        }
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
        this.e = e;
    }
    
    public String getClickTrackerUrl() {
        return this.d;
    }
    
    public String getDestinationUrl() {
        return this.c;
    }
    
    public String getHtml() {
        return this.a;
    }
    
    public AppLovinAdSize getSize() {
        return this.b;
    }
    
    public String getVideoFilename() {
        return this.e;
    }
}
