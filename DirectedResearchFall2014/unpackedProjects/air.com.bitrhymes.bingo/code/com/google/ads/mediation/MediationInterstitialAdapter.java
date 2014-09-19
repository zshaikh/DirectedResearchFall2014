package com.google.ads.mediation;

import android.app.*;

public interface MediationInterstitialAdapter<ADDITIONAL_PARAMETERS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> extends MediationAdapter<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS>
{
    void requestInterstitialAd(MediationInterstitialListener p0, Activity p1, SERVER_PARAMETERS p2, MediationAdRequest p3, ADDITIONAL_PARAMETERS p4);
    
    void showInterstitial();
}
