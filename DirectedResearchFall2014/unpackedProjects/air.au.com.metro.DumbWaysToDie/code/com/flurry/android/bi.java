package com.flurry.android;

import android.content.*;
import android.os.*;
import android.util.*;
import android.app.*;
import com.millennialmedia.android.*;
import android.view.*;

final class bi extends AdNetworkView
{
    private static final String d;
    private final String g;
    
    static {
        d = bi.class.getSimpleName();
    }
    
    bi(final Context context, final FlurryAds flurryAds, final cz cz, final AdCreative adCreative, final Bundle bundle) {
        super(context, flurryAds, cz, adCreative);
        this.g = bundle.getString("com.flurry.millennial.MYAPID");
        this.setFocusable(true);
    }
    
    @Override
    public final void initLayout(final Context context) {
        final int height = this.getAdCreative().getHeight();
        final int width = this.getAdCreative().getWidth();
        String s;
        if (width >= 320 && height >= 50) {
            Log.d(bi.d, "Determined Millennial AdSize as MMBannerAdBottom");
            s = "MMBannerAdBottom";
        }
        else if (width >= 300 && height >= 250) {
            Log.d(bi.d, "Determined Millennial AdSize as MMBannerAdRectangle");
            s = "MMBannerAdRectangle";
        }
        else {
            Log.d(bi.d, "Could not find Millennial AdSize that matches size");
            s = null;
        }
        if (s != null) {
            final MMAdView mmAdView = new MMAdView((Context)context, this.g, s, 0);
            mmAdView.setId(1897808289);
            mmAdView.setHorizontalScrollBarEnabled(false);
            mmAdView.setVerticalScrollBarEnabled(false);
            this.setGravity(17);
            mmAdView.setListener((MMAdView$MMAdListener)new bg(this));
            this.addView((View)mmAdView);
            return;
        }
        Log.d(bi.d, "**********Could not load Millennial Ad");
    }
}
