package com.google.analytics.tracking.android;

import java.util.concurrent.*;
import com.google.android.gms.analytics.internal.*;
import android.content.*;
import java.util.*;

class GAServiceProxy implements ServiceProxy, OnConnectedListener, OnConnectionFailedListener
{
    private static final long FAILED_CONNECT_WAIT_TIME = 3000L;
    private static final int MAX_TRIES = 2;
    private static final long RECONNECT_WAIT_TIME = 5000L;
    private static final long SERVICE_CONNECTION_TIMEOUT = 300000L;
    private volatile AnalyticsClient client;
    private Clock clock;
    private volatile int connectTries;
    private final Context ctx;
    private volatile Timer disconnectCheckTimer;
    private volatile Timer failedConnectTimer;
    private long idleTimeout;
    private volatile long lastRequestTime;
    private boolean pendingClearHits;
    private boolean pendingDispatch;
    private final Queue<HitParams> queue;
    private volatile Timer reConnectTimer;
    private volatile ConnectState state;
    private AnalyticsStore store;
    private AnalyticsStore testStore;
    private final AnalyticsThread thread;
    
    GAServiceProxy(final Context context, final AnalyticsThread analyticsThread) {
        this(context, analyticsThread, null);
    }
    
    GAServiceProxy(final Context ctx, final AnalyticsThread thread, final AnalyticsStore testStore) {
        super();
        this.queue = new ConcurrentLinkedQueue<HitParams>();
        this.idleTimeout = 300000L;
        this.testStore = testStore;
        this.ctx = ctx;
        this.thread = thread;
        this.clock = new Clock() {
            @Override
            public long currentTimeMillis() {
                return System.currentTimeMillis();
            }
        };
        this.connectTries = 0;
        this.state = ConnectState.DISCONNECTED;
    }
    
    private Timer cancelTimer(final Timer timer) {
        if (timer != null) {
            timer.cancel();
        }
        return null;
    }
    
    private void clearAllTimers() {
        this.reConnectTimer = this.cancelTimer(this.reConnectTimer);
        this.failedConnectTimer = this.cancelTimer(this.failedConnectTimer);
        this.disconnectCheckTimer = this.cancelTimer(this.disconnectCheckTimer);
    }
    
    private void connectToService() {
        while (true) {
            synchronized (this) {
                if (this.client != null && this.state != ConnectState.CONNECTED_LOCAL) {
                    try {
                        ++this.connectTries;
                        this.cancelTimer(this.failedConnectTimer);
                        this.state = ConnectState.CONNECTING;
                        (this.failedConnectTimer = new Timer("Failed Connect")).schedule(new FailedConnectTask(), 3000L);
                        Log.iDebug("connecting to Analytics service");
                        this.client.connect();
                        return;
                    }
                    catch (SecurityException ex) {
                        Log.w("security exception on connectToService");
                        this.useStore();
                    }
                }
            }
            Log.w("client not initialized.");
            this.useStore();
        }
    }
    
    private void disconnectFromService() {
        synchronized (this) {
            if (this.client != null && this.state == ConnectState.CONNECTED_SERVICE) {
                this.state = ConnectState.PENDING_DISCONNECT;
                this.client.disconnect();
            }
        }
    }
    
    private void dispatchToStore() {
        this.store.dispatch();
        this.pendingDispatch = false;
    }
    
    private void fireReconnectAttempt() {
        this.reConnectTimer = this.cancelTimer(this.reConnectTimer);
        (this.reConnectTimer = new Timer("Service Reconnect")).schedule(new ReconnectTask(), 5000L);
    }
    
    private void sendQueue() {
        while (true) {
            Label_0262: {
                Label_0162: {
                    Label_0176: {
                        synchronized (this) {
                            if (!Thread.currentThread().equals(this.thread.getThread())) {
                                this.thread.getQueue().add(new Runnable() {
                                    @Override
                                    public void run() {
                                        GAServiceProxy.this.sendQueue();
                                    }
                                });
                                return;
                            }
                            if (this.pendingClearHits) {
                                this.clearHits();
                            }
                            switch (this.state) {
                                case CONNECTED_LOCAL: {
                                    while (!this.queue.isEmpty()) {
                                        final HitParams hitParams = this.queue.poll();
                                        Log.iDebug("Sending hit to store");
                                        this.store.putHit(hitParams.getWireFormatParams(), hitParams.getHitTimeInMilliseconds(), hitParams.getPath(), hitParams.getCommands());
                                    }
                                    break;
                                }
                                case CONNECTED_SERVICE: {
                                    break Label_0176;
                                }
                                case DISCONNECTED: {
                                    break Label_0262;
                                }
                                default: {
                                    return;
                                }
                            }
                        }
                        break Label_0162;
                    }
                    while (!this.queue.isEmpty()) {
                        final HitParams hitParams2 = this.queue.peek();
                        Log.iDebug("Sending hit to service");
                        this.client.sendHit(hitParams2.getWireFormatParams(), hitParams2.getHitTimeInMilliseconds(), hitParams2.getPath(), hitParams2.getCommands());
                        this.queue.poll();
                    }
                    this.lastRequestTime = this.clock.currentTimeMillis();
                    return;
                }
                if (this.pendingDispatch) {
                    this.dispatchToStore();
                    return;
                }
                return;
            }
            Log.iDebug("Need to reconnect");
            if (!this.queue.isEmpty()) {
                this.connectToService();
            }
        }
    }
    
    private void useStore() {
        while (true) {
            while (true) {
                Label_0064: {
                    synchronized (this) {
                        if (this.state != ConnectState.CONNECTED_LOCAL) {
                            this.clearAllTimers();
                            Log.iDebug("falling back to local store");
                            if (this.testStore == null) {
                                break Label_0064;
                            }
                            this.store = this.testStore;
                            this.state = ConnectState.CONNECTED_LOCAL;
                            this.sendQueue();
                        }
                        return;
                    }
                }
                final GAServiceManager instance = GAServiceManager.getInstance();
                instance.initialize(this.ctx, this.thread);
                this.store = instance.getStore();
                continue;
            }
        }
    }
    
    @Override
    public void clearHits() {
        Log.iDebug("clearHits called");
        this.queue.clear();
        switch (this.state) {
            default: {
                this.pendingClearHits = true;
            }
            case CONNECTED_LOCAL: {
                this.store.clearHits(0L);
                this.pendingClearHits = false;
            }
            case CONNECTED_SERVICE: {
                this.client.clearHits();
                this.pendingClearHits = false;
            }
        }
    }
    
    @Override
    public void createService() {
        if (this.client != null) {
            return;
        }
        this.client = new AnalyticsGmsCoreClient(this.ctx, (AnalyticsGmsCoreClient.OnConnectedListener)this, (AnalyticsGmsCoreClient.OnConnectionFailedListener)this);
        this.connectToService();
    }
    
    void createService(final AnalyticsClient client) {
        if (this.client != null) {
            return;
        }
        this.client = client;
        this.connectToService();
    }
    
    @Override
    public void dispatch() {
        switch (this.state) {
            default: {
                this.pendingDispatch = true;
            }
            case CONNECTED_SERVICE: {}
            case CONNECTED_LOCAL: {
                this.dispatchToStore();
            }
        }
    }
    
    @Override
    public void onConnected() {
        synchronized (this) {
            this.failedConnectTimer = this.cancelTimer(this.failedConnectTimer);
            this.connectTries = 0;
            Log.iDebug("Connected to service");
            this.state = ConnectState.CONNECTED_SERVICE;
            this.sendQueue();
            this.disconnectCheckTimer = this.cancelTimer(this.disconnectCheckTimer);
            (this.disconnectCheckTimer = new Timer("disconnect check")).schedule(new DisconnectCheckTask(), this.idleTimeout);
        }
    }
    
    @Override
    public void onConnectionFailed(final int n, final Intent intent) {
        synchronized (this) {
            this.state = ConnectState.PENDING_CONNECTION;
            if (this.connectTries < 2) {
                Log.w("Service unavailable (code=" + n + "), will retry.");
                this.fireReconnectAttempt();
            }
            else {
                Log.w("Service unavailable (code=" + n + "), using local store.");
                this.useStore();
            }
        }
    }
    
    @Override
    public void onDisconnected() {
        while (true) {
            Label_0067: {
                synchronized (this) {
                    if (this.state == ConnectState.PENDING_DISCONNECT) {
                        Log.iDebug("Disconnected from service");
                        this.clearAllTimers();
                        this.state = ConnectState.DISCONNECTED;
                    }
                    else {
                        Log.iDebug("Unexpected disconnect.");
                        this.state = ConnectState.PENDING_CONNECTION;
                        if (this.connectTries >= 2) {
                            break Label_0067;
                        }
                        this.fireReconnectAttempt();
                    }
                    return;
                }
            }
            this.useStore();
        }
    }
    
    @Override
    public void putHit(final Map<String, String> map, final long n, final String s, final List<Command> list) {
        Log.iDebug("putHit called");
        this.queue.add(new HitParams(map, n, s, list));
        this.sendQueue();
    }
    
    void setClock(final Clock clock) {
        this.clock = clock;
    }
    
    public void setIdleTimeout(final long idleTimeout) {
        this.idleTimeout = idleTimeout;
    }
    
    private enum ConnectState
    {
        BLOCKED, 
        CONNECTED_LOCAL, 
        CONNECTED_SERVICE, 
        CONNECTING, 
        DISCONNECTED, 
        PENDING_CONNECTION, 
        PENDING_DISCONNECT;
    }
    
    private class DisconnectCheckTask extends TimerTask
    {
        @Override
        public void run() {
            if (GAServiceProxy.this.state == ConnectState.CONNECTED_SERVICE && GAServiceProxy.this.queue.isEmpty() && GAServiceProxy.this.lastRequestTime + GAServiceProxy.this.idleTimeout < GAServiceProxy.this.clock.currentTimeMillis()) {
                Log.iDebug("Disconnecting due to inactivity");
                GAServiceProxy.this.disconnectFromService();
                return;
            }
            GAServiceProxy.this.disconnectCheckTimer.schedule(new DisconnectCheckTask(), GAServiceProxy.this.idleTimeout);
        }
    }
    
    private class FailedConnectTask extends TimerTask
    {
        @Override
        public void run() {
            if (GAServiceProxy.this.state == ConnectState.CONNECTING) {
                GAServiceProxy.this.useStore();
            }
        }
    }
    
    private static class HitParams
    {
        private final List<Command> commands;
        private final long hitTimeInMilliseconds;
        private final String path;
        private final Map<String, String> wireFormatParams;
        
        public HitParams(final Map<String, String> wireFormatParams, final long hitTimeInMilliseconds, final String path, final List<Command> commands) {
            super();
            this.wireFormatParams = wireFormatParams;
            this.hitTimeInMilliseconds = hitTimeInMilliseconds;
            this.path = path;
            this.commands = commands;
        }
        
        public List<Command> getCommands() {
            return this.commands;
        }
        
        public long getHitTimeInMilliseconds() {
            return this.hitTimeInMilliseconds;
        }
        
        public String getPath() {
            return this.path;
        }
        
        public Map<String, String> getWireFormatParams() {
            return this.wireFormatParams;
        }
    }
    
    private class ReconnectTask extends TimerTask
    {
        @Override
        public void run() {
            GAServiceProxy.this.connectToService();
        }
    }
}
