package com.flurry.android;

import android.content.*;
import android.os.*;
import android.app.*;
import android.widget.*;
import android.view.*;
import com.inmobi.androidsdk.*;
import android.util.*;

final class an extends AdNetworkView
{
    private static final String d;
    private final boolean P;
    private final String g;
    
    static {
        d = an.class.getSimpleName();
    }
    
    an(final Context context, final FlurryAds flurryAds, final cz cz, final AdCreative adCreative, final Bundle bundle) {
        super(context, flurryAds, cz, adCreative);
        this.g = bundle.getString("com.flurry.inmobi.MY_APP_ID");
        this.P = bundle.getBoolean("com.flurry.inmobi.test");
        this.setFocusable(true);
    }
    
    @Override
    public final void initLayout(final Context context) {
        final DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        final int n = (int)(displayMetrics.heightPixels / displayMetrics.density);
        final int n2 = (int)(displayMetrics.widthPixels / displayMetrics.density);
        int n3;
        if (n2 >= 728 && n >= 90) {
            Log.d(an.d, "Determined InMobi AdSize as 728x90");
            n3 = 11;
        }
        else if (n2 >= 468 && n >= 60) {
            Log.d(an.d, "Determined InMobi AdSize as 468x60");
            n3 = 12;
        }
        else if (n2 >= 320 && n >= 50) {
            Log.d(an.d, "Determined InMobi AdSize as 320x50");
            n3 = 15;
        }
        else if (n2 >= 300 && n >= 250) {
            Log.d(an.d, "Determined InMobi AdSize as 300x250");
            n3 = 10;
        }
        else if (n2 >= 120 && n >= 600) {
            Log.d(an.d, "Determined InMobi AdSize as 120x600");
            n3 = 13;
        }
        else {
            Log.d(an.d, "Could not find InMobi AdSize that matches size");
            n3 = -1;
        }
        if (n3 != -1) {
            final IMAdView imAdView = new IMAdView((Activity)context, n3, this.g);
            int n4;
            int n5;
            if (n3 == 15) {
                n4 = 50;
                n5 = 320;
            }
            else {
                n4 = 50;
                n5 = 320;
            }
            if (n3 == 11) {
                n5 = 728;
                n4 = 90;
            }
            if (n3 == 12) {
                n5 = 468;
                n4 = 60;
            }
            if (n3 == 10) {
                n5 = 300;
                n4 = 250;
            }
            int n6;
            int n7;
            if (n3 == 13) {
                n6 = 120;
                n7 = 600;
            }
            else {
                n7 = n4;
                n6 = n5;
            }
            final float density = this.getResources().getDisplayMetrics().density;
            imAdView.setLayoutParams((ViewGroup$LayoutParams)new LinearLayout$LayoutParams((int)(0.5f + density * n6), (int)(0.5f + density * n7)));
            imAdView.setIMAdListener((IMAdListener)new as(this));
            this.setGravity(17);
            this.addView((View)imAdView);
            final IMAdRequest imAdRequest = new IMAdRequest();
            if (this.P) {
                Log.d(an.d, "InMobi AdView set to Test Mode.");
                imAdRequest.setTestMode(true);
            }
            imAdView.setIMAdRequest(imAdRequest);
            imAdView.setRefreshInterval(-1);
            imAdView.loadNewAd();
            return;
        }
        Log.d(an.d, "**********Could not load InMobi Ad");
    }
}
