package com.facebook;

import c.m.x.a.gv.*;
import android.app.*;
import android.content.*;

class Session$AuthorizationRequest$2 implements Session$StartActivityDelegate
{
    final /* synthetic */ Session$AuthorizationRequest this$0;
    final /* synthetic */ e val$fragment;
    
    Session$AuthorizationRequest$2(final Session$AuthorizationRequest this$0, final e val$fragment) {
        this.this$0 = this$0;
        this.val$fragment = val$fragment;
        super();
    }
    
    @Override
    public Activity getActivityContext() {
        return this.val$fragment.getActivity();
    }
    
    @Override
    public void startActivityForResult(final Intent intent, final int n) {
        this.val$fragment.startActivityForResult(intent, n);
    }
}
