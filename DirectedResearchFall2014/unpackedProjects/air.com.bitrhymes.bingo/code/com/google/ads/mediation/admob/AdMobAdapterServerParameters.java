package com.google.ads.mediation.admob;

import com.google.ads.mediation.*;

public final class AdMobAdapterServerParameters extends MediationServerParameters
{
    @Parameter(name = "pubid")
    public String adUnitId;
    @Parameter(name = "mad_hac", required = false)
    public String allowHouseAds;
    
    public AdMobAdapterServerParameters() {
        super();
        this.allowHouseAds = null;
    }
}
