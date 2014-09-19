package com.facebook;

import android.os.*;
import android.content.*;

final class GetTokenClient implements ServiceConnection
{
    final String applicationId;
    final Context context;
    final Handler handler;
    GetTokenClient$CompletedListener listener;
    boolean running;
    Messenger sender;
    
    GetTokenClient(final Context context, final String applicationId) {
        super();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        this.context = applicationContext;
        this.applicationId = applicationId;
        this.handler = new GetTokenClient$1(this);
    }
    
    private void callback(final Bundle bundle) {
        if (this.running) {
            this.running = false;
            final GetTokenClient$CompletedListener listener = this.listener;
            if (listener != null) {
                listener.completed(bundle);
            }
        }
    }
    
    private void getToken() {
        final Bundle data = new Bundle();
        data.putString("com.facebook.platform.extra.APPLICATION_ID", this.applicationId);
        final Message obtain = Message.obtain((Handler)null, 65536);
        obtain.arg1 = 20121101;
        obtain.setData(data);
        obtain.replyTo = new Messenger(this.handler);
        try {
            this.sender.send(obtain);
        }
        catch (RemoteException ex) {
            this.callback(null);
        }
    }
    
    private void handleMessage(final Message message) {
        if (message.what == 65537) {
            final Bundle data = message.getData();
            if (data.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                this.callback(null);
            }
            else {
                this.callback(data);
            }
            this.context.unbindService((ServiceConnection)this);
        }
    }
    
    final void cancel() {
        this.running = false;
    }
    
    public final void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        this.sender = new Messenger(binder);
        this.getToken();
    }
    
    public final void onServiceDisconnected(final ComponentName componentName) {
        this.sender = null;
        this.context.unbindService((ServiceConnection)this);
        this.callback(null);
    }
    
    final void setCompletedListener(final GetTokenClient$CompletedListener listener) {
        this.listener = listener;
    }
    
    final boolean start() {
        final Intent intent = new Intent("com.facebook.platform.PLATFORM_SERVICE");
        intent.addCategory("android.intent.category.DEFAULT");
        final Intent validateKatanaServiceIntent = NativeProtocol.validateKatanaServiceIntent(this.context, intent);
        if (validateKatanaServiceIntent == null) {
            this.callback(null);
            return false;
        }
        this.running = true;
        this.context.bindService(validateKatanaServiceIntent, (ServiceConnection)this, 1);
        return true;
    }
}
