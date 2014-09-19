package com.applovin.sdk;

public interface AppLovinAdService
{
    public static final String URI_AD_SERVICE = "/adservice";
    public static final String URI_API_SERVICE = "/api";
    public static final String URI_CLOSE_AD = "/adservice/close_ad";
    public static final String URI_LAUNCH_APP = "/launch";
    public static final String URI_NATIVE_FUNCTION = "/function";
    public static final String URI_NEXT_AD = "/adservice/next_ad";
    public static final String URI_OPEN_EXTERNALLY = "/openurl";
    public static final String URI_TRACK_CLICK = "/adservice/track_click";
    
    void addAdUpdateListener(AppLovinAdUpdateListener p0);
    
    void addAdUpdateListener(AppLovinAdUpdateListener p0, AppLovinAdSize p1);
    
    boolean hasPreloadedAd(AppLovinAdSize p0);
    
    void loadNextAd(AppLovinAdSize p0, AppLovinAdLoadListener p1);
    
    void loadNextAd(String p0, AppLovinAdLoadListener p1);
    
    void preloadAd(AppLovinAdSize p0);
    
    void removeAdUpdateListener(AppLovinAdUpdateListener p0, AppLovinAdSize p1);
    
    void trackAdClick(AppLovinAd p0);
}
