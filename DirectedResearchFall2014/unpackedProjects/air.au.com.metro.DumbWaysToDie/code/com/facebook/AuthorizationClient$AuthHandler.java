package com.facebook;

import java.io.*;
import android.content.*;

abstract class AuthorizationClient$AuthHandler implements Serializable
{
    private static final long serialVersionUID = 1L;
    final /* synthetic */ AuthorizationClient this$0;
    
    AuthorizationClient$AuthHandler(final AuthorizationClient this$0) {
        this.this$0 = this$0;
        super();
    }
    
    void cancel() {
    }
    
    boolean needsInternetPermission() {
        return false;
    }
    
    boolean needsRestart() {
        return false;
    }
    
    boolean onActivityResult(final int n, final int n2, final Intent intent) {
        return false;
    }
    
    abstract boolean tryAuthorize(final AuthorizationClient$AuthorizationRequest p0);
}
