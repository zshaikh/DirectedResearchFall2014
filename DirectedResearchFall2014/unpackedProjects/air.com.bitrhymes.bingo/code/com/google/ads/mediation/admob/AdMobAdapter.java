package com.google.ads.mediation.admob;

import android.app.*;
import com.google.ads.util.*;
import android.content.*;
import android.view.*;
import com.google.ads.mediation.*;
import com.google.ads.*;

public class AdMobAdapter implements MediationBannerAdapter<AdMobAdapterExtras, AdMobAdapterServerParameters>, MediationInterstitialAdapter<AdMobAdapterExtras, AdMobAdapterServerParameters>
{
    private MediationBannerListener a;
    private MediationInterstitialListener b;
    private AdView c;
    private InterstitialAd d;
    
    private AdRequest a(final Activity activity, final AdMobAdapterServerParameters adMobAdapterServerParameters, final MediationAdRequest mediationAdRequest, final AdMobAdapterExtras adMobAdapterExtras) {
        final AdMobAdapterExtras networkExtras = new AdMobAdapterExtras(adMobAdapterExtras);
        networkExtras.addExtra("_norefresh", "t");
        networkExtras.addExtra("gw", 1);
        if (adMobAdapterServerParameters.allowHouseAds != null) {
            networkExtras.addExtra("mad_hac", adMobAdapterServerParameters.allowHouseAds);
        }
        final AdRequest setNetworkExtras = new AdRequest().setBirthday(mediationAdRequest.getBirthday()).setGender(mediationAdRequest.getGender()).setKeywords(mediationAdRequest.getKeywords()).setLocation(mediationAdRequest.getLocation()).setNetworkExtras(networkExtras);
        if (mediationAdRequest.isTesting()) {
            setNetworkExtras.addTestDevice(AdUtil.a((Context)activity));
        }
        return setNetworkExtras;
    }
    
    private void a() {
        if (this.b()) {
            throw new IllegalStateException("Adapter has already been destroyed");
        }
    }
    
    private boolean b() {
        return this.c == null && this.d == null;
    }
    
    protected AdView a(final Activity activity, final AdSize adSize, final String s) {
        return new AdView(activity, adSize, s);
    }
    
    protected InterstitialAd a(final Activity activity, final String s) {
        return new InterstitialAd(activity, s);
    }
    
    @Override
    public void destroy() {
        this.a();
        if (this.c != null) {
            this.c.stopLoading();
            this.c.destroy();
            this.c = null;
        }
        if (this.d != null) {
            this.d.stopLoading();
            this.d = null;
        }
    }
    
    @Override
    public Class<AdMobAdapterExtras> getAdditionalParametersType() {
        return AdMobAdapterExtras.class;
    }
    
    @Override
    public View getBannerView() {
        return (View)this.c;
    }
    
    @Override
    public Class<AdMobAdapterServerParameters> getServerParametersType() {
        return AdMobAdapterServerParameters.class;
    }
    
    @Override
    public void requestBannerAd(final MediationBannerListener a, final Activity activity, final AdMobAdapterServerParameters adMobAdapterServerParameters, AdSize bestSize, final MediationAdRequest mediationAdRequest, final AdMobAdapterExtras adMobAdapterExtras) {
        this.a = a;
        if (!bestSize.isAutoHeight() && !bestSize.isFullWidth() && (adMobAdapterExtras == null || !adMobAdapterExtras.getUseExactAdSize())) {
            bestSize = bestSize.findBestSize(AdSize.BANNER, AdSize.IAB_BANNER, AdSize.IAB_LEADERBOARD, AdSize.IAB_MRECT, AdSize.IAB_WIDE_SKYSCRAPER);
            if (bestSize == null) {
                a.onFailedToReceiveAd(this, AdRequest.ErrorCode.NO_FILL);
                return;
            }
        }
        (this.c = this.a(activity, bestSize, adMobAdapterServerParameters.adUnitId)).setAdListener(new a());
        this.c.loadAd(this.a(activity, adMobAdapterServerParameters, mediationAdRequest, adMobAdapterExtras));
    }
    
    @Override
    public void requestInterstitialAd(final MediationInterstitialListener b, final Activity activity, final AdMobAdapterServerParameters adMobAdapterServerParameters, final MediationAdRequest mediationAdRequest, final AdMobAdapterExtras adMobAdapterExtras) {
        this.b = b;
        (this.d = this.a(activity, adMobAdapterServerParameters.adUnitId)).setAdListener(new b());
        this.d.loadAd(this.a(activity, adMobAdapterServerParameters, mediationAdRequest, adMobAdapterExtras));
    }
    
    @Override
    public void showInterstitial() {
        this.d.show();
    }
    
    private class a implements AdListener
    {
        @Override
        public void onDismissScreen(final Ad ad) {
            AdMobAdapter.this.a.onDismissScreen(AdMobAdapter.this);
        }
        
        @Override
        public void onFailedToReceiveAd(final Ad ad, final AdRequest.ErrorCode errorCode) {
            AdMobAdapter.this.a.onFailedToReceiveAd(AdMobAdapter.this, errorCode);
        }
        
        @Override
        public void onLeaveApplication(final Ad ad) {
            AdMobAdapter.this.a.onLeaveApplication(AdMobAdapter.this);
        }
        
        @Override
        public void onPresentScreen(final Ad ad) {
            AdMobAdapter.this.a.onClick(AdMobAdapter.this);
            AdMobAdapter.this.a.onPresentScreen(AdMobAdapter.this);
        }
        
        @Override
        public void onReceiveAd(final Ad ad) {
            AdMobAdapter.this.a.onReceivedAd(AdMobAdapter.this);
        }
    }
    
    private class b implements AdListener
    {
        @Override
        public void onDismissScreen(final Ad ad) {
            AdMobAdapter.this.b.onDismissScreen(AdMobAdapter.this);
        }
        
        @Override
        public void onFailedToReceiveAd(final Ad ad, final AdRequest.ErrorCode errorCode) {
            AdMobAdapter.this.b.onFailedToReceiveAd(AdMobAdapter.this, errorCode);
        }
        
        @Override
        public void onLeaveApplication(final Ad ad) {
            AdMobAdapter.this.b.onLeaveApplication(AdMobAdapter.this);
        }
        
        @Override
        public void onPresentScreen(final Ad ad) {
            AdMobAdapter.this.b.onPresentScreen(AdMobAdapter.this);
        }
        
        @Override
        public void onReceiveAd(final Ad ad) {
            AdMobAdapter.this.b.onReceivedAd(AdMobAdapter.this);
        }
    }
}
