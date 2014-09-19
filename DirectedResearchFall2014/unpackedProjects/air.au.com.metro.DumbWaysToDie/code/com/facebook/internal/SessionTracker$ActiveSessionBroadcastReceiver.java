package com.facebook.internal;

import c.m.x.a.gv.*;
import com.facebook.*;
import android.content.*;

class SessionTracker$ActiveSessionBroadcastReceiver extends BroadcastReceiver
{
    final /* synthetic */ SessionTracker this$0;
    
    private SessionTracker$ActiveSessionBroadcastReceiver(final SessionTracker this$0) {
        this.this$0 = this$0;
        super();
    }
    
    public void onReceive(final Context context, final Intent intent) {
        if ("com.facebook.sdk.ACTIVE_SESSION_SET".equals(intent.getAction())) {
            final Session activeSession = Session.getActiveSession();
            if (activeSession != null) {
                activeSession.addCallback(this.this$0.callback);
            }
        }
    }
}
