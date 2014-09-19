package com.google.ads.mediation;

import com.google.ads.*;

public interface MediationBannerListener
{
    void onClick(MediationBannerAdapter<?, ?> p0);
    
    void onDismissScreen(MediationBannerAdapter<?, ?> p0);
    
    void onFailedToReceiveAd(MediationBannerAdapter<?, ?> p0, AdRequest.ErrorCode p1);
    
    void onLeaveApplication(MediationBannerAdapter<?, ?> p0);
    
    void onPresentScreen(MediationBannerAdapter<?, ?> p0);
    
    void onReceivedAd(MediationBannerAdapter<?, ?> p0);
}
