package com.google.ads.mediation.customevent;

import android.app.*;
import com.google.ads.*;
import com.google.ads.mediation.*;

public interface CustomEventBanner extends CustomEvent
{
    void requestBannerAd(CustomEventBannerListener p0, Activity p1, String p2, String p3, AdSize p4, MediationAdRequest p5, Object p6);
}
