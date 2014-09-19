package com.fusepowered.m2.m2l;

import android.app.*;
import android.content.*;
import java.util.*;
import android.location.*;
import android.util.*;
import com.fusepowered.m2.m2l.util.*;
import com.fusepowered.m2.m2l.factories.*;

public class MoPubInterstitial implements CustomEventInterstitialAdapterListener
{
    private Activity mActivity;
    private String mAdUnitId;
    private InterstitialState mCurrentInterstitialState;
    private CustomEventInterstitialAdapter mCustomEventInterstitialAdapter;
    private InterstitialAdListener mInterstitialAdListener;
    private MoPubInterstitialView mInterstitialView;
    private boolean mIsDestroyed;
    private MoPubInterstitialListener mListener;
    
    static /* synthetic */ int[] $SWITCH_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState() {
        final int[] $switch_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState = MoPubInterstitial.$SWITCH_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState;
        if ($switch_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState != null) {
            return $switch_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState;
        }
        final int[] $switch_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState2 = new int[InterstitialState.values().length];
        while (true) {
            try {
                $switch_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState2[InterstitialState.CUSTOM_EVENT_AD_READY.ordinal()] = 1;
                try {
                    $switch_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState2[InterstitialState.NOT_READY.ordinal()] = 2;
                    return MoPubInterstitial.$SWITCH_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState = $switch_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState2;
                }
                catch (NoSuchFieldError noSuchFieldError) {}
            }
            catch (NoSuchFieldError noSuchFieldError2) {
                continue;
            }
            break;
        }
    }
    
    public MoPubInterstitial(final Activity mActivity, final String mAdUnitId) {
        super();
        this.mActivity = mActivity;
        this.mAdUnitId = mAdUnitId;
        (this.mInterstitialView = new MoPubInterstitialView((Context)this.mActivity)).setAdUnitId(this.mAdUnitId);
        this.mCurrentInterstitialState = InterstitialState.NOT_READY;
    }
    
    static /* synthetic */ void access$1(final MoPubInterstitial moPubInterstitial, final CustomEventInterstitialAdapter mCustomEventInterstitialAdapter) {
        moPubInterstitial.mCustomEventInterstitialAdapter = mCustomEventInterstitialAdapter;
    }
    
    private void resetCurrentInterstitial() {
        this.mCurrentInterstitialState = InterstitialState.NOT_READY;
        if (this.mCustomEventInterstitialAdapter != null) {
            this.mCustomEventInterstitialAdapter.invalidate();
            this.mCustomEventInterstitialAdapter = null;
        }
        this.mIsDestroyed = false;
    }
    
    private void showCustomEventInterstitial() {
        if (this.mCustomEventInterstitialAdapter != null) {
            this.mCustomEventInterstitialAdapter.showInterstitial();
        }
    }
    
    @Deprecated
    public void customEventActionWillBegin() {
        if (this.mInterstitialView != null) {
            this.mInterstitialView.registerClick();
        }
    }
    
    @Deprecated
    public void customEventDidFailToLoadAd() {
        if (this.mInterstitialView != null) {
            this.mInterstitialView.loadFailUrl(MoPubErrorCode.UNSPECIFIED);
        }
    }
    
    @Deprecated
    public void customEventDidLoadAd() {
        if (this.mInterstitialView != null) {
            this.mInterstitialView.trackImpression();
        }
    }
    
    public void destroy() {
        this.mIsDestroyed = true;
        if (this.mCustomEventInterstitialAdapter != null) {
            this.mCustomEventInterstitialAdapter.invalidate();
            this.mCustomEventInterstitialAdapter = null;
        }
        this.mInterstitialView.setBannerAdListener(null);
        this.mInterstitialView.destroy();
    }
    
    public void forceRefresh() {
        this.resetCurrentInterstitial();
        this.mInterstitialView.forceRefresh();
    }
    
    public Activity getActivity() {
        return this.mActivity;
    }
    
    Integer getAdTimeoutDelay() {
        return this.mInterstitialView.getAdTimeoutDelay();
    }
    
    public InterstitialAdListener getInterstitialAdListener() {
        return this.mInterstitialAdListener;
    }
    
    public String getKeywords() {
        return this.mInterstitialView.getKeywords();
    }
    
    @Deprecated
    public MoPubInterstitialListener getListener() {
        return this.mListener;
    }
    
    public Map<String, Object> getLocalExtras() {
        return this.mInterstitialView.getLocalExtras();
    }
    
    public Location getLocation() {
        return this.mInterstitialView.getLocation();
    }
    
    public MoPubView.LocationAwareness getLocationAwareness() {
        return this.mInterstitialView.getLocationAwareness();
    }
    
    public int getLocationPrecision() {
        return this.mInterstitialView.getLocationPrecision();
    }
    
    MoPubInterstitialView getMoPubInterstitialView() {
        return this.mInterstitialView;
    }
    
    public boolean getTesting() {
        return this.mInterstitialView.getTesting();
    }
    
    boolean isDestroyed() {
        return this.mIsDestroyed;
    }
    
    public boolean isFacebookSupported() {
        return this.mInterstitialView.isFacebookSupported();
    }
    
    public boolean isReady() {
        return this.mCurrentInterstitialState.isReady();
    }
    
    public void load() {
        this.resetCurrentInterstitial();
        this.mInterstitialView.loadAd();
    }
    
    @Override
    public void onCustomEventInterstitialClicked() {
        if (!this.isDestroyed()) {
            this.mInterstitialView.registerClick();
            if (this.mInterstitialAdListener != null) {
                this.mInterstitialAdListener.onInterstitialClicked(this);
            }
        }
    }
    
    @Override
    public void onCustomEventInterstitialDismissed() {
        if (!this.isDestroyed()) {
            this.mCurrentInterstitialState = InterstitialState.NOT_READY;
            if (this.mInterstitialAdListener != null) {
                this.mInterstitialAdListener.onInterstitialDismissed(this);
            }
        }
    }
    
    @Override
    public void onCustomEventInterstitialFailed(final MoPubErrorCode moPubErrorCode) {
        if (this.isDestroyed()) {
            return;
        }
        this.mCurrentInterstitialState = InterstitialState.NOT_READY;
        this.mInterstitialView.loadFailUrl(moPubErrorCode);
    }
    
    @Override
    public void onCustomEventInterstitialLoaded() {
        if (!this.mIsDestroyed) {
            this.mCurrentInterstitialState = InterstitialState.CUSTOM_EVENT_AD_READY;
            if (this.mInterstitialAdListener != null) {
                this.mInterstitialAdListener.onInterstitialLoaded(this);
                return;
            }
            if (this.mListener != null) {
                this.mListener.OnInterstitialLoaded();
            }
        }
    }
    
    @Override
    public void onCustomEventInterstitialShown() {
        if (!this.isDestroyed()) {
            this.mInterstitialView.trackImpression();
            if (this.mInterstitialAdListener != null) {
                this.mInterstitialAdListener.onInterstitialShown(this);
            }
        }
    }
    
    public void setFacebookSupported(final boolean facebookSupported) {
        this.mInterstitialView.setFacebookSupported(facebookSupported);
    }
    
    public void setInterstitialAdListener(final InterstitialAdListener mInterstitialAdListener) {
        this.mInterstitialAdListener = mInterstitialAdListener;
    }
    
    @Deprecated
    void setInterstitialView(final MoPubInterstitialView mInterstitialView) {
        this.mInterstitialView = mInterstitialView;
    }
    
    public void setKeywords(final String keywords) {
        this.mInterstitialView.setKeywords(keywords);
    }
    
    @Deprecated
    public void setListener(final MoPubInterstitialListener mListener) {
        this.mListener = mListener;
    }
    
    public void setLocalExtras(final Map<String, Object> localExtras) {
        this.mInterstitialView.setLocalExtras(localExtras);
    }
    
    public void setLocationAwareness(final MoPubView.LocationAwareness locationAwareness) {
        this.mInterstitialView.setLocationAwareness(locationAwareness);
    }
    
    public void setLocationPrecision(final int locationPrecision) {
        this.mInterstitialView.setLocationPrecision(locationPrecision);
    }
    
    public void setTesting(final boolean testing) {
        this.mInterstitialView.setTesting(testing);
    }
    
    public boolean show() {
        switch ($SWITCH_TABLE$com$mopub$mobileads$MoPubInterstitial$InterstitialState()[this.mCurrentInterstitialState.ordinal()]) {
            default: {
                return false;
            }
            case 1: {
                this.showCustomEventInterstitial();
                return true;
            }
        }
    }
    
    public interface InterstitialAdListener
    {
        void onInterstitialClicked(MoPubInterstitial p0);
        
        void onInterstitialDismissed(MoPubInterstitial p0);
        
        void onInterstitialFailed(MoPubInterstitial p0, MoPubErrorCode p1);
        
        void onInterstitialLoaded(MoPubInterstitial p0);
        
        void onInterstitialShown(MoPubInterstitial p0);
    }
    
    private enum InterstitialState
    {
        CUSTOM_EVENT_AD_READY("CUSTOM_EVENT_AD_READY", 0), 
        NOT_READY("NOT_READY", 1);
        
        boolean isReady() {
            return this != InterstitialState.NOT_READY;
        }
    }
    
    @Deprecated
    public interface MoPubInterstitialListener
    {
        void OnInterstitialFailed();
        
        void OnInterstitialLoaded();
    }
    
    public class MoPubInterstitialView extends MoPubView
    {
        public MoPubInterstitialView(final Context context) {
            super(context);
            this.setAutorefreshEnabled(false);
        }
        
        @Override
        protected void adFailed(final MoPubErrorCode moPubErrorCode) {
            if (MoPubInterstitial.this.mInterstitialAdListener != null) {
                MoPubInterstitial.this.mInterstitialAdListener.onInterstitialFailed(MoPubInterstitial.this, moPubErrorCode);
            }
        }
        
        @Override
        protected void loadCustomEvent(final Map<String, String> map) {
            if (map == null) {
                Log.d("MoPub", "Couldn't invoke custom event because the server did not specify one.");
                this.loadFailUrl(MoPubErrorCode.ADAPTER_NOT_FOUND);
                return;
            }
            if (MoPubInterstitial.this.mCustomEventInterstitialAdapter != null) {
                MoPubInterstitial.this.mCustomEventInterstitialAdapter.invalidate();
            }
            Log.d("MoPub", "Loading custom event interstitial adapter.");
            MoPubInterstitial.access$1(MoPubInterstitial.this, CustomEventInterstitialAdapterFactory.create(MoPubInterstitial.this, map.get(ResponseHeader.CUSTOM_EVENT_NAME.getKey()), map.get(ResponseHeader.CUSTOM_EVENT_DATA.getKey())));
            MoPubInterstitial.this.mCustomEventInterstitialAdapter.setAdapterListener((CustomEventInterstitialAdapter.CustomEventInterstitialAdapterListener)MoPubInterstitial.this);
            MoPubInterstitial.this.mCustomEventInterstitialAdapter.loadInterstitial();
        }
        
        protected void trackImpression() {
            Log.d("MoPub", "Tracking impression for interstitial.");
            if (this.mAdViewController != null) {
                this.mAdViewController.trackImpression();
            }
        }
    }
}
