package com.inmobi.androidsdk;

public interface IMAdListener
{
    void onAdRequestCompleted(IMAdView p0);
    
    void onAdRequestFailed(IMAdView p0, IMAdRequest.ErrorCode p1);
    
    void onDismissAdScreen(IMAdView p0);
    
    void onLeaveApplication(IMAdView p0);
    
    void onShowAdScreen(IMAdView p0);
}
