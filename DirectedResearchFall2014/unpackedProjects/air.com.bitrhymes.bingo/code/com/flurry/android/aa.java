package com.flurry.android;

import android.util.*;
import java.util.*;
import android.content.*;
import android.os.*;
import android.app.*;
import android.view.*;
import com.jumptap.adtag.utils.*;
import com.jumptap.adtag.*;

final class aa implements JtAdViewListener
{
    private /* synthetic */ e ad;
    
    aa(final e ad) {
        this.ad = ad;
        super();
    }
    
    public final void onAdError(final JtAdView jtAdView, final int n, final int n2) {
        Log.d(e.d, "Jumptap AdView error.");
        this.ad.onRenderFailed(Collections.emptyMap());
    }
    
    public final void onFocusChange(final JtAdView jtAdView, final int n, final boolean b) {
        Log.d(e.d, "Jumptap AdView focus changed.");
    }
    
    public final void onInterstitialDismissed(final JtAdView jtAdView, final int n) {
        this.ad.onAdClosed(Collections.emptyMap());
        Log.d(e.d, "Jumptap AdView dismissed.");
    }
    
    public final void onNewAd(final JtAdView jtAdView, final int n, final String s) {
        this.ad.onAdFilled(Collections.emptyMap());
        this.ad.onAdShown(Collections.emptyMap());
        Log.d(e.d, "Jumptap AdView new ad.");
    }
    
    public final void onNoAdFound(final JtAdView jtAdView, final int n) {
        this.ad.onRenderFailed(Collections.emptyMap());
        Log.d(e.d, "Jumptap AdView no ad found.");
    }
}
