package com.facebook;

import android.content.*;
import android.os.*;
import com.facebook.widget.*;

class AuthorizationClient$AuthDialogBuilder extends WebDialog$Builder
{
    private static final String OAUTH_DIALOG = "oauth";
    static final String REDIRECT_URI = "fbconnect://success";
    private String e2e;
    
    public AuthorizationClient$AuthDialogBuilder(final Context context, final String s, final Bundle bundle) {
        super(context, s, "oauth", bundle);
    }
    
    @Override
    public WebDialog build() {
        final Bundle parameters = this.getParameters();
        parameters.putString("redirect_uri", "fbconnect://success");
        parameters.putString("client_id", this.getApplicationId());
        parameters.putString("e2e", this.e2e);
        return new WebDialog(this.getContext(), "oauth", parameters, this.getTheme(), this.getListener());
    }
    
    public AuthorizationClient$AuthDialogBuilder setE2E(final String e2e) {
        this.e2e = e2e;
        return this;
    }
}