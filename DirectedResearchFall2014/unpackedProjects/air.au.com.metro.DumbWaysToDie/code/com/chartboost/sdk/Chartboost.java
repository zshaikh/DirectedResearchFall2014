package com.chartboost.sdk;

import android.os.*;
import android.app.*;
import org.json.*;
import com.chartboost.sdk.impl.*;
import com.chartboost.sdk.Libraries.*;
import java.util.concurrent.*;
import java.util.*;
import android.util.*;
import android.content.*;

public final class Chartboost
{
    private static Chartboost b;
    private m.a A;
    private com.chartboost.sdk.impl.a.a B;
    private j.c C;
    protected Handler a;
    private com.chartboost.sdk.a c;
    private m d;
    private Context e;
    private Activity f;
    private CBImpressionActivity g;
    private j h;
    private List<com.chartboost.sdk.a.a> i;
    private Map<String, com.chartboost.sdk.impl.a> j;
    private com.chartboost.sdk.impl.a k;
    private com.chartboost.sdk.impl.a l;
    private String m;
    private String n;
    private ChartboostDelegate o;
    private int p;
    private boolean q;
    private CBOrientation r;
    private boolean s;
    private boolean t;
    private Map<Integer, Boolean> u;
    private Map<Integer, com.chartboost.sdk.a> v;
    private boolean w;
    private long x;
    private boolean y;
    private Runnable z;
    
    static {
        Chartboost.b = null;
    }
    
    private Chartboost() {
        super();
        this.e = null;
        this.f = null;
        this.g = null;
        this.i = new ArrayList<com.chartboost.sdk.a.a>();
        this.a = new Handler();
        this.p = 30000;
        this.q = false;
        this.t = false;
        this.u = new HashMap<Integer, Boolean>();
        this.v = new HashMap<Integer, com.chartboost.sdk.a>();
        this.w = false;
        this.x = 0L;
        this.y = false;
        this.z = new a((a)null);
        this.A = new m.a() {
            @Override
            public void a(final String s) {
                final a a = Chartboost.this.e();
                if (a != null && a.a()) {
                    a.a(true);
                }
            }
        };
        this.B = new com.chartboost.sdk.impl.a.a() {
            private void a(final JSONObject jsonObject, final String s, final k k) {
                if (jsonObject == null) {
                    return;
                }
                try {
                    if (jsonObject.getString(s) != null) {
                        k.a(s, jsonObject.optString(s));
                    }
                }
                catch (JSONException ex) {}
            }
            
            @Override
            public void a(final a a) {
                if (a.c == a.b.b) {
                    a.c = a.b.a;
                    if (a.d == a.c.b) {
                        Chartboost.this.b(a);
                    }
                    else if (a.d == a.c.c) {
                        Chartboost.this.c(a);
                    }
                }
                else if (a.c == a.b.e) {
                    if (a.d == a.c.b && a.e != null) {
                        Chartboost.this.j.put(a.e, a);
                        if (Chartboost.this.getDelegate() != null) {
                            Chartboost.this.getDelegate().didCacheInterstitial(a.e);
                        }
                    }
                    else if (a.d == a.c.c) {
                        if (Chartboost.this.getDelegate() != null) {
                            Chartboost.this.getDelegate().didCacheMoreApps();
                        }
                        if (Chartboost.this.k != null) {
                            Chartboost.c(Chartboost.this, null);
                        }
                        Chartboost.c(Chartboost.this, a);
                    }
                    a.c = a.b.f;
                }
            }
            
            @Override
            public void a(final a a, final String s, final JSONObject jsonObject) {
                Chartboost.d(Chartboost.this, null);
                boolean b;
                if (s != null && !s.equals("") && !s.equals("null")) {
                    b = true;
                }
                else {
                    b = false;
                }
                if (a.d == a.c.b) {
                    if (Chartboost.this.getDelegate() != null) {
                        Chartboost.this.getDelegate().didDismissInterstitial(a.e);
                    }
                    if (Chartboost.this.getDelegate() != null) {
                        Chartboost.this.getDelegate().didClickInterstitial(a.e);
                    }
                    if (a.c == com.chartboost.sdk.impl.a.b.c) {
                        final a a2 = Chartboost.this.e();
                        if (a2 != null) {
                            a2.a(a, !b);
                        }
                    }
                }
                else if (a.d == a.c.c) {
                    if (Chartboost.this.getDelegate() != null) {
                        Chartboost.this.getDelegate().didDismissMoreApps();
                    }
                    if (Chartboost.this.getDelegate() != null) {
                        Chartboost.this.getDelegate().didClickMoreApps();
                    }
                    if (a.c == com.chartboost.sdk.impl.a.b.c) {
                        final a a3 = Chartboost.this.e();
                        if (a3 != null) {
                            a3.a(a, !b);
                        }
                    }
                }
                final k k = new k("api", "click");
                Activity activity;
                if (Chartboost.this.f == null) {
                    activity = Chartboost.this.b();
                }
                else {
                    activity = Chartboost.this.f;
                }
                k.a((Context)activity);
                this.a(a.a, "to", k);
                this.a(a.a, "cgn", k);
                this.a(a.a, "creative", k);
                this.a(a.a, "ad_id", k);
                this.a(jsonObject, "cgn", k);
                this.a(jsonObject, "creative", k);
                this.a(jsonObject, "type", k);
                this.a(jsonObject, "more_type", k);
                k.c(Chartboost.this.getAppID(), Chartboost.this.getAppSignature());
                if (b) {
                    k.h = (k.a)new k.a() {
                        @Override
                        public void a(final JSONObject jsonObject) {
                            Chartboost.sharedChartboost().a(jsonObject, s);
                        }
                    };
                    Chartboost.this.a(new a.a(true, null));
                }
                Chartboost.this.h.a(k);
            }
            
            @Override
            public void b(final a a) {
                Chartboost.d(Chartboost.this, null);
                if (a.d == a.c.b) {
                    if (Chartboost.this.getDelegate() != null) {
                        Chartboost.this.getDelegate().didDismissInterstitial(a.e);
                    }
                    if (Chartboost.this.getDelegate() != null) {
                        Chartboost.this.getDelegate().didCloseInterstitial(a.e);
                    }
                    if (a.c == a.b.c) {
                        final a a2 = Chartboost.this.e();
                        if (a2 != null) {
                            a2.a(a, true);
                        }
                    }
                }
                else if (a.d == a.c.c) {
                    if (Chartboost.this.getDelegate() != null) {
                        Chartboost.this.getDelegate().didDismissMoreApps();
                    }
                    if (Chartboost.this.getDelegate() != null) {
                        Chartboost.this.getDelegate().didCloseMoreApps();
                    }
                    if (a.c == a.b.c) {
                        final a a3 = Chartboost.this.e();
                        if (a3 != null) {
                            a3.a(a, true);
                        }
                    }
                }
            }
            
            @Override
            public void c(final a a) {
                final Chartboost a2 = Chartboost.this;
                final a.c d = a.d;
                String e;
                if (a.d == a.c.b) {
                    e = a.e;
                }
                else {
                    e = null;
                }
                a2.a(d, e);
            }
        };
        this.C = new j.c() {
            @Override
            public void a(final k k) {
                if (k.b.equals("get")) {
                    Chartboost.this.a(com.chartboost.sdk.impl.a.c.b, k.e.optString("location", "Default"));
                }
                else if (k.b.equals("more")) {
                    Chartboost.this.a(com.chartboost.sdk.impl.a.c.c, k.e.optString("location", "Default"));
                }
                final a a = Chartboost.this.e();
                if (a != null && a.a()) {
                    a.a(true);
                }
            }
            
            @Override
            public void a(final JSONObject jsonObject, final k k) {
                if (k.h != null) {
                    k.h.a(jsonObject);
                }
            }
        };
        this.h = new j(null, this.C, null);
        this.d = new m(this.A);
        this.j = new HashMap<String, com.chartboost.sdk.impl.a>();
        this.k = null;
    }
    
    private void a(final Activity activity, final boolean b) {
        if (activity == null) {
            return;
        }
        this.u.put(activity.hashCode(), b);
    }
    
    static /* synthetic */ void a(final Chartboost chartboost, final Activity f) {
        chartboost.f = f;
    }
    
    static /* synthetic */ void a(final Chartboost chartboost, final CBImpressionActivity g) {
        chartboost.g = g;
    }
    
    static /* synthetic */ void a(final Chartboost chartboost, final ChartboostDelegate o) {
        chartboost.o = o;
    }
    
    private void a(final com.chartboost.sdk.impl.a.c c, final String s) {
        final com.chartboost.sdk.a e = this.e();
        if (c == com.chartboost.sdk.impl.a.c.c && e != null && e.a()) {
            e.a(true);
        }
        if (c == com.chartboost.sdk.impl.a.c.b && this.getDelegate() != null) {
            this.getDelegate().didFailToLoadInterstitial(s);
        }
        if (c == com.chartboost.sdk.impl.a.c.c && this.getDelegate() != null) {
            this.getDelegate().didFailToLoadMoreApps();
        }
    }
    
    private void a(final String s, final boolean b) {
        if (this.getDelegate() == null || this.getDelegate().shouldRequestInterstitial(s)) {
            if (com.chartboost.sdk.impl.l.a()) {
                final k k = new k("api", "get");
                k.a((Context)this.f);
                k.a("location", s);
                if (b) {
                    k.a("cache", "1");
                }
                k.c(this.getAppID(), this.getAppSignature());
                k.h = (k.a)new k.a() {
                    @Override
                    public void a(final JSONObject jsonObject) {
                        Chartboost.sharedChartboost().a(jsonObject, com.chartboost.sdk.impl.a.c.b, b, s);
                    }
                };
                this.h.a(k);
                return;
            }
            if (this.getDelegate() != null) {
                this.getDelegate().didFailToLoadInterstitial(s);
            }
        }
    }
    
    private void a(final JSONObject jsonObject, final com.chartboost.sdk.impl.a.c c, final boolean b, final String s) {
        if (!jsonObject.optString("status", "").equals("200")) {
            this.a(c, s);
        }
        else {
            boolean b2;
            if (this.getDelegate() != null && !this.getDelegate().shouldDisplayLoadingViewForMoreApps()) {
                b2 = false;
            }
            else {
                b2 = true;
            }
            boolean b3;
            if (this.e() != null && this.e().a()) {
                b3 = true;
            }
            else {
                b3 = false;
            }
            if (c != com.chartboost.sdk.impl.a.c.c || b || !b2 || b3) {
                com.chartboost.sdk.impl.a.b b4;
                if (b) {
                    b4 = com.chartboost.sdk.impl.a.b.e;
                }
                else {
                    b4 = com.chartboost.sdk.impl.a.b.b;
                }
                new com.chartboost.sdk.impl.a(jsonObject, c, this.B, b4, s);
            }
        }
    }
    
    private void a(final JSONObject jsonObject, final String s) {
        this.d.a(s, (Context)this.f);
    }
    
    private void a(final boolean b) {
        if (!com.chartboost.sdk.impl.l.a()) {
            if (this.getDelegate() != null) {
                this.getDelegate().didFailToLoadMoreApps();
            }
            return;
        }
        if (!b && (this.getDelegate() == null || this.getDelegate().shouldDisplayLoadingViewForMoreApps())) {
            this.a(new com.chartboost.sdk.a.a(true, null));
        }
        final k k = new k("api", "more");
        k.a((Context)this.f);
        if (b) {
            k.a("cache", "1");
        }
        k.c(this.getAppID(), this.getAppSignature());
        k.h = (k.a)new k.a() {
            @Override
            public void a(final JSONObject jsonObject) {
                Chartboost.this.a(jsonObject, com.chartboost.sdk.impl.a.c.c, b, null);
            }
        };
        this.h.a(k);
    }
    
    private void b(final Activity activity, final boolean b) {
        final int hashCode = activity.hashCode();
        final com.chartboost.sdk.a a = this.v.get(hashCode);
        if (a == null && b) {
            com.chartboost.sdk.a c;
            if (this.c != null) {
                c = this.c;
                this.c = null;
                c.a(activity);
            }
            else {
                c = new com.chartboost.sdk.a(this, activity);
            }
            this.v.put(hashCode, c);
        }
        else if (a != null && !b) {
            this.c = this.v.remove(hashCode);
        }
    }
    
    private void b(final com.chartboost.sdk.impl.a a) {
        if (!a.k && this.getDelegate() != null && !this.getDelegate().shouldDisplayInterstitial(a.e)) {
            return;
        }
        if (a.c == com.chartboost.sdk.impl.a.b.f && this.j.get(a.e) == a) {
            this.j.remove(a.e);
            final k k = new k("api", "show");
            k.a((Context)this.f);
            final String optString = a.a.optString("ad_id");
            if (optString != null) {
                k.a("ad_id", optString);
            }
            k.c(this.getAppID(), this.getAppSignature());
            this.h.a(k);
        }
        a.c = com.chartboost.sdk.impl.a.b.b;
        this.a(new com.chartboost.sdk.a.a(a));
    }
    
    private void c(final Activity f) {
        this.f = f;
        this.e = f.getApplicationContext();
    }
    
    static /* synthetic */ void c(final Chartboost chartboost, final com.chartboost.sdk.impl.a k) {
        chartboost.k = k;
    }
    
    private void c(final com.chartboost.sdk.impl.a a) {
        if (!a.k && this.getDelegate() != null && !this.getDelegate().shouldDisplayMoreApps()) {
            return;
        }
        if (a == this.k) {
            this.k = null;
        }
        final boolean b = a.c == com.chartboost.sdk.impl.a.b.f;
        a.c = com.chartboost.sdk.impl.a.b.a;
        boolean b2;
        if (this.getDelegate() != null && !this.getDelegate().shouldDisplayLoadingViewForMoreApps()) {
            b2 = false;
        }
        else {
            b2 = true;
        }
        final com.chartboost.sdk.a e = this.e();
        if (e != null) {
            if (e.a() || !b2) {
                if (b2) {
                    e.a(false);
                }
            }
            else if (!b && !a.j) {
                return;
            }
        }
        a.c = com.chartboost.sdk.impl.a.b.b;
        this.a(new com.chartboost.sdk.a.a(a));
    }
    
    static /* synthetic */ void d(final Chartboost chartboost, final com.chartboost.sdk.impl.a l) {
        chartboost.l = l;
    }
    
    private boolean d() {
        return this.d(this.f);
    }
    
    private boolean d(final Activity activity) {
        if (activity == null) {
            return false;
        }
        final Boolean b = this.u.get(activity.hashCode());
        return b != null && b;
    }
    
    private com.chartboost.sdk.a e() {
        if (this.b() == null) {
            return null;
        }
        return this.v.get(this.b().hashCode());
    }
    
    private void f() {
        if (this.l == null) {
            return;
        }
        this.B.b(this.l);
    }
    
    public static Chartboost sharedChartboost() {
        synchronized (Chartboost.class) {
            if (Chartboost.b == null) {
                Chartboost.b = new Chartboost();
            }
            return Chartboost.b;
        }
    }
    
    protected void a(final Activity f) {
        this.e = f.getApplicationContext();
        if (!(f instanceof CBImpressionActivity)) {
            this.a(this.f = f, true);
        }
        else {
            this.g = (CBImpressionActivity)f;
        }
        this.a.removeCallbacks(this.z);
        if (f != null && f == this.b()) {
            this.b(f, true);
            if (f instanceof CBImpressionActivity) {
                final com.chartboost.sdk.a e = this.e();
                if (e != null) {
                    for (int i = 0; i < this.i.size(); ++i) {
                        e.a((com.chartboost.sdk.a.a)this.i.get(i));
                    }
                    this.i.clear();
                }
                this.y = false;
            }
            int n;
            if (this.w) {
                this.w = false;
                n = 1;
            }
            else {
                n = 0;
            }
            if (this.l != null && this.l.c == com.chartboost.sdk.impl.a.b.b && this.l.a()) {
                n = 0;
            }
            if (n != 0) {
                this.a(new com.chartboost.sdk.a.a(true, null));
            }
        }
    }
    
    protected void a(final CBImpressionActivity g) {
        if (!this.t) {
            this.e = g.getApplicationContext();
            this.g = g;
            this.t = true;
        }
        this.a.removeCallbacks(this.z);
    }
    
    protected void a(final com.chartboost.sdk.a.a a) {
        if (this.getImpressionsUseActivities()) {
            final com.chartboost.sdk.a e = this.e();
            if (this.b() != null && this.t && e != null) {
                e.a(a);
            }
            else if (this.d()) {
                this.i.add(a);
                final Intent intent = new Intent((Context)this.f, (Class)CBImpressionActivity.class);
                while (true) {
                    Label_0168: {
                        if ((0x400 & this.f.getWindow().getAttributes().flags) == 0x0) {
                            break Label_0168;
                        }
                        final int n = 1;
                        boolean b;
                        if ((0x800 & this.f.getWindow().getAttributes().flags) != 0x0) {
                            b = true;
                        }
                        else {
                            b = false;
                        }
                        intent.putExtra("paramFullscreen", n != 0 && !b);
                        try {
                            this.f.startActivity(intent);
                            this.y = true;
                            return;
                        }
                        catch (ActivityNotFoundException ex) {
                            throw new RuntimeException("Chartboost impression activity not declared in manifest. Please add the following inside your manifest's <application> tag: \n<activity android:name=\"com.chartboost.sdk.CBImpressionActivity\" android:theme=\"@android:style/Theme.Translucent.NoTitleBar\" android:excludeFromRecents=\"true\" />");
                        }
                    }
                    final int n = 0;
                    continue;
                }
            }
        }
        else {
            final com.chartboost.sdk.a e2 = this.e();
            if (e2 != null) {
                e2.a(a);
            }
        }
    }
    
    protected void a(final com.chartboost.sdk.impl.a l) {
        this.l = l;
    }
    
    protected boolean a() {
        if (this.l != null && this.l.c == com.chartboost.sdk.impl.a.b.c) {
            this.f();
            return true;
        }
        final com.chartboost.sdk.a e = this.e();
        if (e != null && e.a()) {
            e.a(true);
            return true;
        }
        return false;
    }
    
    protected Activity b() {
        if (this.q) {
            return this.g;
        }
        return this.f;
    }
    
    protected void b(final Activity activity) {
        final com.chartboost.sdk.a e = this.e();
        if (activity == this.b() && e != null) {
            this.b(activity, false);
            this.w = false;
            if (e.a()) {
                e.a(false);
                this.w = true;
            }
            if (this.l != null) {
                e.a(this.l);
            }
        }
        if (!(activity instanceof CBImpressionActivity)) {
            this.a(this.f, false);
        }
    }
    
    protected void c() {
        if (this.t) {
            this.e = this.f.getApplicationContext();
            this.g = null;
            this.t = false;
        }
    }
    
    public void cacheInterstitial() {
        this.cacheInterstitial("Default");
    }
    
    public void cacheInterstitial(final String s) {
        if (this.f == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling cacheInterstitial().");
        }
        if (this.getDelegate() != null && !this.getDelegate().shouldRequestInterstitialsInFirstSession() && com.chartboost.sdk.Libraries.d.a().getInt("cbPrefSessionCount", 0) <= 1) {
            return;
        }
        this.a(s, true);
    }
    
    public void cacheMoreApps() {
        if (this.f == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling cacheMoreApps().");
        }
        this.a(true);
    }
    
    public void clearCache() {
        this.j = new HashMap<String, com.chartboost.sdk.impl.a>();
    }
    
    public void clearImageCache() {
        com.chartboost.sdk.Libraries.e.a().b();
    }
    
    public String getAppID() {
        return this.m;
    }
    
    public String getAppSignature() {
        return this.n;
    }
    
    public Context getContext() {
        return this.e;
    }
    
    public ChartboostDelegate getDelegate() {
        return this.o;
    }
    
    public CBOrientation.Difference getForcedOrientationDifference() {
        if (!this.s) {
            return CBOrientation.Difference.ANGLE_0;
        }
        final CBOrientation c = com.chartboost.sdk.Libraries.d.c(this.getContext());
        final CBOrientation orientation = this.orientation();
        if (orientation == CBOrientation.UNSPECIFIED || orientation == c) {
            return CBOrientation.Difference.ANGLE_0;
        }
        if (orientation == c.rotate90()) {
            return CBOrientation.Difference.ANGLE_90;
        }
        if (orientation == c.rotate180()) {
            return CBOrientation.Difference.ANGLE_180;
        }
        return CBOrientation.Difference.ANGLE_270;
    }
    
    public boolean getImpressionsUseActivities() {
        return this.q;
    }
    
    public int getTimeout() {
        return this.p;
    }
    
    public boolean hasCachedInterstitial() {
        return this.hasCachedInterstitial("Default");
    }
    
    public boolean hasCachedInterstitial(final String s) {
        final com.chartboost.sdk.impl.a a = this.j.get(s);
        return a != null && TimeUnit.MILLISECONDS.toSeconds(new Date().getTime() - a.b.getTime()) < 86400L;
    }
    
    public boolean hasCachedMoreApps() {
        return this.k != null;
    }
    
    public boolean isIdentityTrackingDisabledOnThisDevice() {
        return com.chartboost.sdk.Libraries.d.c();
    }
    
    public boolean onBackPressed() {
        if (!com.chartboost.sdk.Libraries.d.d()) {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onBackPressed() method of your host activity.");
        }
        if (this.f == null) {
            throw new IllegalStateException("The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly.");
        }
        if (!this.q) {
            return this.a();
        }
        if (this.y) {
            this.y = false;
            this.a();
            return true;
        }
        return false;
    }
    
    public void onCreate(final Activity activity, final String appID, final String appSignature, final ChartboostDelegate delegate) {
        if (!com.chartboost.sdk.Libraries.d.d()) {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onCreate() method of your host activity.");
        }
        if (this.f != null && this.d() && this.f != activity) {
            this.onStop(this.f);
            this.a(this.f, false);
        }
        this.a.removeCallbacks(this.z);
        this.c(activity);
        this.setAppID(appID);
        this.setAppSignature(appSignature);
        this.setDelegate(delegate);
    }
    
    public void onDestroy(final Activity activity) {
        this.a.postDelayed(this.z, 10000L);
    }
    
    public void onStart(final Activity activity) {
        if (!com.chartboost.sdk.Libraries.d.d()) {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onStart() method of your host activity.");
        }
        this.a.removeCallbacks(this.z);
        this.a(activity, true);
        this.c(activity);
        if (!this.q) {
            this.a(activity);
        }
    }
    
    public void onStop(final Activity activity) {
        if (!com.chartboost.sdk.Libraries.d.d()) {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onStop() method of your host activity.");
        }
        if (!this.q) {
            this.b(activity);
        }
        if (!(activity instanceof CBImpressionActivity)) {
            this.a(activity, false);
        }
        this.x = (long)(System.nanoTime() / 1000000.0);
    }
    
    public CBOrientation orientation() {
        if (this.getContext() == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling orientation().");
        }
        if (this.s && this.r != CBOrientation.UNSPECIFIED) {
            return this.r;
        }
        return com.chartboost.sdk.Libraries.d.c(this.getContext());
    }
    
    public void setAppID(final String m) {
        this.m = m;
    }
    
    public void setAppSignature(final String n) {
        this.n = n;
    }
    
    public void setDelegate(final ChartboostDelegate o) {
        this.o = o;
    }
    
    public void setIdentityTrackingDisabledOnThisDevice(final boolean b) {
        final SharedPreferences$Editor edit = com.chartboost.sdk.Libraries.d.a().edit();
        edit.putBoolean("cbIdentityTrackingDisabled", b);
        edit.commit();
    }
    
    public void setImpressionsUseActivities(final boolean q) {
        this.q = q;
    }
    
    public void setOrientation(final CBOrientation r) {
        this.s = (r != CBOrientation.UNSPECIFIED);
        this.r = r;
    }
    
    public void setTimeout(final int p) {
        this.p = p;
    }
    
    public void showInterstitial() {
        this.showInterstitial("Default");
    }
    
    public void showInterstitial(final String s) {
        if (this.f == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling showInterstitial().");
        }
        if (this.getDelegate() != null && !this.getDelegate().shouldRequestInterstitialsInFirstSession() && com.chartboost.sdk.Libraries.d.a().getInt("cbPrefSessionCount", 0) == 1) {
            return;
        }
        this.a.post((Runnable)new b(s));
    }
    
    public void showMoreApps() {
        if (this.f == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling showMoreApps().");
        }
        this.a.post((Runnable)new c((c)null));
    }
    
    public void startSession() {
        if (this.f == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling startSession().");
        }
        if ((long)(System.nanoTime() / 1000000.0) - this.x < 10000L) {
            return;
        }
        final SharedPreferences a = com.chartboost.sdk.Libraries.d.a();
        final int n = 1 + a.getInt("cbPrefSessionCount", 0);
        final SharedPreferences$Editor edit = a.edit();
        edit.putInt("cbPrefSessionCount", n);
        edit.commit();
        final k k = new k("api", "install");
        k.a((Context)this.f);
        k.c(this.getAppID(), this.getAppSignature());
        k.h = (k.a)new k.a() {
            @Override
            public void a(final JSONObject jsonObject) {
                if (d.a(Chartboost.this.getContext())) {
                    final String optString = jsonObject.optString("latest-sdk-version");
                    if (optString != null && !optString.equals("") && !optString.equals("3.1.5")) {
                        Log.w("Chartboost", String.format("WARNING: you have an outdated version of the SDK (Current: %s, Latest: %s). Get the latest version at chartboost.com/support/sdk#android", optString, "3.1.5"));
                    }
                }
            }
        };
        this.h.a(k);
    }
    
    private class a implements Runnable
    {
        private int b;
        private int c;
        private int d;
        
        private a() {
            super();
            int hashCode;
            if (Chartboost.this.g == null) {
                hashCode = -1;
            }
            else {
                hashCode = Chartboost.this.g.hashCode();
            }
            this.b = hashCode;
            int hashCode2;
            if (Chartboost.this.f == null) {
                hashCode2 = -1;
            }
            else {
                hashCode2 = Chartboost.this.f.hashCode();
            }
            this.c = hashCode2;
            int hashCode3;
            if (Chartboost.this.o == null) {
                hashCode3 = -1;
            }
            else {
                hashCode3 = Chartboost.this.o.hashCode();
            }
            this.d = hashCode3;
        }
        
        @Override
        public void run() {
            if (Chartboost.this.f != null && Chartboost.this.f.hashCode() == this.c) {
                Chartboost.a(Chartboost.this, (Activity)null);
            }
            if (Chartboost.this.g != null && Chartboost.this.g.hashCode() == this.b) {
                Chartboost.a(Chartboost.this, (CBImpressionActivity)null);
            }
            if (Chartboost.this.o != null && Chartboost.this.o.hashCode() == this.d) {
                Chartboost.a(Chartboost.this, (ChartboostDelegate)null);
            }
            Chartboost.this.clearImageCache();
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
            if (Chartboost.this.hasCachedInterstitial(this.b)) {
                Chartboost.this.b(Chartboost.this.j.get(this.b));
                return;
            }
            Chartboost.this.a(this.b, false);
        }
    }
    
    private class c implements Runnable
    {
        @Override
        public void run() {
            if (Chartboost.this.k != null) {
                Chartboost.this.c(Chartboost.this.k);
                return;
            }
            Chartboost.this.a(false);
        }
    }
}
