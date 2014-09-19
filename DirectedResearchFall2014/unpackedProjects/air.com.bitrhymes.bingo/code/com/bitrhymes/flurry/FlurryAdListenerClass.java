package com.bitrhymes.flurry;

import com.adobe.fre.*;
import android.util.*;
import com.flurry.android.*;

public class FlurryAdListenerClass implements FlurryAdListener
{
    private static String TAG;
    static FlurryAdListenerClass flurryAdListenerClassObj;
    FREContext freContext;
    
    static {
        FlurryAdListenerClass.TAG = "FlurryAdListenerClass";
    }
    
    public FlurryAdListenerClass() {
        super();
        this.freContext = null;
    }
    
    public static FlurryAdListenerClass getInstance(final FREContext freContext) {
        if (FlurryAdListenerClass.flurryAdListenerClassObj == null) {
            FlurryAdListenerClass.flurryAdListenerClassObj = new FlurryAdListenerClass();
        }
        FlurryAdListenerClass.flurryAdListenerClassObj.setFREContext(freContext);
        return FlurryAdListenerClass.flurryAdListenerClassObj;
    }
    
    private void setFREContext(final FREContext freContext) {
        this.freContext = freContext;
    }
    
    @Override
    public void onAdClicked(final String s) {
    }
    
    @Override
    public void onAdClosed(final String str) {
        Log.i(FlurryAdListenerClass.TAG, "flurry spaceDidFailToReceiveAd-" + str);
        if (this.freContext != null) {
            this.freContext.dispatchStatusEventAsync("FLURRY_AD_CLOSED", "0");
            return;
        }
        Log.i(FlurryAdListenerClass.TAG, "flurry onAdClosed, but context was null so not returned event to flash");
    }
    
    @Override
    public void onAdOpened(final String s) {
    }
    
    @Override
    public void onApplicationExit(final String s) {
    }
    
    @Override
    public void onRenderFailed(final String str) {
        Log.i(FlurryAdListenerClass.TAG, "flurry spaceDidFailToReceiveAd-" + str);
        if (this.freContext != null) {
            this.freContext.dispatchStatusEventAsync("FLURRY_VIDEO_DISPLAY_FAILED", "0");
            return;
        }
        Log.i(FlurryAdListenerClass.TAG, "flurry onRenderFailed, but context was null so not returned event to flash");
    }
    
    @Override
    public void onVideoCompleted(final String s) {
        Log.i(FlurryAdListenerClass.TAG, "flurry video completed");
        if (this.freContext != null) {
            this.freContext.dispatchStatusEventAsync("VIDEO_COMPLETED_EVENT", "1");
            return;
        }
        Log.i(FlurryAdListenerClass.TAG, "flurry video completed, but context was null so not returned event to flash");
    }
    
    @Override
    public boolean shouldDisplayAd(final String s, final FlurryAdType flurryAdType) {
        return true;
    }
    
    @Override
    public void spaceDidFailToReceiveAd(final String str) {
        Log.i(FlurryAdListenerClass.TAG, "flurry spaceDidFailToReceiveAd-" + str);
        if (this.freContext != null) {
            this.freContext.dispatchStatusEventAsync("FLURRY_AD_DOWNLOADED", "0");
            return;
        }
        Log.i(FlurryAdListenerClass.TAG, "flurry spaceDidFailToReceiveAd, but context was null so not returned event to flash");
    }
    
    @Override
    public void spaceDidReceiveAd(final String s) {
        Log.i(FlurryAdListenerClass.TAG, "flurry spaceDidReceiveAd");
        if (this.freContext != null) {
            this.freContext.dispatchStatusEventAsync("FLURRY_AD_DOWNLOADED", "1");
            return;
        }
        Log.i(FlurryAdListenerClass.TAG, "flurry spaceDidReceiveAd, but context was null so not returned event to flash");
    }
}
