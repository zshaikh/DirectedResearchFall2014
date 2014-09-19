package com.facebook;

import android.net.*;
import java.util.concurrent.atomic.*;
import android.os.*;
import java.lang.reflect.*;
import android.util.*;
import android.database.*;
import java.util.concurrent.*;
import java.util.*;
import java.net.*;
import org.json.*;
import com.facebook.model.*;
import android.content.*;
import com.facebook.internal.*;

public final class Settings
{
    private static final String ANALYTICS_EVENT = "event";
    private static final String APP_EVENT_PREFERENCES = "com.facebook.sdk.appEventPreferences";
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final Uri ATTRIBUTION_ID_CONTENT_URI;
    private static final String ATTRIBUTION_PREFERENCES = "com.facebook.sdk.attributionTracking";
    private static final String AUTO_PUBLISH = "auto_publish";
    private static final int DEFAULT_CORE_POOL_SIZE = 5;
    private static final int DEFAULT_KEEP_ALIVE = 1;
    private static final int DEFAULT_MAXIMUM_POOL_SIZE = 128;
    private static final ThreadFactory DEFAULT_THREAD_FACTORY;
    private static final BlockingQueue<Runnable> DEFAULT_WORK_QUEUE;
    private static final String FACEBOOK_COM = "facebook.com";
    private static final Object LOCK;
    private static final String MOBILE_INSTALL_EVENT = "MOBILE_APP_INSTALL";
    private static final String PUBLISH_ACTIVITY_PATH = "%s/activities";
    private static final String TAG;
    private static volatile String appVersion;
    private static volatile Executor executor;
    private static volatile String facebookDomain;
    private static final HashSet<LoggingBehavior> loggingBehaviors;
    private static AtomicLong onProgressThreshold;
    private static volatile boolean shouldAutoPublishInstall;
    
    static {
        TAG = Settings.class.getCanonicalName();
        loggingBehaviors = new HashSet<LoggingBehavior>(Arrays.asList(LoggingBehavior.DEVELOPER_ERRORS));
        Settings.facebookDomain = "facebook.com";
        Settings.onProgressThreshold = new AtomicLong(65536L);
        LOCK = new Object();
        ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
        DEFAULT_WORK_QUEUE = new LinkedBlockingQueue<Runnable>(10);
        DEFAULT_THREAD_FACTORY = new Settings$1();
    }
    
    public static final void addLoggingBehavior(final LoggingBehavior e) {
        synchronized (Settings.loggingBehaviors) {
            Settings.loggingBehaviors.add(e);
        }
    }
    
    public static final void clearLoggingBehaviors() {
        synchronized (Settings.loggingBehaviors) {
            Settings.loggingBehaviors.clear();
        }
    }
    
    public static String getAppVersion() {
        return Settings.appVersion;
    }
    
    private static Executor getAsyncTaskExecutor() {
        Object o3 = null;
        Label_0026: {
            Field field;
            try {
                final Field field2;
                field = (field2 = AsyncTask.class.getField("THREAD_POOL_EXECUTOR"));
                final Object o = null;
                final Object o2 = field2.get(o);
                final Object o4;
                o3 = (o4 = o2);
                if (o4 == null) {
                    return null;
                }
                break Label_0026;
            }
            catch (NoSuchFieldException ex) {
                return null;
            }
            try {
                final Field field2 = field;
                final Object o = null;
                final Object o2 = field2.get(o);
                final Object o4;
                o3 = (o4 = o2);
                if (o4 == null) {
                    return null;
                }
            }
            catch (IllegalAccessException ex2) {
                return null;
            }
        }
        if (!(o3 instanceof Executor)) {
            return null;
        }
        return (Executor)o3;
    }
    
    public static String getAttributionId(final ContentResolver contentResolver) {
        try {
            final Cursor query = contentResolver.query(Settings.ATTRIBUTION_ID_CONTENT_URI, new String[] { "aid" }, (String)null, (String[])null, (String)null);
            if (query != null) {
                if (query.moveToFirst()) {
                    final String string = query.getString(query.getColumnIndex("aid"));
                    query.close();
                    return string;
                }
            }
        }
        catch (Exception ex) {
            Log.d(Settings.TAG, "Caught unexpected exception in getAttributionId(): " + ex.toString());
            return null;
        }
        return null;
    }
    
    public static Executor getExecutor() {
        synchronized (Settings.LOCK) {
            if (Settings.executor == null) {
                Executor asyncTaskExecutor = getAsyncTaskExecutor();
                if (asyncTaskExecutor == null) {
                    asyncTaskExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, Settings.DEFAULT_WORK_QUEUE, Settings.DEFAULT_THREAD_FACTORY);
                }
                Settings.executor = asyncTaskExecutor;
            }
            return Settings.executor;
        }
    }
    
    public static String getFacebookDomain() {
        return Settings.facebookDomain;
    }
    
    public static boolean getLimitEventAndDataUsage(final Context context) {
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }
    
    public static final Set<LoggingBehavior> getLoggingBehaviors() {
        synchronized (Settings.loggingBehaviors) {
            return Collections.unmodifiableSet((Set<? extends LoggingBehavior>)new HashSet<LoggingBehavior>(Settings.loggingBehaviors));
        }
    }
    
    public static String getMigrationBundle() {
        return "fbsdk:20131203";
    }
    
    public static long getOnProgressThreshold() {
        return Settings.onProgressThreshold.get();
    }
    
    public static String getSdkVersion() {
        return "3.7.0";
    }
    
    @Deprecated
    public static boolean getShouldAutoPublishInstall() {
        return Settings.shouldAutoPublishInstall;
    }
    
    public static final boolean isLoggingBehaviorEnabled(final LoggingBehavior loggingBehavior) {
        final HashSet<LoggingBehavior> loggingBehaviors = Settings.loggingBehaviors;
        // monitorenter(loggingBehaviors)
        // monitorexit(loggingBehaviors)
        return false;
    }
    
    @Deprecated
    public static boolean publishInstallAndWait(final Context context, final String s) {
        final Response publishInstallAndWaitForResponse = publishInstallAndWaitForResponse(context, s);
        return publishInstallAndWaitForResponse != null && publishInstallAndWaitForResponse.getError() == null;
    }
    
    @Deprecated
    public static Response publishInstallAndWaitForResponse(final Context context, final String s) {
        return publishInstallAndWaitForResponse(context, s, false);
    }
    
    static Response publishInstallAndWaitForResponse(final Context context, final String s, final boolean b) {
        Label_0046: {
            if (context != null) {
                if (s != null) {
                    break Label_0046;
                }
            }
            try {
                throw new IllegalArgumentException("Both context and applicationId must be non-null");
            }
            catch (Exception ex) {
                Utility.logd("Facebook-publish", ex);
                return new Response(null, null, new FacebookRequestError(null, ex));
            }
        }
        final String attributionId = getAttributionId(context.getContentResolver());
        final SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
        final String string = s + "ping";
        final String string2 = s + "json";
        final long long1 = sharedPreferences.getLong(string, 0L);
        final String string3 = sharedPreferences.getString(string2, (String)null);
        if (!b) {
            setShouldAutoPublishInstall(false);
        }
        final GraphObject create = GraphObject$Factory.create();
        create.setProperty("event", "MOBILE_APP_INSTALL");
        final String hashedDeviceAndAppID = Utility.getHashedDeviceAndAppID(context, s);
        while (true) {
            Label_0448: {
                if (getLimitEventAndDataUsage(context)) {
                    break Label_0448;
                }
                final boolean b2 = true;
                Utility.setAppEventAttributionParameters(create, attributionId, hashedDeviceAndAppID, b2);
                create.setProperty("auto_publish", b);
                create.setProperty("application_package_name", context.getPackageName());
                final Request postRequest = Request.newPostRequest(null, String.format("%s/activities", s), create, null);
                Label_0318: {
                    if (long1 == 0L) {
                        break Label_0318;
                    }
                    GraphObject create2 = null;
                    while (true) {
                        if (string3 == null) {
                            break Label_0266;
                        }
                        try {
                            create2 = GraphObject$Factory.create(new JSONObject(string3));
                            if (create2 == null) {
                                return Response.createResponsesFromString("true", null, new RequestBatch(new Request[] { postRequest }), true).get(0);
                            }
                            return new Response(null, null, create2, true);
                            // iftrue(Label_0429:, executeAndWait.getGraphObject() == null || executeAndWait.getGraphObject().getInnerJSONObject() == null)
                            while (true) {
                                final SharedPreferences$Editor edit;
                                edit.commit();
                                return;
                                Label_0356: {
                                    executeAndWait = postRequest.executeAndWait();
                                }
                                edit = sharedPreferences.edit();
                                edit.putLong(string, System.currentTimeMillis());
                                edit.putString(string2, executeAndWait.getGraphObject().getInnerJSONObject().toString());
                                continue;
                            }
                            // iftrue(Label_0334:, attributionId != null)
                            throw new FacebookException("No attribution id returned from the Facebook application");
                            Label_0334: {
                                throw new FacebookException("Install attribution has been disabled on the server.");
                            }
                        }
                        // iftrue(Label_0356:, Utility.queryAppSettings(s, false).supportsAttribution())
                        catch (JSONException ex2) {
                            create2 = null;
                            continue;
                        }
                        break;
                    }
                }
            }
            final boolean b2 = false;
            continue;
        }
    }
    
    @Deprecated
    public static void publishInstallAsync(final Context context, final String s) {
        publishInstallAsync(context, s, null);
    }
    
    @Deprecated
    public static void publishInstallAsync(final Context context, final String s, final Request$Callback request$Callback) {
        getExecutor().execute(new Settings$2(context.getApplicationContext(), s, request$Callback));
    }
    
    public static final void removeLoggingBehavior(final LoggingBehavior o) {
        synchronized (Settings.loggingBehaviors) {
            Settings.loggingBehaviors.remove(o);
        }
    }
    
    public static void setAppVersion(final String appVersion) {
        Settings.appVersion = appVersion;
    }
    
    public static void setExecutor(final Executor executor) {
        Validate.notNull(executor, "executor");
        synchronized (Settings.LOCK) {
            Settings.executor = executor;
        }
    }
    
    public static void setFacebookDomain(final String facebookDomain) {
        Log.w(Settings.TAG, "WARNING: Calling setFacebookDomain from non-DEBUG code.");
        Settings.facebookDomain = facebookDomain;
    }
    
    public static void setLimitEventAndDataUsage(final Context context, final boolean b) {
        final SharedPreferences$Editor edit = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit();
        edit.putBoolean("limitEventUsage", b);
        edit.commit();
    }
    
    public static void setOnProgressThreshold(final long newValue) {
        Settings.onProgressThreshold.set(newValue);
    }
    
    @Deprecated
    public static void setShouldAutoPublishInstall(final boolean shouldAutoPublishInstall) {
        Settings.shouldAutoPublishInstall = shouldAutoPublishInstall;
    }
}
