package com.flurry.android;

import android.content.*;
import android.os.*;
import android.app.*;
import com.inmobi.androidsdk.*;
import android.util.*;

class u extends m
{
    private static final String d;
    private final boolean P;
    private final String g;
    
    static {
        d = u.class.getSimpleName();
    }
    
    public u(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit, final Bundle bundle) {
        super(context, flurryAds, cz, adUnit);
        this.g = bundle.getString("com.flurry.inmobi.MY_APP_ID");
        this.P = bundle.getBoolean("com.flurry.inmobi.test");
    }
    
    @Override
    public final void f() {
        final IMAdInterstitial imAdInterstitial = new IMAdInterstitial((Activity)this.getContext(), this.g);
        imAdInterstitial.setImAdInterstitialListener((IMAdInterstitialListener)new ca(this));
        final IMAdRequest imAdRequest = new IMAdRequest();
        if (this.P) {
            Log.d(u.d, "InMobi Interstitial set to Test Mode.");
            imAdRequest.setTestMode(true);
        }
        imAdInterstitial.loadNewAd(imAdRequest);
    }
}
