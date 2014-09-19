package com.facebook;

import android.net.*;
import android.app.*;
import android.util.*;
import org.json.*;
import android.content.*;
import com.facebook.internal.*;
import android.os.*;

public class AppLinkData
{
    private static final String APPLINK_BRIDGE_ARGS_KEY = "bridge_args";
    private static final String APPLINK_METHOD_ARGS_KEY = "method_args";
    private static final String APPLINK_VERSION_KEY = "version";
    public static final String ARGUMENTS_TAPTIME_KEY = "com.facebook.platform.APPLINK_TAP_TIME_UTC";
    private static final String BRIDGE_ARGS_METHOD_KEY = "method";
    private static final String BUNDLE_APPLINK_ARGS_KEY = "com.facebook.platform.APPLINK_ARGS";
    private static final String METHOD_ARGS_REF_KEY = "ref";
    private static final String METHOD_ARGS_TARGET_URL_KEY = "target_url";
    private static final String TAG;
    private JSONObject arguments;
    private String[] ref;
    private Uri targetUri;
    private String version;
    
    static {
        TAG = AppLinkData.class.getCanonicalName();
    }
    
    public static AppLinkData createFromActivity(final Activity activity) {
        Validate.notNull(activity, "activity");
        final Intent intent = activity.getIntent();
        if (intent == null) {
            return null;
        }
        AppLinkData appLinkData = createFromJson(intent.getStringExtra("com.facebook.platform.APPLINK_ARGS"));
        if (appLinkData == null) {
            appLinkData = createFromUri(intent.getData());
        }
        return appLinkData;
    }
    
    private static AppLinkData createFromJson(final String s) {
        if (s == null) {
            return null;
        }
        try {
            final JSONObject jsonObject = new JSONObject(s);
            final String string = jsonObject.getString("version");
            if (jsonObject.getJSONObject("bridge_args").getString("method").equals("applink") && string.equals("2")) {
                final AppLinkData appLinkData = new AppLinkData();
                appLinkData.version = string;
                appLinkData.arguments = jsonObject.getJSONObject("method_args");
                if (appLinkData.arguments.has("ref")) {
                    final String string2 = appLinkData.arguments.getString("ref");
                    if (string2 != null) {
                        appLinkData.ref = string2.split(",");
                    }
                }
                if (appLinkData.arguments.has("target_url")) {
                    appLinkData.targetUri = Uri.parse(appLinkData.arguments.getString("target_url"));
                }
                return appLinkData;
            }
        }
        catch (JSONException ex) {
            Log.d(AppLinkData.TAG, "Unable to parse AppLink JSON");
        }
        return null;
    }
    
    private static AppLinkData createFromUri(final Uri uri) {
        if (uri == null) {
            return null;
        }
        return null;
    }
    
    public static void fetchDeferredAppLinkData(final Context context, final CompletionHandler completionHandler) {
        fetchDeferredAppLinkData(context, null, completionHandler);
    }
    
    public static void fetchDeferredAppLinkData(final Context context, String metadataApplicationId, final CompletionHandler completionHandler) {
        Validate.notNull(context, "context");
        Validate.notNull(completionHandler, "completionHandler");
        if (metadataApplicationId == null) {
            metadataApplicationId = Utility.getMetadataApplicationId(context);
        }
        Validate.notNull(metadataApplicationId, "applicationId");
        final DeferredAppLinkDataClient deferredAppLinkDataClient = new DeferredAppLinkDataClient(context, metadataApplicationId);
        deferredAppLinkDataClient.setCompletedListener((PlatformServiceClient.CompletedListener)new PlatformServiceClient.CompletedListener() {
            @Override
            public void completed(final Bundle bundle) {
                AppLinkData access$0 = null;
                while (true) {
                    if (bundle == null) {
                        break Label_0050;
                    }
                    final String string = bundle.getString("com.facebook.platform.APPLINK_ARGS");
                    final long long1 = bundle.getLong("com.facebook.platform.APPLINK_TAP_TIME_UTC", -1L);
                    access$0 = createFromJson(string);
                    if (long1 == -1L) {
                        break Label_0050;
                    }
                    try {
                        access$0.getArguments().put("com.facebook.platform.APPLINK_TAP_TIME_UTC", long1);
                        completionHandler.onDeferredAppLinkDataFetched(access$0);
                    }
                    catch (JSONException ex) {
                        Log.d(AppLinkData.TAG, "Unable to put tap time in AppLinkData.arguments");
                        continue;
                    }
                    break;
                }
            }
        });
        if (!deferredAppLinkDataClient.start()) {
            new Handler(Looper.getMainLooper()).post((Runnable)new Runnable() {
                @Override
                public void run() {
                    completionHandler.onDeferredAppLinkDataFetched(null);
                }
            });
        }
    }
    
    public JSONObject getArguments() {
        return this.arguments;
    }
    
    public String[] getRef() {
        return this.ref;
    }
    
    public Uri getTargetUri() {
        return this.targetUri;
    }
    
    public interface CompletionHandler
    {
        void onDeferredAppLinkDataFetched(AppLinkData p0);
    }
    
    static final class DeferredAppLinkDataClient extends PlatformServiceClient
    {
        DeferredAppLinkDataClient(final Context context, final String s) {
            super(context, 65540, 65541, 20130618, s);
        }
        
        @Override
        protected void populateRequestBundle(final Bundle bundle) {
            bundle.putString("com.facebook.platform.extra.INSTALLDATA_PACKAGE", this.getContext().getPackageName());
        }
    }
}
