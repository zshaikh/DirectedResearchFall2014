package com.chartboost.sdk;

import android.os.*;
import android.app.*;

public abstract class ChartboostNativeActivity extends NativeActivity implements ChartboostDelegate
{
    private Chartboost a;
    
    public void didCacheInterstitial(final String s) {
    }
    
    public void didCacheMoreApps() {
    }
    
    public void didClickInterstitial(final String s) {
    }
    
    public void didClickMoreApps() {
    }
    
    public void didCloseInterstitial(final String s) {
    }
    
    public void didCloseMoreApps() {
    }
    
    public void didDismissInterstitial(final String s) {
    }
    
    public void didDismissMoreApps() {
    }
    
    public void didFailToLoadInterstitial(final String s) {
    }
    
    public void didFailToLoadMoreApps() {
    }
    
    public void didFailToLoadUrl(final String s) {
    }
    
    public void didShowInterstitial(final String s) {
    }
    
    public void didShowMoreApps() {
    }
    
    protected abstract String getChartboostAppID();
    
    protected abstract String getChartboostAppSignature();
    
    public void onBackPressed() {
        if (this.a.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        (this.a = Chartboost.sharedChartboost()).setImpressionsUseActivities(true);
        this.a.onCreate((Activity)this, this.getChartboostAppID(), this.getChartboostAppSignature(), this);
    }
    
    protected void onDestroy() {
        super.onDestroy();
        this.a.onDestroy((Activity)this);
    }
    
    protected void onStart() {
        super.onStart();
        this.a.onStart((Activity)this);
        this.a.startSession();
    }
    
    protected void onStop() {
        super.onStop();
        this.a.onStop((Activity)this);
    }
    
    public boolean shouldDisplayInterstitial(final String s) {
        return true;
    }
    
    public boolean shouldDisplayLoadingViewForMoreApps() {
        return true;
    }
    
    public boolean shouldDisplayMoreApps() {
        return true;
    }
    
    public boolean shouldRequestInterstitial(final String s) {
        return true;
    }
    
    public boolean shouldRequestInterstitialsInFirstSession() {
        return true;
    }
    
    public boolean shouldRequestMoreApps() {
        return true;
    }
}
