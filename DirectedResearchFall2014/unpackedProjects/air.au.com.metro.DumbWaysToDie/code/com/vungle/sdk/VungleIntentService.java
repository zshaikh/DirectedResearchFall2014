package com.vungle.sdk;

import android.app.*;
import java.util.*;
import android.content.*;
import android.os.*;

public class VungleIntentService extends Service
{
    public static final String a;
    final Map<String, a> b;
    
    static {
        a = VungleIntentService.class.getSimpleName();
    }
    
    public VungleIntentService() {
        super();
        this.b = new HashMap<String, a>();
    }
    
    public IBinder onBind(final Intent intent) {
        return null;
    }
    
    public void onStart(final Intent obj, final int n) {
        if (obj != null) {
            try {
                final Context applicationContext = this.getApplicationContext();
                u.a(applicationContext);
                if (n.e() == null) {
                    n.a(applicationContext);
                }
                final String action = obj.getAction();
                synchronized (this.b) {
                    if (this.b.isEmpty()) {
                        final String a = VungleIntentService.a;
                    }
                    Object o = this.b.get(action);
                    if (o == null && "Http".equals(action)) {
                        o = new ai(this);
                        this.b.put("Http", (a)o);
                    }
                    if (o != null) {
                        ((a)o).a(obj);
                    }
                    // monitorexit(this.b)
                    if (o == null) {
                        final String a2 = VungleIntentService.a;
                        new StringBuilder("Unknown action").append(obj);
                    }
                }
            }
            catch (Exception ex) {
                r.a(VungleIntentService.a, ex);
            }
        }
    }
    
    public int onStartCommand(final Intent intent, final int n, final int n2) {
        this.onStart(intent, n2);
        return 2;
    }
    
    public abstract static class a
    {
        final String a;
        protected final Handler b;
        
        public a(final VungleIntentService vungleIntentService, final String str) {
            super();
            this.a = "VungleIntentService[" + str + "@" + Integer.toHexString(this.hashCode()) + "]";
            final String a = VungleIntentService.a;
            new StringBuilder("Starting ").append(this.a);
            final HandlerThread handlerThread = new HandlerThread(this.a);
            handlerThread.start();
            final Looper looper = handlerThread.getLooper();
            this.b = new Handler(looper) {
                public final void handleMessage(final Message message) {
                    try {
                        VungleIntentService.a.this.a(message);
                        synchronized (vungleIntentService.b) {
                            if (!this.hasMessages(1)) {
                                final String a = VungleIntentService.a;
                                new StringBuilder("Stopping ").append(VungleIntentService.a.this.a);
                                looper.quit();
                                vungleIntentService.b.remove(str);
                                if (vungleIntentService.b.isEmpty()) {
                                    final String a2 = VungleIntentService.a;
                                    vungleIntentService.stopSelf();
                                }
                            }
                        }
                    }
                    catch (Exception ex) {
                        r.a(VungleIntentService.a, ex);
                    }
                }
            };
        }
        
        protected abstract void a(final Intent p0);
        
        protected abstract void a(final Message p0);
    }
}
