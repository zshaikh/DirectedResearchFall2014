package com.google.ads;

import com.google.ads.internal.*;
import com.google.ads.util.*;
import android.app.*;
import android.os.*;
import android.view.*;
import java.util.*;

public class e
{
    private final d a;
    private h b;
    private final Object c;
    private Thread d;
    private final Object e;
    private boolean f;
    private final Object g;
    
    protected e() {
        super();
        this.b = null;
        this.c = new Object();
        this.d = null;
        this.e = new Object();
        this.f = false;
        this.g = new Object();
        this.a = null;
    }
    
    public e(final d a) {
        super();
        this.b = null;
        this.c = new Object();
        this.d = null;
        this.e = new Object();
        this.f = false;
        this.g = new Object();
        com.google.ads.util.a.b(a);
        this.a = a;
    }
    
    public static boolean a(final c c, final d d) {
        if (c.j() == null) {
            return true;
        }
        if (d.i().b()) {
            if (!c.j().a()) {
                b.e("InterstitialAd received a mediation response corresponding to a non-interstitial ad. Make sure you specify 'interstitial' as the ad-type in the mediation UI.");
                return false;
            }
            return true;
        }
        else {
            final AdSize c2 = d.i().g.a().c();
            if (c.j().a()) {
                b.e("AdView received a mediation response corresponding to an interstitial ad. Make sure you specify the banner ad size corresponding to the AdSize you used in your AdView  (" + c2 + ") in the ad-type field in the mediation UI.");
                return false;
            }
            final AdSize c3 = c.j().c();
            if (c3 != c2) {
                b.e("Mediation server returned ad size: '" + c3 + "', while the AdView was created with ad size: '" + c2 + "'. Using the ad-size passed to the AdView on creation.");
                return false;
            }
            return true;
        }
    }
    
    private boolean a(final h h, final String str) {
        if (this.e() != h) {
            com.google.ads.util.b.c("GWController: ignoring callback to " + str + " from non showing ambassador with adapter class: '" + h.h() + "'.");
            return false;
        }
        return true;
    }
    
    private boolean a(final String str, final Activity activity, final AdRequest adRequest, final f f, final HashMap<String, String> hashMap, final long n) {
        final h h = new h(this, this.a.i().g.a(), f, str, adRequest, hashMap);
        synchronized (h) {
            h.a(activity);
            long n2 = n;
            try {
                while (!h.c() && n2 > 0L) {
                    final long elapsedRealtime = SystemClock.elapsedRealtime();
                    h.wait(n2);
                    n2 -= SystemClock.elapsedRealtime() - elapsedRealtime;
                }
            }
            catch (InterruptedException ex) {
                com.google.ads.util.b.a("Interrupted while waiting for ad network to load ad using adapter class: " + str);
            }
            this.a.n().a(h.e());
            if (h.c() && h.d()) {
                View f2;
                if (this.a.i().b()) {
                    f2 = null;
                }
                else {
                    f2 = h.f();
                }
                m.a().c.a().post((Runnable)new Runnable() {
                    @Override
                    public void run() {
                        if (com.google.ads.e.this.e(h)) {
                            com.google.ads.util.b.a("Trying to switch GWAdNetworkAmbassadors, but GWController().destroy() has been called. Destroying the new ambassador and terminating mediation.");
                            return;
                        }
                        com.google.ads.e.this.a.a(f2, h, f, false);
                    }
                });
                return true;
            }
            if (!h.c()) {
                com.google.ads.util.b.a("Timeout occurred in adapter class: " + h.h());
            }
            h.b();
            return false;
        }
    }
    
    private void b(final c c, final AdRequest adRequest) {
        List<com.google.ads.a> f;
        long n = 0L;
        List<String> c2;
        HashMap<String, String> e = null;
        List<String> list;
        String a2;
        String b;
        String c3;
        f f2 = null;
        Iterator<String> iterator2 = null;
        String s = null;
        Activity activity = null;
        Label_0142_Outer:Label_0176_Outer:
        while (true) {
        Label_0294:
            while (true) {
            Label_0252:
                while (true) {
                Label_0243:
                    while (true) {
                        synchronized (this.e) {
                            com.google.ads.util.a.a(Thread.currentThread(), this.d);
                            // monitorexit(this.e)
                            f = c.f();
                            if (c.a()) {
                                n = c.b();
                                Block_7: {
                                    for (final com.google.ads.a a : f) {
                                        com.google.ads.util.b.a("Looking to fetch ads from network: " + a.b());
                                        c2 = a.c();
                                        e = a.e();
                                        list = a.d();
                                        a2 = a.a();
                                        b = a.b();
                                        c3 = c.c();
                                        if (list == null) {
                                            break Label_0243;
                                        }
                                        f2 = new f(a2, b, c3, list, c.h(), c.i());
                                        iterator2 = c2.iterator();
                                        if (iterator2.hasNext()) {
                                            break Block_7;
                                        }
                                    }
                                    break Label_0294;
                                }
                                s = iterator2.next();
                                activity = this.a.i().c.a();
                                if (activity == null) {
                                    com.google.ads.util.b.a("Activity is null while mediating.  Terminating mediation thread.");
                                    return;
                                }
                                break Label_0252;
                            }
                        }
                        n = 10000L;
                        continue Label_0142_Outer;
                    }
                    list = c.g();
                    continue Label_0176_Outer;
                }
                this.a.n().c();
                if (this.a(s, activity, adRequest, f2, e, n)) {
                    return;
                }
                if (this.d()) {
                    com.google.ads.util.b.a("GWController.destroy() called. Terminating mediation thread.");
                    return;
                }
                continue;
            }
            m.a().c.a().post((Runnable)new Runnable() {
                @Override
                public void run() {
                    com.google.ads.e.this.a.b(c);
                }
            });
        }
    }
    
    private boolean d() {
        synchronized (this.g) {
            return this.f;
        }
    }
    
    private h e() {
        synchronized (this.c) {
            return this.b;
        }
    }
    
    private boolean e(final h h) {
        synchronized (this.g) {
            if (this.d()) {
                h.b();
                return true;
            }
            return false;
        }
    }
    
    public void a(final c c, final AdRequest adRequest) {
        while (true) {
            while (true) {
                synchronized (this.e) {
                    if (this.a()) {
                        com.google.ads.util.b.c("Mediation thread is not done executing previous mediation  request. Ignoring new mediation request");
                        return;
                    }
                    if (c.d()) {
                        this.a.a((float)c.e());
                        if (!this.a.t()) {
                            this.a.g();
                        }
                        a(c, this.a);
                        (this.d = new Thread(new Runnable() {
                            @Override
                            public void run() {
                                com.google.ads.e.this.b(c, adRequest);
                                synchronized (com.google.ads.e.this.e) {
                                    com.google.ads.e.this.d = null;
                                }
                            }
                        })).start();
                        return;
                    }
                }
                if (this.a.t()) {
                    this.a.f();
                    continue;
                }
                continue;
            }
        }
    }
    
    public void a(final h h) {
        if (!this.a(h, "onPresentScreen")) {
            return;
        }
        m.a().c.a().post((Runnable)new Runnable() {
            @Override
            public void run() {
                com.google.ads.e.this.a.v();
            }
        });
    }
    
    public void a(final h h, final View view) {
        if (this.e() != h) {
            com.google.ads.util.b.c("GWController: ignoring onAdRefreshed() callback from non-showing ambassador (adapter class name is '" + h.h() + "').");
            return;
        }
        this.a.n().a(com.google.ads.g.a.a);
        m.a().c.a().post((Runnable)new Runnable() {
            final /* synthetic */ f b = com.google.ads.e.this.b.a();
            
            @Override
            public void run() {
                com.google.ads.e.this.a.a(view, com.google.ads.e.this.b, this.b, true);
            }
        });
    }
    
    public void a(final h h, final boolean b) {
        if (!this.a(h, "onAdClicked()")) {
            return;
        }
        m.a().c.a().post((Runnable)new Runnable() {
            final /* synthetic */ f a = h.a();
            
            @Override
            public void run() {
                com.google.ads.e.this.a.a(this.a, b);
            }
        });
    }
    
    public boolean a() {
        while (true) {
            synchronized (this.e) {
                if (this.d != null) {
                    return true;
                }
            }
            return false;
        }
    }
    
    public void b() {
        synchronized (this.g) {
            this.f = true;
            this.d(null);
            synchronized (this.e) {
                if (this.d != null) {
                    this.d.interrupt();
                }
            }
        }
    }
    
    public void b(final h h) {
        if (!this.a(h, "onDismissScreen")) {
            return;
        }
        m.a().c.a().post((Runnable)new Runnable() {
            @Override
            public void run() {
                com.google.ads.e.this.a.u();
            }
        });
    }
    
    public void c(final h h) {
        if (!this.a(h, "onLeaveApplication")) {
            return;
        }
        m.a().c.a().post((Runnable)new Runnable() {
            @Override
            public void run() {
                com.google.ads.e.this.a.w();
            }
        });
    }
    
    public boolean c() {
        com.google.ads.util.a.a(this.a.i().b());
        final h e = this.e();
        if (e != null) {
            e.g();
            return true;
        }
        com.google.ads.util.b.b("There is no ad ready to show.");
        return false;
    }
    
    public void d(final h b) {
        synchronized (this.c) {
            if (this.b != b) {
                if (this.b != null) {
                    this.b.b();
                }
                this.b = b;
            }
        }
    }
}
