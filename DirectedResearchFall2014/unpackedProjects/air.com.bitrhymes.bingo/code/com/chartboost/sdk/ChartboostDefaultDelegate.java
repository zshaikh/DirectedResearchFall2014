package com.chartboost.sdk;

public abstract class ChartboostDefaultDelegate implements ChartboostDelegate
{
    @Override
    public void didCacheInterstitial(final String s) {
    }
    
    @Override
    public void didCacheMoreApps() {
    }
    
    @Override
    public void didClickInterstitial(final String s) {
    }
    
    @Override
    public void didClickMoreApps() {
    }
    
    @Override
    public void didCloseInterstitial(final String s) {
    }
    
    @Override
    public void didCloseMoreApps() {
    }
    
    @Override
    public void didDismissInterstitial(final String s) {
    }
    
    @Override
    public void didDismissMoreApps() {
    }
    
    @Override
    public void didFailToLoadInterstitial(final String s) {
    }
    
    @Override
    public void didFailToLoadMoreApps() {
    }
    
    @Override
    public void didFailToLoadUrl(final String s) {
    }
    
    @Override
    public void didShowInterstitial(final String s) {
    }
    
    @Override
    public void didShowMoreApps() {
    }
    
    @Override
    public boolean shouldDisplayInterstitial(final String s) {
        return true;
    }
    
    @Override
    public boolean shouldDisplayLoadingViewForMoreApps() {
        return true;
    }
    
    @Override
    public boolean shouldDisplayMoreApps() {
        return true;
    }
    
    @Override
    public boolean shouldRequestInterstitial(final String s) {
        return true;
    }
    
    @Override
    public boolean shouldRequestInterstitialsInFirstSession() {
        return true;
    }
    
    @Override
    public boolean shouldRequestMoreApps() {
        return true;
    }
}
