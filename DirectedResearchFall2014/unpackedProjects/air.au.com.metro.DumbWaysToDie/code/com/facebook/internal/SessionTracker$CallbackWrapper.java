package com.facebook.internal;

import com.facebook.*;
import c.m.x.a.gv.*;
import android.content.*;

class SessionTracker$CallbackWrapper implements Session$StatusCallback
{
    final /* synthetic */ SessionTracker this$0;
    private final Session$StatusCallback wrapped;
    
    public SessionTracker$CallbackWrapper(final SessionTracker this$0, final Session$StatusCallback wrapped) {
        this.this$0 = this$0;
        super();
        this.wrapped = wrapped;
    }
    
    @Override
    public void call(final Session session, final SessionState sessionState, final Exception ex) {
        if (this.wrapped != null && this.this$0.isTracking()) {
            this.wrapped.call(session, sessionState, ex);
        }
        if (session == this.this$0.session && sessionState.isClosed()) {
            this.this$0.setSession(null);
        }
    }
}
