package com.google.ads.mediation;

import com.google.ads.*;

public interface MediationInterstitialListener
{
    void onDismissScreen(MediationInterstitialAdapter<?, ?> p0);
    
    void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> p0, AdRequest.ErrorCode p1);
    
    void onLeaveApplication(MediationInterstitialAdapter<?, ?> p0);
    
    void onPresentScreen(MediationInterstitialAdapter<?, ?> p0);
    
    void onReceivedAd(MediationInterstitialAdapter<?, ?> p0);
}
