package com.facebook;

import android.app.*;
import c.m.x.a.gv.*;
import com.facebook.widget.*;
import java.util.*;
import android.content.*;
import android.os.*;
import android.util.*;

public class UiLifecycleHelper
{
    private static final String ACTIVITY_NULL_MESSAGE = "activity cannot be null";
    private static final String DIALOG_CALL_BUNDLE_SAVE_KEY = "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey";
    private final Activity activity;
    private AppEventsLogger appEventsLogger;
    private final ae broadcastManager;
    private final Session$StatusCallback callback;
    private FacebookDialog$PendingCall pendingFacebookDialogCall;
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
    
    private void cancelPendingAppCall(final FacebookDialog$Callback facebookDialog$Callback) {
        if (facebookDialog$Callback != null) {
            final Intent requestIntent = this.pendingFacebookDialogCall.getRequestIntent();
            final Intent intent = new Intent();
            intent.putExtra("com.facebook.platform.protocol.CALL_ID", requestIntent.getStringExtra("com.facebook.platform.protocol.CALL_ID"));
            intent.putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", requestIntent.getStringExtra("com.facebook.platform.protocol.PROTOCOL_ACTION"));
            intent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", requestIntent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0));
            intent.putExtra("com.facebook.platform.status.ERROR_TYPE", "UnknownError");
            FacebookDialog.handleActivityResult((Context)this.activity, this.pendingFacebookDialogCall, this.pendingFacebookDialogCall.getRequestCode(), intent, facebookDialog$Callback);
        }
        this.pendingFacebookDialogCall = null;
    }
    
    private boolean handleFacebookDialogActivityResult(final int n, final int n2, final Intent intent, final FacebookDialog$Callback facebookDialog$Callback) {
        if (this.pendingFacebookDialogCall == null || this.pendingFacebookDialogCall.getRequestCode() != n) {
            return false;
        }
        if (intent == null) {
            this.cancelPendingAppCall(facebookDialog$Callback);
            return true;
        }
        final String stringExtra = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        while (true) {
            Label_0101: {
                if (stringExtra == null) {
                    break Label_0101;
                }
                while (true) {
                    while (true) {
                        Label_0107: {
                            try {
                                final UUID fromString = UUID.fromString(stringExtra);
                                if (fromString != null && this.pendingFacebookDialogCall.getCallId().equals(fromString)) {
                                    FacebookDialog.handleActivityResult((Context)this.activity, this.pendingFacebookDialogCall, n, intent, facebookDialog$Callback);
                                    this.pendingFacebookDialogCall = null;
                                    return true;
                                }
                                break Label_0107;
                            }
                            catch (IllegalArgumentException ex) {}
                            break;
                        }
                        this.cancelPendingAppCall(facebookDialog$Callback);
                        continue;
                    }
                }
            }
            final UUID fromString = null;
            continue;
        }
    }
    
    public AppEventsLogger getAppEventsLogger() {
        final Session activeSession = Session.getActiveSession();
        if (activeSession == null) {
            return null;
        }
        if (this.appEventsLogger == null || !this.appEventsLogger.isValidForSession(activeSession)) {
            if (this.appEventsLogger != null) {
                AppEventsLogger.onContextStop();
            }
            this.appEventsLogger = AppEventsLogger.newLogger((Context)this.activity, activeSession);
        }
        return this.appEventsLogger;
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        this.onActivityResult(n, n2, intent, null);
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent, final FacebookDialog$Callback facebookDialog$Callback) {
        final Session activeSession = Session.getActiveSession();
        if (activeSession != null) {
            activeSession.onActivityResult(this.activity, n, n2, intent);
        }
        this.handleFacebookDialogActivityResult(n, n2, intent, facebookDialog$Callback);
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
        if (bundle != null) {
            this.pendingFacebookDialogCall = (FacebookDialog$PendingCall)bundle.getParcelable("com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey");
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
        bundle.putParcelable("com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey", (Parcelable)this.pendingFacebookDialogCall);
    }
    
    public void onStop() {
        AppEventsLogger.onContextStop();
    }
    
    public void trackPendingDialogCall(final FacebookDialog$PendingCall pendingFacebookDialogCall) {
        if (this.pendingFacebookDialogCall != null) {
            Log.i("Facebook", "Tracking new app call while one is still pending; canceling pending call.");
            this.cancelPendingAppCall(null);
        }
        this.pendingFacebookDialogCall = pendingFacebookDialogCall;
    }
}
