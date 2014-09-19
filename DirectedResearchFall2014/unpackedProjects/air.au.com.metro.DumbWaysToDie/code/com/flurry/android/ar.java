package com.flurry.android;

import android.content.*;
import android.os.*;
import android.app.*;
import java.util.*;
import com.millennialmedia.android.*;
import android.util.*;

final class ar extends m
{
    private static final String d;
    private boolean bL;
    private final String g;
    
    static {
        d = ar.class.getSimpleName();
    }
    
    public ar(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit, final Bundle bundle) {
        super(context, flurryAds, cz, adUnit);
        this.g = bundle.getString("com.flurry.millennial.MYAPID");
    }
    
    @Override
    public final void f() {
        final MMAdView mmAdView = new MMAdView((Context)this.getContext(), this.g, "MMFullScreenAdTransition", true, (Hashtable)null);
        mmAdView.setId(1897808290);
        mmAdView.setListener((MMAdView$MMAdListener)new cc(this));
        mmAdView.fetch();
        this.bL = mmAdView.display();
        if (this.bL) {
            Log.d(ar.d, "Millennial MMAdView Interstitial ad displayed immediately:" + System.currentTimeMillis() + " " + this.bL);
            return;
        }
        Log.d(ar.d, "Millennial MMAdView Interstitial ad did not display immediately:" + System.currentTimeMillis() + " " + this.bL);
    }
}
