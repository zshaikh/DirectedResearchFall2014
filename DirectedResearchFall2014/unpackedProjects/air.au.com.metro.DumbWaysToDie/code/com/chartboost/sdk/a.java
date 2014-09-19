package com.chartboost.sdk;

import android.app.*;
import android.content.*;
import android.widget.*;
import com.chartboost.sdk.impl.*;
import android.view.*;

public final class a
{
    private Chartboost a;
    private Activity b;
    private r c;
    private boolean d;
    private boolean e;
    private boolean f;
    private s g;
    private s h;
    
    protected a(final Chartboost a, final Activity b) {
        super();
        this.d = false;
        this.e = false;
        this.f = false;
        this.a = a;
        this.b = b;
    }
    
    private void b() {
        this.c = new r((Context)this.b);
        this.h = new s((Context)this.b, (s.a)this.c);
        this.h.b().a(true);
        this.b.addContentView((View)this.h, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
        this.h.b().a();
        this.h.b().a((View)this.c.getParent());
        this.d = true;
    }
    
    private void b(final a a) {
        if (!this.e) {
            a.c = com.chartboost.sdk.impl.a.b.b;
            if (!a.f.b()) {
                if (a.f.d != null) {
                    a.f.d.a();
                }
            }
            else {
                if (a.i) {
                    a.i = false;
                    this.g = new s((Context)this.b, (s.a)a.f.d());
                    this.b.addContentView((View)this.g, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
                    a.c = com.chartboost.sdk.impl.a.b.c;
                    a.h = this.g;
                    this.e = true;
                    return;
                }
                this.g = new s((Context)this.b, (s.a)a.f.d());
                this.b.addContentView((View)this.g, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
                this.g.b().a();
                Enum<n.b> enum1 = n.b.b;
                if (a.d == com.chartboost.sdk.impl.a.c.c) {
                    enum1 = n.b.d;
                }
                if (a.a.optInt("animation") != 0) {
                    enum1 = n.b.values()[a.a.optInt("animation")];
                }
                a.c = com.chartboost.sdk.impl.a.b.c;
                a.h = this.g;
                n.a((n.b)enum1, a);
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
    
    private n.a c(final a a) {
        return new n.a() {
            @Override
            public void a(final a a) {
                a.this.a.a.post((Runnable)new b(a, false));
            }
        };
    }
    
    protected void a(final Activity b) {
        this.b = b;
    }
    
    protected void a(final a a) {
        if (a.a) {
            this.b();
        }
        else if (a.b != null) {
            this.b(a.b);
        }
    }
    
    public void a(final a a) {
        this.e = false;
        new b(a, true).run();
        Label_0057: {
            if (a.c != com.chartboost.sdk.impl.a.b.c) {
                break Label_0057;
            }
            a.c = com.chartboost.sdk.impl.a.b.b;
            while (true) {
                a.c();
                try {
                    ((ViewGroup)this.g.getParent()).removeView((View)this.g);
                    return;
                    a.c = com.chartboost.sdk.impl.a.b.a;
                }
                catch (Exception ex) {}
            }
        }
    }
    
    public void a(final a a, final boolean b) {
        this.e = false;
        if (!b) {
            this.f = true;
        }
        a.c = a.b.d;
        Enum<n.b> enum1 = n.b.b;
        if (a.d == com.chartboost.sdk.impl.a.c.c) {
            enum1 = n.b.d;
        }
        if (a.a.optInt("animation") != 0) {
            enum1 = n.b.values()[a.a.optInt("animation")];
        }
        n.b((n.b)enum1, a, this.c(a));
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
                if (!this.f && b && this.a.getImpressionsUseActivities() && !this.e && this.b instanceof CBImpressionActivity) {
                    this.a.c();
                    this.b.finish();
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
    
    public void b(final a a, final boolean b) {
        if (this.g != null) {
            while (true) {
                try {
                    ((ViewGroup)this.g.getParent()).removeView((View)this.g);
                    a.b();
                    this.g = null;
                    this.f = false;
                    if (this.a.getImpressionsUseActivities() && !b && !this.d && this.b instanceof CBImpressionActivity) {
                        this.a.c();
                        this.b.finish();
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
        private a b;
        private boolean c;
        
        public b(final a b, final boolean c) {
            super();
            this.b = b;
            this.c = c;
        }
        
        @Override
        public void run() {
            if (this.b.c == com.chartboost.sdk.impl.a.b.d) {
                this.b.c = com.chartboost.sdk.impl.a.b.a;
                com.chartboost.sdk.a.this.b(this.b, this.c);
            }
        }
    }
}
