package com.facebook;

import android.net.*;
import java.util.concurrent.atomic.*;
import java.lang.reflect.*;
import android.util.*;
import android.database.*;
import java.util.concurrent.*;
import java.util.*;
import java.net.*;
import com.facebook.model.*;
import org.json.*;
import android.content.*;
import android.os.*;
import com.facebook.internal.*;

public final class Settings
{
    private static final String ANALYTICS_EVENT = "event";
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final Uri ATTRIBUTION_ID_CONTENT_URI;
    private static final String ATTRIBUTION_KEY = "attribution";
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
    private static volatile boolean shouldAutoPublishInstall;
    
    static {
        TAG = Settings.class.getCanonicalName();
        loggingBehaviors = new HashSet<LoggingBehavior>(Arrays.asList(LoggingBehavior.DEVELOPER_ERRORS));
        Settings.facebookDomain = "facebook.com";
        LOCK = new Object();
        ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
        DEFAULT_WORK_QUEUE = new LinkedBlockingQueue<Runnable>(10);
        DEFAULT_THREAD_FACTORY = new ThreadFactory() {
            private final AtomicInteger counter = new AtomicInteger(0);
            
            @Override
            public Thread newThread(final Runnable target) {
                return new Thread(target, "FacebookSdk #" + this.counter.incrementAndGet());
            }
        };
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
    
    public static final Set<LoggingBehavior> getLoggingBehaviors() {
        synchronized (Settings.loggingBehaviors) {
            return Collections.unmodifiableSet((Set<? extends LoggingBehavior>)new HashSet<LoggingBehavior>(Settings.loggingBehaviors));
        }
    }
    
    public static String getMigrationBundle() {
        return "fbsdk:20130708";
    }
    
    public static String getSdkVersion() {
        return "3.5.2";
    }
    
    @Deprecated
    public static boolean getShouldAutoPublishInstall() {
        return Settings.shouldAutoPublishInstall;
    }
    
    public static final boolean isLoggingBehaviorEnabled(final LoggingBehavior o) {
        while (true) {
            synchronized (Settings.loggingBehaviors) {
                if (Settings.loggingBehaviors.contains(o)) {
                    return true;
                }
            }
            return false;
        }
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
        final String string = String.valueOf(s) + "ping";
        final String string2 = String.valueOf(s) + "json";
        final long long1 = sharedPreferences.getLong(string, 0L);
        final String string3 = sharedPreferences.getString(string2, (String)null);
        if (!b) {
            setShouldAutoPublishInstall(false);
        }
        final GraphObject create = GraphObject.Factory.create();
        create.setProperty("event", "MOBILE_APP_INSTALL");
        create.setProperty("attribution", attributionId);
        create.setProperty("auto_publish", b);
        while (true) {
            Label_0456: {
                if (!AppEventsLogger.getLimitEventUsage(context)) {
                    break Label_0456;
                }
                final boolean b2 = false;
                create.setProperty("application_tracking_enabled", b2);
                create.setProperty("application_package_name", context.getPackageName());
                final Request postRequest = Request.newPostRequest(null, String.format("%s/activities", s), create, null);
                Label_0326: {
                    if (long1 == 0L) {
                        break Label_0326;
                    }
                    GraphObject create2 = null;
                    while (true) {
                        if (string3 == null) {
                            break Label_0274;
                        }
                        try {
                            create2 = GraphObject.Factory.create(new JSONObject(string3));
                            if (create2 == null) {
                                return Response.createResponsesFromString("true", null, new RequestBatch(new Request[] { postRequest }), true).get(0);
                            }
                            return new Response(null, null, create2, true);
                            final Response executeAndWait;
                            Label_0364: {
                                executeAndWait = postRequest.executeAndWait();
                            }
                            final SharedPreferences$Editor edit = sharedPreferences.edit();
                            edit.putLong(string, System.currentTimeMillis());
                            // iftrue(Label_0437:, executeAndWait.getGraphObject() == null || executeAndWait.getGraphObject().getInnerJSONObject() == null)
                            // iftrue(Label_0364:, Utility.queryAppSettings(s, false).supportsAttribution())
                            // iftrue(Label_0342:, attributionId != null)
                            while (true) {
                                Block_13: {
                                    break Block_13;
                                    edit.commit();
                                    return executeAndWait;
                                    Label_0342:
                                    throw new FacebookException("Install attribution has been disabled on the server.");
                                    throw new FacebookException("No attribution id returned from the Facebook application");
                                }
                                edit.putString(string2, executeAndWait.getGraphObject().getInnerJSONObject().toString());
                                continue;
                            }
                        }
                        catch (JSONException ex2) {
                            create2 = null;
                            continue;
                        }
                        break;
                    }
                }
            }
            final boolean b2 = true;
            continue;
        }
    }
    
    @Deprecated
    public static void publishInstallAsync(final Context context, final String s) {
        publishInstallAsync(context, s, null);
    }
    
    @Deprecated
    public static void publishInstallAsync(final Context context, final String s, final Request.Callback callback) {
        getExecutor().execute(new Runnable() {
            private final /* synthetic */ Context val$applicationContext = context.getApplicationContext();
            
            @Override
            public void run() {
                final Response publishInstallAndWaitForResponse = Settings.publishInstallAndWaitForResponse(this.val$applicationContext, s);
                if (callback != null) {
                    new Handler(Looper.getMainLooper()).post((Runnable)new Runnable() {
                        @Override
                        public void run() {
                            callback.onCompleted(publishInstallAndWaitForResponse);
                        }
                    });
                }
            }
        });
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
        Settings.facebookDomain = facebookDomain;
    }
    
    @Deprecated
    public static void setShouldAutoPublishInstall(final boolean shouldAutoPublishInstall) {
        Settings.shouldAutoPublishInstall = shouldAutoPublishInstall;
    }
}
