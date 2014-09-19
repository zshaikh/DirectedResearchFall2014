package com.flurry.android;

import android.widget.*;
import android.content.*;
import android.view.*;
import java.util.concurrent.*;

final class ac extends RelativeLayout
{
    private static String d;
    private final Context J;
    private final FlurryAds am;
    private final String an;
    private final ViewGroup ao;
    private long ap;
    private final ScheduledExecutorService aq;
    private final Runnable ar;
    private ScheduledFuture<?> as;
    
    static {
        ac.d = "FlurryAgent";
    }
    
    public ac(final FlurryAds am, final Context j, final String an, final ViewGroup ao) {
        super(j);
        this.aq = Executors.newSingleThreadScheduledExecutor();
        this.ar = new g(this);
        this.am = am;
        this.J = j;
        this.an = an;
        this.ao = ao;
    }
    
    private void i() {
        synchronized (this) {
            this.j();
            this.ap = 0L;
            this.removeCallbacks(this.ar);
        }
    }
    
    private void j() {
        if (this.as != null) {
            new StringBuilder().append("cancel banner rotation for adSpace = ").append(this.an).append(" with fixed rate in milliseconds = ").append(this.ap).toString();
            this.as.cancel(true);
            this.as = null;
        }
    }
    
    private p k() {
        if (this.getChildCount() < 1) {
            return null;
        }
        final View child = this.getChildAt(0);
        try {
            return (p)child;
        }
        catch (ClassCastException ex) {
            return null;
        }
    }
    
    public final void a(final long ap) {
        synchronized (this) {
            if (this.ap != ap) {
                this.j();
                this.ap = ap;
                if (this.as == null && 0L != this.ap) {
                    new StringBuilder().append("schedule banner rotation for adSpace = ").append(this.an).append(" with fixed rate in milliseconds = ").append(this.ap).toString();
                    this.as = this.aq.scheduleAtFixedRate(new ay(this), this.ap, this.ap, TimeUnit.MILLISECONDS);
                }
            }
        }
    }
    
    public final ViewGroup h() {
        return this.ao;
    }
    
    public final void stop() {
        this.i();
        final p k = this.k();
        if (k != null) {
            k.stop();
        }
    }
}
