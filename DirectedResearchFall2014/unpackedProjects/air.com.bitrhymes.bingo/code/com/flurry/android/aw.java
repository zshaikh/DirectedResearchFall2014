package com.flurry.android;

import android.content.*;
import android.util.*;
import android.app.*;
import android.widget.*;
import android.view.*;
import com.mobclix.android.sdk.*;

class aw extends AdNetworkView
{
    private static final String d;
    
    static {
        d = aw.class.getSimpleName();
    }
    
    aw(final Context context, final FlurryAds flurryAds, final cz cz, final AdCreative adCreative) {
        super(context, flurryAds, cz, adCreative);
        this.setFocusable(true);
    }
    
    @Override
    public void initLayout(final Context context) {
        int n = 50;
        final int height = this.getAdCreative().getHeight();
        final int width = this.getAdCreative().getWidth();
        Object o;
        if (width >= 320 && height >= n) {
            Log.d(aw.d, "Determined Mobclix AdSize as BANNER");
            o = new MobclixMMABannerXLAdView((Context)context);
        }
        else if (width >= 300 && height >= 250) {
            Log.d(aw.d, "Determined Mobclix AdSize as IAB_RECT");
            o = new MobclixIABRectangleMAdView((Context)context);
        }
        else {
            Log.d(aw.d, "Could not find Mobclix AdSize that matches size");
            o = null;
        }
        ((MobclixAdView)o).addMobclixAdViewListener((MobclixAdViewListener)new bj(this));
        int n2;
        if (o instanceof MobclixMMABannerXLAdView) {
            n2 = 300;
        }
        else {
            n2 = 300;
        }
        if (o instanceof MobclixIABRectangleMAdView) {
            n2 = 320;
            n = 250;
        }
        final float density = this.getResources().getDisplayMetrics().density;
        ((MobclixAdView)o).setLayoutParams((ViewGroup$LayoutParams)new LinearLayout$LayoutParams((int)(0.5f + density * n2), (int)(0.5f + density * n)));
        this.setGravity(17);
        this.addView((View)o);
        ((MobclixAdView)o).setRefreshTime(-1L);
    }
}
