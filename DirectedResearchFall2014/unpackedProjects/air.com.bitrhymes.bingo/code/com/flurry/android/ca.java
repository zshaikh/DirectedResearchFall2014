package com.flurry.android;

import com.inmobi.androidsdk.*;
import java.util.*;
import android.util.*;
import android.content.*;
import android.os.*;
import android.app.*;

final class ca implements IMAdInterstitialListener
{
    private /* synthetic */ u en;
    
    ca(final u en) {
        this.en = en;
        super();
    }
    
    @Override
    public final void onAdRequestFailed(final IMAdInterstitial imAdInterstitial, final IMAdRequest.ErrorCode errorCode) {
        this.en.onRenderFailed(Collections.emptyMap());
        Log.d(u.d, "InMobi imAdView ad request failed.");
    }
    
    @Override
    public final void onAdRequestLoaded(final IMAdInterstitial imAdInterstitial) {
        this.en.onAdFilled(Collections.emptyMap());
        Log.d(u.d, "InMobi Interstitial ad request completed.");
        if (IMAdInterstitial.State.READY.equals(imAdInterstitial.getState())) {
            this.en.onAdShown(Collections.emptyMap());
            imAdInterstitial.show();
        }
    }
    
    @Override
    public final void onDismissAdScreen(final IMAdInterstitial imAdInterstitial) {
        this.en.onAdClosed(Collections.emptyMap());
        Log.d(u.d, "InMobi Interstitial ad dismissed.");
    }
    
    @Override
    public final void onLeaveApplication(final IMAdInterstitial imAdInterstitial) {
        Log.d(u.d, "InMobi onLeaveApplication");
    }
    
    @Override
    public final void onShowAdScreen(final IMAdInterstitial imAdInterstitial) {
        Log.d(u.d, "InMobi Interstitial ad shown.");
    }
}
