package com.chartboost.sdk;

import org.json.*;
import android.content.*;
import com.chartboost.sdk.impl.*;
import com.chartboost.sdk.Libraries.*;
import java.util.concurrent.*;
import java.util.*;

class a
{
    private ArrayList<a> a;
    private a b;
    private Chartboost c;
    private j d;
    private n e;
    private Map<String, a> f;
    private a g;
    private a h;
    private a.a i;
    private n.a j;
    
    public a(final Chartboost c) {
        super();
        this.a = new ArrayList<a>();
        this.b = null;
        this.i = new a.a() {
            private void a(final JSONObject jsonObject, final String s, final k k) {
                if (jsonObject == null) {
                    return;
                }
                try {
                    if (jsonObject.getString(s) != null) {
                        k.a(s, (Object)jsonObject.optString(s));
                    }
                }
                catch (JSONException ex) {}
            }
            
            @Override
            public void a(final a a) {
                final a.b c = a.c;
                final a.b e = a.b.e;
                boolean b = false;
                Label_0143: {
                    if (c != e) {
                        break Label_0143;
                    }
                Label_0188_Outer:
                    while (true) {
                        while (true) {
                        Label_0265:
                            while (true) {
                                synchronized (this) {
                                    final a a2 = a.this.a(a.d, a.e);
                                    b = false;
                                    if (a2 != null) {
                                        final boolean a3 = a2.a;
                                        b = false;
                                        if (!a3) {
                                            b = true;
                                        }
                                    }
                                    // monitorexit(this)
                                    if (a.d == com.chartboost.sdk.impl.a.c.b && a.e != null) {
                                        a.this.f.put(a.e, a);
                                        if (a.this.c.getDelegate() != null && !b) {
                                            a.this.c.getDelegate().didCacheInterstitial(a.e);
                                        }
                                        a.c = com.chartboost.sdk.impl.a.b.f;
                                        if (a.c == com.chartboost.sdk.impl.a.b.b || b) {
                                            if (!b) {
                                                a.c = com.chartboost.sdk.impl.a.b.a;
                                            }
                                            if (a.d != com.chartboost.sdk.impl.a.c.b) {
                                                break Label_0265;
                                            }
                                            a.this.b(a);
                                        }
                                        a.this.b(a.d, a.e);
                                        return;
                                    }
                                }
                                if (a.d != com.chartboost.sdk.impl.a.c.c) {
                                    continue Label_0188_Outer;
                                }
                                a.a(a.this, a);
                                if (a.this.c.getDelegate() != null && !b) {
                                    a.this.c.getDelegate().didCacheMoreApps();
                                    continue Label_0188_Outer;
                                }
                                continue Label_0188_Outer;
                            }
                            if (a.d == com.chartboost.sdk.impl.a.c.c) {
                                a.this.c(a);
                                continue;
                            }
                            continue;
                        }
                    }
                }
            }
            
            @Override
            public void a(final a a, final String s, final JSONObject jsonObject) {
                a.d(a.this, null);
                boolean b;
                if (s != null && !s.equals("") && !s.equals("null")) {
                    b = true;
                }
                else {
                    b = false;
                }
                if (a.d == a.c.b) {
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didDismissInterstitial(a.e);
                    }
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didClickInterstitial(a.e);
                    }
                    if (a.c == com.chartboost.sdk.impl.a.b.c) {
                        final b a2 = a.this.c.a();
                        if (a2 != null) {
                            a2.a(a, !b);
                        }
                    }
                }
                else if (a.d == a.c.c) {
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didDismissMoreApps();
                    }
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didClickMoreApps();
                    }
                    if (a.c == com.chartboost.sdk.impl.a.b.c) {
                        final b a3 = a.this.c.a();
                        if (a3 != null) {
                            a3.a(a, !b);
                        }
                    }
                }
                final k k = new k("api/click");
                Object o;
                if (a.this.c.a == null) {
                    o = a.this.c.c();
                }
                else {
                    o = a.this.c.a.b();
                }
                if (o == null) {
                    o = a.this.c.getContext();
                }
                k.a((Context)o);
                this.a(a.a, "to", k);
                this.a(a.a, "cgn", k);
                this.a(a.a, "creative", k);
                this.a(a.a, "ad_id", k);
                this.a(jsonObject, "cgn", k);
                this.a(jsonObject, "creative", k);
                this.a(jsonObject, "type", k);
                this.a(jsonObject, "more_type", k);
                k.b(a.this.c.getAppID(), a.this.c.getAppSignature());
                if (b) {
                    a.this.c.a(new b.a(true, null));
                    a.this.d.a(k, (j.b)new j.b() {
                        @Override
                        public void a(final k k, final String s) {
                            com.chartboost.sdk.a.this.j.a(false, s);
                        }
                        
                        @Override
                        public void a(final JSONObject jsonObject, final k k) {
                            com.chartboost.sdk.a.this.a(jsonObject, s);
                        }
                    });
                    return;
                }
                a.this.j.a(false, s);
                a.this.d.a(k);
            }
            
            @Override
            public void b(final a a) {
                a.d(a.this, null);
                if (a.d == a.c.b) {
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didDismissInterstitial(a.e);
                    }
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didCloseInterstitial(a.e);
                    }
                    if (a.c == a.b.c) {
                        final b a2 = a.this.c.a();
                        if (a2 != null) {
                            a2.a(a, true);
                        }
                    }
                }
                else if (a.d == a.c.c) {
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didDismissMoreApps();
                    }
                    if (a.this.c.getDelegate() != null) {
                        a.this.c.getDelegate().didCloseMoreApps();
                    }
                    if (a.c == a.b.c) {
                        final b a3 = a.this.c.a();
                        if (a3 != null) {
                            a3.a(a, true);
                        }
                    }
                }
            }
            
            @Override
            public void c(final a a) {
                final a a2 = a.this;
                final a.c d = a.d;
                String e;
                if (a.d == a.c.b) {
                    e = a.e;
                }
                else {
                    e = null;
                }
                a2.c(d, e);
            }
        };
        this.j = new n.a() {
            @Override
            public void a(final boolean b, final String s) {
                final com.chartboost.sdk.b a = com.chartboost.sdk.a.this.c.a();
                if (a != null && a.a()) {
                    a.a(true);
                }
                if (!b && com.chartboost.sdk.a.this.c.getDelegate() != null) {
                    com.chartboost.sdk.a.this.c.getDelegate().didFailToLoadUrl(s);
                }
            }
        };
        this.c = c;
        this.d = this.c.b;
        this.e = new n(this.j);
        this.f = new HashMap<String, a>();
        this.g = null;
    }
    
    static /* synthetic */ void a(final a a, final a g) {
        a.g = g;
    }
    
    private void a(final String s, final boolean b) {
        final com.chartboost.sdk.b a = this.c.a();
        if (!b && a != null && a.c()) {
            if (this.c.getDelegate() != null) {
                this.c.getDelegate().didFailToLoadInterstitial(s);
            }
        }
        else if (this.c.getDelegate() == null || this.c.getDelegate().shouldRequestInterstitial(s)) {
            if (m.a()) {
                // monitorexit(this)
                Label_0174: {
                    synchronized (this) {
                        final a a2 = this.a(com.chartboost.sdk.impl.a.c.b, s);
                        if (a2 == null) {
                            break Label_0174;
                        }
                        if (!b && a2.a) {
                            com.chartboost.sdk.a.a.a(a2, false);
                            return;
                        }
                    }
                    if (this.c.getDelegate() != null) {
                        this.c.getDelegate().didFailToLoadInterstitial(s);
                    }
                    return;
                }
                this.a(com.chartboost.sdk.impl.a.c.b, s, b);
                // monitorexit(this)
                final k k = new k("api/get");
                k.a(this.c.a.b());
                k.a("location", (Object)s);
                if (b) {
                    k.a("cache", (Object)"1");
                }
                k.b(this.c.getAppID(), this.c.getAppSignature());
                this.d.a(k, (j.b)new j.b() {
                    @Override
                    public void a(final k k, final String s) {
                        com.chartboost.sdk.a.this.c(com.chartboost.sdk.impl.a.c.b, s);
                        final b a = com.chartboost.sdk.a.this.c.a();
                        if (a != null && a.a()) {
                            a.a(true);
                        }
                    }
                    
                    @Override
                    public void a(final JSONObject jsonObject, final k k) {
                        com.chartboost.sdk.a.this.a(jsonObject, com.chartboost.sdk.impl.a.c.b, b, s, false);
                    }
                });
                return;
            }
            if (this.c.getDelegate() != null) {
                this.c.getDelegate().didFailToLoadInterstitial(s);
            }
        }
    }
    
    private void a(final JSONObject jsonObject, final com.chartboost.sdk.impl.a.c c, final boolean b, final String s, final boolean b2) {
        if (!jsonObject.optString("status", "").equals("200")) {
            this.c(c, s);
            return;
        }
        if (c == com.chartboost.sdk.impl.a.c.c && !b) {
            final com.chartboost.sdk.b a = this.c.a();
            boolean b3 = false;
            if (a != null) {
                final boolean a2 = this.c.a().a();
                b3 = false;
                if (a2) {
                    b3 = true;
                }
            }
            if (b2 && !b3) {
                this.b(c, s);
                return;
            }
        }
        com.chartboost.sdk.impl.a.b b4;
        if (b) {
            b4 = com.chartboost.sdk.impl.a.b.e;
        }
        else {
            b4 = com.chartboost.sdk.impl.a.b.b;
        }
        new a(jsonObject, c, this.i, b4, s, b2);
    }
    
    private void a(final JSONObject jsonObject, final String s) {
        this.e.a(s, this.c.getHostActivity());
    }
    
    private void b(final a a) {
        if (!a.k && this.c.getDelegate() != null && !this.c.getDelegate().shouldDisplayInterstitial(a.e)) {
            this.b(a.d, a.e);
            return;
        }
        if (a.c == com.chartboost.sdk.impl.a.b.f && this.f.get(a.e) == a) {
            this.f.remove(a.e);
            final k k = new k("api/show");
            k.a(this.c.a.b());
            final String optString = a.a.optString("ad_id");
            if (optString != null) {
                k.a("ad_id", (Object)optString);
            }
            k.b(this.c.getAppID(), this.c.getAppSignature());
            this.d.a(k);
        }
        a.c = com.chartboost.sdk.impl.a.b.b;
        this.c.a(new com.chartboost.sdk.b.a(a));
    }
    
    private void c(final com.chartboost.sdk.impl.a.c c, final String s) {
        this.b(c, s);
        final com.chartboost.sdk.b a = this.c.a();
        if (c == com.chartboost.sdk.impl.a.c.c && a != null && a.a()) {
            a.a(true);
        }
        this.a((a)null);
        if (c == com.chartboost.sdk.impl.a.c.b && this.c.getDelegate() != null) {
            this.c.getDelegate().didFailToLoadInterstitial(s);
        }
        if (c == com.chartboost.sdk.impl.a.c.c && this.c.getDelegate() != null) {
            this.c.getDelegate().didFailToLoadMoreApps();
        }
    }
    
    private void c(final a a) {
        if (!a.k && this.c.getDelegate() != null && !this.c.getDelegate().shouldDisplayMoreApps()) {
            this.b(a.d, a.e);
            return;
        }
        if (a == this.g) {
            this.g = null;
        }
        final boolean b = a.c == com.chartboost.sdk.impl.a.b.f;
        a.c = com.chartboost.sdk.impl.a.b.a;
        final boolean l = a.l;
        final com.chartboost.sdk.b a2 = this.c.a();
        if (a2 != null) {
            if (a2.a() || !l) {
                if (l) {
                    a2.a(false);
                }
            }
            else if (!b && !a.j) {
                return;
            }
        }
        a.c = com.chartboost.sdk.impl.a.b.b;
        this.c.a(new com.chartboost.sdk.b.a(a));
    }
    
    static /* synthetic */ void d(final a a, final a h) {
        a.h = h;
    }
    
    public a a(final com.chartboost.sdk.impl.a.c c, final String s) {
        while (true) {
            while (true) {
                Label_0116: {
                    Label_0113: {
                        synchronized (this) {
                            a b;
                            if (c == com.chartboost.sdk.impl.a.c.c) {
                                b = this.b;
                            }
                            else if (c == com.chartboost.sdk.impl.a.c.b) {
                                if (s == null) {
                                    final String s2 = "";
                                    break Label_0116;
                                }
                                break Label_0113;
                            }
                            else {
                                b = null;
                            }
                            return b;
                            // iftrue(Label_0056:, index < this.a.size())
                            return null;
                            Label_0096: {
                                int index = 0;
                                ++index;
                            }
                            continue;
                            int index = 0;
                            b = this.a.get(index);
                            return b;
                            b = null;
                            return b;
                            Label_0056:
                            // iftrue(Label_0096:, !s2.equals((Object)a.b((a)this.a.get(index))))
                            return this.a.get(index);
                        }
                    }
                    final String s2 = s;
                }
                int index = 0;
                continue;
            }
        }
    }
    
    protected a a() {
        return this.h;
    }
    
    public void a(final com.chartboost.sdk.impl.a.c c, final String s, final boolean b) {
        synchronized (this) {
            final a a = new a(c, s, b);
            if (c == com.chartboost.sdk.impl.a.c.c) {
                this.b = a;
            }
            else if (c == com.chartboost.sdk.impl.a.c.b) {
                this.a.add(a);
            }
        }
    }
    
    protected void a(final a h) {
        this.h = h;
    }
    
    public void a(final String s) {
        if (this.c.getDelegate() != null && !this.c.getDelegate().shouldRequestInterstitialsInFirstSession() && com.chartboost.sdk.Libraries.d.a().getInt("cbPrefSessionCount", 0) <= 1) {
            return;
        }
        this.a(s, true);
    }
    
    protected void a(final boolean b) {
        final com.chartboost.sdk.b a = this.c.a();
        if (!b && a != null && a.c()) {
            if (this.c.getDelegate() != null) {
                this.c.getDelegate().didFailToLoadMoreApps();
            }
        }
        else if (this.c.getDelegate() == null || this.c.getDelegate().shouldRequestMoreApps()) {
            if (m.a()) {
                // monitorexit(this)
                Label_0168: {
                    synchronized (this) {
                        final a a2 = this.a(com.chartboost.sdk.impl.a.c.c, null);
                        if (a2 == null) {
                            break Label_0168;
                        }
                        if (!b && a2.a) {
                            com.chartboost.sdk.a.a.a(a2, false);
                            return;
                        }
                    }
                    if (this.c.getDelegate() != null) {
                        this.c.getDelegate().didFailToLoadMoreApps();
                    }
                    return;
                }
                this.a(com.chartboost.sdk.impl.a.c.c, null, b);
                // monitorexit(this)
                boolean b2;
                if (!b) {
                    if (this.c.getDelegate() != null && !this.c.getDelegate().shouldDisplayLoadingViewForMoreApps()) {
                        b2 = false;
                    }
                    else {
                        this.c.a(new com.chartboost.sdk.b.a(true, null));
                        b2 = true;
                    }
                }
                else {
                    b2 = false;
                }
                final k k = new k("api/more");
                k.a(this.c.a.b());
                if (b) {
                    k.a("cache", (Object)"1");
                }
                k.b(this.c.getAppID(), this.c.getAppSignature());
                this.d.a(k, (j.b)new j.b() {
                    @Override
                    public void a(final k k, final String s) {
                        com.chartboost.sdk.a.this.c(com.chartboost.sdk.impl.a.c.c, null);
                        final b a = com.chartboost.sdk.a.this.c.a();
                        if (a != null && a.a()) {
                            a.a(true);
                        }
                    }
                    
                    @Override
                    public void a(final JSONObject jsonObject, final k k) {
                        com.chartboost.sdk.a.this.a(jsonObject, com.chartboost.sdk.impl.a.c.c, b, null, b2);
                    }
                });
                return;
            }
            if (this.c.getDelegate() != null) {
                this.c.getDelegate().didFailToLoadMoreApps();
            }
        }
    }
    
    protected void b() {
        this.c.getHandler().post((Runnable)new c((c)null));
    }
    
    public void b(final com.chartboost.sdk.impl.a.c c, final String s) {
        synchronized (this) {
            if (c == com.chartboost.sdk.impl.a.c.c) {
                this.b = null;
            }
            else if (c == com.chartboost.sdk.impl.a.c.b) {
                final a a = this.a(c, s);
                if (a != null) {
                    this.a.remove(a);
                }
            }
        }
    }
    
    protected void b(final String s) {
        if (this.c.getDelegate() != null && !this.c.getDelegate().shouldRequestInterstitialsInFirstSession() && com.chartboost.sdk.Libraries.d.a().getInt("cbPrefSessionCount", 0) == 1) {
            return;
        }
        this.c.getHandler().post((Runnable)new b(s));
    }
    
    protected boolean c() {
        return this.g != null;
    }
    
    protected boolean c(final String s) {
        final a a = this.f.get(s);
        return a != null && TimeUnit.MILLISECONDS.toSeconds(new Date().getTime() - a.b.getTime()) < 86400L;
    }
    
    protected void d() {
        if (this.h == null) {
            return;
        }
        this.i.b(this.h);
    }
    
    protected void e() {
        this.f = new HashMap<String, a>();
        this.g = null;
    }
    
    static class a
    {
        private boolean a;
        private String b;
        private com.chartboost.sdk.impl.a.c c;
        
        public a(final com.chartboost.sdk.impl.a.c c, final String b, final boolean b2) {
            super();
            this.c = c;
            this.b = b;
            this.a(b2);
        }
        
        static /* synthetic */ void a(final a a, final boolean a2) {
            a.a = a2;
        }
        
        public void a(final boolean a) {
            this.a = a;
        }
    }
    
    private class b implements Runnable
    {
        private String b;
        
        public b(final String b) {
            super();
            this.b = b;
        }
        
        @Override
        public void run() {
            if (com.chartboost.sdk.a.this.c.hasCachedInterstitial(this.b)) {
                com.chartboost.sdk.a.this.b(com.chartboost.sdk.a.this.f.get(this.b));
                return;
            }
            com.chartboost.sdk.a.this.a(this.b, false);
        }
    }
    
    private class c implements Runnable
    {
        @Override
        public void run() {
            if (com.chartboost.sdk.a.this.g != null) {
                com.chartboost.sdk.a.this.c(com.chartboost.sdk.a.this.g);
                return;
            }
            com.chartboost.sdk.a.this.a(false);
        }
    }
}
