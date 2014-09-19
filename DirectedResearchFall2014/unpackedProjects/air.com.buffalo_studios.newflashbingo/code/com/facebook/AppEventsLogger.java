package com.facebook;

import android.content.*;
import java.util.concurrent.*;
import com.facebook.model.*;
import android.os.*;
import com.facebook.internal.*;
import org.json.*;
import java.math.*;
import java.util.*;

public class AppEventsLogger
{
    public static final String ACTION_APP_EVENTS_FLUSHED = "com.facebook.sdk.APP_EVENTS_FLUSHED";
    private static final int APP_ACTIVATE_SUPPRESSION_PERIOD_IN_SECONDS = 300;
    public static final String APP_EVENTS_EXTRA_FLUSH_RESULT = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT";
    public static final String APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED";
    private static final int APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS = 86400;
    private static final int FLUSH_PERIOD_IN_SECONDS = 60;
    private static final int NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER = 100;
    private static final String TAG;
    private static Context applicationContext;
    private static AppEventsLogger$FlushBehavior flushBehavior;
    private static Timer flushTimer;
    private static String hashedDeviceAndAppId;
    private static Map<String, AppEventsLogger$EventSuppression> mapEventNameToSuppress;
    private static Map<String, Date> mapEventsToSuppressionTime;
    private static boolean requestInFlight;
    private static Map<AppEventsLogger$AccessTokenAppIdPair, AppEventsLogger$SessionEventsState> stateMap;
    private static Object staticLock;
    private static Timer supportsAttributionRecheckTimer;
    private final AppEventsLogger$AccessTokenAppIdPair accessTokenAppId;
    private final Context context;
    
    static {
        TAG = AppEventsLogger.class.getCanonicalName();
        AppEventsLogger.stateMap = new ConcurrentHashMap<AppEventsLogger$AccessTokenAppIdPair, AppEventsLogger$SessionEventsState>();
        AppEventsLogger.flushBehavior = AppEventsLogger$FlushBehavior.AUTO;
        AppEventsLogger.staticLock = new Object();
        AppEventsLogger.mapEventsToSuppressionTime = new HashMap<String, Date>();
        AppEventsLogger.mapEventNameToSuppress = new AppEventsLogger$1();
    }
    
    private AppEventsLogger(final Context context, final String s, final Session session) {
        super();
        Validate.notNull(context, "context");
        this.context = context;
        Session activeSession;
        if (session == null) {
            activeSession = Session.getActiveSession();
        }
        else {
            activeSession = session;
        }
        Label_0088: {
            if (activeSession == null) {
                break Label_0088;
            }
            this.accessTokenAppId = new AppEventsLogger$AccessTokenAppIdPair(activeSession);
            String metadataApplicationId = s;
        Label_0098_Outer:
            while (true) {
                while (true) {
                    synchronized (AppEventsLogger.staticLock) {
                        if (AppEventsLogger.hashedDeviceAndAppId == null) {
                            AppEventsLogger.hashedDeviceAndAppId = Utility.getHashedDeviceAndAppID(context, metadataApplicationId);
                        }
                        if (AppEventsLogger.applicationContext == null) {
                            AppEventsLogger.applicationContext = context.getApplicationContext();
                        }
                        initializeTimersIfNeeded();
                        return;
                        this.accessTokenAppId = new AppEventsLogger$AccessTokenAppIdPair(null, metadataApplicationId);
                        continue Label_0098_Outer;
                        // iftrue(Label_0123:, s != null)
                        metadataApplicationId = Utility.getMetadataApplicationId(context);
                        continue;
                    }
                    Label_0123: {
                        metadataApplicationId = s;
                    }
                    continue;
                }
            }
        }
    }
    
    private static int accumulatePersistedEvents() {
        final AppEventsLogger$PersistedEvents andClearStore = AppEventsLogger$PersistedEvents.readAndClearStore(AppEventsLogger.applicationContext);
        final Iterator<AppEventsLogger$AccessTokenAppIdPair> iterator = andClearStore.keySet().iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final AppEventsLogger$AccessTokenAppIdPair appEventsLogger$AccessTokenAppIdPair = iterator.next();
            final AppEventsLogger$SessionEventsState sessionEventsState = getSessionEventsState(AppEventsLogger.applicationContext, appEventsLogger$AccessTokenAppIdPair);
            final List<AppEventsLogger$AppEvent> events = andClearStore.getEvents(appEventsLogger$AccessTokenAppIdPair);
            sessionEventsState.accumulatePersistedEvents(events);
            n += events.size();
        }
        return n;
    }
    
    public static void activateApp(final Context context) {
        activateApp(context, Utility.getMetadataApplicationId(context));
    }
    
    public static void activateApp(final Context context, final String s) {
        if (context == null || s == null) {
            throw new IllegalArgumentException("Both context and applicationId must be non-null");
        }
        Settings.publishInstallAsync(context, s);
        new AppEventsLogger(context, s, null).logEvent("fb_mobile_activate_app");
    }
    
    private static AppEventsLogger$FlushStatistics buildAndExecuteRequests(final AppEventsLogger$FlushReason appEventsLogger$FlushReason, final Set<AppEventsLogger$AccessTokenAppIdPair> set) {
        final AppEventsLogger$FlushStatistics appEventsLogger$FlushStatistics = new AppEventsLogger$FlushStatistics(null);
        final boolean limitEventAndDataUsage = Settings.getLimitEventAndDataUsage(AppEventsLogger.applicationContext);
        final ArrayList<Request> list = new ArrayList<Request>();
        for (final AppEventsLogger$AccessTokenAppIdPair appEventsLogger$AccessTokenAppIdPair : set) {
            final AppEventsLogger$SessionEventsState sessionEventsState = getSessionEventsState(appEventsLogger$AccessTokenAppIdPair);
            if (sessionEventsState != null) {
                final Request buildRequestForSession = buildRequestForSession(appEventsLogger$AccessTokenAppIdPair, sessionEventsState, limitEventAndDataUsage, appEventsLogger$FlushStatistics);
                if (buildRequestForSession == null) {
                    continue;
                }
                list.add(buildRequestForSession);
            }
        }
        if (list.size() > 0) {
            Logger.log(LoggingBehavior.APP_EVENTS, AppEventsLogger.TAG, "Flushing %d events due to %s.", appEventsLogger$FlushStatistics.numEvents, appEventsLogger$FlushReason.toString());
            final Iterator<Object> iterator2 = list.iterator();
            while (iterator2.hasNext()) {
                iterator2.next().executeAndWait();
            }
            return appEventsLogger$FlushStatistics;
        }
        return null;
    }
    
    private static Request buildRequestForSession(final AppEventsLogger$AccessTokenAppIdPair appEventsLogger$AccessTokenAppIdPair, final AppEventsLogger$SessionEventsState appEventsLogger$SessionEventsState, final boolean b, final AppEventsLogger$FlushStatistics appEventsLogger$FlushStatistics) {
        final String applicationId = appEventsLogger$AccessTokenAppIdPair.getApplicationId();
        final Utility$FetchedAppSettings queryAppSettings = Utility.queryAppSettings(applicationId, false);
        final Request postRequest = Request.newPostRequest(null, String.format("%s/activities", applicationId), null, null);
        Bundle parameters = postRequest.getParameters();
        if (parameters == null) {
            parameters = new Bundle();
        }
        parameters.putString("access_token", appEventsLogger$AccessTokenAppIdPair.getAccessToken());
        postRequest.setParameters(parameters);
        final int populateRequest = appEventsLogger$SessionEventsState.populateRequest(postRequest, queryAppSettings.supportsImplicitLogging(), queryAppSettings.supportsAttribution(), b);
        if (populateRequest == 0) {
            return null;
        }
        appEventsLogger$FlushStatistics.numEvents += populateRequest;
        postRequest.setCallback(new AppEventsLogger$5(appEventsLogger$AccessTokenAppIdPair, postRequest, appEventsLogger$SessionEventsState, appEventsLogger$FlushStatistics));
        return postRequest;
    }
    
    static void eagerFlush() {
        if (getFlushBehavior() != AppEventsLogger$FlushBehavior.EXPLICIT_ONLY) {
            flush(AppEventsLogger$FlushReason.EAGER_FLUSHING_EVENT);
        }
    }
    
    private static void flush(final AppEventsLogger$FlushReason appEventsLogger$FlushReason) {
        Settings.getExecutor().execute(new AppEventsLogger$4(appEventsLogger$FlushReason));
    }
    
    private static void flushAndWait(final AppEventsLogger$FlushReason p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/facebook/AppEventsLogger.staticLock:Ljava/lang/Object;
        //     3: astore_1       
        //     4: aload_1        
        //     5: monitorenter   
        //     6: getstatic       com/facebook/AppEventsLogger.requestInFlight:Z
        //     9: ifeq            15
        //    12: aload_1        
        //    13: monitorexit    
        //    14: return         
        //    15: iconst_1       
        //    16: putstatic       com/facebook/AppEventsLogger.requestInFlight:Z
        //    19: new             Ljava/util/HashSet;
        //    22: dup            
        //    23: getstatic       com/facebook/AppEventsLogger.stateMap:Ljava/util/Map;
        //    26: invokeinterface java/util/Map.keySet:()Ljava/util/Set;
        //    31: invokespecial   java/util/HashSet.<init>:(Ljava/util/Collection;)V
        //    34: astore_3       
        //    35: aload_1        
        //    36: monitorexit    
        //    37: invokestatic    com/facebook/AppEventsLogger.accumulatePersistedEvents:()I
        //    40: pop            
        //    41: aload_0        
        //    42: aload_3        
        //    43: invokestatic    com/facebook/AppEventsLogger.buildAndExecuteRequests:(Lcom/facebook/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/AppEventsLogger$FlushStatistics;
        //    46: astore          14
        //    48: aload           14
        //    50: astore          7
        //    52: getstatic       com/facebook/AppEventsLogger.staticLock:Ljava/lang/Object;
        //    55: astore          8
        //    57: aload           8
        //    59: monitorenter   
        //    60: iconst_0       
        //    61: putstatic       com/facebook/AppEventsLogger.requestInFlight:Z
        //    64: aload           8
        //    66: monitorexit    
        //    67: aload           7
        //    69: ifnull          171
        //    72: new             Landroid/content/Intent;
        //    75: dup            
        //    76: ldc             "com.facebook.sdk.APP_EVENTS_FLUSHED"
        //    78: invokespecial   android/content/Intent.<init>:(Ljava/lang/String;)V
        //    81: astore          10
        //    83: aload           10
        //    85: ldc             "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"
        //    87: aload           7
        //    89: getfield        com/facebook/AppEventsLogger$FlushStatistics.numEvents:I
        //    92: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;I)Landroid/content/Intent;
        //    95: pop            
        //    96: aload           10
        //    98: ldc             "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"
        //   100: aload           7
        //   102: getfield        com/facebook/AppEventsLogger$FlushStatistics.result:Lcom/facebook/AppEventsLogger$FlushResult;
        //   105: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
        //   108: pop            
        //   109: getstatic       com/facebook/AppEventsLogger.applicationContext:Landroid/content/Context;
        //   112: invokestatic    c/m/x/a/gv/ae.a:(Landroid/content/Context;)Lc/m/x/a/gv/ae;
        //   115: aload           10
        //   117: invokevirtual   c/m/x/a/gv/ae.a:(Landroid/content/Intent;)Z
        //   120: pop            
        //   121: return         
        //   122: astore_2       
        //   123: aload_1        
        //   124: monitorexit    
        //   125: aload_2        
        //   126: athrow         
        //   127: astore          5
        //   129: getstatic       com/facebook/AppEventsLogger.TAG:Ljava/lang/String;
        //   132: new             Ljava/lang/StringBuilder;
        //   135: dup            
        //   136: ldc_w           "Caught unexpected exception while flushing: "
        //   139: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   142: aload           5
        //   144: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   147: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   150: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   153: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   156: pop            
        //   157: aconst_null    
        //   158: astore          7
        //   160: goto            52
        //   163: astore          9
        //   165: aload           8
        //   167: monitorexit    
        //   168: aload           9
        //   170: athrow         
        //   171: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  6      14     122    127    Any
        //  15     37     122    127    Any
        //  41     48     127    163    Ljava/lang/Exception;
        //  60     67     163    171    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 86, Size: 86
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
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
    
    private static void flushIfNecessary() {
        synchronized (AppEventsLogger.staticLock) {
            if (getFlushBehavior() != AppEventsLogger$FlushBehavior.EXPLICIT_ONLY && getAccumulatedEventCount() > 100) {
                flush(AppEventsLogger$FlushReason.EVENT_THRESHOLD);
            }
        }
    }
    
    private static int getAccumulatedEventCount() {
        synchronized (AppEventsLogger.staticLock) {
            final Iterator<AppEventsLogger$SessionEventsState> iterator = AppEventsLogger.stateMap.values().iterator();
            int n = 0;
            while (iterator.hasNext()) {
                n += iterator.next().getAccumulatedEventCount();
            }
            return n;
        }
    }
    
    public static AppEventsLogger$FlushBehavior getFlushBehavior() {
        synchronized (AppEventsLogger.staticLock) {
            return AppEventsLogger.flushBehavior;
        }
    }
    
    @Deprecated
    public static boolean getLimitEventUsage(final Context context) {
        return Settings.getLimitEventAndDataUsage(context);
    }
    
    private static AppEventsLogger$SessionEventsState getSessionEventsState(final Context context, final AppEventsLogger$AccessTokenAppIdPair appEventsLogger$AccessTokenAppIdPair) {
        synchronized (AppEventsLogger.staticLock) {
            AppEventsLogger$SessionEventsState appEventsLogger$SessionEventsState = AppEventsLogger.stateMap.get(appEventsLogger$AccessTokenAppIdPair);
            if (appEventsLogger$SessionEventsState == null) {
                final AppEventsLogger$SessionEventsState appEventsLogger$SessionEventsState2 = new AppEventsLogger$SessionEventsState(Settings.getAttributionId(context.getContentResolver()), context.getPackageName(), AppEventsLogger.hashedDeviceAndAppId);
                AppEventsLogger.stateMap.put(appEventsLogger$AccessTokenAppIdPair, appEventsLogger$SessionEventsState2);
                appEventsLogger$SessionEventsState = appEventsLogger$SessionEventsState2;
            }
            return appEventsLogger$SessionEventsState;
        }
    }
    
    private static AppEventsLogger$SessionEventsState getSessionEventsState(final AppEventsLogger$AccessTokenAppIdPair appEventsLogger$AccessTokenAppIdPair) {
        synchronized (AppEventsLogger.staticLock) {
            return AppEventsLogger.stateMap.get(appEventsLogger$AccessTokenAppIdPair);
        }
    }
    
    private static void handleResponse(final AppEventsLogger$AccessTokenAppIdPair appEventsLogger$AccessTokenAppIdPair, final Request request, final Response response, final AppEventsLogger$SessionEventsState appEventsLogger$SessionEventsState, final AppEventsLogger$FlushStatistics appEventsLogger$FlushStatistics) {
        final FacebookRequestError error = response.getError();
        final AppEventsLogger$FlushResult success = AppEventsLogger$FlushResult.SUCCESS;
        while (true) {
            while (true) {
                Label_0035: {
                    if (error == null) {
                        final String s = "Success";
                        final AppEventsLogger$FlushResult result = success;
                        break Label_0035;
                    }
                    if (error.getErrorCode() == -1) {
                        final AppEventsLogger$FlushResult result = AppEventsLogger$FlushResult.NO_CONNECTIVITY;
                        final String s = "Failed: No Connectivity";
                        break Label_0035;
                    }
                    Label_0180: {
                        break Label_0180;
                    Label_0131_Outer:
                        while (true) {
                            final String s2 = (String)request.getTag();
                            while (true) {
                            Label_0235:
                                while (true) {
                                    try {
                                        final String string = new JSONArray(s2).toString(2);
                                        final String s;
                                        Logger.log(LoggingBehavior.APP_EVENTS, AppEventsLogger.TAG, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", request.getGraphObject().toString(), s, string);
                                        if (error != null) {
                                            final boolean b = true;
                                            appEventsLogger$SessionEventsState.clearInFlightAndStats(b);
                                            final AppEventsLogger$FlushResult result;
                                            if (result == AppEventsLogger$FlushResult.NO_CONNECTIVITY) {
                                                AppEventsLogger$PersistedEvents.persistEvents(AppEventsLogger.applicationContext, appEventsLogger$AccessTokenAppIdPair, appEventsLogger$SessionEventsState);
                                            }
                                            if (result != AppEventsLogger$FlushResult.SUCCESS && appEventsLogger$FlushStatistics.result != AppEventsLogger$FlushResult.NO_CONNECTIVITY) {
                                                appEventsLogger$FlushStatistics.result = result;
                                            }
                                            return;
                                        }
                                        break Label_0235;
                                        final String format = String.format("Failed:\n  Response: %s\n  Error %s", response.toString(), error.toString());
                                        final AppEventsLogger$FlushResult result = AppEventsLogger$FlushResult.SERVER_ERROR;
                                        s = format;
                                        break;
                                    }
                                    catch (JSONException ex) {
                                        final String string = "<Can't encode events for debug logging>";
                                        continue Label_0131_Outer;
                                    }
                                    break;
                                }
                                final boolean b = false;
                                continue;
                            }
                        }
                    }
                }
                if (Settings.isLoggingBehaviorEnabled(LoggingBehavior.APP_EVENTS)) {
                    continue;
                }
                break;
            }
            continue;
        }
    }
    
    private static void initializeTimersIfNeeded() {
        synchronized (AppEventsLogger.staticLock) {
            if (AppEventsLogger.flushTimer != null) {
                return;
            }
            AppEventsLogger.flushTimer = new Timer();
            AppEventsLogger.supportsAttributionRecheckTimer = new Timer();
            // monitorexit(AppEventsLogger.staticLock)
            AppEventsLogger.flushTimer.schedule(new AppEventsLogger$2(), 0L, 60000L);
            AppEventsLogger.supportsAttributionRecheckTimer.schedule(new AppEventsLogger$3(), 0L, 86400000L);
        }
    }
    
    private static void logEvent(final Context context, final AppEventsLogger$AppEvent appEventsLogger$AppEvent, final AppEventsLogger$AccessTokenAppIdPair appEventsLogger$AccessTokenAppIdPair) {
        if (shouldSuppressEvent(appEventsLogger$AppEvent)) {
            return;
        }
        getSessionEventsState(context, appEventsLogger$AccessTokenAppIdPair).addEvent(appEventsLogger$AppEvent);
        flushIfNecessary();
    }
    
    private void logEvent(final String s, final Double n, final Bundle bundle, final boolean b) {
        logEvent(this.context, new AppEventsLogger$AppEvent(s, n, bundle, b), this.accessTokenAppId);
    }
    
    public static AppEventsLogger newLogger(final Context context) {
        return new AppEventsLogger(context, null, null);
    }
    
    public static AppEventsLogger newLogger(final Context context, final Session session) {
        return new AppEventsLogger(context, null, session);
    }
    
    public static AppEventsLogger newLogger(final Context context, final String s) {
        return new AppEventsLogger(context, s, null);
    }
    
    public static AppEventsLogger newLogger(final Context context, final String s, final Session session) {
        return new AppEventsLogger(context, s, session);
    }
    
    private static void notifyDeveloperError(final String s) {
        Logger.log(LoggingBehavior.DEVELOPER_ERRORS, "AppEvents", s);
    }
    
    public static void onContextStop() {
        AppEventsLogger$PersistedEvents.persistEvents(AppEventsLogger.applicationContext, AppEventsLogger.stateMap);
    }
    
    public static void setFlushBehavior(final AppEventsLogger$FlushBehavior flushBehavior) {
        synchronized (AppEventsLogger.staticLock) {
            AppEventsLogger.flushBehavior = flushBehavior;
        }
    }
    
    @Deprecated
    public static void setLimitEventUsage(final Context context, final boolean b) {
        Settings.setLimitEventAndDataUsage(context, b);
    }
    
    private static boolean shouldSuppressEvent(final AppEventsLogger$AppEvent appEventsLogger$AppEvent) {
        final AppEventsLogger$EventSuppression appEventsLogger$EventSuppression = AppEventsLogger.mapEventNameToSuppress.get(appEventsLogger$AppEvent.getName());
        if (appEventsLogger$EventSuppression == null) {
            return false;
        }
        final Date date = AppEventsLogger.mapEventsToSuppressionTime.get(appEventsLogger$AppEvent.getName());
        final boolean b = date != null && new Date().getTime() - date.getTime() < 1000 * appEventsLogger$EventSuppression.getTimeoutPeriod();
        if (!b || appEventsLogger$EventSuppression.getBehavior() == AppEventsLogger$SuppressionTimeoutBehavior.RESET_TIMEOUT_WHEN_LOG_ATTEMPTED) {
            AppEventsLogger.mapEventsToSuppressionTime.put(appEventsLogger$AppEvent.getName(), new Date());
        }
        return b;
    }
    
    public void flush() {
        flush(AppEventsLogger$FlushReason.EXPLICIT);
    }
    
    public String getApplicationId() {
        return this.accessTokenAppId.getApplicationId();
    }
    
    boolean isValidForSession(final Session session) {
        return this.accessTokenAppId.equals(new AppEventsLogger$AccessTokenAppIdPair(session));
    }
    
    public void logEvent(final String s) {
        this.logEvent(s, null);
    }
    
    public void logEvent(final String s, final double n) {
        this.logEvent(s, n, null);
    }
    
    public void logEvent(final String s, final double d, final Bundle bundle) {
        this.logEvent(s, d, bundle, false);
    }
    
    public void logEvent(final String s, final Bundle bundle) {
        this.logEvent(s, null, bundle, false);
    }
    
    public void logPurchase(final BigDecimal bigDecimal, final Currency currency) {
        this.logPurchase(bigDecimal, currency, null);
    }
    
    public void logPurchase(final BigDecimal bigDecimal, final Currency currency, final Bundle bundle) {
        if (bigDecimal == null) {
            notifyDeveloperError("purchaseAmount cannot be null");
            return;
        }
        if (currency == null) {
            notifyDeveloperError("currency cannot be null");
            return;
        }
        Bundle bundle2;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        else {
            bundle2 = bundle;
        }
        bundle2.putString("fb_currency", currency.getCurrencyCode());
        this.logEvent("fb_mobile_purchase", bigDecimal.doubleValue(), bundle2);
        eagerFlush();
    }
    
    public void logSdkEvent(final String s, final Double n, final Bundle bundle) {
        this.logEvent(s, n, bundle, true);
    }
}
