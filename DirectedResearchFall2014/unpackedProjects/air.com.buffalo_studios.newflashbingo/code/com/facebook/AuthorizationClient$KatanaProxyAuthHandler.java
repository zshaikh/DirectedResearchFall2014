package com.facebook;

import android.os.*;
import com.facebook.internal.*;
import java.io.*;
import android.content.*;
import org.json.*;
import java.util.*;
import com.facebook.android.*;
import android.app.*;

class AuthorizationClient$KatanaProxyAuthHandler extends AuthorizationClient$KatanaAuthHandler
{
    private static final long serialVersionUID = 1L;
    private String applicationId;
    final /* synthetic */ AuthorizationClient this$0;
    
    AuthorizationClient$KatanaProxyAuthHandler(final AuthorizationClient this$0) {
        this.this$0 = this$0;
        super(this$0);
    }
    
    private AuthorizationClient$Result handleResultOk(final Intent intent) {
        final Bundle extras = intent.getExtras();
        String s = extras.getString("error");
        if (s == null) {
            s = extras.getString("error_type");
        }
        final String string = extras.getString("error_code");
        String s2 = extras.getString("error_message");
        if (s2 == null) {
            s2 = extras.getString("error_description");
        }
        final String string2 = extras.getString("e2e");
        if (!Utility.isNullOrEmpty(string2)) {
            this.this$0.logWebLoginCompleted(this.applicationId, string2);
        }
        if (s == null && string == null && s2 == null) {
            return AuthorizationClient$Result.createTokenResult(this.this$0.pendingRequest, AccessToken.createFromWebBundle(this.this$0.pendingRequest.getPermissions(), extras, AccessTokenSource.FACEBOOK_APPLICATION_WEB));
        }
        if (ServerProtocol.errorsProxyAuthDisabled.contains(s)) {
            return null;
        }
        if (ServerProtocol.errorsUserCanceled.contains(s)) {
            return AuthorizationClient$Result.createCancelResult(this.this$0.pendingRequest, null);
        }
        return AuthorizationClient$Result.createErrorResult(this.this$0.pendingRequest, s, s2, string);
    }
    
    @Override
    String getNameForLogging() {
        return "katana_proxy_auth";
    }
    
    @Override
    boolean onActivityResult(final int n, final int n2, final Intent intent) {
        AuthorizationClient$Result authorizationClient$Result;
        if (intent == null) {
            authorizationClient$Result = AuthorizationClient$Result.createCancelResult(this.this$0.pendingRequest, "Operation canceled");
        }
        else if (n2 == 0) {
            authorizationClient$Result = AuthorizationClient$Result.createCancelResult(this.this$0.pendingRequest, intent.getStringExtra("error"));
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
        final String access$100 = getE2E();
        final Intent proxyAuthIntent = NativeProtocol.createProxyAuthIntent(this.this$0.context, authorizationClient$AuthorizationRequest.getApplicationId(), authorizationClient$AuthorizationRequest.getPermissions(), access$100);
        this.addLoggingExtra("e2e", access$100);
        return this.tryIntent(proxyAuthIntent, authorizationClient$AuthorizationRequest.getRequestCode());
    }
}
