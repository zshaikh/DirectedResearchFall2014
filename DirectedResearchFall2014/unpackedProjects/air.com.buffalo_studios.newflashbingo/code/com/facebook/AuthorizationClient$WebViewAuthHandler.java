package com.facebook;

import com.facebook.internal.*;
import android.os.*;
import android.webkit.*;
import android.text.*;
import java.io.*;
import org.json.*;
import java.util.*;
import com.facebook.android.*;
import android.content.*;
import android.app.*;
import com.facebook.widget.*;

class AuthorizationClient$WebViewAuthHandler extends AuthorizationClient$AuthHandler
{
    private static final long serialVersionUID = 1L;
    private String applicationId;
    private String e2e;
    private transient WebDialog loginDialog;
    final /* synthetic */ AuthorizationClient this$0;
    
    AuthorizationClient$WebViewAuthHandler(final AuthorizationClient this$0) {
        this.this$0 = this$0;
        super(this$0);
    }
    
    private String loadCookieToken() {
        return ((Context)this.this$0.getStartActivityDelegate().getActivityContext()).getSharedPreferences("com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
    }
    
    private void saveCookieToken(final String s) {
        final SharedPreferences$Editor edit = ((Context)this.this$0.getStartActivityDelegate().getActivityContext()).getSharedPreferences("com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit();
        edit.putString("TOKEN", s);
        if (!edit.commit()) {
            Utility.logd("Facebook-AuthorizationClient", "Could not update saved web view auth handler token.");
        }
    }
    
    @Override
    void cancel() {
        if (this.loginDialog != null) {
            this.loginDialog.dismiss();
            this.loginDialog = null;
        }
    }
    
    @Override
    String getNameForLogging() {
        return "web_view";
    }
    
    @Override
    boolean needsInternetPermission() {
        return true;
    }
    
    @Override
    boolean needsRestart() {
        return true;
    }
    
    void onWebDialogComplete(final AuthorizationClient$AuthorizationRequest authorizationClient$AuthorizationRequest, final Bundle bundle, final FacebookException ex) {
        AuthorizationClient$Result authorizationClient$Result;
        if (bundle != null) {
            if (bundle.containsKey("e2e")) {
                this.e2e = bundle.getString("e2e");
            }
            final AccessToken fromWebBundle = AccessToken.createFromWebBundle(authorizationClient$AuthorizationRequest.getPermissions(), bundle, AccessTokenSource.WEB_VIEW);
            final AuthorizationClient$Result tokenResult = AuthorizationClient$Result.createTokenResult(this.this$0.pendingRequest, fromWebBundle);
            CookieSyncManager.createInstance(this.this$0.context).sync();
            this.saveCookieToken(fromWebBundle.getToken());
            authorizationClient$Result = tokenResult;
        }
        else if (ex instanceof FacebookOperationCanceledException) {
            authorizationClient$Result = AuthorizationClient$Result.createCancelResult(this.this$0.pendingRequest, "User canceled log in.");
        }
        else {
            this.e2e = null;
            final String message = ex.getMessage();
            String string;
            String s;
            if (ex instanceof FacebookServiceException) {
                final FacebookRequestError requestError = ((FacebookServiceException)ex).getRequestError();
                final String format = String.format("%d", requestError.getErrorCode());
                string = requestError.toString();
                s = format;
            }
            else {
                string = message;
                s = null;
            }
            authorizationClient$Result = AuthorizationClient$Result.createErrorResult(this.this$0.pendingRequest, null, string, s);
        }
        if (!Utility.isNullOrEmpty(this.e2e)) {
            this.this$0.logWebLoginCompleted(this.applicationId, this.e2e);
        }
        this.this$0.completeAndValidate(authorizationClient$Result);
    }
    
    @Override
    boolean tryAuthorize(final AuthorizationClient$AuthorizationRequest authorizationClient$AuthorizationRequest) {
        this.applicationId = authorizationClient$AuthorizationRequest.getApplicationId();
        final Bundle bundle = new Bundle();
        if (!Utility.isNullOrEmpty(authorizationClient$AuthorizationRequest.getPermissions())) {
            final String join = TextUtils.join((CharSequence)",", (Iterable)authorizationClient$AuthorizationRequest.getPermissions());
            bundle.putString("scope", join);
            this.addLoggingExtra("scope", join);
        }
        final String previousAccessToken = authorizationClient$AuthorizationRequest.getPreviousAccessToken();
        if (!Utility.isNullOrEmpty(previousAccessToken) && previousAccessToken.equals(this.loadCookieToken())) {
            bundle.putString("access_token", previousAccessToken);
            this.addLoggingExtra("access_token", "1");
        }
        else {
            Utility.clearFacebookCookies(this.this$0.context);
            this.addLoggingExtra("access_token", "0");
        }
        final AuthorizationClient$WebViewAuthHandler$1 onCompleteListener = new AuthorizationClient$WebViewAuthHandler$1(this, authorizationClient$AuthorizationRequest);
        this.addLoggingExtra("e2e", this.e2e = getE2E());
        (this.loginDialog = new AuthorizationClient$AuthDialogBuilder((Context)this.this$0.getStartActivityDelegate().getActivityContext(), this.applicationId, bundle).setE2E(this.e2e).setOnCompleteListener(onCompleteListener).build()).show();
        return true;
    }
}
