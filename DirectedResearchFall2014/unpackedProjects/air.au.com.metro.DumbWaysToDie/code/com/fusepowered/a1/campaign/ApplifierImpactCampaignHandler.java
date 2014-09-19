package com.fusepowered.a1.campaign;

import com.fusepowered.a1.webapp.*;
import java.util.*;
import com.fusepowered.a1.cache.*;
import com.fusepowered.a1.*;

public class ApplifierImpactCampaignHandler implements IApplifierImpactDownloadListener
{
    private long _cacheSolvedMillis;
    private long _cacheStartMillis;
    private ApplifierImpactCampaign _campaign;
    private ArrayList<String> _downloadList;
    private IApplifierImpactCampaignHandlerListener _handlerListener;
    
    public ApplifierImpactCampaignHandler(final ApplifierImpactCampaign campaign) {
        super();
        this._downloadList = null;
        this._campaign = null;
        this._handlerListener = null;
        this._cacheStartMillis = 0L;
        this._cacheSolvedMillis = 0L;
        this._campaign = campaign;
    }
    
    private void addCampaignToDownloads() {
        if (this._campaign == null) {
            return;
        }
        if (this._downloadList == null) {
            this._downloadList = new ArrayList<String>();
        }
        this._downloadList.add(this._campaign.getVideoUrl());
        this._cacheStartMillis = System.currentTimeMillis();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("eventValue", "start");
        ApplifierImpactInstrumentation.gaInstrumentationVideoCaching(this._campaign, (Map<String, Object>)hashMap);
        ApplifierImpactDownloader.addDownload(this._campaign);
    }
    
    private void checkFileAndDownloadIfNeeded(final String s) {
        if (this._campaign.shouldCacheVideo() && !ApplifierImpactUtils.isFileInCache(this._campaign.getVideoFilename()) && ApplifierImpactUtils.canUseExternalStorage()) {
            if (!this.hasDownloads()) {
                ApplifierImpactDownloader.addListener(this);
            }
            this.addCampaignToDownloads();
        }
        else if (this._campaign.shouldCacheVideo() && !this.isFileOk(s) && ApplifierImpactUtils.canUseExternalStorage()) {
            ApplifierImpactUtils.Log("The file was not okay, redownloading", this);
            ApplifierImpactUtils.removeFile(this._campaign.getVideoFilename());
            ApplifierImpactDownloader.addListener(this);
            this.addCampaignToDownloads();
        }
    }
    
    private boolean finishDownload(final String s) {
        this._cacheSolvedMillis = System.currentTimeMillis();
        this.removeDownload(s);
        if (this._downloadList != null && this._downloadList.size() == 0 && this._handlerListener != null) {
            ApplifierImpactDownloader.removeListener(this);
            return true;
        }
        return false;
    }
    
    private boolean isFileOk(final String s) {
        final long sizeForLocalFile = ApplifierImpactUtils.getSizeForLocalFile(this._campaign.getVideoFilename());
        final long videoFileExpectedSize = this._campaign.getVideoFileExpectedSize();
        ApplifierImpactUtils.Log("isFileOk: localSize=" + sizeForLocalFile + ", expectedSize=" + videoFileExpectedSize, this);
        return sizeForLocalFile != -1L && (videoFileExpectedSize == -1L || (sizeForLocalFile > 0L && videoFileExpectedSize > 0L && sizeForLocalFile == videoFileExpectedSize));
    }
    
    private void removeDownload(final String anObject) {
        if (this._downloadList != null) {
            int index = -1;
            for (int i = 0; i < this._downloadList.size(); ++i) {
                if (this._downloadList.get(i).equals(anObject)) {
                    index = i;
                    break;
                }
            }
            if (index > -1) {
                this._downloadList.remove(index);
            }
        }
    }
    
    public void clearData() {
        if (this._handlerListener != null) {
            this._handlerListener = null;
        }
        if (this._downloadList != null) {
            this._downloadList.clear();
        }
        if (this._campaign != null) {
            this._campaign.clearData();
            this._campaign = null;
        }
    }
    
    public long getCachingDurationInMillis() {
        if (this._cacheStartMillis > 0L && this._cacheSolvedMillis > 0L) {
            return this._cacheSolvedMillis - this._cacheStartMillis;
        }
        return 0L;
    }
    
    public ApplifierImpactCampaign getCampaign() {
        return this._campaign;
    }
    
    public boolean hasDownloads() {
        return this._downloadList != null && this._downloadList.size() > 0;
    }
    
    public void initCampaign() {
        this.checkFileAndDownloadIfNeeded(this._campaign.getVideoUrl());
        if (this._handlerListener != null) {
            this._handlerListener.onCampaignHandled(this);
        }
    }
    
    @Override
    public void onFileDownloadCancelled(final String s) {
        if (this.finishDownload(s)) {
            ApplifierImpactUtils.Log("Download cancelled: " + this._campaign.getCampaignId(), this);
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("eventValue", "failed");
            ApplifierImpactInstrumentation.gaInstrumentationVideoCaching(this._campaign, (Map<String, Object>)hashMap);
        }
    }
    
    @Override
    public void onFileDownloadCompleted(final String s) {
        if (this.finishDownload(s)) {
            ApplifierImpactUtils.Log("Reporting campaign download completion: " + this._campaign.getCampaignId(), this);
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("eventValue", "completed");
            hashMap.put("cachingDuration", (String)this.getCachingDurationInMillis());
            ApplifierImpactInstrumentation.gaInstrumentationVideoCaching(this._campaign, (Map<String, Object>)hashMap);
        }
    }
    
    public void setListener(final IApplifierImpactCampaignHandlerListener handlerListener) {
        this._handlerListener = handlerListener;
    }
}
