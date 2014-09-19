package com.flurry.android;

import android.util.*;
import java.util.*;
import android.content.*;
import android.app.*;
import com.mobclix.android.sdk.*;
import android.widget.*;
import android.view.*;

final class bj implements MobclixAdViewListener
{
    private /* synthetic */ aw dn;
    
    bj(final aw dn) {
        this.dn = dn;
        super();
    }
    
    public final String keywords() {
        Log.d(aw.d, "Mobclix keyword callback.");
        return null;
    }
    
    public final void onAdClick(final MobclixAdView mobclixAdView) {
        this.dn.onAdClicked(Collections.emptyMap());
        Log.d(aw.d, "Mobclix AdView ad clicked.");
    }
    
    public final void onCustomAdTouchThrough(final MobclixAdView mobclixAdView, final String s) {
        this.dn.onAdClicked(Collections.emptyMap());
        Log.d(aw.d, "Mobclix AdView custom ad clicked.");
    }
    
    public final void onFailedLoad(final MobclixAdView mobclixAdView, final int n) {
        this.dn.onRenderFailed(Collections.emptyMap());
        Log.d(aw.d, "Mobclix AdView ad failed to load.");
    }
    
    public final boolean onOpenAllocationLoad(final MobclixAdView mobclixAdView, final int n) {
        Log.d(aw.d, "Mobclix AdView loaded an open allocation ad.");
        return true;
    }
    
    public final void onSuccessfulLoad(final MobclixAdView mobclixAdView) {
        this.dn.onAdFilled(Collections.emptyMap());
        this.dn.onAdShown(Collections.emptyMap());
        Log.d(aw.d, "Mobclix AdView ad successfully loaded.");
    }
    
    public final String query() {
        Log.d(aw.d, "Mobclix query callback.");
        return null;
    }
}
