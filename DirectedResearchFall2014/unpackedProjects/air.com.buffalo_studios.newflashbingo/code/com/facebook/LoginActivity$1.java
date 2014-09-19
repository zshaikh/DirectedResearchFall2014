package com.facebook;

import android.app.*;
import android.os.*;
import java.io.*;
import android.content.*;
import com.facebook.android.*;
import android.util.*;

class LoginActivity$1 implements AuthorizationClient$OnCompletedListener
{
    final /* synthetic */ LoginActivity this$0;
    
    LoginActivity$1(final LoginActivity this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void onCompleted(final AuthorizationClient$Result authorizationClient$Result) {
        this.this$0.onAuthClientCompleted(authorizationClient$Result);
    }
}
