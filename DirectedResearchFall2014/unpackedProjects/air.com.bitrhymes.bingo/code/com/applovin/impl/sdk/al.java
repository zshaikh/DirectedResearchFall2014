package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import java.util.concurrent.*;

class al
{
    protected final AppLovinSdkImpl a;
    protected final AppLovinLogger b;
    private final ScheduledExecutorService c;
    private final ScheduledExecutorService d;
    
    al(final AppLovinSdkImpl a) {
        super();
        this.a = a;
        this.c = this.a("main");
        this.d = this.a("back");
        this.b = a.getLogger();
    }
    
    private static void a(final Runnable runnable, final long n, final ScheduledExecutorService scheduledExecutorService) {
        if (n > 0L) {
            scheduledExecutorService.schedule(runnable, n, TimeUnit.MILLISECONDS);
            return;
        }
        scheduledExecutorService.submit(runnable);
    }
    
    protected ScheduledExecutorService a(final String s) {
        return Executors.newScheduledThreadPool(1, new ao(this, s));
    }
    
    void a(final ak ak, final long n) {
        if (ak == null) {
            throw new IllegalArgumentException("No task specified");
        }
        a(ak, n, this.c);
    }
    
    void a(final an an, final am am) {
        this.a(an, am, 0L);
    }
    
    void a(final an an, final am obj, final long n) {
        if (an == null) {
            throw new IllegalArgumentException("No task specified");
        }
        if (n < 0L) {
            throw new IllegalArgumentException("Invalid delay specified: " + n);
        }
        this.b.d(an.d, "Scheduling " + an.d + " on " + obj + " queue in " + n + "ms.");
        final aq aq = new aq(this, an, obj);
        if (obj == am.a) {
            a(aq, n, this.c);
            return;
        }
        a(aq, n, this.d);
    }
}
