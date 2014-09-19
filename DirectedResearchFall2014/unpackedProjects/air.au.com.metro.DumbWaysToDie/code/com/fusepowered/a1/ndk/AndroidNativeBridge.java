package com.fusepowered.a1.ndk;

import com.fusepowered.a1.*;
import android.app.*;
import java.util.*;
import android.util.*;

public class AndroidNativeBridge implements IApplifierImpactListener
{
    private static int EVENT_IMPACT_CAMPAIGNS_AVAILABLE;
    private static int EVENT_IMPACT_CAMPAIGNS_FAILED;
    private static int EVENT_IMPACT_CLOSE;
    private static int EVENT_IMPACT_OPEN;
    private static int EVENT_IMPACT_VIDEO_COMPLETE;
    private static int EVENT_IMPACT_VIDEO_SKIPPED;
    private static int EVENT_IMPACT_VIDEO_START;
    private static final AndroidNativeBridge self;
    private boolean bridgeInitBroadcast;
    private ApplifierImpact impact;
    private Activity parentActivity;
    
    static {
        self = new AndroidNativeBridge();
        AndroidNativeBridge.EVENT_IMPACT_CLOSE = 1;
        AndroidNativeBridge.EVENT_IMPACT_OPEN = 2;
        AndroidNativeBridge.EVENT_IMPACT_VIDEO_START = 3;
        AndroidNativeBridge.EVENT_IMPACT_VIDEO_COMPLETE = 4;
        AndroidNativeBridge.EVENT_IMPACT_CAMPAIGNS_AVAILABLE = 5;
        AndroidNativeBridge.EVENT_IMPACT_CAMPAIGNS_FAILED = 6;
        AndroidNativeBridge.EVENT_IMPACT_VIDEO_SKIPPED = 7;
    }
    
    private AndroidNativeBridge() {
        super();
        this.parentActivity = null;
        this.impact = null;
        this.bridgeInitBroadcast = false;
        if (AndroidNativeBridge.self != null) {
            throw new IllegalStateException("Cannot re-instantiate AndroidNativeBridge, something is wrong.");
        }
    }
    
    public static String __getDefaultReward() {
        return getInstance().impact.getDefaultRewardItemKey();
    }
    
    public static String __getRewardUrl(final String s) {
        return getInstance().impact.getRewardItemDetailsWithKey(s).get("picture");
    }
    
    public static void __init(final int n) {
        AndroidNativeBridge.self.__initImpact(n);
    }
    
    public static void __showImpact(final boolean b, final boolean b2) {
        if (getInstance().impact == null) {
            throw new IllegalStateException("Impact has not yet been initialized");
        }
        final HashMap<String, Object> hashMap = new HashMap<String, Object>();
        hashMap.put("noOfferScreen", b);
        hashMap.put("openAnimated", b2);
        getInstance().impact.showImpact(hashMap);
    }
    
    public static AndroidNativeBridge getInstance() {
        return AndroidNativeBridge.self;
    }
    
    public void __initImpact(final int i) {
        if (this.impact != null) {
            throw new IllegalStateException("Impact has already been initialized");
        }
        if (this.parentActivity == null) {
            throw new IllegalStateException("You must call setRootActivity(Activity) in your Java code prior to initializing impact.");
        }
        ApplifierImpact.setDebugMode(true);
        this.impact = new ApplifierImpact(this.parentActivity, new StringBuilder(String.valueOf(i)).toString(), this);
        Log.d("applifier", "new ApplifierImpact done");
    }
    
    public native void bridgeReady();
    
    public native void dispatchEvent(final int p0, final String p1);
    
    @Override
    public void onCampaignsAvailable() {
        this.setRewardItems(this.impact.getRewardItemKeys().toArray(new String[0]));
        this.dispatchEvent(AndroidNativeBridge.EVENT_IMPACT_CAMPAIGNS_AVAILABLE, null);
    }
    
    @Override
    public void onCampaignsFetchFailed() {
        this.dispatchEvent(AndroidNativeBridge.EVENT_IMPACT_CAMPAIGNS_FAILED, null);
    }
    
    @Override
    public void onImpactClose() {
        this.dispatchEvent(AndroidNativeBridge.EVENT_IMPACT_CLOSE, null);
    }
    
    @Override
    public void onImpactOpen() {
        this.dispatchEvent(AndroidNativeBridge.EVENT_IMPACT_OPEN, null);
    }
    
    @Override
    public void onVideoCompleted(final String s, final boolean b) {
        if (b) {
            this.dispatchEvent(AndroidNativeBridge.EVENT_IMPACT_VIDEO_SKIPPED, s);
            return;
        }
        this.dispatchEvent(AndroidNativeBridge.EVENT_IMPACT_VIDEO_COMPLETE, s);
    }
    
    @Override
    public void onVideoStarted() {
        this.dispatchEvent(AndroidNativeBridge.EVENT_IMPACT_VIDEO_START, null);
    }
    
    public native void setRewardItems(final String[] p0);
    
    public void setRootActivity(final Activity parentActivity) {
        this.parentActivity = parentActivity;
        if (this.impact != null) {
            this.impact.changeActivity(parentActivity);
        }
        if (!this.bridgeInitBroadcast) {
            this.bridgeReady();
            this.bridgeInitBroadcast = true;
        }
    }
}
