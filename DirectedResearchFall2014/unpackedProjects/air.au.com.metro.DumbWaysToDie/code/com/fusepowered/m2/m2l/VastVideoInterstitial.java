package com.fusepowered.m2.m2l;

import com.fusepowered.m2.m2l.util.vast.*;
import java.util.*;
import android.net.*;
import com.fusepowered.m2.m2l.util.*;
import com.fusepowered.m2.m2l.factories.*;
import android.util.*;

class VastVideoInterstitial extends ResponseBodyInterstitial implements VastManagerListener, OnDownloadCompleteListener
{
    public static final int CACHE_MAX_SIZE = 100000000;
    public static final String VIDEO_CACHE_DIRECTORY_NAME = "mopub_vast_video_cache";
    private String mClickThroughUrl;
    private ArrayList<String> mClickTrackers;
    private CustomEventInterstitialListener mCustomEventInterstitialListener;
    private ArrayList<String> mImpressionTrackers;
    private VastManager mVastManager;
    private String mVastResponse;
    private VastVideoDownloadTask mVastVideoDownloadTask;
    private DiskLruCache mVideoCache;
    private ArrayList<String> mVideoCompleteTrackers;
    private ArrayList<String> mVideoFirstQuartileTrackers;
    private ArrayList<String> mVideoMidpointTrackers;
    private ArrayList<String> mVideoStartTrackers;
    private ArrayList<String> mVideoThirdQuartileTrackers;
    private String mVideoUrl;
    
    @Override
    protected void extractExtras(final Map<String, String> map) {
        this.mVastResponse = Uri.decode((String)map.get("Html-Response-Body"));
    }
    
    @Deprecated
    String getVastResponse() {
        return this.mVastResponse;
    }
    
    @Deprecated
    DiskLruCache getVideoCache() {
        return this.mVideoCache;
    }
    
    @Override
    public void onComplete(final VastManager vastManager) {
        this.mVideoUrl = vastManager.getMediaFileUrl();
        if (this.mVideoCache.getUri(this.mVideoUrl) != null) {
            this.onDownloadSuccess();
            return;
        }
        (this.mVastVideoDownloadTask = VastVideoDownloadTaskFactory.create(this, this.mVideoCache)).execute((Object[])new String[] { this.mVideoUrl });
    }
    
    @Override
    public void onDownloadFailed() {
        this.mCustomEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.VIDEO_DOWNLOAD_ERROR);
    }
    
    @Override
    public void onDownloadSuccess() {
        this.mVideoStartTrackers = Lists.asStringArrayList(this.mVastManager.getVideoStartTrackers());
        this.mVideoFirstQuartileTrackers = Lists.asStringArrayList(this.mVastManager.getVideoFirstQuartileTrackers());
        this.mVideoMidpointTrackers = Lists.asStringArrayList(this.mVastManager.getVideoMidpointTrackers());
        this.mVideoThirdQuartileTrackers = Lists.asStringArrayList(this.mVastManager.getVideoThirdQuartileTrackers());
        this.mVideoCompleteTrackers = Lists.asStringArrayList(this.mVastManager.getVideoCompleteTrackers());
        this.mImpressionTrackers = Lists.asStringArrayList(this.mVastManager.getImpressionTrackers());
        this.mClickThroughUrl = this.mVastManager.getClickThroughUrl();
        this.mClickTrackers = Lists.asStringArrayList(this.mVastManager.getClickTrackers());
        this.mCustomEventInterstitialListener.onInterstitialLoaded();
    }
    
    @Override
    protected void onInvalidate() {
        if (this.mVastManager != null) {
            this.mVastManager.cancel();
        }
        super.onInvalidate();
    }
    
    @Override
    protected void preRenderHtml(final CustomEventInterstitialListener mCustomEventInterstitialListener) {
        this.mCustomEventInterstitialListener = mCustomEventInterstitialListener;
        Label_0031: {
            if (this.mVideoCache != null) {
                break Label_0031;
            }
            try {
                this.mVideoCache = new DiskLruCache(this.mContext, "mopub_vast_video_cache", 100000000);
                (this.mVastManager = VastManagerFactory.create()).processVast(this.mVastResponse, (VastManager.VastManagerListener)this);
            }
            catch (Exception ex) {
                Log.d("MoPub", "Unable to create VAST video cache.");
                this.mCustomEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.VIDEO_CACHE_ERROR);
            }
        }
    }
    
    @Deprecated
    void setVastManager(final VastManager mVastManager) {
        this.mVastManager = mVastManager;
    }
    
    @Override
    protected void showInterstitial() {
        M2RvpActivity.startVast(this.mContext, this.mVideoUrl, this.mVideoStartTrackers, this.mVideoFirstQuartileTrackers, this.mVideoMidpointTrackers, this.mVideoThirdQuartileTrackers, this.mVideoCompleteTrackers, this.mImpressionTrackers, this.mClickThroughUrl, this.mClickTrackers);
    }
}
