package com.fusepowered.m2.m2l;

import android.widget.*;
import android.content.*;
import android.os.*;
import android.location.*;
import java.util.*;
import com.fusepowered.m2.m2l.util.*;
import android.net.*;
import android.util.*;
import org.apache.http.*;
import com.fusepowered.m2.m2l.factories.*;
import org.apache.http.client.methods.*;
import org.apache.http.impl.client.*;
import android.view.*;

public class AdViewController
{
    static final int DEFAULT_REFRESH_TIME_MILLISECONDS = 60000;
    static final int MINIMUM_REFRESH_TIME_MILLISECONDS = 10000;
    private static final FrameLayout$LayoutParams WRAP_AND_CENTER_LAYOUT_PARAMS;
    private static WeakHashMap<View, Boolean> sViewShouldHonorServerDimensions;
    private AdConfiguration mAdConfiguration;
    private AdFetcher mAdFetcher;
    private boolean mAutoRefreshEnabled;
    private final Context mContext;
    private Handler mHandler;
    private boolean mIsDestroyed;
    private boolean mIsFacebookSupported;
    private boolean mIsLoading;
    private boolean mIsTesting;
    private String mKeywords;
    private Map<String, Object> mLocalExtras;
    private Location mLocation;
    private MoPubView.LocationAwareness mLocationAwareness;
    private int mLocationPrecision;
    private MoPubView mMoPubView;
    private final Runnable mRefreshRunnable;
    private String mUrl;
    private final AdUrlGenerator mUrlGenerator;
    
    static {
        WRAP_AND_CENTER_LAYOUT_PARAMS = new FrameLayout$LayoutParams(-2, -2, 17);
        AdViewController.sViewShouldHonorServerDimensions = new WeakHashMap<View, Boolean>();
    }
    
    public AdViewController(final Context mContext, final MoPubView mMoPubView) {
        super();
        this.mLocalExtras = new HashMap<String, Object>();
        this.mAutoRefreshEnabled = true;
        this.mLocationAwareness = MoPubView.LocationAwareness.LOCATION_AWARENESS_NORMAL;
        this.mLocationPrecision = 6;
        this.mIsFacebookSupported = true;
        this.mContext = mContext;
        this.mMoPubView = mMoPubView;
        this.mUrlGenerator = new AdUrlGenerator(mContext);
        this.mAdConfiguration = new AdConfiguration(this.mContext);
        this.mAdFetcher = AdFetcherFactory.create(this, this.mAdConfiguration.getUserAgent());
        this.mRefreshRunnable = new Runnable() {
            @Override
            public void run() {
                AdViewController.this.loadAd();
            }
        };
        this.mHandler = new Handler();
    }
    
    private void cancelRefreshTimer() {
        this.mHandler.removeCallbacks(this.mRefreshRunnable);
    }
    
    private FrameLayout$LayoutParams getAdLayoutParams(final View view) {
        final int width = this.mAdConfiguration.getWidth();
        final int height = this.mAdConfiguration.getHeight();
        if (getShouldHonorServerDimensions(view) && width > 0 && height > 0) {
            return new FrameLayout$LayoutParams(Dips.asIntPixels(width, this.mContext), Dips.asIntPixels(height, this.mContext), 17);
        }
        return AdViewController.WRAP_AND_CENTER_LAYOUT_PARAMS;
    }
    
    private Location getLastKnownLocation() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/fusepowered/m2/m2l/AdViewController.mLocationAwareness:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;
        //     4: getstatic       com/fusepowered/m2/m2l/MoPubView$LocationAwareness.LOCATION_AWARENESS_DISABLED:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;
        //     7: if_acmpne       12
        //    10: aconst_null    
        //    11: areturn        
        //    12: aload_0        
        //    13: getfield        com/fusepowered/m2/m2l/AdViewController.mContext:Landroid/content/Context;
        //    16: ldc             "location"
        //    18: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
        //    21: checkcast       Landroid/location/LocationManager;
        //    24: astore_1       
        //    25: aload_1        
        //    26: ldc             "gps"
        //    28: invokevirtual   android/location/LocationManager.getLastKnownLocation:(Ljava/lang/String;)Landroid/location/Location;
        //    31: astore          14
        //    33: aload           14
        //    35: astore          4
        //    37: aload_1        
        //    38: ldc             "network"
        //    40: invokevirtual   android/location/LocationManager.getLastKnownLocation:(Ljava/lang/String;)Landroid/location/Location;
        //    43: astore          11
        //    45: aload           11
        //    47: astore          7
        //    49: aload           4
        //    51: ifnonnull       124
        //    54: aload           7
        //    56: ifnonnull       124
        //    59: aconst_null    
        //    60: areturn        
        //    61: astore          12
        //    63: ldc             "MoPub"
        //    65: ldc             "Failed to retrieve GPS location: access appears to be disabled."
        //    67: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    70: pop            
        //    71: aconst_null    
        //    72: astore          4
        //    74: goto            37
        //    77: astore_2       
        //    78: ldc             "MoPub"
        //    80: ldc             "Failed to retrieve GPS location: device has no GPS provider."
        //    82: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    85: pop            
        //    86: aconst_null    
        //    87: astore          4
        //    89: goto            37
        //    92: astore          9
        //    94: ldc             "MoPub"
        //    96: ldc             "Failed to retrieve network location: access appears to be disabled."
        //    98: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   101: pop            
        //   102: aconst_null    
        //   103: astore          7
        //   105: goto            49
        //   108: astore          5
        //   110: ldc             "MoPub"
        //   112: ldc             "Failed to retrieve network location: device has no network provider."
        //   114: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   117: pop            
        //   118: aconst_null    
        //   119: astore          7
        //   121: goto            49
        //   124: aload           4
        //   126: ifnull          220
        //   129: aload           7
        //   131: ifnull          220
        //   134: aload           4
        //   136: invokevirtual   android/location/Location.getTime:()J
        //   139: aload           7
        //   141: invokevirtual   android/location/Location.getTime:()J
        //   144: lcmp           
        //   145: ifle            213
        //   148: aload           4
        //   150: astore          8
        //   152: aload_0        
        //   153: getfield        com/fusepowered/m2/m2l/AdViewController.mLocationAwareness:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;
        //   156: getstatic       com/fusepowered/m2/m2l/MoPubView$LocationAwareness.LOCATION_AWARENESS_TRUNCATED:Lcom/fusepowered/m2/m2l/MoPubView$LocationAwareness;
        //   159: if_acmpne       210
        //   162: aload           8
        //   164: aload           8
        //   166: invokevirtual   android/location/Location.getLatitude:()D
        //   169: invokestatic    java/math/BigDecimal.valueOf:(D)Ljava/math/BigDecimal;
        //   172: aload_0        
        //   173: getfield        com/fusepowered/m2/m2l/AdViewController.mLocationPrecision:I
        //   176: iconst_5       
        //   177: invokevirtual   java/math/BigDecimal.setScale:(II)Ljava/math/BigDecimal;
        //   180: invokevirtual   java/math/BigDecimal.doubleValue:()D
        //   183: invokevirtual   android/location/Location.setLatitude:(D)V
        //   186: aload           8
        //   188: aload           8
        //   190: invokevirtual   android/location/Location.getLongitude:()D
        //   193: invokestatic    java/math/BigDecimal.valueOf:(D)Ljava/math/BigDecimal;
        //   196: aload_0        
        //   197: getfield        com/fusepowered/m2/m2l/AdViewController.mLocationPrecision:I
        //   200: iconst_5       
        //   201: invokevirtual   java/math/BigDecimal.setScale:(II)Ljava/math/BigDecimal;
        //   204: invokevirtual   java/math/BigDecimal.doubleValue:()D
        //   207: invokevirtual   android/location/Location.setLongitude:(D)V
        //   210: aload           8
        //   212: areturn        
        //   213: aload           7
        //   215: astore          8
        //   217: goto            152
        //   220: aload           4
        //   222: ifnull          232
        //   225: aload           4
        //   227: astore          8
        //   229: goto            152
        //   232: aload           7
        //   234: astore          8
        //   236: goto            152
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                
        //  -----  -----  -----  -----  ------------------------------------
        //  25     33     61     77     Ljava/lang/SecurityException;
        //  25     33     77     92     Ljava/lang/IllegalArgumentException;
        //  37     45     92     108    Ljava/lang/SecurityException;
        //  37     45     108    124    Ljava/lang/IllegalArgumentException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0037:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    private String getServerHostname() {
        if (this.mIsTesting) {
            return "testing.ads.mopub.com";
        }
        return "ads.mopub.com";
    }
    
    private static boolean getShouldHonorServerDimensions(final View key) {
        return AdViewController.sViewShouldHonorServerDimensions.get(key) != null;
    }
    
    private boolean isNetworkAvailable() {
        if (this.mContext.checkCallingPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
            return true;
        }
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
    
    protected static void setShouldHonorServerDimensions(final View key) {
        AdViewController.sViewShouldHonorServerDimensions.put(key, true);
    }
    
    void adDidFail(final MoPubErrorCode moPubErrorCode) {
        Log.i("MoPub", "Ad failed to load.");
        this.setNotLoading();
        this.scheduleRefreshTimerIfEnabled();
        this.getMoPubView().adFailed(moPubErrorCode);
    }
    
    void cleanup() {
        if (this.mIsDestroyed) {
            return;
        }
        this.setAutorefreshEnabled(false);
        this.cancelRefreshTimer();
        this.mAdFetcher.cleanup();
        this.mAdFetcher = null;
        this.mAdConfiguration.cleanup();
        this.mMoPubView = null;
        this.mIsDestroyed = true;
    }
    
    void configureUsingHttpResponse(final HttpResponse httpResponse) {
        this.mAdConfiguration.addHttpResponse(httpResponse);
    }
    
    @Deprecated
    public void customEventActionWillBegin() {
        this.registerClick();
    }
    
    @Deprecated
    public void customEventDidFailToLoadAd() {
        this.loadFailUrl(MoPubErrorCode.UNSPECIFIED);
    }
    
    @Deprecated
    public void customEventDidLoadAd() {
        this.setNotLoading();
        this.trackImpression();
        this.scheduleRefreshTimerIfEnabled();
    }
    
    void fetchAd(final String s) {
        if (this.mAdFetcher != null) {
            this.mAdFetcher.fetchAdForUrl(s);
        }
    }
    
    void forceRefresh() {
        this.setNotLoading();
        this.loadAd();
    }
    
    String generateAdUrl() {
        return this.mUrlGenerator.withAdUnitId(this.mAdConfiguration.getAdUnitId()).withKeywords(this.mKeywords).withFacebookSupported(this.mIsFacebookSupported).withLocation(this.mLocation).generateUrlString(this.getServerHostname());
    }
    
    AdConfiguration getAdConfiguration() {
        return this.mAdConfiguration;
    }
    
    public int getAdHeight() {
        return this.mAdConfiguration.getHeight();
    }
    
    Integer getAdTimeoutDelay() {
        return this.mAdConfiguration.getAdTimeoutDelay();
    }
    
    public String getAdUnitId() {
        return this.mAdConfiguration.getAdUnitId();
    }
    
    public int getAdWidth() {
        return this.mAdConfiguration.getWidth();
    }
    
    public boolean getAutorefreshEnabled() {
        return this.mAutoRefreshEnabled;
    }
    
    public String getClickthroughUrl() {
        return this.mAdConfiguration.getClickthroughUrl();
    }
    
    public String getKeywords() {
        return this.mKeywords;
    }
    
    Map<String, Object> getLocalExtras() {
        if (this.mLocalExtras != null) {
            return new HashMap<String, Object>(this.mLocalExtras);
        }
        return new HashMap<String, Object>();
    }
    
    public Location getLocation() {
        return this.mLocation;
    }
    
    int getLocationPrecision() {
        return this.mLocationPrecision;
    }
    
    public MoPubView getMoPubView() {
        return this.mMoPubView;
    }
    
    public String getRedirectUrl() {
        return this.mAdConfiguration.getRedirectUrl();
    }
    
    int getRefreshTimeMilliseconds() {
        return this.mAdConfiguration.getRefreshTimeMilliseconds();
    }
    
    public String getResponseString() {
        return this.mAdConfiguration.getResponseString();
    }
    
    public boolean getTesting() {
        return this.mIsTesting;
    }
    
    boolean isDestroyed() {
        return this.mIsDestroyed;
    }
    
    public boolean isFacebookSupported() {
        return this.mIsFacebookSupported;
    }
    
    public void loadAd() {
        if (this.mAdConfiguration.getAdUnitId() == null) {
            Log.d("MoPub", "Can't load an ad in this ad view because the ad unit ID is null. Did you forget to call setAdUnitId()?");
            return;
        }
        if (!this.isNetworkAvailable()) {
            Log.d("MoPub", "Can't load an ad because there is no network connectivity.");
            this.scheduleRefreshTimerIfEnabled();
            return;
        }
        if (this.mLocation == null) {
            this.mLocation = this.getLastKnownLocation();
        }
        this.loadNonJavascript(this.generateAdUrl());
    }
    
    void loadFailUrl(final MoPubErrorCode moPubErrorCode) {
        this.mIsLoading = false;
        final StringBuilder sb = new StringBuilder("MoPubErrorCode: ");
        String string;
        if (moPubErrorCode == null) {
            string = "";
        }
        else {
            string = moPubErrorCode.toString();
        }
        Log.v("MoPub", sb.append(string).toString());
        if (this.mAdConfiguration.getFailUrl() != null) {
            Log.d("MoPub", "Loading failover url: " + this.mAdConfiguration.getFailUrl());
            this.loadNonJavascript(this.mAdConfiguration.getFailUrl());
            return;
        }
        this.adDidFail(MoPubErrorCode.NO_FILL);
    }
    
    void loadNonJavascript(final String s) {
        if (s != null) {
            Log.d("MoPub", "Loading url: " + s);
            if (!this.mIsLoading) {
                this.mUrl = s;
                this.mAdConfiguration.setFailUrl(null);
                this.mIsLoading = true;
                this.fetchAd(this.mUrl);
                return;
            }
            if (this.mAdConfiguration.getAdUnitId() != null) {
                Log.i("MoPub", "Already loading an ad for " + this.mAdConfiguration.getAdUnitId() + ", wait to finish.");
            }
        }
    }
    
    void registerClick() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                if (AdViewController.this.mAdConfiguration.getClickthroughUrl() == null) {
                    return;
                }
                final DefaultHttpClient create = HttpClientFactory.create();
                try {
                    Log.d("MoPub", "Tracking click for: " + AdViewController.this.mAdConfiguration.getClickthroughUrl());
                    final HttpGet httpGet = new HttpGet(AdViewController.this.mAdConfiguration.getClickthroughUrl());
                    httpGet.addHeader("User-Agent", AdViewController.this.mAdConfiguration.getUserAgent());
                    create.execute((HttpUriRequest)httpGet);
                }
                catch (Exception ex) {
                    Log.d("MoPub", "Click tracking failed: " + AdViewController.this.mAdConfiguration.getClickthroughUrl(), (Throwable)ex);
                }
                finally {
                    create.getConnectionManager().shutdown();
                }
            }
        }).start();
    }
    
    public void reload() {
        Log.d("MoPub", "Reload ad: " + this.mUrl);
        this.loadNonJavascript(this.mUrl);
    }
    
    void scheduleRefreshTimerIfEnabled() {
        this.cancelRefreshTimer();
        if (this.mAutoRefreshEnabled && this.mAdConfiguration.getRefreshTimeMilliseconds() > 0) {
            this.mHandler.postDelayed(this.mRefreshRunnable, (long)this.mAdConfiguration.getRefreshTimeMilliseconds());
        }
    }
    
    void setAdContentView(final View view) {
        this.mHandler.post((Runnable)new Runnable() {
            @Override
            public void run() {
                final MoPubView moPubView = AdViewController.this.getMoPubView();
                if (moPubView == null) {
                    return;
                }
                moPubView.removeAllViews();
                moPubView.addView(view, (ViewGroup$LayoutParams)AdViewController.this.getAdLayoutParams(view));
            }
        });
    }
    
    public void setAdUnitId(final String adUnitId) {
        this.mAdConfiguration.setAdUnitId(adUnitId);
    }
    
    public void setAutorefreshEnabled(final boolean b) {
        this.mAutoRefreshEnabled = b;
        if (this.mAdConfiguration.getAdUnitId() != null) {
            Log.d("MoPub", "Automatic refresh for " + this.mAdConfiguration + " set to: " + b + ".");
        }
        if (this.mAutoRefreshEnabled) {
            this.scheduleRefreshTimerIfEnabled();
            return;
        }
        this.cancelRefreshTimer();
    }
    
    @Deprecated
    public void setClickthroughUrl(final String clickthroughUrl) {
        this.mAdConfiguration.setClickthroughUrl(clickthroughUrl);
    }
    
    public void setFacebookSupported(final boolean mIsFacebookSupported) {
        this.mIsFacebookSupported = mIsFacebookSupported;
    }
    
    void setFailUrl(final String failUrl) {
        this.mAdConfiguration.setFailUrl(failUrl);
    }
    
    public void setKeywords(final String mKeywords) {
        this.mKeywords = mKeywords;
    }
    
    void setLocalExtras(final Map<String, Object> m) {
        HashMap<String, Object> mLocalExtras;
        if (m != null) {
            mLocalExtras = new HashMap<String, Object>(m);
        }
        else {
            mLocalExtras = new HashMap<String, Object>();
        }
        this.mLocalExtras = mLocalExtras;
    }
    
    public void setLocation(final Location mLocation) {
        this.mLocation = mLocation;
    }
    
    void setLocationPrecision(final int b) {
        this.mLocationPrecision = Math.max(0, b);
    }
    
    void setNotLoading() {
        this.mIsLoading = false;
    }
    
    @Deprecated
    void setRefreshTimeMilliseconds(final int refreshTimeMilliseconds) {
        this.mAdConfiguration.setRefreshTimeMilliseconds(refreshTimeMilliseconds);
    }
    
    public void setTesting(final boolean mIsTesting) {
        this.mIsTesting = mIsTesting;
    }
    
    public void setTimeout(final int timeout) {
        if (this.mAdFetcher != null) {
            this.mAdFetcher.setTimeout(timeout);
        }
    }
    
    void trackImpression() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                if (AdViewController.this.mAdConfiguration.getImpressionUrl() == null) {
                    return;
                }
                final DefaultHttpClient create = HttpClientFactory.create();
                try {
                    final HttpGet httpGet = new HttpGet(AdViewController.this.mAdConfiguration.getImpressionUrl());
                    httpGet.addHeader("User-Agent", AdViewController.this.mAdConfiguration.getUserAgent());
                    create.execute((HttpUriRequest)httpGet);
                }
                catch (Exception ex) {
                    Log.d("MoPub", "Impression tracking failed : " + AdViewController.this.mAdConfiguration.getImpressionUrl(), (Throwable)ex);
                }
                finally {
                    create.getConnectionManager().shutdown();
                }
            }
        }).start();
    }
}
