package com.applovin.sdk;

public interface AppLovinAdLoadListener
{
    public static final int EC_UNABLE_TO_RENDER_AD = -6;
    public static final int EC_UNKNOWN_ERROR = -1;
    
    void adReceived(AppLovinAd p0);
    
    void failedToReceiveAd(int p0);
}
