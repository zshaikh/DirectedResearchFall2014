package com.facebook;

import com.facebook.widget.*;
import android.os.*;

class AuthorizationClient$WebViewAuthHandler$1 implements WebDialog$OnCompleteListener
{
    final /* synthetic */ AuthorizationClient$WebViewAuthHandler this$1;
    final /* synthetic */ AuthorizationClient$AuthorizationRequest val$request;
    
    AuthorizationClient$WebViewAuthHandler$1(final AuthorizationClient$WebViewAuthHandler this$1, final AuthorizationClient$AuthorizationRequest val$request) {
        this.this$1 = this$1;
        this.val$request = val$request;
        super();
    }
    
    @Override
    public void onComplete(final Bundle bundle, final FacebookException ex) {
        this.this$1.onWebDialogComplete(this.val$request, bundle, ex);
    }
}
