package com.flurry.android;

import java.util.*;
import android.util.*;
import android.content.*;
import android.os.*;
import android.app.*;
import com.google.ads.*;
import android.text.*;

final class ch implements AdListener
{
    private /* synthetic */ ak es;
    
    private ch(final ak es, final byte b) {
        this.es = es;
        super();
    }
    
    public final void onDismissScreen(final Ad ad) {
        this.es.onAdClosed(Collections.emptyMap());
        Log.i(ak.d, "Admob Interstitial dismissed from screen.");
    }
    
    public final void onFailedToReceiveAd(final Ad ad, final AdRequest$ErrorCode adRequest$ErrorCode) {
        this.es.onRenderFailed(Collections.emptyMap());
        Log.d(ak.d, "Admob Interstitial failed to receive takeover.");
    }
    
    public final void onLeaveApplication(final Ad ad) {
        this.es.onAdClicked(Collections.emptyMap());
        Log.i(ak.d, "Admob Interstitial leave application.");
    }
    
    public final void onPresentScreen(final Ad ad) {
        Log.d(ak.d, "Admob Interstitial present on screen.");
    }
    
    public final void onReceiveAd(final Ad ad) {
        if (ad == this.es.bI) {
            this.es.onAdFilled(Collections.emptyMap());
            Log.d(ak.d, "Admob Interstitial received takeover.");
            this.es.onAdShown(Collections.emptyMap());
            this.es.bI.show();
        }
    }
}
