package com.google.ads.mediation.customevent;

import android.view.*;

public interface CustomEventBannerListener extends CustomEventListener
{
    void onClick();
    
    void onReceivedAd(View p0);
}
