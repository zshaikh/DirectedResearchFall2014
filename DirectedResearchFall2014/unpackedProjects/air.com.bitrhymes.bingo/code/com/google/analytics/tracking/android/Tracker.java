package com.google.analytics.tracking.android;

import java.text.*;
import java.io.*;
import java.util.*;
import android.text.*;
import com.google.android.gms.common.util.*;

public class Tracker
{
    private static final DecimalFormat DF;
    static final long MAX_TOKENS = 120000L;
    static final long TIME_PER_TOKEN_MILLIS = 2000L;
    private volatile ExceptionParser mExceptionParser;
    private final TrackerHandler mHandler;
    private boolean mIsThrottlingEnabled;
    private volatile boolean mIsTrackerClosed;
    private volatile boolean mIsTrackingStarted;
    private long mLastTrackTime;
    private final SimpleModel mModel;
    private long mTokens;
    
    static {
        DF = new DecimalFormat("0.######", new DecimalFormatSymbols(Locale.US));
    }
    
    Tracker() {
        super();
        this.mIsTrackerClosed = false;
        this.mIsTrackingStarted = false;
        this.mTokens = 120000L;
        this.mIsThrottlingEnabled = true;
        this.mHandler = null;
        this.mModel = null;
    }
    
    Tracker(final String s, final TrackerHandler mHandler) {
        super();
        this.mIsTrackerClosed = false;
        this.mIsTrackingStarted = false;
        this.mTokens = 120000L;
        this.mIsThrottlingEnabled = true;
        if (s == null) {
            throw new IllegalArgumentException("trackingId cannot be null");
        }
        this.mHandler = mHandler;
        (this.mModel = new SimpleModel()).set("trackingId", s);
        this.mModel.set("sampleRate", "100");
        this.mModel.setForNextHit("sessionControl", "start");
        this.mModel.set("useSecure", Boolean.toString(true));
    }
    
    private void assertTrackerOpen() {
        if (this.mIsTrackerClosed) {
            throw new IllegalStateException("Tracker closed");
        }
    }
    
    private Map<String, String> constructItem(final Transaction.Item item, final Transaction transaction) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("transactionId", transaction.getTransactionId());
        hashMap.put("currencyCode", transaction.getCurrencyCode());
        hashMap.put("itemCode", item.getSKU());
        hashMap.put("itemName", item.getName());
        hashMap.put("itemCategory", item.getCategory());
        hashMap.put("itemPrice", microsToCurrencyString(item.getPriceInMicros()));
        hashMap.put("itemQuantity", Long.toString(item.getQuantity()));
        GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_ITEM);
        return hashMap;
    }
    
    private void internalSend(final String s, Map<String, String> hashMap) {
        this.mIsTrackingStarted = true;
        if (hashMap == null) {
            hashMap = new HashMap<String, String>();
        }
        hashMap.put("hitType", s);
        this.mModel.setAll(hashMap, true);
        if (!this.tokensAvailable()) {
            Log.wDebug("Too many hits sent too quickly, throttling invoked.");
        }
        else {
            this.mHandler.sendHit(this.mModel.getKeysAndValues());
        }
        this.mModel.clearTemporaryValues();
    }
    
    private static String microsToCurrencyString(final long n) {
        return Tracker.DF.format(n / 1000000.0);
    }
    
    public void close() {
        this.mIsTrackerClosed = true;
        this.mHandler.closeTracker(this);
    }
    
    public Map<String, String> constructEvent(final String s, final String s2, final String s3, final Long n) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("eventCategory", s);
        hashMap.put("eventAction", s2);
        hashMap.put("eventLabel", s3);
        if (n != null) {
            hashMap.put("eventValue", Long.toString(n));
        }
        GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_EVENT);
        return hashMap;
    }
    
    public Map<String, String> constructException(final String s, final boolean b) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("exDescription", s);
        hashMap.put("exFatal", Boolean.toString(b));
        GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_EXCEPTION);
        return hashMap;
    }
    
    public Map<String, String> constructRawException(final String s, final Throwable obj, final boolean b) throws IOException {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        final ByteArrayOutputStream out = new ByteArrayOutputStream();
        final ObjectOutputStream objectOutputStream = new ObjectOutputStream(out);
        objectOutputStream.writeObject(obj);
        objectOutputStream.close();
        hashMap.put("rawException", Utils.hexEncode(out.toByteArray()));
        if (s != null) {
            hashMap.put("exceptionThreadName", s);
        }
        hashMap.put("exFatal", Boolean.toString(b));
        GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_RAW_EXCEPTION);
        return hashMap;
    }
    
    public Map<String, String> constructSocial(final String s, final String s2, final String s3) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("socialNetwork", s);
        hashMap.put("socialAction", s2);
        hashMap.put("socialTarget", s3);
        GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_SOCIAL);
        return hashMap;
    }
    
    public Map<String, String> constructTiming(final String s, final long i, final String s2, final String s3) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("timingCategory", s);
        hashMap.put("timingValue", Long.toString(i));
        hashMap.put("timingVar", s2);
        hashMap.put("timingLabel", s3);
        GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_TIMING);
        return hashMap;
    }
    
    public Map<String, String> constructTransaction(final Transaction transaction) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("transactionId", transaction.getTransactionId());
        hashMap.put("transactionAffiliation", transaction.getAffiliation());
        hashMap.put("transactionShipping", microsToCurrencyString(transaction.getShippingCostInMicros()));
        hashMap.put("transactionTax", microsToCurrencyString(transaction.getTotalTaxInMicros()));
        hashMap.put("transactionTotal", microsToCurrencyString(transaction.getTotalCostInMicros()));
        hashMap.put("currencyCode", transaction.getCurrencyCode());
        GAUsage.getInstance().setUsage(GAUsage.Field.CONSTRUCT_TRANSACTION);
        return hashMap;
    }
    
    public String get(final String s) {
        GAUsage.getInstance().setUsage(GAUsage.Field.GET);
        return this.mModel.get(s);
    }
    
    public String getAppId() {
        GAUsage.getInstance().setUsage(GAUsage.Field.GET_APP_ID);
        return this.mModel.get("appId");
    }
    
    public String getAppInstallerId() {
        GAUsage.getInstance().setUsage(GAUsage.Field.GET_APP_INSTALLER_ID);
        return this.mModel.get("appInstallerId");
    }
    
    public ExceptionParser getExceptionParser() {
        GAUsage.getInstance().setUsage(GAUsage.Field.GET_EXCEPTION_PARSER);
        return this.mExceptionParser;
    }
    
    public double getSampleRate() {
        GAUsage.getInstance().setUsage(GAUsage.Field.GET_SAMPLE_RATE);
        return Utils.safeParseDouble(this.mModel.get("sampleRate"));
    }
    
    public String getTrackingId() {
        GAUsage.getInstance().setUsage(GAUsage.Field.GET_TRACKING_ID);
        return this.mModel.get("trackingId");
    }
    
    public boolean isAnonymizeIpEnabled() {
        GAUsage.getInstance().setUsage(GAUsage.Field.GET_ANONYMIZE_IP);
        return Utils.safeParseBoolean(this.mModel.get("anonymizeIp"));
    }
    
    public boolean isUseSecure() {
        GAUsage.getInstance().setUsage(GAUsage.Field.GET_USE_SECURE);
        return Boolean.parseBoolean(this.mModel.get("useSecure"));
    }
    
    public void send(final String s, final Map<String, String> map) {
        this.assertTrackerOpen();
        GAUsage.getInstance().setUsage(GAUsage.Field.SEND);
        this.internalSend(s, map);
    }
    
    public void sendEvent(final String s, final String s2, final String s3, final Long n) {
        this.assertTrackerOpen();
        GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_EVENT);
        GAUsage.getInstance().setDisableUsage(true);
        this.internalSend("event", this.constructEvent(s, s2, s3, n));
        GAUsage.getInstance().setDisableUsage(false);
    }
    
    public void sendException(final String s, final Throwable t, final boolean b) {
        this.assertTrackerOpen();
        GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_EXCEPTION_WITH_THROWABLE);
        String description;
        if (this.mExceptionParser != null) {
            description = this.mExceptionParser.getDescription(s, t);
        }
        else {
            try {
                GAUsage.getInstance().setDisableUsage(true);
                this.internalSend("exception", this.constructRawException(s, t, b));
                GAUsage.getInstance().setDisableUsage(false);
                return;
            }
            catch (IOException ex) {
                Log.w("trackException: couldn't serialize, sending \"Unknown Exception\"");
                description = "Unknown Exception";
            }
        }
        GAUsage.getInstance().setDisableUsage(true);
        this.sendException(description, b);
        GAUsage.getInstance().setDisableUsage(false);
    }
    
    public void sendException(final String s, final boolean b) {
        this.assertTrackerOpen();
        GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_EXCEPTION_WITH_DESCRIPTION);
        GAUsage.getInstance().setDisableUsage(true);
        this.internalSend("exception", this.constructException(s, b));
        GAUsage.getInstance().setDisableUsage(false);
    }
    
    public void sendSocial(final String s, final String s2, final String s3) {
        this.assertTrackerOpen();
        GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_SOCIAL);
        GAUsage.getInstance().setDisableUsage(true);
        this.internalSend("social", this.constructSocial(s, s2, s3));
        GAUsage.getInstance().setDisableUsage(false);
    }
    
    public void sendTiming(final String s, final long n, final String s2, final String s3) {
        this.assertTrackerOpen();
        GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_TIMING);
        GAUsage.getInstance().setDisableUsage(true);
        this.internalSend("timing", this.constructTiming(s, n, s2, s3));
        GAUsage.getInstance().setDisableUsage(false);
    }
    
    public void sendTransaction(final Transaction transaction) {
        this.assertTrackerOpen();
        GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_TRANSACTION);
        GAUsage.getInstance().setDisableUsage(true);
        this.internalSend("tran", this.constructTransaction(transaction));
        final Iterator<Transaction.Item> iterator = transaction.getItems().iterator();
        while (iterator.hasNext()) {
            this.internalSend("item", this.constructItem(iterator.next(), transaction));
        }
        GAUsage.getInstance().setDisableUsage(false);
    }
    
    public void sendView() {
        this.assertTrackerOpen();
        if (TextUtils.isEmpty((CharSequence)this.mModel.get("description"))) {
            throw new IllegalStateException("trackView requires a appScreen to be set");
        }
        GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_VIEW);
        this.internalSend("appview", null);
    }
    
    public void sendView(final String s) {
        this.assertTrackerOpen();
        if (TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalStateException("trackView requires a appScreen to be set");
        }
        GAUsage.getInstance().setUsage(GAUsage.Field.TRACK_VIEW_WITH_APPSCREEN);
        this.mModel.set("description", s);
        this.internalSend("appview", null);
    }
    
    public void set(final String s, final String s2) {
        GAUsage.getInstance().setUsage(GAUsage.Field.SET);
        this.mModel.set(s, s2);
    }
    
    public void setAnonymizeIp(final boolean b) {
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_ANONYMIZE_IP);
        this.mModel.set("anonymizeIp", Boolean.toString(b));
    }
    
    public void setAppId(final String s) {
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_APP_ID);
        this.mModel.set("appId", s);
    }
    
    public void setAppInstallerId(final String s) {
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_APP_INSTALLER_ID);
        this.mModel.set("appInstallerId", s);
    }
    
    public void setAppName(final String s) {
        if (this.mIsTrackingStarted) {
            Log.wDebug("Tracking already started, setAppName call ignored");
            return;
        }
        if (TextUtils.isEmpty((CharSequence)s)) {
            Log.wDebug("setting appName to empty value not allowed, call ignored");
            return;
        }
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_APP_NAME);
        this.mModel.set("appName", s);
    }
    
    public void setAppScreen(final String s) {
        this.assertTrackerOpen();
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_APP_SCREEN);
        this.mModel.set("description", s);
    }
    
    public void setAppVersion(final String s) {
        if (this.mIsTrackingStarted) {
            Log.wDebug("Tracking already started, setAppVersion call ignored");
            return;
        }
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_APP_VERSION);
        this.mModel.set("appVersion", s);
    }
    
    public void setCampaign(final String s) {
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_CAMPAIGN);
        this.mModel.setForNextHit("campaign", s);
    }
    
    public void setCustomDimension(final int i, final String str) {
        if (i < 1) {
            Log.w("index must be > 0, ignoring setCustomDimension call for " + i + ", " + str);
            return;
        }
        this.mModel.setForNextHit(Utils.getSlottedModelField("customDimension", i), str);
    }
    
    public void setCustomDimensionsAndMetrics(final Map<Integer, String> map, final Map<Integer, Long> map2) {
        if (map != null) {
            for (final Integer n : map.keySet()) {
                this.setCustomDimension(n, map.get(n));
            }
        }
        if (map2 != null) {
            for (final Integer n2 : map2.keySet()) {
                this.setCustomMetric(n2, map2.get(n2));
            }
        }
    }
    
    public void setCustomMetric(final int i, final Long obj) {
        if (i < 1) {
            Log.w("index must be > 0, ignoring setCustomMetric call for " + i + ", " + obj);
            return;
        }
        String string = null;
        if (obj != null) {
            string = Long.toString(obj);
        }
        this.mModel.setForNextHit(Utils.getSlottedModelField("customMetric", i), string);
    }
    
    public void setExceptionParser(final ExceptionParser mExceptionParser) {
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_EXCEPTION_PARSER);
        this.mExceptionParser = mExceptionParser;
    }
    
    @VisibleForTesting
    void setLastTrackTime(final long mLastTrackTime) {
        this.mLastTrackTime = mLastTrackTime;
    }
    
    public void setReferrer(final String s) {
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_REFERRER);
        this.mModel.setForNextHit("referrer", s);
    }
    
    public void setSampleRate(final double d) {
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_SAMPLE_RATE);
        this.mModel.set("sampleRate", Double.toString(d));
    }
    
    public void setStartSession(final boolean b) {
        this.assertTrackerOpen();
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_START_SESSION);
        final SimpleModel mModel = this.mModel;
        String s;
        if (b) {
            s = "start";
        }
        else {
            s = null;
        }
        mModel.setForNextHit("sessionControl", s);
    }
    
    @VisibleForTesting
    public void setThrottlingEnabled(final boolean mIsThrottlingEnabled) {
        this.mIsThrottlingEnabled = mIsThrottlingEnabled;
    }
    
    @VisibleForTesting
    void setTokens(final long mTokens) {
        this.mTokens = mTokens;
    }
    
    public void setUseSecure(final boolean b) {
        GAUsage.getInstance().setUsage(GAUsage.Field.SET_USE_SECURE);
        this.mModel.set("useSecure", Boolean.toString(b));
    }
    
    @VisibleForTesting
    boolean tokensAvailable() {
        synchronized (this) {
            boolean b;
            if (!this.mIsThrottlingEnabled) {
                b = true;
            }
            else {
                final long currentTimeMillis = System.currentTimeMillis();
                if (this.mTokens < 120000L) {
                    final long n = currentTimeMillis - this.mLastTrackTime;
                    if (n > 0L) {
                        this.mTokens = Math.min(120000L, n + this.mTokens);
                    }
                }
                this.mLastTrackTime = currentTimeMillis;
                if (this.mTokens >= 2000L) {
                    this.mTokens -= 2000L;
                    b = true;
                }
                else {
                    Log.wDebug("Excessive tracking detected.  Tracking call ignored.");
                    b = false;
                }
            }
            return b;
        }
    }
    
    @Deprecated
    public void trackEvent(final String s, final String s2, final String s3, final Long n) {
        this.sendEvent(s, s2, s3, n);
    }
    
    @Deprecated
    public void trackException(final String s, final Throwable t, final boolean b) {
        this.sendException(s, t, b);
    }
    
    @Deprecated
    public void trackException(final String s, final boolean b) {
        this.sendException(s, b);
    }
    
    @Deprecated
    public void trackSocial(final String s, final String s2, final String s3) {
        this.sendSocial(s, s2, s3);
    }
    
    @Deprecated
    public void trackTiming(final String s, final long n, final String s2, final String s3) {
        this.sendTiming(s, n, s2, s3);
    }
    
    @Deprecated
    public void trackTransaction(final Transaction transaction) {
        this.sendTransaction(transaction);
    }
    
    @Deprecated
    public void trackView() {
        this.sendView();
    }
    
    @Deprecated
    public void trackView(final String s) {
        this.sendView(s);
    }
    
    private static class SimpleModel
    {
        private Map<String, String> permanentMap;
        private Map<String, String> temporaryMap;
        
        private SimpleModel() {
            super();
            this.temporaryMap = new HashMap<String, String>();
            this.permanentMap = new HashMap<String, String>();
        }
        
        public void clearTemporaryValues() {
            synchronized (this) {
                this.temporaryMap.clear();
            }
        }
        
        public String get(final String s) {
            synchronized (this) {
                final String s2 = this.temporaryMap.get(s);
                String s3;
                if (s2 != null) {
                    s3 = s2;
                }
                else {
                    s3 = this.permanentMap.get(s);
                }
                return s3;
            }
        }
        
        public Map<String, String> getKeysAndValues() {
            synchronized (this) {
                final HashMap<Object, Object> hashMap = (HashMap<Object, Object>)new HashMap<String, String>(this.permanentMap);
                hashMap.putAll(this.temporaryMap);
                return (Map<String, String>)hashMap;
            }
        }
        
        public void set(final String s, final String s2) {
            synchronized (this) {
                this.permanentMap.put(s, s2);
            }
        }
        
        public void setAll(final Map<String, String> map, final Boolean b) {
            synchronized (this) {
                if (b) {
                    this.temporaryMap.putAll(map);
                }
                else {
                    this.permanentMap.putAll(map);
                }
            }
        }
        
        public void setForNextHit(final String s, final String s2) {
            synchronized (this) {
                this.temporaryMap.put(s, s2);
            }
        }
    }
}
