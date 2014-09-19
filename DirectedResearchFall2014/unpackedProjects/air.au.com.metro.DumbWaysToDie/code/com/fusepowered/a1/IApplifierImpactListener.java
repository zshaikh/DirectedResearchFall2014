package com.fusepowered.a1;

public interface IApplifierImpactListener
{
    void onCampaignsAvailable();
    
    void onCampaignsFetchFailed();
    
    void onImpactClose();
    
    void onImpactOpen();
    
    void onVideoCompleted(String p0, boolean p1);
    
    void onVideoStarted();
}
