package com.facebook.widget;

import com.facebook.model.*;
import android.annotation.*;
import android.widget.*;
import android.text.*;
import android.os.*;
import com.milkmangames.extensions.android.goviral.*;
import android.graphics.drawable.*;
import android.graphics.*;
import java.net.*;
import java.util.*;
import android.content.*;
import android.view.*;
import c.m.x.a.gv.*;
import com.facebook.*;

class UserSettingsFragment$1 implements Request$GraphUserCallback
{
    final /* synthetic */ UserSettingsFragment this$0;
    final /* synthetic */ Session val$currentSession;
    
    UserSettingsFragment$1(final UserSettingsFragment this$0, final Session val$currentSession) {
        this.this$0 = this$0;
        this.val$currentSession = val$currentSession;
        super();
    }
    
    @Override
    public void onCompleted(final GraphUser graphUser, final Response response) {
        if (this.val$currentSession == this.this$0.getSession()) {
            this.this$0.user = graphUser;
            this.this$0.updateUI();
        }
        if (response.getError() != null) {
            this.this$0.loginButton.handleError(response.getError().getException());
        }
    }
}
