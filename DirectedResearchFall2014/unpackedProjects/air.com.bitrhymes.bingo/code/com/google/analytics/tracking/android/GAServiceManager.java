package com.google.analytics.tracking.android;

import android.os.*;
import android.content.*;
import com.google.android.gms.common.util.*;

public class GAServiceManager implements ServiceManager
{
    private static final int MSG_KEY = 1;
    private static final Object MSG_OBJECT;
    private static GAServiceManager instance;
    private boolean connected;
    private Context ctx;
    private int dispatchPeriodInSeconds;
    private Handler handler;
    private boolean listenForNetwork;
    private AnalyticsStoreStateListener listener;
    private GANetworkReceiver networkReceiver;
    private boolean pendingDispatch;
    private AnalyticsStore store;
    private boolean storeIsEmpty;
    private volatile AnalyticsThread thread;
    
    static {
        MSG_OBJECT = new Object();
    }
    
    private GAServiceManager() {
        super();
        this.dispatchPeriodInSeconds = 1800;
        this.pendingDispatch = true;
        this.connected = true;
        this.listenForNetwork = true;
        this.listener = new AnalyticsStoreStateListener() {
            @Override
            public void reportStoreIsEmpty(final boolean b) {
                GAServiceManager.this.updatePowerSaveMode(b, GAServiceManager.this.connected);
            }
        };
        this.storeIsEmpty = false;
    }
    
    GAServiceManager(final Context context, final AnalyticsThread thread, final AnalyticsStore store, final boolean listenForNetwork) {
        super();
        this.dispatchPeriodInSeconds = 1800;
        this.pendingDispatch = true;
        this.connected = true;
        this.listenForNetwork = true;
        this.listener = new AnalyticsStoreStateListener() {
            @Override
            public void reportStoreIsEmpty(final boolean b) {
                GAServiceManager.this.updatePowerSaveMode(b, GAServiceManager.this.connected);
            }
        };
        this.storeIsEmpty = false;
        this.store = store;
        this.thread = thread;
        this.listenForNetwork = listenForNetwork;
        this.initialize(context, thread);
    }
    
    public static GAServiceManager getInstance() {
        if (GAServiceManager.instance == null) {
            GAServiceManager.instance = new GAServiceManager();
        }
        return GAServiceManager.instance;
    }
    
    private void initializeHandler() {
        this.handler = new Handler(this.ctx.getMainLooper(), (Handler$Callback)new Handler$Callback() {
            public boolean handleMessage(final Message message) {
                if (1 == message.what && GAServiceManager.MSG_OBJECT.equals(message.obj)) {
                    GAUsage.getInstance().setDisableUsage(true);
                    GAServiceManager.this.dispatch();
                    GAUsage.getInstance().setDisableUsage(false);
                    if (GAServiceManager.this.dispatchPeriodInSeconds > 0 && !GAServiceManager.this.storeIsEmpty) {
                        GAServiceManager.this.handler.sendMessageDelayed(GAServiceManager.this.handler.obtainMessage(1, GAServiceManager.MSG_OBJECT), (long)(1000 * GAServiceManager.this.dispatchPeriodInSeconds));
                    }
                }
                return true;
            }
        });
        if (this.dispatchPeriodInSeconds > 0) {
            this.handler.sendMessageDelayed(this.handler.obtainMessage(1, GAServiceManager.MSG_OBJECT), (long)(1000 * this.dispatchPeriodInSeconds));
        }
    }
    
    private void initializeNetworkReceiver() {
        this.networkReceiver = new GANetworkReceiver(this);
        final IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.ctx.registerReceiver((BroadcastReceiver)this.networkReceiver, intentFilter);
    }
    
    @Override
    public void dispatch() {
        synchronized (this) {
            if (this.thread == null) {
                Log.w("dispatch call queued.  Need to call GAServiceManager.getInstance().initialize().");
                this.pendingDispatch = true;
            }
            else {
                GAUsage.getInstance().setUsage(GAUsage.Field.DISPATCH);
                this.thread.dispatch();
            }
        }
    }
    
    @VisibleForTesting
    AnalyticsStoreStateListener getListener() {
        return this.listener;
    }
    
    AnalyticsStore getStore() {
        Label_0050: {
            synchronized (this) {
                if (this.store != null) {
                    break Label_0050;
                }
                if (this.ctx == null) {
                    throw new IllegalStateException("Cant get a store unless we have a context");
                }
            }
            this.store = new PersistentAnalyticsStore(this.listener, this.ctx);
        }
        if (this.handler == null) {
            this.initializeHandler();
        }
        if (this.networkReceiver == null && this.listenForNetwork) {
            this.initializeNetworkReceiver();
        }
        // monitorexit(this)
        return this.store;
    }
    
    void initialize(final Context context, final AnalyticsThread thread) {
        synchronized (this) {
            if (this.ctx == null) {
                this.ctx = context.getApplicationContext();
                if (this.thread == null) {
                    this.thread = thread;
                    if (this.pendingDispatch) {
                        thread.dispatch();
                    }
                }
            }
        }
    }
    
    @Override
    public void setDispatchPeriod(final int n) {
        synchronized (this) {
            if (this.handler == null) {
                Log.w("Need to call initialize() and be in fallback mode to start dispatch.");
                this.dispatchPeriodInSeconds = n;
            }
            else {
                GAUsage.getInstance().setUsage(GAUsage.Field.SET_DISPATCH_PERIOD);
                if (!this.storeIsEmpty && this.connected && this.dispatchPeriodInSeconds > 0) {
                    this.handler.removeMessages(1, GAServiceManager.MSG_OBJECT);
                }
                if ((this.dispatchPeriodInSeconds = n) > 0 && !this.storeIsEmpty && this.connected) {
                    this.handler.sendMessageDelayed(this.handler.obtainMessage(1, GAServiceManager.MSG_OBJECT), (long)(n * 1000));
                }
            }
        }
    }
    
    @Override
    public void updateConnectivityStatus(final boolean b) {
        synchronized (this) {
            this.updatePowerSaveMode(this.storeIsEmpty, b);
        }
    }
    
    @VisibleForTesting
    void updatePowerSaveMode(final boolean storeIsEmpty, final boolean connected) {
        while (true) {
            while (true) {
                Label_0158: {
                    Label_0151: {
                        synchronized (this) {
                            if (this.storeIsEmpty != storeIsEmpty || this.connected != connected) {
                                if ((storeIsEmpty || !connected) && this.dispatchPeriodInSeconds > 0) {
                                    this.handler.removeMessages(1, GAServiceManager.MSG_OBJECT);
                                }
                                if (!storeIsEmpty && connected && this.dispatchPeriodInSeconds > 0) {
                                    this.handler.sendMessageDelayed(this.handler.obtainMessage(1, GAServiceManager.MSG_OBJECT), (long)(1000 * this.dispatchPeriodInSeconds));
                                }
                                final StringBuilder append = new StringBuilder().append("PowerSaveMode ");
                                if (!storeIsEmpty && connected) {
                                    break Label_0151;
                                }
                                break Label_0158;
                            }
                            return;
                            final StringBuilder append;
                            final String str;
                            Log.iDebug(append.append(str).toString());
                            this.storeIsEmpty = storeIsEmpty;
                            this.connected = connected;
                            return;
                        }
                    }
                    final String str = "terminated.";
                    continue;
                }
                final String str = "initiated.";
                continue;
            }
        }
    }
}
