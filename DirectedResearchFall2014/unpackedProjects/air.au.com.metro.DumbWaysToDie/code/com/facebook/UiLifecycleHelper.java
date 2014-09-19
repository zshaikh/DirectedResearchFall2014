package com.facebook;

import android.app.*;
import c.m.x.a.gv.*;
import android.os.*;
import android.content.*;

public class UiLifecycleHelper
{
    private static final String ACTIVITY_NULL_MESSAGE = "activity cannot be null";
    private final Activity activity;
    private final ae broadcastManager;
    private final Session$StatusCallback callback;
    private final BroadcastReceiver receiver;
    
    public UiLifecycleHelper(final Activity activity, final Session$StatusCallback callback) {
        super();
        if (activity == null) {
            throw new IllegalArgumentException("activity cannot be null");
        }
        this.activity = activity;
        this.callback = callback;
        this.receiver = new UiLifecycleHelper$ActiveSessionBroadcastReceiver(this, null);
        this.broadcastManager = ae.a((Context)activity);
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        final Session activeSession = Session.getActiveSession();
        if (activeSession != null) {
            activeSession.onActivityResult(this.activity, n, n2, intent);
        }
    }
    
    public void onCreate(final Bundle bundle) {
        Session activeSession = Session.getActiveSession();
        if (activeSession == null) {
            if (bundle != null) {
                activeSession = Session.restoreSession((Context)this.activity, null, this.callback, bundle);
            }
            if (activeSession == null) {
                activeSession = new Session((Context)this.activity);
            }
            Session.setActiveSession(activeSession);
        }
    }
    
    public void onDestroy() {
    }
    
    public void onPause() {
        this.broadcastManager.a(this.receiver);
        if (this.callback != null) {
            final Session activeSession = Session.getActiveSession();
            if (activeSession != null) {
                activeSession.removeCallback(this.callback);
            }
        }
    }
    
    public void onResume() {
        final Session activeSession = Session.getActiveSession();
        if (activeSession != null) {
            if (this.callback != null) {
                activeSession.addCallback(this.callback);
            }
            if (SessionState.CREATED_TOKEN_LOADED.equals(activeSession.getState())) {
                activeSession.openForRead(null);
            }
        }
        final IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.ACTIVE_SESSION_SET");
        intentFilter.addAction("com.facebook.sdk.ACTIVE_SESSION_UNSET");
        this.broadcastManager.a(this.receiver, intentFilter);
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        Session.saveSession(Session.getActiveSession(), bundle);
    }
}
