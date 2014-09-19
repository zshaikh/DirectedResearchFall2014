package com.flurry.android;

import android.util.*;
import com.mobclix.android.sdk.*;
import java.util.*;
import android.content.*;
import android.app.*;

final class au implements MobclixFullScreenAdViewListener
{
    private /* synthetic */ cg bQ;
    
    au(final cg bq) {
        this.bQ = bq;
        super();
    }
    
    public final String keywords() {
        Log.d(cg.d, "Mobclix keyword callback.");
        return null;
    }
    
    public final void onDismissAd(final MobclixFullScreenAdView mobclixFullScreenAdView) {
        this.bQ.onAdClosed(Collections.emptyMap());
        Log.d(cg.d, "Mobclix Interstitial ad dismissed.");
    }
    
    public final void onFailedLoad(final MobclixFullScreenAdView mobclixFullScreenAdView, final int n) {
        this.bQ.onRenderFailed(Collections.emptyMap());
        Log.d(cg.d, "Mobclix Interstitial ad failed to load.");
    }
    
    public final void onFinishLoad(final MobclixFullScreenAdView mobclixFullScreenAdView) {
        this.bQ.onAdFilled(Collections.emptyMap());
        Log.d(cg.d, "Mobclix Interstitial ad successfully loaded.");
    }
    
    public final void onPresentAd(final MobclixFullScreenAdView mobclixFullScreenAdView) {
        this.bQ.onAdShown(Collections.emptyMap());
        Log.d(cg.d, "Mobclix Interstitial ad successfully shown.");
    }
    
    public final String query() {
        Log.d(cg.d, "Mobclix query callback.");
        return null;
    }
}
