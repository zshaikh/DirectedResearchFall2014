package com.facebook;

import android.app.*;
import android.content.*;

class AuthorizationClient$2 implements AuthorizationClient$StartActivityDelegate
{
    final /* synthetic */ AuthorizationClient this$0;
    
    AuthorizationClient$2(final AuthorizationClient this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public Activity getActivityContext() {
        return this.this$0.pendingRequest.getStartActivityDelegate().getActivityContext();
    }
    
    @Override
    public void startActivityForResult(final Intent intent, final int n) {
        this.this$0.pendingRequest.getStartActivityDelegate().startActivityForResult(intent, n);
    }
}
