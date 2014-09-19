package com.facebook;

import android.app.*;
import android.content.*;
import c.m.x.a.gv.*;
import java.io.*;
import java.util.*;

class Session$AuthorizationRequest$4 implements AuthorizationClient$StartActivityDelegate
{
    final /* synthetic */ Session$AuthorizationRequest this$0;
    
    Session$AuthorizationRequest$4(final Session$AuthorizationRequest this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public Activity getActivityContext() {
        return this.this$0.startActivityDelegate.getActivityContext();
    }
    
    @Override
    public void startActivityForResult(final Intent intent, final int n) {
        this.this$0.startActivityDelegate.startActivityForResult(intent, n);
    }
}
