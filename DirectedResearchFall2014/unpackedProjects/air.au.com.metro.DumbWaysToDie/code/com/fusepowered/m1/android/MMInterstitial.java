package com.fusepowered.m1.android;

import android.content.*;

public final class MMInterstitial implements MMAd
{
    MMAdImpl adImpl;
    int externalId;
    
    public MMInterstitial(final Context context) {
        super();
        this.adImpl = new MMInterstitialAdImpl(context.getApplicationContext());
        this.adImpl.adType = "i";
    }
    
    private void fetchInternal() {
        if (this.isAdAvailable()) {
            MMSDK.Log.d("Ad already fetched and ready for display...");
            MMSDK.Event.requestFailed(this.adImpl, new MMException(17));
            return;
        }
        MMSDK.Log.d("Fetching new ad...");
        this.adImpl.requestAd();
    }
    
    public boolean display() {
        return this.display(false);
    }
    
    public boolean display(final boolean b) {
        if (!MMSDK.isUiThread()) {
            MMSDK.Log.e(MMException.getErrorCodeMessage(3));
            return false;
        }
        int displayInternal;
        try {
            displayInternal = this.displayInternal();
            if (displayInternal != 0 && b) {
                throw new MMException(displayInternal);
            }
        }
        catch (Exception ex) {
            if (b) {
                throw new MMException(ex);
            }
            return false;
        }
        return displayInternal == 0;
    }
    
    int displayInternal() {
        try {
            MMAdImplController.assignAdViewController(this.adImpl);
            if (this.adImpl.controller != null) {
                return this.adImpl.controller.display(this.adImpl);
            }
        }
        catch (Exception ex) {
            MMSDK.Log.e("There was an exception displaying a cached ad. %s", ex.getMessage());
            ex.printStackTrace();
        }
        return 100;
    }
    
    public void fetch() {
        if (this.adImpl != null && this.adImpl.requestListener != null) {
            this.fetch(this.adImpl.mmRequest, this.adImpl.requestListener);
            return;
        }
        this.fetchInternal();
    }
    
    public void fetch(final MMRequest mmRequest) {
        if (this.adImpl != null && this.adImpl.requestListener != null) {
            this.fetch(mmRequest, this.adImpl.requestListener);
            return;
        }
        this.fetchInternal();
    }
    
    public void fetch(final MMRequest mmRequest, final RequestListener requestListener) {
        if (this.adImpl != null) {
            this.adImpl.mmRequest = mmRequest;
            this.adImpl.requestListener = requestListener;
        }
        this.fetchInternal();
    }
    
    @Override
    public String getApid() {
        return this.adImpl.getApid();
    }
    
    @Override
    public boolean getIgnoresDensityScaling() {
        return this.adImpl.getIgnoresDensityScaling();
    }
    
    @Override
    public RequestListener getListener() {
        return this.adImpl.getListener();
    }
    
    @Override
    public MMRequest getMMRequest() {
        return this.adImpl.getMMRequest();
    }
    
    public boolean isAdAvailable() {
        if (!MMSDK.isUiThread()) {
            MMSDK.Log.e(MMException.getErrorCodeMessage(3));
            return false;
        }
        try {
            MMAdImplController.assignAdViewController(this.adImpl);
            if (this.adImpl.controller != null) {
                return this.adImpl.controller.isAdAvailable(this.adImpl) == 0;
            }
        }
        catch (Exception ex) {
            MMSDK.Log.e("There was an exception checking for a cached ad. %s", ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }
    
    @Override
    public void setApid(final String apid) {
        this.adImpl.setApid(apid);
    }
    
    @Override
    public void setIgnoresDensityScaling(final boolean ignoresDensityScaling) {
        this.adImpl.setIgnoresDensityScaling(ignoresDensityScaling);
    }
    
    @Override
    public void setListener(final RequestListener listener) {
        this.adImpl.setListener(listener);
    }
    
    @Override
    public void setMMRequest(final MMRequest mmRequest) {
        this.adImpl.setMMRequest(mmRequest);
    }
    
    class MMInterstitialAdImpl extends MMAdImpl
    {
        public MMInterstitialAdImpl(final Context context) {
            super(context);
            this.adProperties = new AdProperties(this.getContext());
        }
        
        @Override
        MMInterstitial getCallingAd() {
            return MMInterstitial.this;
        }
    }
}
