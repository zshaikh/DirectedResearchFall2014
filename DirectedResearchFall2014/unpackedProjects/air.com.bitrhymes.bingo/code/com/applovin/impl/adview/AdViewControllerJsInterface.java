package com.applovin.impl.adview;

import java.util.*;
import android.app.*;
import com.applovin.sdk.*;
import android.graphics.*;
import android.view.*;
import com.applovin.impl.sdk.*;
import android.content.*;
import android.net.*;
import java.io.*;

public class AdViewControllerJsInterface
{
    private static String TAG;
    private AppLovinAdVideoPlaybackListener adVideoPlaybackListener;
    private v adWebView;
    private AppLovinAd currentAd;
    private volatile boolean currentlyWaiting;
    private volatile boolean interruptNotify;
    private int lastKnownDuration;
    private Map lastParameters;
    private AppLovinLogger logger;
    private Activity parentActivity;
    private ViewGroup parentView;
    private AppLovinSdkImpl sdk;
    private String videoFilename;
    private AppLovinVideoOverlay videoOverlay;
    private final Object videoOverlayLock;
    
    static {
        AdViewControllerJsInterface.TAG = "AdViewControllerJsInterface";
    }
    
    public AdViewControllerJsInterface(final AppLovinSdk appLovinSdk, final v adWebView, final Activity parentActivity, final ViewGroup parentView, final AppLovinAd currentAd, final AppLovinAdVideoPlaybackListener adVideoPlaybackListener) {
        super();
        this.videoOverlayLock = new Object();
        this.interruptNotify = false;
        this.currentlyWaiting = false;
        this.sdk = (AppLovinSdkImpl)appLovinSdk;
        this.logger = appLovinSdk.getLogger();
        this.parentActivity = parentActivity;
        this.adWebView = adWebView;
        this.parentView = parentView;
        this.videoFilename = null;
        this.adVideoPlaybackListener = adVideoPlaybackListener;
        this.currentAd = currentAd;
        this.logger.d(AdViewControllerJsInterface.TAG, "New instance created.");
    }
    
    private int calculateDimension(final String s, final r r) {
        final Point a = j.a(this.parentActivity);
        if (r == r.a) {
            return Math.round(this.parsePercent(s) * a.x);
        }
        if (r == r.b) {
            return Math.round(this.parsePercent(s) * a.y);
        }
        return -1;
    }
    
    private void notifyOfNewTime() {
        new Thread(new p(this), "JSNotificationThread").start();
    }
    
    private float parsePercent(final String s) {
        return Float.parseFloat(s) / 100.0f;
    }
    
    public void debugMessage(final Map map) {
        this.logger.d(AdViewControllerJsInterface.TAG, "Received JS debug message: " + map.get("text"));
    }
    
    public void destroyVideoOverlay() {
        this.logger.d(AdViewControllerJsInterface.TAG, "Asked to stop video if playing.");
        this.interruptNotify = true;
        synchronized (this.videoOverlayLock) {
            Object videoLayout;
            if (this.videoOverlay != null) {
                if (this.videoOverlay.getPlaybackState() == AppLovinVideoPlaybackState.PLAYING) {
                    this.videoOverlay.requestPause();
                }
                videoLayout = this.videoOverlay.getVideoLayout();
                this.videoOverlay.stopUnderlyingMediaPlayer();
                this.videoOverlay = null;
            }
            else {
                videoLayout = null;
            }
            // monitorexit(this.videoOverlayLock)
            this.currentAd = null;
            if (videoLayout != null) {
                this.parentActivity.runOnUiThread((Runnable)new n(this, (View)videoLayout));
            }
        }
    }
    
    public void executeJS(final String s) {
        this.adWebView.loadUrl("javascript:" + s);
        this.logger.d(AdViewControllerJsInterface.TAG, "Invoking JS on WebView: " + s);
    }
    
    public int getPercentViewed() {
        if (this.videoOverlay == null) {
            return 0;
        }
        return this.videoOverlay.getPercentViewed();
    }
    
    public int getPlaybackDuration() {
        if (this.videoOverlay != null) {
            return this.videoOverlay.getDuration();
        }
        return this.lastKnownDuration;
    }
    
    public int getPlaybackTime() {
        if (this.videoOverlay == null) {
            return 0;
        }
        return this.videoOverlay.getPlaybackTime();
    }
    
    public void handleCommandInvocation(final String str, final Map map) {
        this.logger.d(AdViewControllerJsInterface.TAG, "Asked to invoke " + str + " with parameters: " + map.toString());
        try {
            this.getClass().getDeclaredMethod(str, Map.class).invoke(this, map);
        }
        catch (Exception ex) {
            this.logger.e(AdViewControllerJsInterface.TAG, "Unable to invoke method: " + str, ex);
        }
    }
    
    public void notifyJavaScriptOfNewState(final AppLovinVideoPlaybackState appLovinVideoPlaybackState) {
        String str = "";
        if (appLovinVideoPlaybackState == AppLovinVideoPlaybackState.PLAYING) {
            str = "play";
        }
        if (appLovinVideoPlaybackState == AppLovinVideoPlaybackState.PAUSED) {
            str = "pause";
        }
        if (appLovinVideoPlaybackState == AppLovinVideoPlaybackState.STOPPED) {
            str = "stop";
        }
        if (appLovinVideoPlaybackState == AppLovinVideoPlaybackState.FAILED) {
            str = "fail";
        }
        int round;
        if (this.videoOverlay != null) {
            round = Math.round(this.videoOverlay.getPercentViewed());
        }
        else {
            round = 0;
        }
        if (appLovinVideoPlaybackState == AppLovinVideoPlaybackState.STOPPED && round < 98) {
            round = 100;
        }
        this.executeJS("onPlaybackChanged('" + str + "','" + round + "')");
    }
    
    public void pauseVideo(final Map map) {
        synchronized (this.videoOverlayLock) {
            if (this.videoOverlay != null) {
                this.videoOverlay.requestPause();
            }
            else {
                this.logger.e(AdViewControllerJsInterface.TAG, "Template issue: pauseVideo called before renderVideo.");
            }
        }
    }
    
    public void ping(final Map map) {
        this.logger.d(AdViewControllerJsInterface.TAG, "Received ping request, invoking JS function ping(...)");
        this.executeJS("ping('Android SDK '5.1.1)");
    }
    
    public void playVideo(final Map map) {
        while (true) {
            Label_0065: {
                synchronized (this.videoOverlayLock) {
                    if (this.videoOverlay != null) {
                        this.videoOverlay.requestPlay();
                    }
                    else {
                        if (this.lastParameters == null) {
                            break Label_0065;
                        }
                        this.lastParameters.put("autoplay", "true");
                        this.renderVideo(this.lastParameters);
                    }
                    return;
                }
            }
            this.logger.e(AdViewControllerJsInterface.TAG, "Template issue: playVideo called before renderVideo.");
        }
    }
    
    public void renderVideo(final Map lastParameters) {
        if (this.lastParameters == null) {
            this.lastParameters = lastParameters;
        }
        this.interruptNotify = false;
        final int calculateDimension = this.calculateDimension(lastParameters.get("widthp"), r.a);
        final int calculateDimension2 = this.calculateDimension(lastParameters.get("heightp"), r.b);
        final Boolean value = Boolean.valueOf(lastParameters.get("autoplay"));
        final int int1 = Integer.parseInt(lastParameters.get("x"));
        final int int2 = Integer.parseInt(lastParameters.get("y"));
        if (this.videoFilename != null) {
            synchronized (this.videoOverlayLock) {
                if (this.videoOverlay == null) {
                    final File a = bc.a(this.videoFilename, (Context)this.parentActivity);
                    this.logger.d(AdViewControllerJsInterface.TAG, "Rending video from " + a + " at (" + int1 + "," + int2 + "), " + calculateDimension + "x" + calculateDimension2 + " autoplay is " + value);
                    this.videoOverlay = new AppLovinVideoOverlayImpl(int1, int2, calculateDimension, calculateDimension2, this.parentActivity, Uri.fromFile(a), this.logger, new o(this));
                    this.parentView.addView((View)this.videoOverlay.getVideoLayout(), 0);
                }
                this.lastKnownDuration = this.videoOverlay.getDuration();
                // monitorexit(this.videoOverlayLock)
                if (value) {
                    this.playVideo(null);
                }
                return;
            }
        }
        this.logger.e(AdViewControllerJsInterface.TAG, "renderVideo called before video filename was set");
    }
    
    public void setAdVideoPlaybackListener(final AppLovinAdVideoPlaybackListener adVideoPlaybackListener) {
        this.adVideoPlaybackListener = adVideoPlaybackListener;
    }
    
    public void setCloseButtonHidden(final Map map) {
        this.logger.d(AdViewControllerJsInterface.TAG, "Ignoring a call to setCloseButtonHidden.");
    }
    
    public void setPercentViewed(final int percentViewed) {
        if (this.videoOverlay == null) {
            this.renderVideo(this.lastParameters);
        }
        this.videoOverlay.setPercentViewed(percentViewed);
        this.notifyOfNewTime();
    }
    
    public void setPlaybackPercent(final Map map) {
        this.setPercentViewed(Integer.parseInt(map.get("percent")));
    }
    
    public void setPlaybackTime(final int playbackTime) {
        if (this.videoOverlay == null) {
            this.renderVideo(this.lastParameters);
        }
        this.videoOverlay.setPlaybackTime(playbackTime);
        this.notifyOfNewTime();
    }
    
    public void setPlaybackTime(final Map map) {
        this.setPlaybackTime(Integer.parseInt(map.get("seconds")));
    }
    
    public void setVideoFilename(final String videoFilename) {
        this.videoFilename = videoFilename;
    }
    
    public void stopVideo(final Map map) {
        this.pauseVideo(map);
    }
}
