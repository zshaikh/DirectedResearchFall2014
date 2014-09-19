package com.facebook.internal;

import android.os.*;
import android.content.*;

public abstract class PlatformServiceClient implements ServiceConnection
{
    private final String applicationId;
    private final Context context;
    private final Handler handler;
    private CompletedListener listener;
    private final int protocolVersion;
    private int replyMessage;
    private int requestMessage;
    private boolean running;
    private Messenger sender;
    
    public PlatformServiceClient(final Context context, final int requestMessage, final int replyMessage, final int protocolVersion, final String applicationId) {
        super();
        final Context applicationContext = context.getApplicationContext();
        Context context2;
        if (applicationContext != null) {
            context2 = applicationContext;
        }
        else {
            context2 = context;
        }
        this.context = context2;
        this.requestMessage = requestMessage;
        this.replyMessage = replyMessage;
        this.applicationId = applicationId;
        this.protocolVersion = protocolVersion;
        this.handler = new Handler() {
            public void handleMessage(final Message message) {
                PlatformServiceClient.this.handleMessage(message);
            }
        };
    }
    
    private void callback(final Bundle bundle) {
        if (this.running) {
            this.running = false;
            final CompletedListener listener = this.listener;
            if (listener != null) {
                listener.completed(bundle);
            }
        }
    }
    
    private void sendMessage() {
        final Bundle data = new Bundle();
        data.putString("com.facebook.platform.extra.APPLICATION_ID", this.applicationId);
        this.populateRequestBundle(data);
        final Message obtain = Message.obtain((Handler)null, this.requestMessage);
        obtain.arg1 = this.protocolVersion;
        obtain.setData(data);
        obtain.replyTo = new Messenger(this.handler);
        try {
            this.sender.send(obtain);
        }
        catch (RemoteException ex) {
            this.callback(null);
        }
    }
    
    public void cancel() {
        this.running = false;
    }
    
    protected Context getContext() {
        return this.context;
    }
    
    protected void handleMessage(final Message message) {
        if (message.what == this.replyMessage) {
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
    
    public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
        this.sender = new Messenger(binder);
        this.sendMessage();
    }
    
    public void onServiceDisconnected(final ComponentName componentName) {
        this.sender = null;
        this.context.unbindService((ServiceConnection)this);
        this.callback(null);
    }
    
    protected abstract void populateRequestBundle(final Bundle p0);
    
    public void setCompletedListener(final CompletedListener listener) {
        this.listener = listener;
    }
    
    public boolean start() {
        if (this.running) {
            return false;
        }
        if (NativeProtocol.getLatestAvailableProtocolVersion(this.context, this.protocolVersion) == -1) {
            return false;
        }
        final Intent platformServiceIntent = NativeProtocol.createPlatformServiceIntent(this.context);
        if (platformServiceIntent == null) {
            return false;
        }
        this.running = true;
        this.context.bindService(platformServiceIntent, (ServiceConnection)this, 1);
        return true;
    }
    
    public interface CompletedListener
    {
        void completed(Bundle p0);
    }
}
