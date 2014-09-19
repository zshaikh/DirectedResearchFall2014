package com.chartboost.sdk;

import java.lang.ref.*;
import android.app.*;
import android.content.*;
import android.widget.*;
import com.chartboost.sdk.impl.*;
import android.view.*;

public final class b
{
    private Chartboost a;
    private WeakReference<Activity> b;
    private t c;
    private boolean d;
    private boolean e;
    private boolean f;
    private u g;
    private u h;
    
    protected b(final Chartboost a, final Activity referent) {
        super();
        this.d = false;
        this.e = false;
        this.f = false;
        this.a = a;
        this.b = new WeakReference<Activity>(referent);
    }
    
    private void b(final com.chartboost.sdk.impl.a a) {
        if (!this.e) {
            a.c = com.chartboost.sdk.impl.a.b.b;
            final Activity activity = this.b.get();
            if (!a.f.b() || activity == null) {
                if (a.f.d != null) {
                    a.f.d.a();
                }
            }
            else {
                if (a.i) {
                    a.i = false;
                    activity.addContentView((View)(this.g = new u((Context)activity, (u.a)a.f.d())), (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
                    a.c = com.chartboost.sdk.impl.a.b.c;
                    a.h = this.g;
                    this.e = true;
                    return;
                }
                activity.addContentView((View)(this.g = new u((Context)activity, (u.a)a.f.d())), (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
                this.g.b().a();
                p.b b = p.b.a;
                if (a.d == com.chartboost.sdk.impl.a.c.c) {
                    b = p.b.c;
                }
                final p.b a2 = p.b.a(a.a.optInt("animation"));
                if (a2 != null) {
                    b = a2;
                }
                if (this.a.getAnimationsOff()) {
                    b = p.b.f;
                }
                a.c = com.chartboost.sdk.impl.a.b.c;
                a.h = this.g;
                p.a(b, a);
                this.e = true;
                final ChartboostDelegate delegate = this.a.getDelegate();
                if (delegate != null) {
                    if (a.d == com.chartboost.sdk.impl.a.c.b) {
                        delegate.didShowInterstitial(a.e);
                        return;
                    }
                    if (a.d == com.chartboost.sdk.impl.a.c.c) {
                        delegate.didShowMoreApps();
                    }
                }
            }
        }
    }
    
    private p.a c(final com.chartboost.sdk.impl.a a) {
        return new p.a() {
            @Override
            public void a(final a a) {
                b.this.a.c.post((Runnable)new b(a, false));
            }
        };
    }
    
    private void d() {
        final Activity activity = this.b.get();
        if (activity == null) {
            return;
        }
        this.c = new t((Context)activity);
        this.h = new u((Context)activity, (u.a)this.c);
        this.h.b().a(true);
        activity.addContentView((View)this.h, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
        this.h.b().a();
        this.h.b().a((View)this.c.getParent());
        this.d = true;
    }
    
    protected void a(final Activity referent) {
        this.b = new WeakReference<Activity>(referent);
    }
    
    protected void a(final a a) {
        if (a.a) {
            this.d();
        }
        else if (a.b != null) {
            this.b(a.b);
        }
    }
    
    public void a(final com.chartboost.sdk.impl.a a) {
        this.e = false;
        new b(a, true).run();
        Label_0062: {
            if (a.c != com.chartboost.sdk.impl.a.b.c) {
                break Label_0062;
            }
            a.c = com.chartboost.sdk.impl.a.b.b;
            while (true) {
                a.c();
                while (true) {
                    try {
                        ((ViewGroup)this.g.getParent()).removeView((View)this.g);
                        this.g = null;
                        return;
                        a.c = com.chartboost.sdk.impl.a.b.a;
                    }
                    catch (Exception ex) {
                        ex.printStackTrace();
                        continue;
                    }
                    break;
                }
            }
        }
    }
    
    public void a(final com.chartboost.sdk.impl.a a, final boolean b) {
        this.e = false;
        if (!b) {
            this.f = true;
        }
        a.c = a.b.d;
        p.b b2 = p.b.a;
        if (a.d == com.chartboost.sdk.impl.a.c.c) {
            b2 = p.b.c;
        }
        final p.b a2 = p.b.a(a.a.optInt("animation"));
        if (a2 != null) {
            b2 = a2;
        }
        if (this.a.getAnimationsOff()) {
            b2 = p.b.f;
        }
        p.b(b2, a, this.c(a));
    }
    
    public void a(final boolean b) {
        if (!this.a()) {
            return;
        }
        while (true) {
            try {
                ((ViewGroup)this.h.getParent()).removeView((View)this.h);
                this.c = null;
                this.h = null;
                this.d = false;
                final Activity activity = this.b.get();
                if (!this.f && b && this.a.getImpressionsUseActivities() && !this.e && activity != null && activity instanceof CBImpressionActivity) {
                    this.a.d();
                    activity.finish();
                }
            }
            catch (Exception ex) {
                ex.printStackTrace();
                continue;
            }
            break;
        }
    }
    
    protected boolean a() {
        return this.d;
    }
    
    public void b(final com.chartboost.sdk.impl.a a, final boolean b) {
        if (this.g != null) {
            while (true) {
                try {
                    ((ViewGroup)this.g.getParent()).removeView((View)this.g);
                    a.b();
                    this.g = null;
                    this.f = false;
                    if (this.a.getImpressionsUseActivities() && !b && !this.d) {
                        final Activity activity = this.b.get();
                        if (activity != null && activity instanceof CBImpressionActivity) {
                            activity.finish();
                        }
                    }
                }
                catch (Exception ex) {
                    ex.printStackTrace();
                    continue;
                }
                break;
            }
        }
    }
    
    protected boolean b() {
        return this.e;
    }
    
    protected boolean c() {
        return this.a() || this.b();
    }
    
    protected static final class a
    {
        protected boolean a;
        protected com.chartboost.sdk.impl.a b;
        
        public a(final com.chartboost.sdk.impl.a b) {
            super();
            this.a = false;
            this.b = b;
        }
        
        protected a(final boolean a, final com.chartboost.sdk.impl.a b) {
            super();
            this.a = a;
            this.b = b;
        }
    }
    
    private class b implements Runnable
    {
        private com.chartboost.sdk.impl.a b;
        private boolean c;
        
        public b(final com.chartboost.sdk.impl.a b, final boolean c) {
            super();
            this.b = b;
            this.c = c;
        }
        
        @Override
        public void run() {
            if (this.b.c == com.chartboost.sdk.impl.a.b.d) {
                this.b.c = com.chartboost.sdk.impl.a.b.a;
                com.chartboost.sdk.b.this.b(this.b, this.c);
            }
        }
    }
}
