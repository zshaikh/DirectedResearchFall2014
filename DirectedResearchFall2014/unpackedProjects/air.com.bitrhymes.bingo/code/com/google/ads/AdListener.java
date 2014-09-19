package com.google.ads;

public interface AdListener
{
    void onDismissScreen(Ad p0);
    
    void onFailedToReceiveAd(Ad p0, AdRequest.ErrorCode p1);
    
    void onLeaveApplication(Ad p0);
    
    void onPresentScreen(Ad p0);
    
    void onReceiveAd(Ad p0);
}
