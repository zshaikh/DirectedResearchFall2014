package com.facebook;

import android.net.*;
import android.os.*;
import java.lang.reflect.*;
import android.annotation.*;
import android.database.*;
import java.util.concurrent.*;
import java.util.*;
import com.milkmangames.extensions.android.goviral.*;
import java.net.*;
import org.json.*;
import com.facebook.model.*;
import android.content.*;
import com.facebook.internal.*;

public final class Settings
{
    private static final String ANALYTICS_EVENT = "event";
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final Uri ATTRIBUTION_ID_CONTENT_URI;
    private static final String ATTRIBUTION_KEY = "attribution";
    private static final String ATTRIBUTION_PREFERENCES = "com.facebook.sdk.attributionTracking";
    private static final int DEFAULT_CORE_POOL_SIZE = 5;
    private static final int DEFAULT_KEEP_ALIVE = 1;
    private static final int DEFAULT_MAXIMUM_POOL_SIZE = 128;
    private static final ThreadFactory DEFAULT_THREAD_FACTORY;
    private static final BlockingQueue DEFAULT_WORK_QUEUE;
    private static final Object LOCK;
    private static final String MOBILE_INSTALL_EVENT = "MOBILE_APP_INSTALL";
    private static final String PUBLISH_ACTIVITY_PATH = "%s/activities";
    private static volatile Executor executor;
    private static final HashSet loggingBehaviors;
    private static volatile boolean shouldAutoPublishInstall;
    
    static {
        loggingBehaviors = new HashSet((Collection<? extends E>)Arrays.asList(LoggingBehavior.DEVELOPER_ERRORS));
        LOCK = new Object();
        ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
        DEFAULT_WORK_QUEUE = new LinkedBlockingQueue(10);
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
    
    @TargetApi(3)
    private static Executor getAsyncTaskExecutor() {
        Field field;
        try {
            field = AsyncTask.class.getField("THREAD_POOL_EXECUTOR");
            if (field == null) {
                return null;
            }
        }
        catch (NoSuchFieldException ex) {
            return null;
        }
        Object value;
        try {
            value = field.get(null);
            if (value == null) {
                return null;
            }
        }
        catch (IllegalAccessException ex2) {
            return null;
        }
        if (!(value instanceof Executor)) {
            return null;
        }
        return (Executor)value;
    }
    
    public static String getAttributionId(final ContentResolver contentResolver) {
        final Cursor query = contentResolver.query(Settings.ATTRIBUTION_ID_CONTENT_URI, new String[] { "aid" }, (String)null, (String[])null, (String)null);
        if (query == null || !query.moveToFirst()) {
            return null;
        }
        final String string = query.getString(query.getColumnIndex("aid"));
        query.close();
        return string;
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
    
    public static final Set getLoggingBehaviors() {
        synchronized (Settings.loggingBehaviors) {
            return Collections.unmodifiableSet((Set<?>)new HashSet<Object>(Settings.loggingBehaviors));
        }
    }
    
    public static String getMigrationBundle() {
        return "fbsdk:20121026";
    }
    
    public static String getSdkVersion() {
        return "3.0.1";
    }
    
    public static boolean getShouldAutoPublishInstall() {
        return Settings.shouldAutoPublishInstall;
    }
    
    public static final boolean isLoggingBehaviorEnabled(final LoggingBehavior o) {
        synchronized (Settings.loggingBehaviors) {
            return b.e && Settings.loggingBehaviors.contains(o);
        }
    }
    
    public static boolean publishInstallAndWait(final Context context, final String s) {
        final Response publishInstallAndWaitForResponse = publishInstallAndWaitForResponse(context, s);
        return publishInstallAndWaitForResponse != null && publishInstallAndWaitForResponse.getError() == null;
    }
    
    public static Response publishInstallAndWaitForResponse(final Context context, final String s) {
        Label_0044: {
            if (context != null) {
                if (s != null) {
                    break Label_0044;
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
        final GraphObject create = GraphObject$Factory.create();
        create.setProperty("event", "MOBILE_APP_INSTALL");
        create.setProperty("attribution", attributionId);
        final Request postRequest = Request.newPostRequest(null, String.format("%s/activities", s), create, null);
        while (true) {
            Label_0259: {
                if (long1 == 0L) {
                    break Label_0259;
                }
                if (string3 == null) {
                    break Label_0259;
                }
                try {
                    final GraphObject create2 = GraphObject$Factory.create(new JSONObject(string3));
                    if (create2 == null) {
                        return (Response)Response.createResponsesFromString("true", null, new RequestBatch(new Request[] { postRequest }), true).get(0);
                    }
                    return new Response(null, null, create2, true);
                    // iftrue(Label_0365:, executeAndWait.getGraphObject() == null || executeAndWait.getGraphObject().getInnerJSONObject() == null)
                    while (true) {
                        final SharedPreferences$Editor edit;
                        edit.commit();
                        return;
                        Label_0292: {
                            executeAndWait = postRequest.executeAndWait();
                        }
                        edit = sharedPreferences.edit();
                        edit.putLong(string, System.currentTimeMillis());
                        edit.putString(string2, executeAndWait.getGraphObject().getInnerJSONObject().toString());
                        continue;
                    }
                    // iftrue(Label_0274:, attributionId != null)
                    throw new FacebookException("No attribution id returned from the Facebook application");
                    Label_0274: {
                        throw new FacebookException("Install attribution has been disabled on the server.");
                    }
                }
                // iftrue(Label_0292:, Utility.queryAppAttributionSupportAndWait(s))
                catch (JSONException ex2) {}
            }
            final GraphObject create2 = null;
            continue;
        }
    }
    
    public static void publishInstallAsync(final Context context, final String s) {
        publishInstallAsync(context, s, null);
    }
    
    public static void publishInstallAsync(final Context context, final String s, final Request$Callback request$Callback) {
        getExecutor().execute(new Settings$2(context.getApplicationContext(), s, request$Callback));
    }
    
    public static final void removeLoggingBehavior(final LoggingBehavior o) {
        synchronized (Settings.loggingBehaviors) {
            Settings.loggingBehaviors.remove(o);
        }
    }
    
    public static void setExecutor(final Executor executor) {
        Validate.notNull(executor, "executor");
        synchronized (Settings.LOCK) {
            Settings.executor = executor;
        }
    }
    
    public static void setShouldAutoPublishInstall(final boolean shouldAutoPublishInstall) {
        Settings.shouldAutoPublishInstall = shouldAutoPublishInstall;
    }
}
