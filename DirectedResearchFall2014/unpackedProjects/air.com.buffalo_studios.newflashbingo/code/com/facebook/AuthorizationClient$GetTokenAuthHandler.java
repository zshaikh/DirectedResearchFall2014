package com.facebook;

import android.os.*;
import android.text.*;
import com.facebook.internal.*;
import java.io.*;
import java.util.*;
import org.json.*;
import com.facebook.android.*;
import android.content.*;
import android.app.*;

class AuthorizationClient$GetTokenAuthHandler extends AuthorizationClient$AuthHandler
{
    private static final long serialVersionUID = 1L;
    private transient GetTokenClient getTokenClient;
    final /* synthetic */ AuthorizationClient this$0;
    
    AuthorizationClient$GetTokenAuthHandler(final AuthorizationClient this$0) {
        this.this$0 = this$0;
        super(this$0);
    }
    
    @Override
    void cancel() {
        if (this.getTokenClient != null) {
            this.getTokenClient.cancel();
            this.getTokenClient = null;
        }
    }
    
    @Override
    String getNameForLogging() {
        return "get_token";
    }
    
    void getTokenCompleted(final AuthorizationClient$AuthorizationRequest authorizationClient$AuthorizationRequest, final Bundle bundle) {
        this.getTokenClient = null;
        this.this$0.notifyBackgroundProcessingStop();
        if (bundle != null) {
            final ArrayList stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            final List<String> permissions = authorizationClient$AuthorizationRequest.getPermissions();
            if (stringArrayList != null && (permissions == null || stringArrayList.containsAll(permissions))) {
                this.this$0.completeAndValidate(AuthorizationClient$Result.createTokenResult(this.this$0.pendingRequest, AccessToken.createFromNativeLogin(bundle, AccessTokenSource.FACEBOOK_APPLICATION_SERVICE)));
                return;
            }
            final ArrayList<String> permissions2 = new ArrayList<String>();
            for (final String o : permissions) {
                if (!stringArrayList.contains(o)) {
                    permissions2.add(o);
                }
            }
            if (!permissions2.isEmpty()) {
                this.addLoggingExtra("new_permissions", TextUtils.join((CharSequence)",", (Iterable)permissions2));
            }
            authorizationClient$AuthorizationRequest.setPermissions(permissions2);
        }
        this.this$0.tryNextHandler();
    }
    
    @Override
    boolean needsRestart() {
        return this.getTokenClient == null;
    }
    
    @Override
    boolean tryAuthorize(final AuthorizationClient$AuthorizationRequest authorizationClient$AuthorizationRequest) {
        this.getTokenClient = new GetTokenClient(this.this$0.context, authorizationClient$AuthorizationRequest.getApplicationId());
        if (!this.getTokenClient.start()) {
            return false;
        }
        this.this$0.notifyBackgroundProcessingStart();
        this.getTokenClient.setCompletedListener(new AuthorizationClient$GetTokenAuthHandler$1(this, authorizationClient$AuthorizationRequest));
        return true;
    }
}
