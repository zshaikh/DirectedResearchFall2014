package com.inmobi.androidsdk;

public interface IMAdInterstitialListener
{
    void onAdRequestFailed(IMAdInterstitial p0, IMAdRequest.ErrorCode p1);
    
    void onAdRequestLoaded(IMAdInterstitial p0);
    
    void onDismissAdScreen(IMAdInterstitial p0);
    
    void onLeaveApplication(IMAdInterstitial p0);
    
    void onShowAdScreen(IMAdInterstitial p0);
}
