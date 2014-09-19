package com.facebook;

import com.facebook.internal.*;
import android.os.*;

class AuthorizationClient$GetTokenAuthHandler$1 implements PlatformServiceClient$CompletedListener
{
    final /* synthetic */ AuthorizationClient$GetTokenAuthHandler this$1;
    final /* synthetic */ AuthorizationClient$AuthorizationRequest val$request;
    
    AuthorizationClient$GetTokenAuthHandler$1(final AuthorizationClient$GetTokenAuthHandler this$1, final AuthorizationClient$AuthorizationRequest val$request) {
        this.this$1 = this$1;
        this.val$request = val$request;
        super();
    }
    
    @Override
    public void completed(final Bundle bundle) {
        this.this$1.getTokenCompleted(this.val$request, bundle);
    }
}
