package com.google.analytics.tracking.android;

import android.content.*;
import java.util.*;
import com.google.android.gms.common.util.*;
import android.app.*;
import android.text.*;

public class EasyTracker
{
    static final int NUM_MILLISECONDS_TO_WAIT_FOR_OPEN_ACTIVITY = 1000;
    private static EasyTracker sInstance;
    private int mActivitiesActive;
    private final Map<String, String> mActivityNameMap;
    private GoogleAnalytics mAnalyticsInstance;
    private String mAppName;
    private String mAppVersion;
    private Clock mClock;
    private Context mContext;
    private boolean mDebug;
    private int mDispatchPeriod;
    private Thread.UncaughtExceptionHandler mExceptionHandler;
    private boolean mIsAnonymizeIpEnabled;
    private boolean mIsAutoActivityTracking;
    private boolean mIsEnabled;
    private boolean mIsInForeground;
    private boolean mIsReportUncaughtExceptionsEnabled;
    private long mLastOnStopTime;
    private ParameterLoader mParameterFetcher;
    private Double mSampleRate;
    private ServiceManager mServiceManager;
    private long mSessionTimeout;
    private Timer mTimer;
    private TimerTask mTimerTask;
    private Tracker mTracker;
    private String mTrackingId;
    
    private EasyTracker() {
        super();
        this.mIsEnabled = false;
        this.mDispatchPeriod = 1800;
        this.mIsAutoActivityTracking = false;
        this.mActivitiesActive = 0;
        this.mActivityNameMap = new HashMap<String, String>();
        this.mTracker = null;
        this.mIsInForeground = false;
        this.mClock = new Clock() {
            @Override
            public long currentTimeMillis() {
                return System.currentTimeMillis();
            }
        };
    }
    
    private void clearExistingTimer() {
        synchronized (this) {
            if (this.mTimer != null) {
                this.mTimer.cancel();
                this.mTimer = null;
            }
        }
    }
    
    @VisibleForTesting
    static void clearTracker() {
        EasyTracker.sInstance = null;
    }
    
    private String getActivityName(final Activity activity) {
        final String canonicalName = activity.getClass().getCanonicalName();
        if (this.mActivityNameMap.containsKey(canonicalName)) {
            return this.mActivityNameMap.get(canonicalName);
        }
        String string = this.mParameterFetcher.getString(canonicalName);
        if (string == null) {
            string = canonicalName;
        }
        this.mActivityNameMap.put(canonicalName, string);
        return string;
    }
    
    public static EasyTracker getInstance() {
        if (EasyTracker.sInstance == null) {
            EasyTracker.sInstance = new EasyTracker();
        }
        return EasyTracker.sInstance;
    }
    
    public static Tracker getTracker() {
        if (getInstance().mContext == null) {
            throw new IllegalStateException("You must call EasyTracker.getInstance().setContext(context) or startActivity(activity) before calling getTracker()");
        }
        return getInstance().mTracker;
    }
    
    private void loadParameters() {
        this.mTrackingId = this.mParameterFetcher.getString("ga_trackingId");
        Label_0069: {
            if (!TextUtils.isEmpty((CharSequence)this.mTrackingId)) {
                break Label_0069;
            }
            this.mTrackingId = this.mParameterFetcher.getString("ga_api_key");
            if (!TextUtils.isEmpty((CharSequence)this.mTrackingId)) {
                break Label_0069;
            }
            Log.e("EasyTracker requested, but missing required ga_trackingId");
            this.mTracker = new NoopTracker();
            return;
        }
        this.mIsEnabled = true;
        this.mAppName = this.mParameterFetcher.getString("ga_appName");
        this.mAppVersion = this.mParameterFetcher.getString("ga_appVersion");
        this.mDebug = this.mParameterFetcher.getBoolean("ga_debug");
        this.mSampleRate = this.mParameterFetcher.getDoubleFromString("ga_sampleFrequency");
        if (this.mSampleRate == null) {
            this.mSampleRate = new Double(this.mParameterFetcher.getInt("ga_sampleRate", 100));
        }
        this.mDispatchPeriod = this.mParameterFetcher.getInt("ga_dispatchPeriod", 1800);
        this.mSessionTimeout = 1000 * this.mParameterFetcher.getInt("ga_sessionTimeout", 30);
        this.mIsAutoActivityTracking = (this.mParameterFetcher.getBoolean("ga_autoActivityTracking") || this.mParameterFetcher.getBoolean("ga_auto_activity_tracking"));
        this.mIsAnonymizeIpEnabled = this.mParameterFetcher.getBoolean("ga_anonymizeIp");
        this.mIsReportUncaughtExceptionsEnabled = this.mParameterFetcher.getBoolean("ga_reportUncaughtExceptions");
        this.mTracker = this.mAnalyticsInstance.getTracker(this.mTrackingId);
        if (!TextUtils.isEmpty((CharSequence)this.mAppName)) {
            Log.i("setting appName to " + this.mAppName);
            this.mTracker.setAppName(this.mAppName);
        }
        if (this.mAppVersion != null) {
            this.mTracker.setAppVersion(this.mAppVersion);
        }
        this.mTracker.setAnonymizeIp(this.mIsAnonymizeIpEnabled);
        this.mTracker.setSampleRate(this.mSampleRate);
        this.mAnalyticsInstance.setDebug(this.mDebug);
        this.mServiceManager.setDispatchPeriod(this.mDispatchPeriod);
        if (this.mIsReportUncaughtExceptionsEnabled) {
            Thread.UncaughtExceptionHandler mExceptionHandler = this.mExceptionHandler;
            if (mExceptionHandler == null) {
                mExceptionHandler = new ExceptionReporter(this.mTracker, this.mServiceManager, Thread.getDefaultUncaughtExceptionHandler(), this.mContext);
            }
            Thread.setDefaultUncaughtExceptionHandler(mExceptionHandler);
        }
    }
    
    public void activityStart(final Activity context) {
        this.setContext((Context)context);
        if (this.mIsEnabled) {
            this.clearExistingTimer();
            if (!this.mIsInForeground && this.mActivitiesActive == 0 && this.checkForNewSession()) {
                this.mTracker.setStartSession(true);
                if (!this.mIsAutoActivityTracking) {}
            }
            this.mIsInForeground = true;
            ++this.mActivitiesActive;
            if (this.mIsAutoActivityTracking) {
                this.mTracker.sendView(this.getActivityName(context));
            }
        }
    }
    
    public void activityStop(final Activity context) {
        this.setContext((Context)context);
        if (this.mIsEnabled) {
            --this.mActivitiesActive;
            this.mActivitiesActive = Math.max(0, this.mActivitiesActive);
            this.mLastOnStopTime = this.mClock.currentTimeMillis();
            if (this.mActivitiesActive == 0) {
                this.clearExistingTimer();
                this.mTimerTask = new NotInForegroundTimerTask();
                (this.mTimer = new Timer("waitForActivityStart")).schedule(this.mTimerTask, 1000L);
            }
        }
    }
    
    boolean checkForNewSession() {
        return this.mSessionTimeout == 0L || (this.mSessionTimeout > 0L && this.mClock.currentTimeMillis() > this.mLastOnStopTime + this.mSessionTimeout);
    }
    
    public void dispatch() {
        if (this.mIsEnabled) {
            this.mServiceManager.dispatch();
        }
    }
    
    @VisibleForTesting
    int getActivitiesActive() {
        return this.mActivitiesActive;
    }
    
    @VisibleForTesting
    void setClock(final Clock mClock) {
        this.mClock = mClock;
    }
    
    public void setContext(final Context context) {
        if (context == null) {
            Log.e("Context cannot be null");
            return;
        }
        this.setContext(context, new ParameterLoaderImpl(context.getApplicationContext()), GoogleAnalytics.getInstance(context.getApplicationContext()), GAServiceManager.getInstance());
    }
    
    @VisibleForTesting
    void setContext(final Context context, final ParameterLoader mParameterFetcher, final GoogleAnalytics mAnalyticsInstance, final ServiceManager mServiceManager) {
        if (context == null) {
            Log.e("Context cannot be null");
        }
        if (this.mContext == null) {
            this.mContext = context.getApplicationContext();
            this.mAnalyticsInstance = mAnalyticsInstance;
            this.mServiceManager = mServiceManager;
            this.mParameterFetcher = mParameterFetcher;
            this.loadParameters();
        }
    }
    
    @VisibleForTesting
    void setUncaughtExceptionHandler(final Thread.UncaughtExceptionHandler mExceptionHandler) {
        this.mExceptionHandler = mExceptionHandler;
    }
    
    class NoopTracker extends Tracker
    {
        private String mAppId;
        private String mAppInstallerId;
        private ExceptionParser mExceptionParser;
        private boolean mIsAnonymizeIp;
        private boolean mIsUseSecure;
        private double mSampleRate;
        
        NoopTracker() {
            super();
            this.mSampleRate = 100.0;
        }
        
        @Override
        public void close() {
        }
        
        @Override
        public Map<String, String> constructEvent(final String s, final String s2, final String s3, final Long n) {
            return new HashMap<String, String>();
        }
        
        @Override
        public Map<String, String> constructException(final String s, final boolean b) {
            return new HashMap<String, String>();
        }
        
        @Override
        public Map<String, String> constructRawException(final String s, final Throwable t, final boolean b) {
            return new HashMap<String, String>();
        }
        
        @Override
        public Map<String, String> constructSocial(final String s, final String s2, final String s3) {
            return new HashMap<String, String>();
        }
        
        @Override
        public Map<String, String> constructTiming(final String s, final long n, final String s2, final String s3) {
            return new HashMap<String, String>();
        }
        
        @Override
        public Map<String, String> constructTransaction(final Transaction transaction) {
            return new HashMap<String, String>();
        }
        
        @Override
        public String get(final String s) {
            return "";
        }
        
        @Override
        public String getAppId() {
            return this.mAppId;
        }
        
        @Override
        public String getAppInstallerId() {
            return this.mAppInstallerId;
        }
        
        @Override
        public ExceptionParser getExceptionParser() {
            return this.mExceptionParser;
        }
        
        @Override
        public double getSampleRate() {
            return this.mSampleRate;
        }
        
        @Override
        public String getTrackingId() {
            return "";
        }
        
        @Override
        public boolean isAnonymizeIpEnabled() {
            return this.mIsAnonymizeIp;
        }
        
        @Override
        public boolean isUseSecure() {
            return this.mIsUseSecure;
        }
        
        @Override
        public void send(final String s, final Map<String, String> map) {
        }
        
        @Override
        public void sendEvent(final String s, final String s2, final String s3, final Long n) {
        }
        
        @Override
        public void sendException(final String s, final Throwable t, final boolean b) {
        }
        
        @Override
        public void sendException(final String s, final boolean b) {
        }
        
        @Override
        public void sendSocial(final String s, final String s2, final String s3) {
        }
        
        @Override
        public void sendTiming(final String s, final long n, final String s2, final String s3) {
        }
        
        @Override
        public void sendTransaction(final Transaction transaction) {
        }
        
        @Override
        public void sendView() {
        }
        
        @Override
        public void sendView(final String s) {
        }
        
        @Override
        public void set(final String s, final String s2) {
        }
        
        @Override
        public void setAnonymizeIp(final boolean mIsAnonymizeIp) {
            this.mIsAnonymizeIp = mIsAnonymizeIp;
        }
        
        @Override
        public void setAppId(final String mAppId) {
            this.mAppId = mAppId;
        }
        
        @Override
        public void setAppInstallerId(final String mAppInstallerId) {
            this.mAppInstallerId = mAppInstallerId;
        }
        
        @Override
        public void setAppName(final String s) {
        }
        
        @Override
        public void setAppScreen(final String s) {
        }
        
        @Override
        public void setAppVersion(final String s) {
        }
        
        @Override
        public void setCampaign(final String s) {
        }
        
        @Override
        public void setCustomDimension(final int n, final String s) {
        }
        
        @Override
        public void setCustomDimensionsAndMetrics(final Map<Integer, String> map, final Map<Integer, Long> map2) {
        }
        
        @Override
        public void setCustomMetric(final int n, final Long n2) {
        }
        
        @Override
        public void setExceptionParser(final ExceptionParser mExceptionParser) {
            this.mExceptionParser = mExceptionParser;
        }
        
        @Override
        public void setReferrer(final String s) {
        }
        
        @Override
        public void setSampleRate(final double mSampleRate) {
            this.mSampleRate = mSampleRate;
        }
        
        @Override
        public void setStartSession(final boolean b) {
        }
        
        @Override
        public void setUseSecure(final boolean mIsUseSecure) {
            this.mIsUseSecure = mIsUseSecure;
        }
    }
    
    private class NotInForegroundTimerTask extends TimerTask
    {
        @Override
        public void run() {
            EasyTracker.this.mIsInForeground = false;
        }
    }
}
