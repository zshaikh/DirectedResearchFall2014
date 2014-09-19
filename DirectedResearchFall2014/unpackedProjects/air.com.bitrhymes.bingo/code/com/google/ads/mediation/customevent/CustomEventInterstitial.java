package com.google.ads.mediation.customevent;

import android.app.*;
import com.google.ads.mediation.*;

public interface CustomEventInterstitial extends CustomEvent
{
    void requestInterstitialAd(CustomEventInterstitialListener p0, Activity p1, String p2, String p3, MediationAdRequest p4, Object p5);
    
    void showInterstitial();
}
