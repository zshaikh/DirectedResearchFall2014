package com.google.analytics.tracking.android;

import android.content.*;
import com.google.android.gms.common.util.*;
import java.util.*;

public class GoogleAnalytics implements TrackerHandler
{
    private static GoogleAnalytics sInstance;
    private AdHitIdGenerator mAdHitIdGenerator;
    private volatile Boolean mAppOptOut;
    private volatile String mClientId;
    private Context mContext;
    private boolean mDebug;
    private Tracker mDefaultTracker;
    private String mLastTrackingId;
    private AnalyticsThread mThread;
    private final Map<String, Tracker> mTrackers;
    
    GoogleAnalytics() {
        super();
        this.mTrackers = new HashMap<String, Tracker>();
    }
    
    private GoogleAnalytics(final Context context) {
        this(context, GAThread.getInstance(context));
    }
    
    private GoogleAnalytics(final Context context, final AnalyticsThread mThread) {
        super();
        this.mTrackers = new HashMap<String, Tracker>();
        if (context == null) {
            throw new IllegalArgumentException("context cannot be null");
        }
        this.mContext = context.getApplicationContext();
        this.mThread = mThread;
        this.mAdHitIdGenerator = new AdHitIdGenerator();
        this.mThread.requestAppOptOut(new AppOptOutCallback() {
            @Override
            public void reportAppOptOut(final boolean b) {
                GoogleAnalytics.this.mAppOptOut = b;
            }
        });
        this.mThread.requestClientId((AnalyticsThread.ClientIdCallback)new AnalyticsThread.ClientIdCallback() {
            @Override
            public void reportClientId(final String s) {
                GoogleAnalytics.this.mClientId = s;
            }
        });
    }
    
    @VisibleForTesting
    static void clearInstance() {
        synchronized (GoogleAnalytics.class) {
            GoogleAnalytics.sInstance = null;
        }
    }
    
    static GoogleAnalytics getInstance() {
        synchronized (GoogleAnalytics.class) {
            return GoogleAnalytics.sInstance;
        }
    }
    
    public static GoogleAnalytics getInstance(final Context context) {
        synchronized (GoogleAnalytics.class) {
            if (GoogleAnalytics.sInstance == null) {
                GoogleAnalytics.sInstance = new GoogleAnalytics(context);
            }
            return GoogleAnalytics.sInstance;
        }
    }
    
    @VisibleForTesting
    static GoogleAnalytics getNewInstance(final Context context, final AnalyticsThread analyticsThread) {
        synchronized (GoogleAnalytics.class) {
            if (GoogleAnalytics.sInstance != null) {
                GoogleAnalytics.sInstance.close();
            }
            return GoogleAnalytics.sInstance = new GoogleAnalytics(context, analyticsThread);
        }
    }
    
    @VisibleForTesting
    void close() {
    }
    
    @Override
    public void closeTracker(final Tracker tracker) {
        synchronized (this) {
            this.mTrackers.values().remove(tracker);
            if (tracker == this.mDefaultTracker) {
                this.mDefaultTracker = null;
            }
        }
    }
    
    @VisibleForTesting
    Boolean getAppOptOut() {
        return this.mAppOptOut;
    }
    
    String getClientIdForAds() {
        if (this.mClientId == null) {
            return null;
        }
        return this.mClientId.toString();
    }
    
    public Tracker getDefaultTracker() {
        synchronized (this) {
            GAUsage.getInstance().setUsage(GAUsage.Field.GET_DEFAULT_TRACKER);
            return this.mDefaultTracker;
        }
    }
    
    public Tracker getTracker(final String s) {
        // monitorenter(this)
        if (s == null) {
            try {
                throw new IllegalArgumentException("trackingId cannot be null");
            }
            finally {
            }
            // monitorexit(this)
        }
        Tracker mDefaultTracker = this.mTrackers.get(s);
        if (mDefaultTracker == null) {
            mDefaultTracker = new Tracker(s, this);
            this.mTrackers.put(s, mDefaultTracker);
            if (this.mDefaultTracker == null) {
                this.mDefaultTracker = mDefaultTracker;
            }
        }
        GAUsage.getInstance().setUsage(GAUsage.Field.GET_TRACKER);
        // monitorexit(this)
        return mDefaultTracker;
    }
    
    String getTrackingIdForAds() {
        return this.mLastTrackingId;
    }
    
    public boolean isDebugEnabled() {
        GAUsage.getInstance().setUsage(GAUsage.Field.GET_DEBUG);
        return this.mDebug;
    }
    
    public void requestAppOptOut(final AppOptOutCallback appOptOutCallback) {
        GAUsage.getInstance().setUsage(GAUsage.Field.REQUEST_APP_OPT_OUT);
        if (this.mAppOptOut != null) {
            appOptOutCallback.reportAppOptOut(this.mAppOptOut);
            return;
        }
        this.mThread.requestAppOptOut(appOptOutCallback);
    }
    
    @Override
    public void sendHit(final Map<String, String> map) {
        // monitorenter(this)
        if (map == null) {
            try {
                throw new IllegalArgumentException("hit cannot be null");
            }
            finally {
            }
            // monitorexit(this)
        }
        map.put("language", Utils.getLanguage(Locale.getDefault()));
        map.put("adSenseAdMobHitId", Integer.toString(this.mAdHitIdGenerator.getAdHitId()));
        map.put("screenResolution", this.mContext.getResources().getDisplayMetrics().widthPixels + "x" + this.mContext.getResources().getDisplayMetrics().heightPixels);
        map.put("usage", GAUsage.getInstance().getAndClearSequence());
        GAUsage.getInstance().getAndClearUsage();
        this.mThread.sendHit(map);
        this.mLastTrackingId = map.get("trackingId");
    }
    // monitorexit(this)
    
    public void setAppOptOut(final boolean b) {
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_APP_OPT_OUT);
        this.mAppOptOut = b;
        this.mThread.setAppOptOut(b);
    }
    
    public void setDebug(final boolean mDebug) {
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_DEBUG);
        Log.setDebug(this.mDebug = mDebug);
    }
    
    public void setDefaultTracker(final Tracker mDefaultTracker) {
        synchronized (this) {
            GAUsage.getInstance().setUsage(GAUsage.Field.SET_DEFAULT_TRACKER);
            this.mDefaultTracker = mDefaultTracker;
        }
    }
    
    public interface AppOptOutCallback
    {
        void reportAppOptOut(boolean p0);
    }
}
