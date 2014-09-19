package com.google.android.apps.analytics;

import android.os.*;
import android.content.*;
import android.util.*;
import android.net.*;
import java.util.*;

public class GoogleAnalyticsTracker
{
    public static final String LOG_TAG = "GoogleAnalyticsTracker";
    public static final String PRODUCT = "GoogleAnalytics";
    public static final String VERSION = "1.5.1";
    public static final String WIRE_VERSION = "4.9.1ma";
    private static GoogleAnalyticsTracker instance;
    private String accountId;
    private AdHitIdGenerator adHitIdGenerator;
    private boolean anonymizeIp;
    private ConnectivityManager connectivityManager;
    private CustomVariableBuffer customVariableBuffer;
    private boolean debug;
    private int dispatchPeriod;
    private Runnable dispatchRunner;
    private Dispatcher dispatcher;
    private boolean dispatcherIsBusy;
    private boolean dryRun;
    private Handler handler;
    private HitStore hitStore;
    private Map<String, Map<String, Item>> itemMap;
    private String lastPagePath;
    private OptOut optOut;
    private Context parent;
    private boolean powerSaveMode;
    private int sampleRate;
    private Map<String, Transaction> transactionMap;
    private boolean useServerTime;
    private String userAgentProduct;
    private String userAgentVersion;
    
    static {
        GoogleAnalyticsTracker.instance = new GoogleAnalyticsTracker();
    }
    
    private GoogleAnalyticsTracker() {
        super();
        this.debug = false;
        this.dryRun = false;
        this.anonymizeIp = false;
        this.useServerTime = false;
        this.sampleRate = 100;
        this.userAgentProduct = "GoogleAnalytics";
        this.userAgentVersion = "1.5.1";
        this.lastPagePath = null;
        this.transactionMap = new HashMap<String, Transaction>();
        this.itemMap = new HashMap<String, Map<String, Item>>();
        this.dispatchRunner = new Runnable() {
            @Override
            public void run() {
                GoogleAnalyticsTracker.this.dispatch();
            }
        };
    }
    
    private void cancelPendingDispatches() {
        if (this.handler != null) {
            this.handler.removeCallbacks(this.dispatchRunner);
        }
    }
    
    private void createEvent(final String s, final String s2, final String s3, final String s4, final String s5, final int n) {
        final Event event = new Event(s, s2, s3, s4, s5, n, this.parent.getResources().getDisplayMetrics().widthPixels, this.parent.getResources().getDisplayMetrics().heightPixels);
        event.setCustomVariableBuffer(this.customVariableBuffer);
        event.setAdHitId(this.adHitIdGenerator.getAdHitId());
        event.setUseServerTime(this.useServerTime);
        this.customVariableBuffer = new CustomVariableBuffer();
        this.hitStore.putEvent(event);
        this.resetPowerSaveMode();
    }
    
    public static GoogleAnalyticsTracker getInstance() {
        return GoogleAnalyticsTracker.instance;
    }
    
    private void maybeScheduleNextDispatch() {
        if (this.dispatchPeriod >= 0 && this.handler.postDelayed(this.dispatchRunner, (long)(1000 * this.dispatchPeriod)) && this.debug) {
            Log.v("GoogleAnalyticsTracker", "Scheduled next dispatch");
        }
    }
    
    private boolean optedOut() {
        return this.optOut.optedOut();
    }
    
    private void resetPowerSaveMode() {
        if (this.powerSaveMode) {
            this.powerSaveMode = false;
            this.maybeScheduleNextDispatch();
        }
    }
    
    public void addItem(final Item item) {
        if (this.transactionMap.get(item.getOrderId()) == null) {
            Log.i("GoogleAnalyticsTracker", "No transaction with orderId " + item.getOrderId() + " found, creating one");
            this.transactionMap.put(item.getOrderId(), new Transaction.Builder(item.getOrderId(), 0.0).build());
        }
        Map<String, Item> map = this.itemMap.get(item.getOrderId());
        if (map == null) {
            map = new HashMap<String, Item>();
            this.itemMap.put(item.getOrderId(), map);
        }
        map.put(item.getItemSKU(), item);
    }
    
    public void addTransaction(final Transaction transaction) {
        this.transactionMap.put(transaction.getOrderId(), transaction);
    }
    
    public void clearTransactions() {
        this.transactionMap.clear();
        this.itemMap.clear();
    }
    
    public boolean dispatch() {
        if (this.debug) {
            Log.v("GoogleAnalyticsTracker", "Called dispatch");
        }
        if (this.dispatcherIsBusy) {
            if (this.debug) {
                Log.v("GoogleAnalyticsTracker", "...but dispatcher was busy");
            }
            this.maybeScheduleNextDispatch();
            return false;
        }
        final NetworkInfo activeNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            if (this.debug) {
                Log.v("GoogleAnalyticsTracker", "...but there was no network connected");
            }
            this.maybeScheduleNextDispatch();
            return false;
        }
        if (this.hitStore.getNumStoredHits() != 0) {
            final Hit[] peekHits = this.hitStore.peekHits();
            this.dispatcher.dispatchHits(peekHits);
            this.dispatcherIsBusy = true;
            this.maybeScheduleNextDispatch();
            if (this.debug) {
                Log.v("GoogleAnalyticsTracker", "Sending " + peekHits.length + " hits to dispatcher");
            }
            return true;
        }
        this.powerSaveMode = true;
        if (this.debug) {
            Log.v("GoogleAnalyticsTracker", "...but there was nothing to dispatch");
        }
        return false;
    }
    
    void dispatchFinished() {
        this.dispatcherIsBusy = false;
    }
    
    public boolean getAnonymizeIp() {
        return this.anonymizeIp;
    }
    
    public boolean getDebug() {
        return this.debug;
    }
    
    Dispatcher getDispatcher() {
        return this.dispatcher;
    }
    
    HitStore getHitStore() {
        return this.hitStore;
    }
    
    public int getSampleRate() {
        return this.sampleRate;
    }
    
    String getSessionIdForAds() {
        if (this.hitStore == null) {
            return null;
        }
        return this.hitStore.getSessionId();
    }
    
    public String getVisitorCustomVar(final int n) {
        if (n < 1 || n > 50) {
            throw new IllegalArgumentException("Index must be between 1 and 50, inclusive.");
        }
        return this.hitStore.getVisitorCustomVar(n);
    }
    
    String getVisitorIdForAds() {
        if (this.hitStore == null) {
            return null;
        }
        return this.hitStore.getVisitorId();
    }
    
    public boolean isDryRun() {
        return this.dryRun;
    }
    
    void returnToInitialState() {
        GoogleAnalyticsTracker.instance = new GoogleAnalyticsTracker();
    }
    
    void setAdHitIdGenerator(final AdHitIdGenerator adHitIdGenerator) {
        this.adHitIdGenerator = adHitIdGenerator;
    }
    
    public void setAnonymizeIp(final boolean anonymizeIp) {
        this.anonymizeIp = anonymizeIp;
        if (this.hitStore != null) {
            this.hitStore.setAnonymizeIp(this.anonymizeIp);
        }
    }
    
    public boolean setCustomVar(final int n, final String s, final String s2) {
        return this.setCustomVar(n, s, s2, 3);
    }
    
    public boolean setCustomVar(final int n, final String s, final String s2, final int n2) {
        try {
            final CustomVariable customVariable = new CustomVariable(n, s, s2, n2);
            if (this.customVariableBuffer == null) {
                this.customVariableBuffer = new CustomVariableBuffer();
            }
            this.customVariableBuffer.setCustomVariable(customVariable);
            return true;
        }
        catch (IllegalArgumentException ex) {
            return false;
        }
    }
    
    public void setDebug(final boolean debug) {
        this.debug = debug;
    }
    
    public void setDispatchPeriod(final int dispatchPeriod) {
        final int dispatchPeriod2 = this.dispatchPeriod;
        this.dispatchPeriod = dispatchPeriod;
        if (dispatchPeriod2 <= 0) {
            this.maybeScheduleNextDispatch();
        }
        else if (dispatchPeriod2 > 0) {
            this.cancelPendingDispatches();
            this.maybeScheduleNextDispatch();
        }
    }
    
    public boolean setDispatcher(final Dispatcher dispatcher) {
        if (this.dispatcherIsBusy) {
            return false;
        }
        if (this.dispatcher != null) {
            this.dispatcher.stop();
        }
        (this.dispatcher = dispatcher).init((Dispatcher.Callbacks)new DispatcherCallbacks());
        this.dispatcher.setDryRun(this.dryRun);
        return true;
    }
    
    public void setDryRun(final boolean b) {
        this.dryRun = b;
        if (this.dispatcher != null) {
            this.dispatcher.setDryRun(b);
        }
    }
    
    void setOptOut(final OptOut optOut) {
        this.optOut = optOut;
    }
    
    public void setProductVersion(final String userAgentProduct, final String userAgentVersion) {
        this.userAgentProduct = userAgentProduct;
        this.userAgentVersion = userAgentVersion;
    }
    
    public boolean setReferrer(final String referrer) {
        if (this.hitStore == null) {
            throw new IllegalStateException("Can't set a referrer before starting the tracker");
        }
        return this.hitStore.setReferrer(referrer);
    }
    
    public void setSampleRate(final int n) {
        if (n < 0 || n > 100) {
            Log.w("GoogleAnalyticsTracker", "Invalid sample rate: " + n + " (should be between 0 and 100");
        }
        else {
            this.sampleRate = n;
            if (this.hitStore != null) {
                this.hitStore.setSampleRate(this.sampleRate);
            }
        }
    }
    
    public void setUseServerTime(final boolean useServerTime) {
        this.useServerTime = useServerTime;
    }
    
    @Deprecated
    public void start(final String s, final int n, final Context context) {
        this.startNewSession(s, n, context);
    }
    
    void start(final String s, final int n, final Context context, final HitStore hitStore, final Dispatcher dispatcher, final boolean b) {
        this.start(s, n, context, hitStore, dispatcher, b, new DispatcherCallbacks());
    }
    
    void start(final String accountId, final int dispatchPeriod, final Context context, final HitStore hitStore, final Dispatcher dispatcher, final boolean b, final Dispatcher.Callbacks callbacks) {
        this.accountId = accountId;
        if (context == null) {
            throw new NullPointerException("Context cannot be null");
        }
        final Context applicationContext = context.getApplicationContext();
        this.parent = applicationContext;
        this.optOut = new DeviceOptOutImpl(applicationContext.getPackageManager());
        this.hitStore = hitStore;
        this.adHitIdGenerator = new AdHitIdGenerator();
        if (b) {
            this.hitStore.startNewVisit();
        }
        (this.dispatcher = dispatcher).init(callbacks);
        this.dispatcherIsBusy = false;
        if (this.connectivityManager == null) {
            this.connectivityManager = (ConnectivityManager)this.parent.getSystemService("connectivity");
        }
        if (this.handler == null) {
            this.handler = new Handler(applicationContext.getMainLooper());
        }
        else {
            this.cancelPendingDispatches();
        }
        this.setDispatchPeriod(dispatchPeriod);
    }
    
    void start(final String s, final int n, final Context context, final boolean b) {
        if (context == null) {
            throw new NullPointerException("Context cannot be null");
        }
        final Context applicationContext = context.getApplicationContext();
        HitStore hitStore;
        if (this.hitStore == null) {
            final PersistentHitStore persistentHitStore = new PersistentHitStore(applicationContext);
            persistentHitStore.setAnonymizeIp(this.anonymizeIp);
            persistentHitStore.setSampleRate(this.sampleRate);
            hitStore = persistentHitStore;
        }
        else {
            hitStore = this.hitStore;
        }
        Dispatcher dispatcher;
        if (this.dispatcher == null) {
            final NetworkDispatcher networkDispatcher = new NetworkDispatcher(this.userAgentProduct, this.userAgentVersion);
            networkDispatcher.setDryRun(this.dryRun);
            dispatcher = networkDispatcher;
        }
        else {
            dispatcher = this.dispatcher;
        }
        this.start(s, n, applicationContext, hitStore, dispatcher, b);
    }
    
    @Deprecated
    public void start(final String s, final Context context) {
        this.start(s, -1, context);
    }
    
    public void startNewSession(final String s, final int n, final Context context) {
        this.start(s, n, context, true);
    }
    
    public void startNewSession(final String s, final Context context) {
        this.startNewSession(s, -1, context);
    }
    
    @Deprecated
    public void stop() {
        if (this.dispatcher != null) {
            this.dispatcher.stop();
        }
        this.cancelPendingDispatches();
    }
    
    public void stopSession() {
        this.stop();
    }
    
    public void trackEvent(final String s, final String s2, final String s3, final int n) {
        if (this.optedOut()) {
            return;
        }
        if (s == null) {
            throw new IllegalArgumentException("category cannot be null");
        }
        if (s2 == null) {
            throw new IllegalArgumentException("action cannot be null");
        }
        this.createEvent(this.accountId, this.lastPagePath, s, s2, s3, n);
    }
    
    public void trackPageView(final String lastPagePath) {
        if (this.optedOut()) {
            return;
        }
        if (lastPagePath == null) {
            throw new IllegalArgumentException("pageUrl cannot be null");
        }
        this.lastPagePath = lastPagePath;
        this.createEvent(this.accountId, lastPagePath, "__##GOOGLEPAGEVIEW##__", null, null, -1);
    }
    
    public void trackTransactions() {
        if (this.optedOut()) {
            return;
        }
        for (final Transaction transaction : this.transactionMap.values()) {
            final Event event = new Event(this.accountId, "", "__##GOOGLETRANSACTION##__", "", "", 0, this.parent.getResources().getDisplayMetrics().widthPixels, this.parent.getResources().getDisplayMetrics().heightPixels);
            event.setTransaction(transaction);
            this.hitStore.putEvent(event);
            final Map<String, Item> map = this.itemMap.get(transaction.getOrderId());
            if (map != null) {
                for (final Item item : map.values()) {
                    final Event event2 = new Event(this.accountId, "", "__##GOOGLEITEM##__", "", "", 0, this.parent.getResources().getDisplayMetrics().widthPixels, this.parent.getResources().getDisplayMetrics().heightPixels);
                    event2.setItem(item);
                    this.hitStore.putEvent(event2);
                }
            }
        }
        this.clearTransactions();
        this.resetPowerSaveMode();
    }
    
    final class DispatcherCallbacks implements Callbacks
    {
        @Override
        public void dispatchFinished() {
            GoogleAnalyticsTracker.this.handler.post((Runnable)new Runnable() {
                @Override
                public void run() {
                    GoogleAnalyticsTracker.this.dispatchFinished();
                }
            });
        }
        
        @Override
        public void hitDispatched(final long n) {
            GoogleAnalyticsTracker.this.hitStore.deleteHit(n);
        }
    }
}
