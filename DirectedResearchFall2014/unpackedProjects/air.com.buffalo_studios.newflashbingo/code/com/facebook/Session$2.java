package com.facebook;

import android.os.*;
import org.json.*;
import android.text.*;
import com.facebook.internal.*;
import java.util.*;
import android.app.*;
import c.m.x.a.gv.*;
import android.util.*;
import java.io.*;
import android.content.*;

class Session$2 implements AuthorizationClient$OnCompletedListener
{
    final /* synthetic */ Session this$0;
    
    Session$2(final Session this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void onCompleted(final AuthorizationClient$Result authorizationClient$Result) {
        int n;
        if (authorizationClient$Result.code == AuthorizationClient$Result$Code.CANCEL) {
            n = 0;
        }
        else {
            n = -1;
        }
        this.this$0.handleAuthorizationResult(n, authorizationClient$Result);
    }
}
