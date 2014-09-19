package com.applovin.sdk;

public class AppLovinSdkSettings
{
    private boolean a;
    private long b;
    private String c;
    
    public AppLovinSdkSettings() {
        super();
        this.b = -1L;
    }
    
    public String getAutoPreloadSizes() {
        return this.c;
    }
    
    public long getBannerAdRefreshSeconds() {
        return this.b;
    }
    
    public boolean isVerboseLoggingEnabled() {
        return this.a;
    }
    
    public void setAutoPreloadSizes(final String c) {
        this.c = c;
    }
    
    public void setBannerAdRefreshSeconds(final long b) {
        this.b = b;
    }
    
    public void setVerboseLogging(final boolean a) {
        this.a = a;
    }
}
