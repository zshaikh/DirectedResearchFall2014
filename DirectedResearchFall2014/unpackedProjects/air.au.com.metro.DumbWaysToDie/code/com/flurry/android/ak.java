package com.flurry.android;

import android.content.*;
import android.os.*;
import android.app.*;
import com.google.ads.*;
import android.util.*;
import android.text.*;

final class ak extends m
{
    private static final String d;
    private final boolean P;
    private final String bD;
    private final InterstitialAd bI;
    private final String g;
    
    static {
        d = ak.class.getSimpleName();
    }
    
    public ak(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit, final Bundle bundle) {
        super(context, flurryAds, cz, adUnit);
        this.g = bundle.getString("com.flurry.admob.MY_AD_UNIT_ID");
        this.bD = bundle.getString("com.flurry.admob.MYTEST_AD_DEVICE_ID");
        this.P = bundle.getBoolean("com.flurry.admob.test");
        (this.bI = new InterstitialAd((Activity)this.getContext(), this.g)).setAdListener((AdListener)new ch(this));
    }
    
    @Override
    public final void f() {
        final AdRequest adRequest = new AdRequest();
        if (this.P) {
            Log.d(ak.d, "Admob AdView set to Test Mode.");
            adRequest.addTestDevice(AdRequest.TEST_EMULATOR);
            if (!TextUtils.isEmpty((CharSequence)this.bD)) {
                adRequest.addTestDevice(this.bD);
            }
        }
        this.bI.loadAd(adRequest);
    }
}
