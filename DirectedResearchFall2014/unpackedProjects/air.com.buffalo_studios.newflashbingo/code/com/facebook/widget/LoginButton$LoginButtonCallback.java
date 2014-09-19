package com.facebook.widget;

import android.widget.*;
import c.m.x.a.gv.*;
import com.facebook.model.*;
import com.facebook.android.*;
import android.graphics.*;
import android.view.*;
import android.content.res.*;
import com.facebook.*;
import android.content.*;
import android.app.*;
import com.facebook.internal.*;
import java.util.*;
import android.util.*;

class LoginButton$LoginButtonCallback implements Session$StatusCallback
{
    final /* synthetic */ LoginButton this$0;
    
    private LoginButton$LoginButtonCallback(final LoginButton this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void call(final Session session, final SessionState sessionState, final Exception ex) {
        this.this$0.fetchUserInfo();
        this.this$0.setButtonText();
        if (this.this$0.properties.sessionStatusCallback != null) {
            this.this$0.properties.sessionStatusCallback.call(session, sessionState, ex);
        }
        else if (ex != null) {
            this.this$0.handleError(ex);
        }
    }
}
