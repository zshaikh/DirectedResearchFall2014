package com.flurry.android;

import com.millennialmedia.android.*;
import android.util.*;
import android.content.*;
import android.os.*;
import android.app.*;
import java.util.*;

final class cc implements MMAdView$MMAdListener
{
    private /* synthetic */ ar ep;
    
    cc(final ar ep) {
        this.ep = ep;
        super();
    }
    
    public final void MMAdCachingCompleted(final MMAdView mmAdView, final boolean b) {
        Log.d(ar.d, "Millennial MMAdView Interstitial caching completed." + System.currentTimeMillis() + " fInter_success = " + this.ep.bL + " success = " + b);
        if (!this.ep.bL) {
            mmAdView.display();
        }
    }
    
    public final void MMAdClickedToOverlay(final MMAdView mmAdView) {
        this.ep.onAdClicked(Collections.emptyMap());
        Log.d(ar.d, "Millennial MMAdView Interstitial clicked to overlay." + System.currentTimeMillis());
    }
    
    public final void MMAdFailed(final MMAdView mmAdView) {
        this.ep.onRenderFailed(Collections.emptyMap());
        Log.d(ar.d, "Millennial MMAdView Interstitial failed to load ad.");
    }
    
    public final void MMAdOverlayLaunched(final MMAdView mmAdView) {
        this.ep.onAdFilled(Collections.emptyMap());
        this.ep.onAdShown(Collections.emptyMap());
        this.ep.onAdClosed(Collections.emptyMap());
        Log.d(ar.d, "Millennial MMAdView Interstitial overlay launched." + System.currentTimeMillis());
    }
    
    public final void MMAdRequestIsCaching(final MMAdView mmAdView) {
        Log.d(ar.d, "Millennial MMAdView Interstitial request is caching.");
    }
    
    public final void MMAdReturned(final MMAdView mmAdView) {
        Log.d(ar.d, "Millennial MMAdView In returned interstitial ad.");
    }
}
