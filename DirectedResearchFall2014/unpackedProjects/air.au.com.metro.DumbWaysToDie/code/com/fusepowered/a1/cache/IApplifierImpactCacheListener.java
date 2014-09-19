package com.fusepowered.a1.cache;

import com.fusepowered.a1.campaign.*;

public interface IApplifierImpactCacheListener
{
    void onAllCampaignsReady();
    
    void onCampaignReady(ApplifierImpactCampaignHandler p0);
    
    void onCampaignUpdateStarted();
}
