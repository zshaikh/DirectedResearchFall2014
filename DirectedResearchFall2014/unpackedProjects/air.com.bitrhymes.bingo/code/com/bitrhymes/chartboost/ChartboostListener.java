package com.bitrhymes.chartboost;

import com.chartboost.sdk.*;
import com.adobe.fre.*;
import android.util.*;

public class ChartboostListener implements ChartboostDelegate
{
    private static final String TAG;
    static FREContext context;
    
    static {
        TAG = ChartboostDelegate.class.getSimpleName();
    }
    
    public ChartboostListener(final FREContext context) {
        super();
        ChartboostListener.context = context;
    }
    
    @Override
    public void didCacheInterstitial(final String s) {
        Log.i(ChartboostListener.TAG, "didCacheInterstitial");
        if (ChartboostListener.context != null) {
            ChartboostListener.context.dispatchStatusEventAsync("CB_CACHE_INTERSTITIAL_EVENT", "1");
        }
    }
    
    @Override
    public void didCacheMoreApps() {
        Log.i(ChartboostListener.TAG, "didCacheMoreApps");
        if (ChartboostListener.context != null) {
            ChartboostListener.context.dispatchStatusEventAsync("CB_CACHEMORE_INTERSTITIAL_EVENT", "1");
        }
    }
    
    @Override
    public void didClickInterstitial(final String s) {
        Log.i(ChartboostListener.TAG, "didClickInterstitial");
    }
    
    @Override
    public void didClickMoreApps() {
        Log.i(ChartboostListener.TAG, "didClickMoreApps");
    }
    
    @Override
    public void didCloseInterstitial(final String s) {
        Log.i(ChartboostListener.TAG, "didCloseInterstitial");
    }
    
    @Override
    public void didCloseMoreApps() {
        Log.i(ChartboostListener.TAG, "didCloseMoreApps");
    }
    
    @Override
    public void didDismissInterstitial(final String s) {
        Log.i(ChartboostListener.TAG, "didDismissInterstitial");
    }
    
    @Override
    public void didDismissMoreApps() {
        Log.i(ChartboostListener.TAG, "didDismissMoreApps ");
    }
    
    @Override
    public void didFailToLoadInterstitial(final String s) {
        Log.i(ChartboostListener.TAG, " didFailToLoadInterstitial ");
        if (ChartboostListener.context != null) {
            ChartboostListener.context.dispatchStatusEventAsync("CB_SHOW_INTERSTITIAL_EVENT", "0");
        }
    }
    
    @Override
    public void didFailToLoadMoreApps() {
        Log.i(ChartboostListener.TAG, "didFailToLoadMoreApps ");
        if (ChartboostListener.context != null) {
            ChartboostListener.context.dispatchStatusEventAsync("CB_SHOWMORE_INTERSTITIAL_EVENT", "0");
        }
    }
    
    @Override
    public void didFailToLoadUrl(final String str) {
        Log.i(ChartboostListener.TAG, "didFailToLoadUrl ");
        if (ChartboostListener.context != null) {
            ChartboostListener.context.dispatchStatusEventAsync("ERROR_EVENT", "error:" + str);
        }
    }
    
    @Override
    public void didShowInterstitial(final String s) {
        Log.i(ChartboostListener.TAG, " didShowInterstitial ");
        if (ChartboostListener.context != null) {
            ChartboostListener.context.dispatchStatusEventAsync("CB_SHOW_INTERSTITIAL_EVENT", "1");
        }
    }
    
    @Override
    public void didShowMoreApps() {
        Log.i(ChartboostListener.TAG, " didShowMoreApps ");
        if (ChartboostListener.context != null) {
            ChartboostListener.context.dispatchStatusEventAsync("CB_SHOWMORE_INTERSTITIAL_EVENT", "1");
        }
    }
    
    @Override
    public boolean shouldDisplayInterstitial(final String str) {
        Log.i(ChartboostListener.TAG, " shouldDisplayInterstitial " + str);
        return true;
    }
    
    @Override
    public boolean shouldDisplayLoadingViewForMoreApps() {
        Log.i(ChartboostListener.TAG, " shouldDisplayLoadingViewForMoreApps ");
        return true;
    }
    
    @Override
    public boolean shouldDisplayMoreApps() {
        Log.i(ChartboostListener.TAG, " shouldDisplayMoreApps ");
        return true;
    }
    
    @Override
    public boolean shouldRequestInterstitial(final String str) {
        Log.i(ChartboostListener.TAG, " shouldRequestInterstitial " + str);
        return true;
    }
    
    @Override
    public boolean shouldRequestInterstitialsInFirstSession() {
        Log.i(ChartboostListener.TAG, " shouldRequestInterstitialsInFirstSession ");
        return true;
    }
    
    @Override
    public boolean shouldRequestMoreApps() {
        Log.i(ChartboostListener.TAG, " shouldRequestMoreApps ");
        return true;
    }
}
