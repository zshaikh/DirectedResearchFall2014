package com.flurry.android;

import java.util.*;
import android.util.*;
import com.google.ads.*;
import android.content.*;
import android.os.*;
import android.app.*;
import android.text.*;

final class ch implements AdListener
{
    private /* synthetic */ ak es;
    
    private ch(final ak es, final byte b) {
        this.es = es;
        super();
    }
    
    @Override
    public final void onDismissScreen(final Ad ad) {
        this.es.onAdClosed(Collections.emptyMap());
        Log.i(ak.d, "Admob Interstitial dismissed from screen.");
    }
    
    @Override
    public final void onFailedToReceiveAd(final Ad ad, final AdRequest.ErrorCode errorCode) {
        this.es.onRenderFailed(Collections.emptyMap());
        Log.d(ak.d, "Admob Interstitial failed to receive takeover.");
    }
    
    @Override
    public final void onLeaveApplication(final Ad ad) {
        this.es.onAdClicked(Collections.emptyMap());
        Log.i(ak.d, "Admob Interstitial leave application.");
    }
    
    @Override
    public final void onPresentScreen(final Ad ad) {
        Log.d(ak.d, "Admob Interstitial present on screen.");
    }
    
    @Override
    public final void onReceiveAd(final Ad ad) {
        if (ad == this.es.bI) {
            this.es.onAdFilled(Collections.emptyMap());
            Log.d(ak.d, "Admob Interstitial received takeover.");
            this.es.onAdShown(Collections.emptyMap());
            this.es.bI.show();
        }
    }
}
