package com.facebook.widget;

import android.view.*;
import com.milkmangames.extensions.android.goviral.*;
import android.app.*;
import android.widget.*;
import android.annotation.*;
import c.m.x.a.gv.*;
import com.facebook.model.*;
import com.facebook.internal.*;
import android.content.res.*;
import com.facebook.*;
import android.content.*;
import java.util.*;
import android.util.*;

class LoginButton$LoginClickListener implements View$OnClickListener
{
    final /* synthetic */ LoginButton this$0;
    
    private LoginButton$LoginClickListener(final LoginButton this$0) {
        this.this$0 = this$0;
        super();
    }
    
    public void onClick(final View view) {
        final Context context = this.this$0.getContext();
        final Session openSession = this.this$0.sessionTracker.getOpenSession();
        if (openSession != null) {
            if (!this.this$0.confirmLogout) {
                openSession.closeAndClearTokenInformation();
                return;
            }
            final String string = this.this$0.getResources().getString(b.a("string.com_facebook_loginview_log_out_action"));
            final String string2 = this.this$0.getResources().getString(b.a("string.com_facebook_loginview_cancel_action"));
            String message;
            if (this.this$0.user != null && this.this$0.user.getName() != null) {
                message = String.format(this.this$0.getResources().getString(b.a("string.com_facebook_loginview_logged_in_as")), this.this$0.user.getName());
            }
            else {
                message = this.this$0.getResources().getString(b.a("string.com_facebook_loginview_logged_in_using_facebook"));
            }
            final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(context);
            alertDialog$Builder.setMessage((CharSequence)message).setCancelable(true).setPositiveButton((CharSequence)string, (DialogInterface$OnClickListener)new LoginButton$LoginClickListener$1(this, openSession)).setNegativeButton((CharSequence)string2, (DialogInterface$OnClickListener)null);
            alertDialog$Builder.create().show();
        }
        else {
            Session activeSession = this.this$0.sessionTracker.getSession();
            if (activeSession == null || activeSession.getState().isClosed()) {
                this.this$0.sessionTracker.setSession(null);
                activeSession = new Session$Builder(context).setApplicationId(this.this$0.applicationId).build();
                Session.setActiveSession(activeSession);
            }
            if (!activeSession.isOpened()) {
                Session$OpenRequest session$OpenRequest;
                if (this.this$0.parentFragment != null) {
                    session$OpenRequest = new Session$OpenRequest(this.this$0.parentFragment);
                }
                else if (context instanceof Activity) {
                    session$OpenRequest = new Session$OpenRequest((Activity)context);
                }
                else {
                    session$OpenRequest = null;
                }
                if (session$OpenRequest != null) {
                    session$OpenRequest.setDefaultAudience(this.this$0.properties.defaultAudience);
                    session$OpenRequest.setPermissions(this.this$0.properties.permissions);
                    session$OpenRequest.setLoginBehavior(this.this$0.properties.loginBehavior);
                    if (SessionAuthorizationType.PUBLISH.equals(this.this$0.properties.authorizationType)) {
                        activeSession.openForPublish(session$OpenRequest);
                        return;
                    }
                    activeSession.openForRead(session$OpenRequest);
                }
            }
        }
    }
}
