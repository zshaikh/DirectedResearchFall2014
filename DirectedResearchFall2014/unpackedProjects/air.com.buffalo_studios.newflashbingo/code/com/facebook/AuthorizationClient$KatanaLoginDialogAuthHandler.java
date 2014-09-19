package com.facebook;

import android.content.*;
import org.json.*;
import android.os.*;
import com.facebook.internal.*;
import java.util.*;
import android.text.*;

class AuthorizationClient$KatanaLoginDialogAuthHandler extends AuthorizationClient$KatanaAuthHandler
{
    private static final long serialVersionUID = 1L;
    private String applicationId;
    private String callId;
    final /* synthetic */ AuthorizationClient this$0;
    
    AuthorizationClient$KatanaLoginDialogAuthHandler(final AuthorizationClient this$0) {
        this.this$0 = this$0;
        super(this$0);
    }
    
    private AuthorizationClient$Result createCancelOrErrorResult(final AuthorizationClient$AuthorizationRequest authorizationClient$AuthorizationRequest, final Intent intent) {
        final Bundle extras = intent.getExtras();
        final String string = extras.getString("com.facebook.platform.status.ERROR_TYPE");
        if ("UserCanceled".equals(string) || "PermissionDenied".equals(string)) {
            return AuthorizationClient$Result.createCancelResult(authorizationClient$AuthorizationRequest, intent.getStringExtra("com.facebook.platform.status.ERROR_DESCRIPTION"));
        }
        final String string2 = extras.getString("com.facebook.platform.status.ERROR_JSON");
        while (true) {
            Label_0094: {
                if (string2 == null) {
                    break Label_0094;
                }
                try {
                    final String string3 = new JSONObject(string2).getString("error_code");
                    return AuthorizationClient$Result.createErrorResult(authorizationClient$AuthorizationRequest, string, intent.getStringExtra("com.facebook.platform.status.ERROR_DESCRIPTION"), string3);
                }
                catch (JSONException ex) {}
            }
            final String string3 = null;
            continue;
        }
    }
    
    private AuthorizationClient$Result handleResultOk(final Intent intent) {
        final Bundle extras = intent.getExtras();
        final String string = extras.getString("com.facebook.platform.status.ERROR_TYPE");
        if (string == null) {
            return AuthorizationClient$Result.createTokenResult(this.this$0.pendingRequest, AccessToken.createFromNativeLogin(extras, AccessTokenSource.FACEBOOK_APPLICATION_NATIVE));
        }
        if ("ServiceDisabled".equals(string)) {
            this.addLoggingExtra("service_disabled", "1");
            return null;
        }
        return this.createCancelOrErrorResult(this.this$0.pendingRequest, intent);
    }
    
    private void logEvent(final String s, final String s2, final String s3) {
        if (s3 != null) {
            final AppEventsLogger logger = AppEventsLogger.newLogger(this.this$0.context, this.applicationId);
            final Bundle bundle = new Bundle();
            bundle.putString("app_id", this.applicationId);
            bundle.putString("action_id", s3);
            bundle.putLong(s2, System.currentTimeMillis());
            logger.logSdkEvent(s, null, bundle);
        }
    }
    
    @Override
    String getNameForLogging() {
        return "katana_login_dialog";
    }
    
    @Override
    boolean onActivityResult(final int n, final int n2, final Intent intent) {
        this.logEvent("fb_dialogs_native_login_dialog_complete", "fb_native_login_dialog_complete_time", this.callId);
        AuthorizationClient$Result authorizationClient$Result;
        if (intent == null) {
            authorizationClient$Result = AuthorizationClient$Result.createCancelResult(this.this$0.pendingRequest, "Operation canceled");
        }
        else if (NativeProtocol.isServiceDisabledResult20121101(intent)) {
            authorizationClient$Result = null;
        }
        else if (n2 == 0) {
            authorizationClient$Result = this.createCancelOrErrorResult(this.this$0.pendingRequest, intent);
        }
        else if (n2 != -1) {
            authorizationClient$Result = AuthorizationClient$Result.createErrorResult(this.this$0.pendingRequest, "Unexpected resultCode from authorization.", null);
        }
        else {
            authorizationClient$Result = this.handleResultOk(intent);
        }
        if (authorizationClient$Result != null) {
            this.this$0.completeAndValidate(authorizationClient$Result);
        }
        else {
            this.this$0.tryNextHandler();
        }
        return true;
    }
    
    @Override
    boolean tryAuthorize(final AuthorizationClient$AuthorizationRequest authorizationClient$AuthorizationRequest) {
        this.applicationId = authorizationClient$AuthorizationRequest.getApplicationId();
        final Intent loginDialog20121101Intent = NativeProtocol.createLoginDialog20121101Intent(this.this$0.context, authorizationClient$AuthorizationRequest.getApplicationId(), new ArrayList<String>(authorizationClient$AuthorizationRequest.getPermissions()), authorizationClient$AuthorizationRequest.getDefaultAudience().getNativeProtocolAudience());
        if (loginDialog20121101Intent == null) {
            return false;
        }
        this.addLoggingExtra("call_id", this.callId = loginDialog20121101Intent.getStringExtra("com.facebook.platform.protocol.CALL_ID"));
        this.addLoggingExtra("protocol_version", loginDialog20121101Intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0));
        this.addLoggingExtra("permissions", TextUtils.join((CharSequence)",", (Iterable)loginDialog20121101Intent.getStringArrayListExtra("com.facebook.platform.extra.PERMISSIONS")));
        this.addLoggingExtra("write_privacy", loginDialog20121101Intent.getStringExtra("com.facebook.platform.extra.WRITE_PRIVACY"));
        this.logEvent("fb_dialogs_native_login_dialog_start", "fb_native_login_dialog_start_time", this.callId);
        return this.tryIntent(loginDialog20121101Intent, authorizationClient$AuthorizationRequest.getRequestCode());
    }
}
