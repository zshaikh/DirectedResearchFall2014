package com.fusepowered.m2.m2l;

import android.widget.*;
import android.webkit.*;
import android.util.*;
import android.content.*;
import android.app.*;
import java.util.*;
import android.location.*;
import com.fusepowered.m2.m2l.util.*;
import com.fusepowered.m2.m2l.factories.*;
import android.view.*;

public class MoPubView extends FrameLayout
{
    public static final String AD_HANDLER = "/m/ad";
    public static final int DEFAULT_LOCATION_PRECISION = 6;
    public static final String HOST = "ads.mopub.com";
    public static final String HOST_FOR_TESTING = "testing.ads.mopub.com";
    protected AdViewController mAdViewController;
    private BannerAdListener mBannerAdListener;
    private Context mContext;
    protected CustomEventBannerAdapter mCustomEventBannerAdapter;
    private boolean mIsInForeground;
    private LocationAwareness mLocationAwareness;
    private OnAdClickedListener mOnAdClickedListener;
    private OnAdClosedListener mOnAdClosedListener;
    private OnAdFailedListener mOnAdFailedListener;
    private OnAdLoadedListener mOnAdLoadedListener;
    private OnAdPresentedOverlayListener mOnAdPresentedOverlayListener;
    private OnAdWillLoadListener mOnAdWillLoadListener;
    private boolean mPreviousAutorefreshSetting;
    private BroadcastReceiver mScreenStateReceiver;
    
    public MoPubView(final Context context) {
        this(context, null);
    }
    
    public MoPubView(final Context mContext, final AttributeSet set) {
        super(mContext, set);
        this.mPreviousAutorefreshSetting = false;
        this.mContext = mContext;
        this.mIsInForeground = (this.getVisibility() == 0);
        this.mLocationAwareness = LocationAwareness.LOCATION_AWARENESS_NORMAL;
        this.setHorizontalScrollBarEnabled(false);
        this.setVerticalScrollBarEnabled(false);
        if (WebViewDatabase.getInstance(mContext) == null) {
            Log.e("MoPub", "Disabling MoPub. Local cache file is inaccessible so MoPub will fail if we try to create a WebView. Details of this Android bug found at:http://code.google.com/p/android/issues/detail?id=10789");
            return;
        }
        this.mAdViewController = AdViewControllerFactory.create(mContext, this);
        this.registerScreenStateBroadcastReceiver();
    }
    
    static /* synthetic */ void access$1(final MoPubView moPubView, final boolean mPreviousAutorefreshSetting) {
        moPubView.mPreviousAutorefreshSetting = mPreviousAutorefreshSetting;
    }
    
    private void registerScreenStateBroadcastReceiver() {
        if (this.mAdViewController == null) {
            return;
        }
        this.mScreenStateReceiver = new BroadcastReceiver() {
            public void onReceive(final Context context, final Intent intent) {
                if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                    if (!MoPubView.this.mIsInForeground) {
                        Log.d("MoPub", "Screen sleep but ad in background; refresh should already be disabled");
                        return;
                    }
                    Log.d("MoPub", "Screen sleep with ad in foreground, disable refresh");
                    if (MoPubView.this.mAdViewController != null) {
                        MoPubView.access$1(MoPubView.this, MoPubView.this.mAdViewController.getAutorefreshEnabled());
                        MoPubView.this.mAdViewController.setAutorefreshEnabled(false);
                    }
                }
                else if (intent.getAction().equals("android.intent.action.USER_PRESENT")) {
                    if (!MoPubView.this.mIsInForeground) {
                        Log.d("MoPub", "Screen wake but ad in background; don't enable refresh");
                        return;
                    }
                    Log.d("MoPub", "Screen wake / ad in foreground, reset refresh");
                    if (MoPubView.this.mAdViewController != null) {
                        MoPubView.this.mAdViewController.setAutorefreshEnabled(MoPubView.this.mPreviousAutorefreshSetting);
                    }
                }
            }
        };
        final IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.mContext.registerReceiver(this.mScreenStateReceiver, intentFilter);
    }
    
    private void unregisterScreenStateBroadcastReceiver() {
        try {
            this.mContext.unregisterReceiver(this.mScreenStateReceiver);
        }
        catch (Exception ex) {
            Log.d("MoPub", "Failed to unregister screen state broadcast receiver (never registered).");
        }
    }
    
    protected void adClicked() {
        if (this.mBannerAdListener != null) {
            this.mBannerAdListener.onBannerClicked(this);
        }
        else if (this.mOnAdClickedListener != null) {
            this.mOnAdClickedListener.OnAdClicked(this);
        }
    }
    
    protected void adClosed() {
        if (this.mBannerAdListener != null) {
            this.mBannerAdListener.onBannerCollapsed(this);
        }
        else if (this.mOnAdClosedListener != null) {
            this.mOnAdClosedListener.OnAdClosed(this);
        }
    }
    
    protected void adFailed(final MoPubErrorCode moPubErrorCode) {
        if (this.mBannerAdListener != null) {
            this.mBannerAdListener.onBannerFailed(this, moPubErrorCode);
        }
        else if (this.mOnAdFailedListener != null) {
            this.mOnAdFailedListener.OnAdFailed(this);
        }
    }
    
    protected void adLoaded() {
        Log.d("MoPub", "adLoaded");
        if (this.mBannerAdListener != null) {
            this.mBannerAdListener.onBannerLoaded(this);
        }
        else if (this.mOnAdLoadedListener != null) {
            this.mOnAdLoadedListener.OnAdLoaded(this);
        }
    }
    
    protected void adPresentedOverlay() {
        if (this.mBannerAdListener != null) {
            this.mBannerAdListener.onBannerExpanded(this);
        }
        else if (this.mOnAdPresentedOverlayListener != null) {
            this.mOnAdPresentedOverlayListener.OnAdPresentedOverlay(this);
        }
    }
    
    @Deprecated
    protected void adWillLoad(final String str) {
        Log.d("MoPub", "adWillLoad: " + str);
        if (this.mOnAdWillLoadListener != null) {
            this.mOnAdWillLoadListener.OnAdWillLoad(this, str);
        }
    }
    
    @Deprecated
    public void customEventActionWillBegin() {
        if (this.mAdViewController != null) {
            this.mAdViewController.customEventActionWillBegin();
        }
    }
    
    @Deprecated
    public void customEventDidFailToLoadAd() {
        if (this.mAdViewController != null) {
            this.mAdViewController.customEventDidFailToLoadAd();
        }
    }
    
    @Deprecated
    public void customEventDidLoadAd() {
        if (this.mAdViewController != null) {
            this.mAdViewController.customEventDidLoadAd();
        }
    }
    
    public void destroy() {
        this.unregisterScreenStateBroadcastReceiver();
        this.removeAllViews();
        if (this.mAdViewController != null) {
            this.mAdViewController.cleanup();
            this.mAdViewController = null;
        }
        if (this.mCustomEventBannerAdapter != null) {
            this.mCustomEventBannerAdapter.invalidate();
            this.mCustomEventBannerAdapter = null;
        }
    }
    
    public void forceRefresh() {
        if (this.mCustomEventBannerAdapter != null) {
            this.mCustomEventBannerAdapter.invalidate();
            this.mCustomEventBannerAdapter = null;
        }
        if (this.mAdViewController != null) {
            this.mAdViewController.forceRefresh();
        }
    }
    
    public Activity getActivity() {
        return (Activity)this.mContext;
    }
    
    public int getAdHeight() {
        if (this.mAdViewController != null) {
            return this.mAdViewController.getAdHeight();
        }
        return 0;
    }
    
    Integer getAdTimeoutDelay() {
        if (this.mAdViewController != null) {
            return this.mAdViewController.getAdTimeoutDelay();
        }
        return null;
    }
    
    public String getAdUnitId() {
        if (this.mAdViewController != null) {
            return this.mAdViewController.getAdUnitId();
        }
        return null;
    }
    
    AdViewController getAdViewController() {
        return this.mAdViewController;
    }
    
    public int getAdWidth() {
        if (this.mAdViewController != null) {
            return this.mAdViewController.getAdWidth();
        }
        return 0;
    }
    
    public boolean getAutorefreshEnabled() {
        if (this.mAdViewController != null) {
            return this.mAdViewController.getAutorefreshEnabled();
        }
        Log.d("MoPub", "Can't get autorefresh status for destroyed MoPubView. Returning false.");
        return false;
    }
    
    public BannerAdListener getBannerAdListener() {
        return this.mBannerAdListener;
    }
    
    public String getClickthroughUrl() {
        if (this.mAdViewController != null) {
            return this.mAdViewController.getClickthroughUrl();
        }
        return null;
    }
    
    public String getKeywords() {
        if (this.mAdViewController != null) {
            return this.mAdViewController.getKeywords();
        }
        return null;
    }
    
    public Map<String, Object> getLocalExtras() {
        if (this.mAdViewController != null) {
            return this.mAdViewController.getLocalExtras();
        }
        return Collections.emptyMap();
    }
    
    public Location getLocation() {
        if (this.mAdViewController != null) {
            return this.mAdViewController.getLocation();
        }
        return null;
    }
    
    public LocationAwareness getLocationAwareness() {
        return this.mLocationAwareness;
    }
    
    public int getLocationPrecision() {
        if (this.mAdViewController != null) {
            return this.mAdViewController.getLocationPrecision();
        }
        return 0;
    }
    
    public String getResponseString() {
        if (this.mAdViewController != null) {
            return this.mAdViewController.getResponseString();
        }
        return null;
    }
    
    public boolean getTesting() {
        if (this.mAdViewController != null) {
            return this.mAdViewController.getTesting();
        }
        Log.d("MoPub", "Can't get testing status for destroyed MoPubView. Returning false.");
        return false;
    }
    
    public boolean isFacebookSupported() {
        return this.mAdViewController != null && this.mAdViewController.isFacebookSupported();
    }
    
    public void loadAd() {
        if (this.mAdViewController != null) {
            this.mAdViewController.loadAd();
        }
    }
    
    protected void loadCustomEvent(final Map<String, String> map) {
        if (map == null) {
            Log.d("MoPub", "Couldn't invoke custom event because the server did not specify one.");
            this.loadFailUrl(MoPubErrorCode.ADAPTER_NOT_FOUND);
            return;
        }
        if (this.mCustomEventBannerAdapter != null) {
            this.mCustomEventBannerAdapter.invalidate();
        }
        Log.d("MoPub", "Loading custom event adapter.");
        (this.mCustomEventBannerAdapter = CustomEventBannerAdapterFactory.create(this, map.get(ResponseHeader.CUSTOM_EVENT_NAME.getKey()), map.get(ResponseHeader.CUSTOM_EVENT_DATA.getKey()))).loadAd();
    }
    
    protected void loadFailUrl(final MoPubErrorCode moPubErrorCode) {
        if (this.mAdViewController != null) {
            this.mAdViewController.loadFailUrl(moPubErrorCode);
        }
    }
    
    protected void nativeAdLoaded() {
        if (this.mAdViewController != null) {
            this.mAdViewController.scheduleRefreshTimerIfEnabled();
        }
        this.adLoaded();
    }
    
    protected void onWindowVisibilityChanged(final int n) {
        if (this.mAdViewController == null) {
            return;
        }
        if (n == 0) {
            Log.d("MoPub", "Ad Unit (" + this.mAdViewController.getAdUnitId() + ") going visible: enabling refresh");
            this.mIsInForeground = true;
            this.mAdViewController.setAutorefreshEnabled(true);
            return;
        }
        Log.d("MoPub", "Ad Unit (" + this.mAdViewController.getAdUnitId() + ") going invisible: disabling refresh");
        this.mIsInForeground = false;
        this.mAdViewController.setAutorefreshEnabled(false);
    }
    
    protected void registerClick() {
        if (this.mAdViewController != null) {
            this.mAdViewController.registerClick();
            this.adClicked();
        }
    }
    
    public void setAdContentView(final View adContentView) {
        if (this.mAdViewController != null) {
            this.mAdViewController.setAdContentView(adContentView);
        }
    }
    
    public void setAdUnitId(final String adUnitId) {
        if (this.mAdViewController != null) {
            this.mAdViewController.setAdUnitId(adUnitId);
        }
    }
    
    public void setAutorefreshEnabled(final boolean autorefreshEnabled) {
        if (this.mAdViewController != null) {
            this.mAdViewController.setAutorefreshEnabled(autorefreshEnabled);
        }
    }
    
    public void setBannerAdListener(final BannerAdListener mBannerAdListener) {
        this.mBannerAdListener = mBannerAdListener;
    }
    
    public void setClickthroughUrl(final String clickthroughUrl) {
        if (this.mAdViewController != null) {
            this.mAdViewController.setClickthroughUrl(clickthroughUrl);
        }
    }
    
    public void setFacebookSupported(final boolean facebookSupported) {
        if (this.mAdViewController != null) {
            this.mAdViewController.setFacebookSupported(facebookSupported);
        }
    }
    
    public void setKeywords(final String keywords) {
        if (this.mAdViewController != null) {
            this.mAdViewController.setKeywords(keywords);
        }
    }
    
    public void setLocalExtras(final Map<String, Object> localExtras) {
        if (this.mAdViewController != null) {
            this.mAdViewController.setLocalExtras(localExtras);
        }
    }
    
    public void setLocation(final Location location) {
        if (this.mAdViewController != null) {
            this.mAdViewController.setLocation(location);
        }
    }
    
    public void setLocationAwareness(final LocationAwareness mLocationAwareness) {
        this.mLocationAwareness = mLocationAwareness;
    }
    
    public void setLocationPrecision(final int locationPrecision) {
        if (this.mAdViewController != null) {
            this.mAdViewController.setLocationPrecision(locationPrecision);
        }
    }
    
    @Deprecated
    public void setOnAdClickedListener(final OnAdClickedListener mOnAdClickedListener) {
        this.mOnAdClickedListener = mOnAdClickedListener;
    }
    
    @Deprecated
    public void setOnAdClosedListener(final OnAdClosedListener mOnAdClosedListener) {
        this.mOnAdClosedListener = mOnAdClosedListener;
    }
    
    @Deprecated
    public void setOnAdFailedListener(final OnAdFailedListener mOnAdFailedListener) {
        this.mOnAdFailedListener = mOnAdFailedListener;
    }
    
    @Deprecated
    public void setOnAdLoadedListener(final OnAdLoadedListener mOnAdLoadedListener) {
        this.mOnAdLoadedListener = mOnAdLoadedListener;
    }
    
    @Deprecated
    public void setOnAdPresentedOverlayListener(final OnAdPresentedOverlayListener mOnAdPresentedOverlayListener) {
        this.mOnAdPresentedOverlayListener = mOnAdPresentedOverlayListener;
    }
    
    @Deprecated
    public void setOnAdWillLoadListener(final OnAdWillLoadListener mOnAdWillLoadListener) {
        this.mOnAdWillLoadListener = mOnAdWillLoadListener;
    }
    
    public void setTesting(final boolean testing) {
        if (this.mAdViewController != null) {
            this.mAdViewController.setTesting(testing);
        }
    }
    
    public void setTimeout(final int timeout) {
        if (this.mAdViewController != null) {
            this.mAdViewController.setTimeout(timeout);
        }
    }
    
    protected void trackNativeImpression() {
        Log.d("MoPub", "Tracking impression for native adapter.");
        if (this.mAdViewController != null) {
            this.mAdViewController.trackImpression();
        }
    }
    
    public interface BannerAdListener
    {
        void onBannerClicked(MoPubView p0);
        
        void onBannerCollapsed(MoPubView p0);
        
        void onBannerExpanded(MoPubView p0);
        
        void onBannerFailed(MoPubView p0, MoPubErrorCode p1);
        
        void onBannerLoaded(MoPubView p0);
    }
    
    public enum LocationAwareness
    {
        LOCATION_AWARENESS_DISABLED("LOCATION_AWARENESS_DISABLED", 2), 
        LOCATION_AWARENESS_NORMAL("LOCATION_AWARENESS_NORMAL", 0), 
        LOCATION_AWARENESS_TRUNCATED("LOCATION_AWARENESS_TRUNCATED", 1);
    }
    
    @Deprecated
    public interface OnAdClickedListener
    {
        void OnAdClicked(MoPubView p0);
    }
    
    @Deprecated
    public interface OnAdClosedListener
    {
        void OnAdClosed(MoPubView p0);
    }
    
    @Deprecated
    public interface OnAdFailedListener
    {
        void OnAdFailed(MoPubView p0);
    }
    
    @Deprecated
    public interface OnAdLoadedListener
    {
        void OnAdLoaded(MoPubView p0);
    }
    
    @Deprecated
    public interface OnAdPresentedOverlayListener
    {
        void OnAdPresentedOverlay(MoPubView p0);
    }
    
    @Deprecated
    public interface OnAdWillLoadListener
    {
        void OnAdWillLoad(MoPubView p0, String p1);
    }
}
