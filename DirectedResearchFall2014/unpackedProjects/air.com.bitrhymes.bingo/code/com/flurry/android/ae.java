package com.flurry.android;

import android.content.*;
import android.os.*;
import java.util.*;
import android.app.*;
import com.google.ads.*;
import android.widget.*;
import android.view.*;
import android.text.*;
import android.util.*;

final class ae implements AdListener
{
    private /* synthetic */ ai au;
    
    private ae(final ai au, final byte b) {
        this.au = au;
        super();
    }
    
    @Override
    public final void onDismissScreen(final Ad ad) {
        this.au.onAdClosed(Collections.emptyMap());
        db.e(ai.bA, "Admob AdView dismissed from screen.");
    }
    
    @Override
    public final void onFailedToReceiveAd(final Ad ad, final AdRequest.ErrorCode errorCode) {
        this.au.onRenderFailed(Collections.emptyMap());
        db.g(ai.bA, "Admob AdView failed to receive ad.");
    }
    
    @Override
    public final void onLeaveApplication(final Ad ad) {
        this.au.onAdClicked(Collections.emptyMap());
        db.e(ai.bA, "Admob AdView leave application.");
    }
    
    @Override
    public final void onPresentScreen(final Ad ad) {
        db.e(ai.bA, "Admob AdView present on screen.");
    }
    
    @Override
    public final void onReceiveAd(final Ad ad) {
        this.au.onAdFilled(Collections.emptyMap());
        this.au.onAdShown(Collections.emptyMap());
        db.e(ai.bA, "Admob AdView received ad.");
    }
}