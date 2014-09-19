package com.fusepowered.m2.m2l;

import java.util.*;
import android.view.*;
import android.content.*;
import com.fusepowered.m2.m2l.factories.*;
import android.net.*;

class MraidBanner extends CustomEventBanner
{
    private CustomEventBannerListener mBannerListener;
    private MraidView mMraidView;
    
    private boolean extrasAreValid(final Map<String, String> map) {
        return map.containsKey("Html-Response-Body");
    }
    
    private void initMraidListener() {
        this.mMraidView.setMraidListener((MraidView.MraidListener)new MraidView.MraidListener() {
            @Override
            public void onClose(final MraidView mraidView, final ViewState viewState) {
                MraidBanner.this.onClose();
            }
            
            @Override
            public void onExpand(final MraidView mraidView) {
                MraidBanner.this.onExpand();
            }
            
            @Override
            public void onFailure(final MraidView mraidView) {
                MraidBanner.this.onFail();
            }
            
            @Override
            public void onReady(final MraidView mraidView) {
                MraidBanner.this.onReady();
            }
        });
    }
    
    private void onClose() {
        this.mBannerListener.onBannerCollapsed();
    }
    
    private void onExpand() {
        this.mBannerListener.onBannerExpanded();
        this.mBannerListener.onBannerClicked();
    }
    
    private void onFail() {
        this.mBannerListener.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
    }
    
    private void onReady() {
        this.mBannerListener.onBannerLoaded((View)this.mMraidView);
    }
    
    private void resetMraidListener() {
        this.mMraidView.setMraidListener(null);
    }
    
    @Override
    protected void loadBanner(final Context context, final CustomEventBannerListener mBannerListener, final Map<String, Object> map, final Map<String, String> map2) {
        this.mBannerListener = mBannerListener;
        if (this.extrasAreValid(map2)) {
            (this.mMraidView = MraidViewFactory.create(context, AdConfiguration.extractFromMap(map))).loadHtmlData(Uri.decode((String)map2.get("Html-Response-Body")));
            this.initMraidListener();
            return;
        }
        this.mBannerListener.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
    }
    
    @Override
    protected void onInvalidate() {
        if (this.mMraidView != null) {
            this.resetMraidListener();
            this.mMraidView.destroy();
        }
    }
}
