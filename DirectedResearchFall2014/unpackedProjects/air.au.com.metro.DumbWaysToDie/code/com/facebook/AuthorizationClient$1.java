package com.facebook;

import android.app.*;
import android.content.*;

class AuthorizationClient$1 implements AuthorizationClient$StartActivityDelegate
{
    final /* synthetic */ AuthorizationClient this$0;
    final /* synthetic */ Activity val$activity;
    
    AuthorizationClient$1(final AuthorizationClient this$0, final Activity val$activity) {
        this.this$0 = this$0;
        this.val$activity = val$activity;
        super();
    }
    
    @Override
    public Activity getActivityContext() {
        return this.val$activity;
    }
    
    @Override
    public void startActivityForResult(final Intent intent, final int n) {
        this.val$activity.startActivityForResult(intent, n);
    }
}
