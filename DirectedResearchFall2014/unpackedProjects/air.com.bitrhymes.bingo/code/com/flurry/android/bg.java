package com.flurry.android;

import com.millennialmedia.android.*;
import android.util.*;
import java.util.*;
import android.content.*;
import android.os.*;
import android.app.*;
import android.view.*;

final class bg implements MMAdView$MMAdListener
{
    private /* synthetic */ bi dg;
    
    bg(final bi dg) {
        this.dg = dg;
        super();
    }
    
    public final void MMAdCachingCompleted(final MMAdView mmAdView, final boolean b) {
        Log.d(bi.d, "Millennial MMAdView banner caching completed.");
    }
    
    public final void MMAdClickedToOverlay(final MMAdView mmAdView) {
        this.dg.onAdClicked(Collections.emptyMap());
        Log.d(bi.d, "Millennial MMAdView clicked to overlay.");
    }
    
    public final void MMAdFailed(final MMAdView mmAdView) {
        this.dg.onRenderFailed(Collections.emptyMap());
        Log.d(bi.d, "Millennial MMAdView failed to load ad.");
    }
    
    public final void MMAdOverlayLaunched(final MMAdView mmAdView) {
        Log.d(bi.d, "Millennial MMAdView banner overlay launched.");
    }
    
    public final void MMAdRequestIsCaching(final MMAdView mmAdView) {
        Log.d(bi.d, "Millennial MMAdView banner request is caching.");
    }
    
    public final void MMAdReturned(final MMAdView mmAdView) {
        this.dg.onAdFilled(Collections.emptyMap());
        this.dg.onAdShown(Collections.emptyMap());
        Log.d(bi.d, "Millennial MMAdView returned ad." + System.currentTimeMillis());
    }
}
