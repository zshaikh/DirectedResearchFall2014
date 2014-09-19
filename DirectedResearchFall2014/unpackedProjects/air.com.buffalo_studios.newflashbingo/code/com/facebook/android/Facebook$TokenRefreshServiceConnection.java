package com.facebook.android;

import android.os.*;
import android.net.*;
import android.app.*;
import com.facebook.*;
import java.util.*;
import android.content.*;
import android.content.pm.*;

class Facebook$TokenRefreshServiceConnection implements ServiceConnection
{
    final Context applicationsContext;
    final Messenger messageReceiver;
    Messenger messageSender;
    final Facebook$ServiceListener serviceListener;
    final /* synthetic */ Facebook this$0;
    
    public Facebook$TokenRefreshServiceConnection(final Facebook this$0, final Context applicationsContext, final Facebook$ServiceListener serviceListener) {
        this.this$0 = this$0;
        super();
        this.messageReceiver = new Messenger((Handler)new Facebook$TokenRefreshConnectionHandler(this.this$0, this));
        this.messageSender = null;
        this.applicationsContext = applicationsContext;
        this.serviceListener = serviceListener;
    }
    
    private void refreshToken() {
        final Bundle data = new Bundle();
        data.putString("access_token", this.this$0.accessToken);
        final Message obtain = Message.obtain();
        obtain.setData(data);
        obtain.replyTo = this.messageReceiver;
        try {
            this.messageSender.send(obtain);
        }
        catch (RemoteException ex) {
            this.serviceListener.onError(new Error("Service connection error"));
        }
    }
    
    public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        this.messageSender = new Messenger(binder);
        this.refreshToken();
    }
    
    public void onServiceDisconnected(final ComponentName componentName) {
        this.serviceListener.onError(new Error("Service disconnected"));
        this.applicationsContext.unbindService((ServiceConnection)this);
    }
}
