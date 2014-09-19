package com.flurry.android;

import android.util.*;
import java.util.*;
import android.content.*;
import android.os.*;
import android.app.*;
import com.jumptap.adtag.utils.*;
import com.jumptap.adtag.*;

final class ah implements JtAdViewListener
{
    private /* synthetic */ bo bz;
    
    ah(final bo bz) {
        this.bz = bz;
        super();
    }
    
    public final void onAdError(final JtAdView jtAdView, final int n, final int n2) {
        Log.d(bo.d, "Jumptap Interstitial error.");
    }
    
    public final void onFocusChange(final JtAdView jtAdView, final int n, final boolean b) {
        Log.d(bo.d, "Jumptap Interstitial focus changed.");
    }
    
    public final void onInterstitialDismissed(final JtAdView jtAdView, final int n) {
        this.bz.onAdClosed(Collections.emptyMap());
        Log.d(bo.d, "Jumptap Interstitial dismissed.");
    }
    
    public final void onNewAd(final JtAdView jtAdView, final int n, final String s) {
        this.bz.onAdFilled(Collections.emptyMap());
        this.bz.onAdShown(Collections.emptyMap());
        Log.d(bo.d, "Jumptap Interstitial new ad.");
    }
    
    public final void onNoAdFound(final JtAdView jtAdView, final int n) {
        this.bz.onRenderFailed(Collections.emptyMap());
        Log.d(bo.d, "Jumptap Interstitial no ad found.");
    }
}
