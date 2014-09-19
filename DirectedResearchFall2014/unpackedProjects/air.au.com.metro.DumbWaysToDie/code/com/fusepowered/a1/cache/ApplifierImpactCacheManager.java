package com.fusepowered.a1.cache;

import com.fusepowered.a1.*;
import java.util.*;
import com.fusepowered.a1.campaign.*;
import java.io.*;

public class ApplifierImpactCacheManager implements IApplifierImpactCampaignHandlerListener
{
    private int _amountPrepared;
    private IApplifierImpactCacheListener _downloadListener;
    private ArrayList<ApplifierImpactCampaignHandler> _downloadingHandlers;
    private ArrayList<ApplifierImpactCampaignHandler> _handlers;
    private int _totalCampaigns;
    
    public ApplifierImpactCacheManager() {
        super();
        this._downloadListener = null;
        this._downloadingHandlers = null;
        this._handlers = null;
        this._amountPrepared = 0;
        this._totalCampaigns = 0;
        if (ApplifierImpactUtils.canUseExternalStorage()) {
            ApplifierImpactUtils.Log("External storagedir: " + ApplifierImpactUtils.getCacheDirectory() + " created with result: " + ApplifierImpactUtils.createCacheDir(), this);
            return;
        }
        ApplifierImpactUtils.Log("Could not create cache, no external memory present", this);
    }
    
    private void addToDownloadingHandlers(final ApplifierImpactCampaignHandler e) {
        if (this._downloadingHandlers == null) {
            this._downloadingHandlers = new ArrayList<ApplifierImpactCampaignHandler>();
        }
        this._downloadingHandlers.add(e);
    }
    
    private void addToUpdatingHandlers(final ApplifierImpactCampaignHandler e) {
        if (this._handlers == null) {
            this._handlers = new ArrayList<ApplifierImpactCampaignHandler>();
        }
        this._handlers.add(e);
    }
    
    private void removeFromDownloadingHandlers(final ApplifierImpactCampaignHandler o) {
        if (this._downloadingHandlers != null) {
            this._downloadingHandlers.remove(o);
        }
    }
    
    private void removeFromUpdatingHandlers(final ApplifierImpactCampaignHandler o) {
        if (this._handlers != null) {
            this._handlers.remove(o);
        }
    }
    
    public void clearData() {
        if (this._downloadListener != null) {
            this._downloadListener = null;
        }
        if (this._downloadingHandlers != null) {
            for (final ApplifierImpactCampaignHandler applifierImpactCampaignHandler : this._downloadingHandlers) {
                applifierImpactCampaignHandler.setListener(null);
                applifierImpactCampaignHandler.clearData();
            }
            this._downloadingHandlers.clear();
            this._downloadingHandlers = null;
        }
        if (this._handlers != null) {
            for (final ApplifierImpactCampaignHandler applifierImpactCampaignHandler2 : this._handlers) {
                applifierImpactCampaignHandler2.setListener(null);
                applifierImpactCampaignHandler2.clearData();
            }
            this._handlers.clear();
            this._handlers = null;
        }
    }
    
    public boolean hasDownloadingHandlers() {
        return this._downloadingHandlers != null && this._downloadingHandlers.size() > 0;
    }
    
    public void initCache(final ArrayList<ApplifierImpactCampaign> list) {
        this.updateCache(list);
    }
    
    @Override
    public void onCampaignHandled(final ApplifierImpactCampaignHandler applifierImpactCampaignHandler) {
        ++this._amountPrepared;
        this.removeFromDownloadingHandlers(applifierImpactCampaignHandler);
        this.removeFromUpdatingHandlers(applifierImpactCampaignHandler);
        this._downloadListener.onCampaignReady(applifierImpactCampaignHandler);
        if (this._amountPrepared == this._totalCampaigns) {
            this._downloadListener.onAllCampaignsReady();
        }
    }
    
    public void setDownloadListener(final IApplifierImpactCacheListener downloadListener) {
        this._downloadListener = downloadListener;
    }
    
    public void updateCache(final ArrayList<ApplifierImpactCampaign> list) {
        int i = 0;
        if (this._downloadListener != null) {
            this._downloadListener.onCampaignUpdateStarted();
        }
        this._amountPrepared = 0;
        if (list != null) {
            ApplifierImpactUtils.Log(list.toString(), this);
        }
        if (ApplifierImpactUtils.getCacheDirectory() != null) {
            final File[] listFiles = new File(ApplifierImpactUtils.getCacheDirectory()).listFiles();
            if (listFiles != null) {
                while (i < listFiles.length) {
                    final File file = listFiles[i];
                    ApplifierImpactUtils.Log("Checking file: " + file.getName(), this);
                    if (!file.getName().equals("pendingrequests.dat") && !file.getName().equals("manifest.json") && !ApplifierImpactUtils.isFileRequiredByCampaigns(file.getName(), list)) {
                        ApplifierImpactUtils.removeFile(file.getName());
                    }
                    ++i;
                }
            }
        }
        if (list != null) {
            this._totalCampaigns = list.size();
            ApplifierImpactUtils.Log("Updating cache: Going through active campaigns: " + this._totalCampaigns, this);
            final Iterator<ApplifierImpactCampaign> iterator = list.iterator();
            while (iterator.hasNext()) {
                final ApplifierImpactCampaignHandler applifierImpactCampaignHandler = new ApplifierImpactCampaignHandler(iterator.next());
                this.addToUpdatingHandlers(applifierImpactCampaignHandler);
                applifierImpactCampaignHandler.setListener(this);
                applifierImpactCampaignHandler.initCampaign();
                if (applifierImpactCampaignHandler.hasDownloads()) {
                    this.addToDownloadingHandlers(applifierImpactCampaignHandler);
                }
            }
        }
    }
}
