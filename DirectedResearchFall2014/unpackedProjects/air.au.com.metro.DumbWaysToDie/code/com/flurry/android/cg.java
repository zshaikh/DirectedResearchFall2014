package com.flurry.android;

import android.content.*;
import android.app.*;
import com.mobclix.android.sdk.*;

final class cg extends m
{
    private static final String d;
    
    static {
        d = cg.class.getSimpleName();
    }
    
    public cg(final Context context, final FlurryAds flurryAds, final cz cz, final AdUnit adUnit) {
        super(context, flurryAds, cz, adUnit);
    }
    
    @Override
    public final void f() {
        final MobclixFullScreenAdView mobclixFullScreenAdView = new MobclixFullScreenAdView((Activity)this.getContext());
        mobclixFullScreenAdView.addMobclixAdViewListener((MobclixFullScreenAdViewListener)new au(this));
        mobclixFullScreenAdView.requestAndDisplayAd();
    }
}
