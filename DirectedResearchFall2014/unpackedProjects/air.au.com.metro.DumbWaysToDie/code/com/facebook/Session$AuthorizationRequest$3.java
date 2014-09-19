package com.facebook;

import android.app.*;
import android.content.*;

class Session$AuthorizationRequest$3 implements Session$StartActivityDelegate
{
    final /* synthetic */ Session$AuthorizationRequest this$0;
    
    Session$AuthorizationRequest$3(final Session$AuthorizationRequest this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public Activity getActivityContext() {
        throw new UnsupportedOperationException("Cannot create an AuthorizationRequest without a valid Activity or Fragment");
    }
    
    @Override
    public void startActivityForResult(final Intent intent, final int n) {
        throw new UnsupportedOperationException("Cannot create an AuthorizationRequest without a valid Activity or Fragment");
    }
}
