package com.freshplanet.ane.AirChartboost;

import com.chartboost.sdk.*;

public class AirChartboostDelegate implements ChartboostDelegate
{
    @Override
    public void didCacheInterstitial(final String str) {
        AirChartboostExtension.log("Did cache interstitial for location \"" + str + "\".");
        AirChartboostExtension.context.dispatchStatusEventAsync("DidCacheInterstitial", str);
    }
    
    @Override
    public void didCacheMoreApps() {
        AirChartboostExtension.log("Did cache More Apps.");
        AirChartboostExtension.context.dispatchStatusEventAsync("DidCacheMoreApps", "");
    }
    
    @Override
    public void didClickInterstitial(final String str) {
        AirChartboostExtension.log("Did click interstitial for location \"" + str + "\".");
        AirChartboostExtension.context.dispatchStatusEventAsync("DidClickInterstitial", str);
    }
    
    @Override
    public void didClickMoreApps() {
        AirChartboostExtension.log("Did click More Apps.");
        AirChartboostExtension.context.dispatchStatusEventAsync("DidClickMoreApps", "");
    }
    
    @Override
    public void didCloseInterstitial(final String str) {
        AirChartboostExtension.log("Did close interstitial for location \"" + str + "\".");
        AirChartboostExtension.context.dispatchStatusEventAsync("DidCloseInterstitial", str);
    }
    
    @Override
    public void didCloseMoreApps() {
        AirChartboostExtension.log("Did close More Apps.");
        AirChartboostExtension.context.dispatchStatusEventAsync("DidCloseMoreApps", "");
    }
    
    @Override
    public void didDismissInterstitial(final String str) {
        AirChartboostExtension.log("Did dismiss interstitial for location \"" + str + "\".");
        AirChartboostExtension.context.dispatchStatusEventAsync("DidDismissInterstitial", str);
    }
    
    @Override
    public void didDismissMoreApps() {
        AirChartboostExtension.log("Did dismiss More Apps.");
        AirChartboostExtension.context.dispatchStatusEventAsync("DidDismissMoreApps", "");
    }
    
    @Override
    public void didFailToLoadInterstitial(final String str) {
        AirChartboostExtension.log("Did fail to load interstitial for location \"" + str + "\".");
        AirChartboostExtension.context.dispatchStatusEventAsync("DidFailToLoadInterstitial", str);
    }
    
    @Override
    public void didFailToLoadMoreApps() {
        AirChartboostExtension.log("Did fail to load More Apps.");
        AirChartboostExtension.context.dispatchStatusEventAsync("DidFailToLoadMoreApps", "");
    }
    
    @Override
    public void didShowInterstitial(final String str) {
        AirChartboostExtension.log("Did show interstitial for location \"" + str + "\".");
        AirChartboostExtension.context.dispatchStatusEventAsync("DidShowInterstitial", str);
    }
    
    @Override
    public void didShowMoreApps() {
        AirChartboostExtension.log("Did show More Apps.");
        AirChartboostExtension.context.dispatchStatusEventAsync("DidShowMoreApps", "");
    }
    
    @Override
    public boolean shouldDisplayInterstitial(final String str) {
        AirChartboostExtension.log("Should display interstitial for location \"" + str + "\"? Yes.");
        return true;
    }
    
    @Override
    public boolean shouldDisplayLoadingViewForMoreApps() {
        AirChartboostExtension.log("Should display loading view for More Apps? Yes.");
        return true;
    }
    
    @Override
    public boolean shouldDisplayMoreApps() {
        AirChartboostExtension.log("Should display More Apps? Yes.");
        return true;
    }
    
    @Override
    public boolean shouldRequestInterstitial(final String str) {
        AirChartboostExtension.log("Should request interstitial for location \"" + str + "\"? Yes.");
        return true;
    }
    
    @Override
    public boolean shouldRequestInterstitialsInFirstSession() {
        AirChartboostExtension.log("Should request interstitials in first session? Yes.");
        return true;
    }
    
    @Override
    public boolean shouldRequestMoreApps() {
        AirChartboostExtension.log("Should request More Apps? Yes.");
        return true;
    }
}
