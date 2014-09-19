package com.facebook.internal;

import c.m.x.a.gv.*;
import com.facebook.*;
import android.content.*;

public class SessionTracker
{
    private final ae broadcastManager;
    private final Session$StatusCallback callback;
    private boolean isTracking;
    private final BroadcastReceiver receiver;
    private Session session;
    
    public SessionTracker(final Context context, final Session$StatusCallback session$StatusCallback) {
        this(context, session$StatusCallback, null);
    }
    
    SessionTracker(final Context context, final Session$StatusCallback session$StatusCallback, final Session session) {
        this(context, session$StatusCallback, session, true);
    }
    
    public SessionTracker(final Context context, final Session$StatusCallback session$StatusCallback, final Session session, final boolean b) {
        super();
        this.isTracking = false;
        this.callback = new SessionTracker$CallbackWrapper(this, session$StatusCallback);
        this.session = session;
        this.receiver = new SessionTracker$ActiveSessionBroadcastReceiver(this, null);
        this.broadcastManager = ae.a(context);
        if (b) {
            this.startTracking();
        }
    }
    
    private void addBroadcastReceiver() {
        final IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.ACTIVE_SESSION_SET");
        intentFilter.addAction("com.facebook.sdk.ACTIVE_SESSION_UNSET");
        this.broadcastManager.a(this.receiver, intentFilter);
    }
    
    public Session getOpenSession() {
        final Session session = this.getSession();
        if (session != null && session.isOpened()) {
            return session;
        }
        return null;
    }
    
    public Session getSession() {
        if (this.session == null) {
            return Session.getActiveSession();
        }
        return this.session;
    }
    
    public boolean isTracking() {
        return this.isTracking;
    }
    
    public boolean isTrackingActiveSession() {
        return this.session == null;
    }
    
    public void setSession(final Session session) {
        if (session == null) {
            if (this.session != null) {
                this.session.removeCallback(this.callback);
                this.session = null;
                this.addBroadcastReceiver();
                if (this.getSession() != null) {
                    this.getSession().addCallback(this.callback);
                }
            }
            return;
        }
        if (this.session == null) {
            final Session activeSession = Session.getActiveSession();
            if (activeSession != null) {
                activeSession.removeCallback(this.callback);
            }
            this.broadcastManager.a(this.receiver);
        }
        else {
            this.session.removeCallback(this.callback);
        }
        (this.session = session).addCallback(this.callback);
    }
    
    public void startTracking() {
        if (this.isTracking) {
            return;
        }
        if (this.session == null) {
            this.addBroadcastReceiver();
        }
        if (this.getSession() != null) {
            this.getSession().addCallback(this.callback);
        }
        this.isTracking = true;
    }
    
    public void stopTracking() {
        if (!this.isTracking) {
            return;
        }
        final Session session = this.getSession();
        if (session != null) {
            session.removeCallback(this.callback);
        }
        this.broadcastManager.a(this.receiver);
        this.isTracking = false;
    }
}
