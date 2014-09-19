package com.facebook;

import android.net.*;
import android.app.*;
import android.util.*;
import android.content.*;
import com.facebook.internal.*;
import org.json.*;
import android.os.*;
import java.util.*;

public class AppLinkData
{
    private static final String APPLINK_BRIDGE_ARGS_KEY = "bridge_args";
    private static final String APPLINK_METHOD_ARGS_KEY = "method_args";
    private static final String APPLINK_VERSION_KEY = "version";
    public static final String ARGUMENTS_REFERER_DATA_KEY = "referer_data";
    public static final String ARGUMENTS_TAPTIME_KEY = "com.facebook.platform.APPLINK_TAP_TIME_UTC";
    private static final String BRIDGE_ARGS_METHOD_KEY = "method";
    private static final String BUNDLE_AL_APPLINK_DATA_KEY = "al_applink_data";
    static final String BUNDLE_APPLINK_ARGS_KEY = "com.facebook.platform.APPLINK_ARGS";
    private static final String METHOD_ARGS_REF_KEY = "ref";
    private static final String METHOD_ARGS_TARGET_URL_KEY = "target_url";
    private static final String REFERER_DATA_REF_KEY = "fb_ref";
    private static final String TAG;
    private Bundle argumentBundle;
    private JSONObject arguments;
    private String ref;
    private Uri targetUri;
    
    static {
        TAG = AppLinkData.class.getCanonicalName();
    }
    
    public static AppLinkData createFromActivity(final Activity activity) {
        Validate.notNull(activity, "activity");
        final Intent intent = activity.getIntent();
        if (intent == null) {
            return null;
        }
        AppLinkData appLinkData = createFromAlApplinkData(intent);
        if (appLinkData == null) {
            appLinkData = createFromJson(intent.getStringExtra("com.facebook.platform.APPLINK_ARGS"));
        }
        if (appLinkData == null) {
            return createFromUri(intent.getData());
        }
        return appLinkData;
    }
    
    private static AppLinkData createFromAlApplinkData(final Intent intent) {
        final Bundle bundleExtra = intent.getBundleExtra("al_applink_data");
        if (bundleExtra == null) {
            return null;
        }
        final AppLinkData appLinkData = new AppLinkData();
        appLinkData.targetUri = intent.getData();
        if (appLinkData.targetUri == null) {
            final String string = bundleExtra.getString("target_url");
            if (string != null) {
                appLinkData.targetUri = Uri.parse(string);
            }
        }
        appLinkData.argumentBundle = bundleExtra;
        appLinkData.arguments = null;
        final Bundle bundle = bundleExtra.getBundle("referer_data");
        if (bundle != null) {
            appLinkData.ref = bundle.getString("fb_ref");
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
                appLinkData.arguments = jsonObject.getJSONObject("method_args");
                if (appLinkData.arguments.has("ref")) {
                    appLinkData.ref = appLinkData.arguments.getString("ref");
                }
                else if (appLinkData.arguments.has("referer_data")) {
                    final JSONObject jsonObject2 = appLinkData.arguments.getJSONObject("referer_data");
                    if (jsonObject2.has("fb_ref")) {
                        appLinkData.ref = jsonObject2.getString("fb_ref");
                    }
                }
                if (appLinkData.arguments.has("target_url")) {
                    appLinkData.targetUri = Uri.parse(appLinkData.arguments.getString("target_url"));
                }
                appLinkData.argumentBundle = toBundle(appLinkData.arguments);
                return appLinkData;
            }
            goto Label_0210;
        }
        catch (JSONException ex) {
            Log.d(AppLinkData.TAG, "Unable to parse AppLink JSON", (Throwable)ex);
        }
        catch (FacebookException ex2) {
            Log.d(AppLinkData.TAG, "Unable to parse AppLink JSON", (Throwable)ex2);
            goto Label_0210;
        }
    }
    
    private static AppLinkData createFromUri(final Uri targetUri) {
        if (targetUri == null) {
            return null;
        }
        final AppLinkData appLinkData = new AppLinkData();
        appLinkData.targetUri = targetUri;
        return appLinkData;
    }
    
    public static void fetchDeferredAppLinkData(final Context context, final AppLinkData$CompletionHandler appLinkData$CompletionHandler) {
        fetchDeferredAppLinkData(context, null, appLinkData$CompletionHandler);
    }
    
    public static void fetchDeferredAppLinkData(final Context context, final String s, final AppLinkData$CompletionHandler appLinkData$CompletionHandler) {
        Validate.notNull(context, "context");
        Validate.notNull(appLinkData$CompletionHandler, "completionHandler");
        String metadataApplicationId;
        if (s == null) {
            metadataApplicationId = Utility.getMetadataApplicationId(context);
        }
        else {
            metadataApplicationId = s;
        }
        Validate.notNull(metadataApplicationId, "applicationId");
        final AppLinkData$DeferredAppLinkDataClient appLinkData$DeferredAppLinkDataClient = new AppLinkData$DeferredAppLinkDataClient(context, metadataApplicationId);
        appLinkData$DeferredAppLinkDataClient.setCompletedListener(new AppLinkData$1(appLinkData$CompletionHandler));
        if (!appLinkData$DeferredAppLinkDataClient.start()) {
            new Handler(Looper.getMainLooper()).post((Runnable)new AppLinkData$2(appLinkData$CompletionHandler));
        }
    }
    
    private static Bundle toBundle(final JSONObject jsonObject) {
        final Bundle bundle = new Bundle();
        final Iterator keys = jsonObject.keys();
        while (keys.hasNext()) {
            final String s = keys.next();
            final Object value = jsonObject.get(s);
            if (value instanceof JSONObject) {
                bundle.putBundle(s, toBundle((JSONObject)value));
            }
            else if (value instanceof JSONArray) {
                final JSONArray jsonArray = (JSONArray)value;
                if (jsonArray.length() == 0) {
                    bundle.putStringArray(s, new String[0]);
                }
                else {
                    final Object value2 = jsonArray.get(0);
                    if (value2 instanceof JSONObject) {
                        final Bundle[] array = new Bundle[jsonArray.length()];
                        for (int i = 0; i < jsonArray.length(); ++i) {
                            array[i] = toBundle(jsonArray.getJSONObject(i));
                        }
                        bundle.putParcelableArray(s, (Parcelable[])array);
                    }
                    else {
                        if (value2 instanceof JSONArray) {
                            throw new FacebookException("Nested arrays are not supported.");
                        }
                        final String[] array2 = new String[jsonArray.length()];
                        for (int j = 0; j < jsonArray.length(); ++j) {
                            array2[j] = jsonArray.get(j).toString();
                        }
                        bundle.putStringArray(s, array2);
                    }
                }
            }
            else {
                bundle.putString(s, value.toString());
            }
        }
        return bundle;
    }
    
    public Bundle getArgumentBundle() {
        return this.argumentBundle;
    }
    
    @Deprecated
    public JSONObject getArguments() {
        return this.arguments;
    }
    
    public String getRef() {
        return this.ref;
    }
    
    public Bundle getRefererData() {
        if (this.argumentBundle != null) {
            return this.argumentBundle.getBundle("referer_data");
        }
        return null;
    }
    
    public Uri getTargetUri() {
        return this.targetUri;
    }
}
