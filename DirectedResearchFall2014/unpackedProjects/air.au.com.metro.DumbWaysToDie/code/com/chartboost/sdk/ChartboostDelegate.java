package com.chartboost.sdk;

public interface ChartboostDelegate
{
    void didCacheInterstitial(String p0);
    
    void didCacheMoreApps();
    
    void didClickInterstitial(String p0);
    
    void didClickMoreApps();
    
    void didCloseInterstitial(String p0);
    
    void didCloseMoreApps();
    
    void didDismissInterstitial(String p0);
    
    void didDismissMoreApps();
    
    void didFailToLoadInterstitial(String p0);
    
    void didFailToLoadMoreApps();
    
    void didShowInterstitial(String p0);
    
    void didShowMoreApps();
    
    boolean shouldDisplayInterstitial(String p0);
    
    boolean shouldDisplayLoadingViewForMoreApps();
    
    boolean shouldDisplayMoreApps();
    
    boolean shouldRequestInterstitial(String p0);
    
    boolean shouldRequestInterstitialsInFirstSession();
    
    boolean shouldRequestMoreApps();
}
