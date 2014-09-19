package com.facebook.widget;

import com.facebook.model.*;
import android.widget.*;
import c.m.x.a.gv.*;
import android.util.*;
import com.facebook.android.*;
import android.graphics.*;
import android.view.*;
import com.facebook.internal.*;
import android.content.res.*;
import com.facebook.*;
import android.content.*;
import android.app.*;
import java.util.*;

class LoginButton$1 implements Request$GraphUserCallback
{
    final /* synthetic */ LoginButton this$0;
    final /* synthetic */ Session val$currentSession;
    
    LoginButton$1(final LoginButton this$0, final Session val$currentSession) {
        this.this$0 = this$0;
        this.val$currentSession = val$currentSession;
        super();
    }
    
    @Override
    public void onCompleted(final GraphUser graphUser, final Response response) {
        if (this.val$currentSession == this.this$0.sessionTracker.getOpenSession()) {
            this.this$0.user = graphUser;
            if (this.this$0.userInfoChangedCallback != null) {
                this.this$0.userInfoChangedCallback.onUserInfoFetched(this.this$0.user);
            }
        }
        if (response.getError() != null) {
            this.this$0.handleError(response.getError().getException());
        }
    }
}
