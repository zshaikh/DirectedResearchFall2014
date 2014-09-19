package com.flurry.android;

import java.util.*;
import android.util.*;
import android.content.*;
import android.os.*;
import android.app.*;
import com.inmobi.androidsdk.*;

final class ca implements IMAdInterstitialListener
{
    private /* synthetic */ u en;
    
    ca(final u en) {
        this.en = en;
        super();
    }
    
    public final void onAdRequestFailed(final IMAdInterstitial imAdInterstitial, final IMAdRequest$ErrorCode imAdRequest$ErrorCode) {
        this.en.onRenderFailed(Collections.emptyMap());
        Log.d(u.d, "InMobi imAdView ad request failed.");
    }
    
    public final void onAdRequestLoaded(final IMAdInterstitial imAdInterstitial) {
        this.en.onAdFilled(Collections.emptyMap());
        Log.d(u.d, "InMobi Interstitial ad request completed.");
        if (IMAdInterstitial$State.READY.equals((Object)imAdInterstitial.getState())) {
            this.en.onAdShown(Collections.emptyMap());
            imAdInterstitial.show();
        }
    }
    
    public final void onDismissAdScreen(final IMAdInterstitial imAdInterstitial) {
        this.en.onAdClosed(Collections.emptyMap());
        Log.d(u.d, "InMobi Interstitial ad dismissed.");
    }
    
    public final void onLeaveApplication(final IMAdInterstitial imAdInterstitial) {
        Log.d(u.d, "InMobi onLeaveApplication");
    }
    
    public final void onShowAdScreen(final IMAdInterstitial imAdInterstitial) {
        Log.d(u.d, "InMobi Interstitial ad shown.");
    }
}
