package com.facebook;

import android.os.*;
import com.facebook.internal.*;
import android.app.*;
import c.m.x.a.gv.*;
import android.util.*;
import java.io.*;
import android.content.*;
import java.util.*;

class Session$TokenRefreshRequest implements ServiceConnection
{
    final Messenger messageReceiver;
    Messenger messageSender;
    final /* synthetic */ Session this$0;
    
    Session$TokenRefreshRequest(final Session this$0) {
        this.this$0 = this$0;
        super();
        this.messageReceiver = new Messenger((Handler)new Session$TokenRefreshRequestHandler(this.this$0, this));
        this.messageSender = null;
    }
    
    private void cleanup() {
        if (this.this$0.currentTokenRefreshRequest == this) {
            this.this$0.currentTokenRefreshRequest = null;
        }
    }
    
    private void refreshToken() {
        final Bundle data = new Bundle();
        data.putString("access_token", this.this$0.getTokenInfo().getToken());
        final Message obtain = Message.obtain();
        obtain.setData(data);
        obtain.replyTo = this.messageReceiver;
        try {
            this.messageSender.send(obtain);
        }
        catch (RemoteException ex) {
            this.cleanup();
        }
    }
    
    public void bind() {
        final Intent tokenRefreshIntent = NativeProtocol.createTokenRefreshIntent(Session.getStaticContext());
        if (tokenRefreshIntent != null && Session.staticContext.bindService(tokenRefreshIntent, (ServiceConnection)new Session$TokenRefreshRequest(this.this$0), 1)) {
            this.this$0.setLastAttemptedTokenExtendDate(new Date());
            return;
        }
        this.cleanup();
    }
    
    public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        this.messageSender = new Messenger(binder);
        this.refreshToken();
    }
    
    public void onServiceDisconnected(final ComponentName componentName) {
        this.cleanup();
        Session.staticContext.unbindService((ServiceConnection)this);
    }
}
