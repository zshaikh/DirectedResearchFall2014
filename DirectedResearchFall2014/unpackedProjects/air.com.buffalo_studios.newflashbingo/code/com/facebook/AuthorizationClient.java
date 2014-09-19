package com.facebook;

import java.io.*;
import org.json.*;
import java.util.*;
import android.os.*;
import com.facebook.android.*;
import android.content.*;
import android.app.*;

class AuthorizationClient implements Serializable
{
    static final String EVENT_EXTRAS_APP_CALL_ID = "call_id";
    static final String EVENT_EXTRAS_DEFAULT_AUDIENCE = "default_audience";
    static final String EVENT_EXTRAS_IS_LEGACY = "is_legacy";
    static final String EVENT_EXTRAS_LOGIN_BEHAVIOR = "login_behavior";
    static final String EVENT_EXTRAS_MISSING_INTERNET_PERMISSION = "no_internet_permission";
    static final String EVENT_EXTRAS_NEW_PERMISSIONS = "new_permissions";
    static final String EVENT_EXTRAS_NOT_TRIED = "not_tried";
    static final String EVENT_EXTRAS_PERMISSIONS = "permissions";
    static final String EVENT_EXTRAS_PROTOCOL_VERSION = "protocol_version";
    static final String EVENT_EXTRAS_REQUEST_CODE = "request_code";
    static final String EVENT_EXTRAS_SERVICE_DISABLED = "service_disabled";
    static final String EVENT_EXTRAS_TRY_LEGACY = "try_legacy";
    static final String EVENT_EXTRAS_TRY_LOGIN_ACTIVITY = "try_login_activity";
    static final String EVENT_EXTRAS_WRITE_PRIVACY = "write_privacy";
    static final String EVENT_NAME_LOGIN_COMPLETE = "fb_mobile_login_complete";
    private static final String EVENT_NAME_LOGIN_METHOD_COMPLETE = "fb_mobile_login_method_complete";
    private static final String EVENT_NAME_LOGIN_METHOD_START = "fb_mobile_login_method_start";
    static final String EVENT_NAME_LOGIN_START = "fb_mobile_login_start";
    static final String EVENT_PARAM_AUTH_LOGGER_ID = "0_auth_logger_id";
    static final String EVENT_PARAM_ERROR_CODE = "4_error_code";
    static final String EVENT_PARAM_ERROR_MESSAGE = "5_error_message";
    static final String EVENT_PARAM_EXTRAS = "6_extras";
    static final String EVENT_PARAM_LOGIN_RESULT = "2_result";
    static final String EVENT_PARAM_METHOD = "3_method";
    private static final String EVENT_PARAM_METHOD_RESULT_SKIPPED = "skipped";
    static final String EVENT_PARAM_TIMESTAMP = "1_timestamp_ms";
    private static final String TAG = "Facebook-AuthorizationClient";
    private static final String WEB_VIEW_AUTH_HANDLER_STORE = "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY";
    private static final String WEB_VIEW_AUTH_HANDLER_TOKEN_KEY = "TOKEN";
    private static final long serialVersionUID = 1L;
    private transient AppEventsLogger appEventsLogger;
    transient AuthorizationClient$BackgroundProcessingListener backgroundProcessingListener;
    transient boolean checkedInternetPermission;
    transient Context context;
    AuthorizationClient$AuthHandler currentHandler;
    List<AuthorizationClient$AuthHandler> handlersToTry;
    Map<String, String> loggingExtras;
    transient AuthorizationClient$OnCompletedListener onCompletedListener;
    AuthorizationClient$AuthorizationRequest pendingRequest;
    transient AuthorizationClient$StartActivityDelegate startActivityDelegate;
    
    private void addLoggingExtra(final String s, final String str, final boolean b) {
        if (this.loggingExtras == null) {
            this.loggingExtras = new HashMap<String, String>();
        }
        String string;
        if (this.loggingExtras.containsKey(s) && b) {
            string = this.loggingExtras.get(s) + "," + str;
        }
        else {
            string = str;
        }
        this.loggingExtras.put(s, string);
    }
    
    private void completeWithFailure() {
        this.complete(AuthorizationClient$Result.createErrorResult(this.pendingRequest, "Login attempt failed.", null));
    }
    
    private AppEventsLogger getAppEventsLogger() {
        if (this.appEventsLogger == null || this.appEventsLogger.getApplicationId() != this.pendingRequest.getApplicationId()) {
            this.appEventsLogger = AppEventsLogger.newLogger(this.context, this.pendingRequest.getApplicationId());
        }
        return this.appEventsLogger;
    }
    
    private static String getE2E() {
        final JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("init", System.currentTimeMillis());
            return jsonObject.toString();
        }
        catch (JSONException ex) {
            return jsonObject.toString();
        }
    }
    
    private List<AuthorizationClient$AuthHandler> getHandlerTypes(final AuthorizationClient$AuthorizationRequest authorizationClient$AuthorizationRequest) {
        final ArrayList<AuthorizationClient$GetTokenAuthHandler> list = (ArrayList<AuthorizationClient$GetTokenAuthHandler>)new ArrayList<AuthorizationClient$AuthHandler>();
        final SessionLoginBehavior loginBehavior = authorizationClient$AuthorizationRequest.getLoginBehavior();
        if (loginBehavior.allowsKatanaAuth()) {
            if (!authorizationClient$AuthorizationRequest.isLegacy()) {
                list.add(new AuthorizationClient$GetTokenAuthHandler(this));
                list.add((AuthorizationClient$GetTokenAuthHandler)new AuthorizationClient$KatanaLoginDialogAuthHandler(this));
            }
            list.add((AuthorizationClient$GetTokenAuthHandler)new AuthorizationClient$KatanaProxyAuthHandler(this));
        }
        if (loginBehavior.allowsWebViewAuth()) {
            list.add((AuthorizationClient$GetTokenAuthHandler)new AuthorizationClient$WebViewAuthHandler(this));
        }
        return (List<AuthorizationClient$AuthHandler>)list;
    }
    
    private void logAuthorizationMethodComplete(final String s, final AuthorizationClient$Result authorizationClient$Result, final Map<String, String> map) {
        this.logAuthorizationMethodComplete(s, authorizationClient$Result.code.getLoggingValue(), authorizationClient$Result.errorMessage, authorizationClient$Result.errorCode, map);
    }
    
    private void logAuthorizationMethodComplete(final String s, final String s2, final String s3, final String s4, final Map<String, String> map) {
        Bundle bundle;
        if (this.pendingRequest == null) {
            bundle = newAuthorizationLoggingBundle("");
            bundle.putString("2_result", AuthorizationClient$Result$Code.ERROR.getLoggingValue());
            bundle.putString("5_error_message", "Unexpected call to logAuthorizationMethodComplete with null pendingRequest.");
        }
        else {
            bundle = newAuthorizationLoggingBundle(this.pendingRequest.getAuthId());
            if (s2 != null) {
                bundle.putString("2_result", s2);
            }
            if (s3 != null) {
                bundle.putString("5_error_message", s3);
            }
            if (s4 != null) {
                bundle.putString("4_error_code", s4);
            }
            if (map != null && !map.isEmpty()) {
                bundle.putString("6_extras", new JSONObject((Map)map).toString());
            }
        }
        bundle.putString("3_method", s);
        bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        this.getAppEventsLogger().logSdkEvent("fb_mobile_login_method_complete", null, bundle);
    }
    
    private void logAuthorizationMethodStart(final String s) {
        final Bundle authorizationLoggingBundle = newAuthorizationLoggingBundle(this.pendingRequest.getAuthId());
        authorizationLoggingBundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        authorizationLoggingBundle.putString("3_method", s);
        this.getAppEventsLogger().logSdkEvent("fb_mobile_login_method_start", null, authorizationLoggingBundle);
    }
    
    private void logWebLoginCompleted(final String s, final String s2) {
        final AppEventsLogger logger = AppEventsLogger.newLogger(this.context, s);
        final Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", s2);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString("app_id", s);
        logger.logSdkEvent("fb_dialogs_web_login_dialog_complete", null, bundle);
    }
    
    static Bundle newAuthorizationLoggingBundle(final String s) {
        final Bundle bundle = new Bundle();
        bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        bundle.putString("0_auth_logger_id", s);
        bundle.putString("3_method", "");
        bundle.putString("2_result", "");
        bundle.putString("5_error_message", "");
        bundle.putString("4_error_code", "");
        bundle.putString("6_extras", "");
        return bundle;
    }
    
    private void notifyBackgroundProcessingStart() {
        if (this.backgroundProcessingListener != null) {
            this.backgroundProcessingListener.onBackgroundProcessingStarted();
        }
    }
    
    private void notifyBackgroundProcessingStop() {
        if (this.backgroundProcessingListener != null) {
            this.backgroundProcessingListener.onBackgroundProcessingStopped();
        }
    }
    
    private void notifyOnCompleteListener(final AuthorizationClient$Result authorizationClient$Result) {
        if (this.onCompletedListener != null) {
            this.onCompletedListener.onCompleted(authorizationClient$Result);
        }
    }
    
    void authorize(final AuthorizationClient$AuthorizationRequest pendingRequest) {
        if (pendingRequest != null) {
            if (this.pendingRequest != null) {
                throw new FacebookException("Attempted to authorize while a request is pending.");
            }
            if (!pendingRequest.needsNewTokenValidation() || this.checkInternetPermission()) {
                this.pendingRequest = pendingRequest;
                this.handlersToTry = this.getHandlerTypes(pendingRequest);
                this.tryNextHandler();
            }
        }
    }
    
    void cancelCurrentHandler() {
        if (this.currentHandler != null) {
            this.currentHandler.cancel();
        }
    }
    
    boolean checkInternetPermission() {
        if (this.checkedInternetPermission) {
            return true;
        }
        if (this.checkPermission("android.permission.INTERNET") != 0) {
            this.complete(AuthorizationClient$Result.createErrorResult(this.pendingRequest, this.context.getString(R.string.com_facebook_internet_permission_error_title), this.context.getString(R.string.com_facebook_internet_permission_error_message)));
            return false;
        }
        return this.checkedInternetPermission = true;
    }
    
    int checkPermission(final String s) {
        return this.context.checkCallingOrSelfPermission(s);
    }
    
    void complete(final AuthorizationClient$Result authorizationClient$Result) {
        if (this.currentHandler != null) {
            this.logAuthorizationMethodComplete(this.currentHandler.getNameForLogging(), authorizationClient$Result, this.currentHandler.methodLoggingExtras);
        }
        if (this.loggingExtras != null) {
            authorizationClient$Result.loggingExtras = this.loggingExtras;
        }
        this.handlersToTry = null;
        this.currentHandler = null;
        this.pendingRequest = null;
        this.loggingExtras = null;
        this.notifyOnCompleteListener(authorizationClient$Result);
    }
    
    void completeAndValidate(final AuthorizationClient$Result authorizationClient$Result) {
        if (authorizationClient$Result.token != null && this.pendingRequest.needsNewTokenValidation()) {
            this.validateSameFbidAndFinish(authorizationClient$Result);
            return;
        }
        this.complete(authorizationClient$Result);
    }
    
    void continueAuth() {
        if (this.pendingRequest == null || this.currentHandler == null) {
            throw new FacebookException("Attempted to continue authorization without a pending request.");
        }
        if (this.currentHandler.needsRestart()) {
            this.currentHandler.cancel();
            this.tryCurrentHandler();
        }
    }
    
    Request createGetPermissionsRequest(final String s) {
        final Bundle bundle = new Bundle();
        bundle.putString("fields", "id");
        bundle.putString("access_token", s);
        return new Request(null, "me/permissions", bundle, HttpMethod.GET, null);
    }
    
    Request createGetProfileIdRequest(final String s) {
        final Bundle bundle = new Bundle();
        bundle.putString("fields", "id");
        bundle.putString("access_token", s);
        return new Request(null, "me", bundle, HttpMethod.GET, null);
    }
    
    RequestBatch createReauthValidationBatch(final AuthorizationClient$Result authorizationClient$Result) {
        final ArrayList list = new ArrayList();
        final ArrayList list2 = new ArrayList();
        final String token = authorizationClient$Result.token.getToken();
        final AuthorizationClient$3 authorizationClient$3 = new AuthorizationClient$3(this, list);
        final String previousAccessToken = this.pendingRequest.getPreviousAccessToken();
        final Request getProfileIdRequest = this.createGetProfileIdRequest(previousAccessToken);
        getProfileIdRequest.setCallback(authorizationClient$3);
        final Request getProfileIdRequest2 = this.createGetProfileIdRequest(token);
        getProfileIdRequest2.setCallback(authorizationClient$3);
        final Request getPermissionsRequest = this.createGetPermissionsRequest(previousAccessToken);
        getPermissionsRequest.setCallback(new AuthorizationClient$4(this, list2));
        final RequestBatch requestBatch = new RequestBatch(new Request[] { getProfileIdRequest, getProfileIdRequest2, getPermissionsRequest });
        requestBatch.setBatchApplicationId(this.pendingRequest.getApplicationId());
        requestBatch.addCallback(new AuthorizationClient$5(this, list, authorizationClient$Result, list2));
        return requestBatch;
    }
    
    AuthorizationClient$BackgroundProcessingListener getBackgroundProcessingListener() {
        return this.backgroundProcessingListener;
    }
    
    boolean getInProgress() {
        return this.pendingRequest != null && this.currentHandler != null;
    }
    
    AuthorizationClient$OnCompletedListener getOnCompletedListener() {
        return this.onCompletedListener;
    }
    
    AuthorizationClient$StartActivityDelegate getStartActivityDelegate() {
        if (this.startActivityDelegate != null) {
            return this.startActivityDelegate;
        }
        if (this.pendingRequest != null) {
            return new AuthorizationClient$2(this);
        }
        return null;
    }
    
    boolean onActivityResult(final int n, final int n2, final Intent intent) {
        return n == this.pendingRequest.getRequestCode() && this.currentHandler.onActivityResult(n, n2, intent);
    }
    
    void setBackgroundProcessingListener(final AuthorizationClient$BackgroundProcessingListener backgroundProcessingListener) {
        this.backgroundProcessingListener = backgroundProcessingListener;
    }
    
    void setContext(final Activity context) {
        this.context = (Context)context;
        this.startActivityDelegate = new AuthorizationClient$1(this, context);
    }
    
    void setContext(final Context context) {
        this.context = context;
        this.startActivityDelegate = null;
    }
    
    void setOnCompletedListener(final AuthorizationClient$OnCompletedListener onCompletedListener) {
        this.onCompletedListener = onCompletedListener;
    }
    
    void startOrContinueAuth(final AuthorizationClient$AuthorizationRequest authorizationClient$AuthorizationRequest) {
        if (this.getInProgress()) {
            this.continueAuth();
            return;
        }
        this.authorize(authorizationClient$AuthorizationRequest);
    }
    
    boolean tryCurrentHandler() {
        if (this.currentHandler.needsInternetPermission() && !this.checkInternetPermission()) {
            this.addLoggingExtra("no_internet_permission", "1", false);
            return false;
        }
        final boolean tryAuthorize = this.currentHandler.tryAuthorize(this.pendingRequest);
        if (tryAuthorize) {
            this.logAuthorizationMethodStart(this.currentHandler.getNameForLogging());
            return tryAuthorize;
        }
        this.addLoggingExtra("not_tried", this.currentHandler.getNameForLogging(), true);
        return tryAuthorize;
    }
    
    void tryNextHandler() {
        if (this.currentHandler != null) {
            this.logAuthorizationMethodComplete(this.currentHandler.getNameForLogging(), "skipped", null, null, this.currentHandler.methodLoggingExtras);
        }
        while (this.handlersToTry != null && !this.handlersToTry.isEmpty()) {
            this.currentHandler = this.handlersToTry.remove(0);
            if (this.tryCurrentHandler()) {
                return;
            }
        }
        if (this.pendingRequest != null) {
            this.completeWithFailure();
        }
    }
    
    void validateSameFbidAndFinish(final AuthorizationClient$Result authorizationClient$Result) {
        if (authorizationClient$Result.token == null) {
            throw new FacebookException("Can't validate without a token");
        }
        final RequestBatch reauthValidationBatch = this.createReauthValidationBatch(authorizationClient$Result);
        this.notifyBackgroundProcessingStart();
        reauthValidationBatch.executeAsync();
    }
}
