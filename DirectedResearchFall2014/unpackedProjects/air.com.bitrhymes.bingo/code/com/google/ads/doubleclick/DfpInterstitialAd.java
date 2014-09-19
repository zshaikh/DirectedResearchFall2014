package com.google.ads.doubleclick;

import android.app.*;
import com.google.ads.*;

public class DfpInterstitialAd extends InterstitialAd
{
    public DfpInterstitialAd(final Activity activity, final String s) {
        super(activity, s);
    }
    
    public DfpInterstitialAd(final Activity activity, final String s, final boolean b) {
        super(activity, s, b);
    }
    
    public void setAppEventListener(final AppEventListener appEventListener) {
        super.setAppEventListener(appEventListener);
    }
}
