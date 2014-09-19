package com.vungle.sdk;

import android.content.*;

public final class ac extends BroadcastReceiver
{
    private static final IntentFilter a;
    private static final ac b;
    private boolean c;
    
    static {
        a = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        b = new ac();
    }
    
    public static ac a() {
        return ac.b;
    }
    
    private void a(final boolean c) {
        if (this.c != c) {
            final Context e = n.e();
            if (this.c) {
                final String a = IVungleConstants.a;
                e.unregisterReceiver((BroadcastReceiver)this);
            }
            else {
                final String a2 = IVungleConstants.a;
                e.registerReceiver((BroadcastReceiver)this, ac.a);
            }
            this.c = c;
        }
    }
    
    public final void b() {
        if (VungleUtil.e(n.e())) {
            return;
        }
        Thread.currentThread().getName();
        synchronized (this) {
            if (!this.c && !VungleUtil.e(n.e())) {
                this.a(true);
            }
            while (this.c) {
                try {
                    this.wait();
                }
                catch (InterruptedException ex) {}
            }
        }
    }
    
    public final void onReceive(final Context context, final Intent intent) {
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) || intent.getBooleanExtra("noConnectivity", false) || intent.getBooleanExtra("isFailover", false)) {
            return;
        }
        final String a = IVungleConstants.a;
        synchronized (this) {
            this.a(false);
            this.notifyAll();
        }
    }
}
