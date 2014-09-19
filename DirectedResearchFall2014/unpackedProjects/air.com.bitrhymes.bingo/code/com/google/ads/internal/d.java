package com.google.ads.internal;

import android.app.*;
import com.google.ads.doubleclick.*;
import android.os.*;
import com.google.ads.util.*;
import android.webkit.*;
import android.widget.*;
import android.view.*;
import android.content.*;
import android.text.*;
import android.net.*;
import java.util.*;
import com.google.ads.*;

public class d
{
    private static final Object a;
    private String A;
    private String B;
    private final n b;
    private c c;
    private AdRequest d;
    private g e;
    private AdWebView f;
    private i g;
    private boolean h;
    private long i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private SharedPreferences o;
    private long p;
    private af q;
    private boolean r;
    private LinkedList<String> s;
    private LinkedList<String> t;
    private LinkedList<String> u;
    private int v;
    private Boolean w;
    private com.google.ads.d x;
    private e y;
    private f z;
    
    static {
        a = new Object();
    }
    
    public d(final Ad ad, final Activity activity, final AdSize adSize, final String str, final ViewGroup viewGroup, final boolean r) {
        super();
        this.h = false;
        this.v = -1;
        this.A = null;
        this.B = null;
        this.r = r;
        this.e = new g();
        this.c = null;
        this.d = null;
        this.k = false;
        this.p = 60000L;
        this.l = false;
        this.n = false;
        this.m = true;
        h h;
        if (adSize == null) {
            h = com.google.ads.internal.h.a;
        }
        else {
            h = com.google.ads.internal.h.a(adSize, activity.getApplicationContext());
        }
        if (ad instanceof SwipeableDfpAdView) {
            h.a(true);
        }
        if (activity == null) {
            final m a = com.google.ads.m.a();
            AdView adView;
            if (ad instanceof AdView) {
                adView = (AdView)ad;
            }
            else {
                adView = null;
            }
            InterstitialAd interstitialAd;
            if (ad instanceof InterstitialAd) {
                interstitialAd = (InterstitialAd)ad;
            }
            else {
                interstitialAd = null;
            }
            this.b = new n(a, ad, adView, interstitialAd, str, null, null, viewGroup, h, this);
            return;
        }
        long long1;
        m a2;
        AdView adView2;
        InterstitialAd interstitialAd2;
        Label_0284_Outer:Label_0297_Outer:
        while (true) {
            while (true) {
            Label_0459:
                while (true) {
                Label_0453:
                    while (true) {
                        synchronized (com.google.ads.internal.d.a) {
                            this.o = activity.getApplicationContext().getSharedPreferences("GoogleAdMobAdsPrefs", 0);
                            if (r) {
                                long1 = this.o.getLong("Timeout" + str, -1L);
                                if (long1 < 0L) {
                                    this.i = 5000L;
                                }
                                else {
                                    this.i = long1;
                                }
                                // monitorexit(d.a)
                                a2 = com.google.ads.m.a();
                                if (!(ad instanceof AdView)) {
                                    break Label_0453;
                                }
                                adView2 = (AdView)ad;
                                if (ad instanceof InterstitialAd) {
                                    interstitialAd2 = (InterstitialAd)ad;
                                    this.b = new n(a2, ad, adView2, interstitialAd2, str, activity, activity.getApplicationContext(), viewGroup, h, this);
                                    this.q = new af(this);
                                    this.s = new LinkedList<String>();
                                    this.t = new LinkedList<String>();
                                    this.u = new LinkedList<String>();
                                    this.a();
                                    AdUtil.h(this.b.f.a());
                                    this.x = new com.google.ads.d();
                                    this.y = new e(this);
                                    this.w = null;
                                    this.z = null;
                                    return;
                                }
                                break Label_0459;
                            }
                        }
                        this.i = 60000L;
                        continue Label_0284_Outer;
                    }
                    adView2 = null;
                    continue Label_0297_Outer;
                }
                interstitialAd2 = null;
                continue;
            }
        }
    }
    
    private void a(final f f, final Boolean b) {
        final List<String> d = f.d();
        ArrayList<String> list2;
        if (d == null) {
            final ArrayList<String> list = new ArrayList<String>();
            list.add("http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@");
            list2 = list;
        }
        else {
            list2 = (ArrayList<String>)d;
        }
        this.a(list2, f.a(), f.b(), f.c(), b, this.e.d(), this.e.e());
    }
    
    private void a(final List<String> list, final String s) {
        ArrayList<String> list3;
        if (list == null) {
            final ArrayList<String> list2 = new ArrayList<String>();
            list2.add("http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@");
            list3 = list2;
        }
        else {
            list3 = (ArrayList<String>)list;
        }
        this.a(list3, null, null, s, null, this.e.d(), this.e.e());
    }
    
    private void a(final List<String> list, final String s, final String s2, final String s3, final Boolean b, final String s4, final String s5) {
        final String a = AdUtil.a(this.b.f.a());
        final b a2 = b.a();
        final String string = a2.b().toString();
        final String string2 = a2.c().toString();
        final Iterator<String> iterator = list.iterator();
        while (iterator.hasNext()) {
            new Thread(new ae(com.google.ads.g.a(iterator.next(), this.b.h.a(), b, a, s, s2, s3, string, string2, s4, s5), this.b.f.a())).start();
        }
        this.e.b();
    }
    
    private void b(final f f, final Boolean b) {
        final List<String> e = f.e();
        ArrayList<String> list2;
        if (e == null) {
            final ArrayList<String> list = new ArrayList<String>();
            list.add("http://e.admob.com/clk?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@");
            list2 = list;
        }
        else {
            list2 = (ArrayList<String>)e;
        }
        this.a(list2, f.a(), f.b(), f.c(), b, null, null);
    }
    
    public void A() {
        while (true) {
            Label_0134: {
                Label_0125: {
                Label_0098:
                    while (true) {
                        Label_0089: {
                            synchronized (this) {
                                if (!this.h) {
                                    if (this.d == null) {
                                        break Label_0134;
                                    }
                                    if (!this.b.a()) {
                                        break Label_0125;
                                    }
                                    if (!this.b.j.a().isShown() || !AdUtil.d()) {
                                        break Label_0089;
                                    }
                                    com.google.ads.util.b.c("Refreshing ad.");
                                    this.a(this.d);
                                    if (!this.n) {
                                        break Label_0098;
                                    }
                                    this.f();
                                }
                                return;
                            }
                        }
                        com.google.ads.util.b.a("Not refreshing because the ad is not visible.");
                        continue;
                    }
                    com.google.ads.m.a().c.a().postDelayed((Runnable)this.q, this.p);
                    return;
                }
                com.google.ads.util.b.a("Tried to refresh an ad that wasn't an AdView.");
                return;
            }
            com.google.ads.util.b.a("Tried to refresh before calling loadAd().");
        }
    }
    
    public void B() {
        while (true) {
            Label_0101: {
                Label_0080: {
                    synchronized (this) {
                        com.google.ads.util.a.a(this.b.b());
                        if (this.k) {
                            this.k = false;
                            if (this.w == null) {
                                com.google.ads.util.b.b("isMediationFlag is null in show() with isReady() true. we should have an ad and know whether this is a mediation request or not. ");
                            }
                            else {
                                if (!this.w) {
                                    break Label_0080;
                                }
                                if (this.y.c()) {
                                    this.a(this.z, Boolean.valueOf(false));
                                }
                            }
                            return;
                        }
                        break Label_0101;
                    }
                }
                AdActivity.launchAdActivity(this, new com.google.ads.internal.e("interstitial"));
                this.y();
                return;
            }
            com.google.ads.util.b.c("Cannot show interstitial because it is not loaded and ready.");
        }
    }
    
    public void C() {
        synchronized (this) {
            if (this.c != null) {
                this.c.a();
                this.c = null;
            }
            if (this.f != null) {
                this.f.stopLoading();
            }
        }
    }
    
    protected void D() {
        synchronized (this) {
            final Activity activity = this.b.c.a();
            if (activity == null) {
                com.google.ads.util.b.e("activity was null while trying to ping click tracking URLs.");
            }
            else {
                final Iterator<String> iterator = this.u.iterator();
                while (iterator.hasNext()) {
                    new Thread(new ae(iterator.next(), activity.getApplicationContext())).start();
                }
            }
        }
    }
    
    protected void E() {
        synchronized (this) {
            this.c = null;
            this.k = true;
            this.f.setVisibility(0);
            if (this.b.a()) {
                this.a((View)this.f);
            }
            this.e.g();
            if (this.b.a()) {
                this.y();
            }
            com.google.ads.util.b.c("onReceiveAd()");
            final AdListener adListener = this.b.o.a();
            if (adListener != null) {
                adListener.onReceiveAd(this.b.a.a());
            }
            this.b.l.a(this.b.m.a());
            this.b.m.a(null);
        }
    }
    
    public LinkedList<String> F() {
        return this.t;
    }
    
    public void a() {
        synchronized (this) {
            final AdSize c = this.b.g.a().c();
            AdWebView f;
            if (AdUtil.a >= 14) {
                f = new IcsUtil.IcsAdWebView(this.b, c);
            }
            else {
                f = new AdWebView(this.b, c);
            }
            (this.f = f).setVisibility(8);
            this.g = com.google.ads.internal.i.a(this, com.google.ads.internal.a.d, true, this.b.b());
            this.f.setWebViewClient((WebViewClient)this.g);
            if (AdUtil.a < ((m.a)this.b.d.a().b.a()).b.a() && !this.b.g.a().a()) {
                com.google.ads.util.b.a("Disabling hardware acceleration for a banner.");
                this.f.g();
            }
        }
    }
    
    public void a(final float n) {
        synchronized (this) {
            final long p = this.p;
            this.p = (long)(1000.0f * n);
            if (this.t() && this.p != p) {
                this.f();
                this.g();
            }
        }
    }
    
    public void a(final int v) {
        synchronized (this) {
            this.v = v;
        }
    }
    
    public void a(final int n, final int n2, final int n3, final int n4) {
        final ActivationOverlay activationOverlay = this.b.e.a();
        final Context context = this.b.f.a();
        int width;
        if (n3 < 0) {
            width = this.b.g.a().c().getWidth();
        }
        else {
            width = n3;
        }
        final int a = AdUtil.a(context, width);
        final Context context2 = this.b.f.a();
        int height;
        if (n4 < 0) {
            height = this.b.g.a().c().getHeight();
        }
        else {
            height = n4;
        }
        final FrameLayout$LayoutParams layoutParams = new FrameLayout$LayoutParams(a, AdUtil.a(context2, height));
        int c;
        int n5;
        if (n3 < 0) {
            c = 0;
            n5 = 0;
        }
        else {
            c = n2;
            n5 = n;
        }
        int d;
        if (n5 < 0) {
            d = this.b.e.a().d();
        }
        else {
            d = n5;
        }
        if (c < 0) {
            c = this.b.e.a().c();
        }
        this.b.e.a().setXPosition(d);
        this.b.e.a().setYPosition(c);
        layoutParams.setMargins(AdUtil.a(this.b.f.a(), d), AdUtil.a(this.b.f.a(), c), 0, 0);
        activationOverlay.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
    }
    
    public void a(final long i) {
        synchronized (com.google.ads.internal.d.a) {
            final SharedPreferences$Editor edit = this.o.edit();
            edit.putLong("Timeout" + this.b.h, i);
            edit.commit();
            if (this.r) {
                this.i = i;
            }
        }
    }
    
    public void a(final View view) {
        this.b.i.a().setVisibility(0);
        this.b.i.a().removeAllViews();
        this.b.i.a().addView(view);
        if (this.b.g.a().b()) {
            this.b.b.a().a(this.b.l.a(), false, -1, -1, -1, -1);
            if (this.b.e.a().a()) {
                this.b.i.a().addView((View)this.b.e.a(), AdUtil.a(this.b.f.a(), this.b.g.a().c().getWidth()), AdUtil.a(this.b.f.a(), this.b.g.a().c().getHeight()));
            }
        }
    }
    
    public void a(final View view, final com.google.ads.h h, final f z, final boolean b) {
        synchronized (this) {
            com.google.ads.util.b.a("AdManager.onReceiveGWhirlAd() called.");
            this.k = true;
            this.z = z;
            if (this.b.a()) {
                this.a(view);
                this.a(z, Boolean.valueOf(b));
            }
            this.y.d(h);
            final AdListener adListener = this.b.o.a();
            if (adListener != null) {
                adListener.onReceiveAd(this.b.a.a());
            }
        }
    }
    
    public void a(final AdRequest.ErrorCode obj) {
        synchronized (this) {
            this.c = null;
            if (obj == AdRequest.ErrorCode.NETWORK_ERROR) {
                this.a(60.0f);
                if (!this.t()) {
                    this.h();
                }
            }
            if (this.b.b()) {
                if (obj == AdRequest.ErrorCode.NO_FILL) {
                    this.e.B();
                }
                else if (obj == AdRequest.ErrorCode.NETWORK_ERROR) {
                    this.e.z();
                }
            }
            com.google.ads.util.b.c("onFailedToReceiveAd(" + obj + ")");
            final AdListener adListener = this.b.o.a();
            if (adListener != null) {
                adListener.onFailedToReceiveAd(this.b.a.a(), obj);
            }
        }
    }
    
    public void a(final AdRequest d) {
        while (true) {
            Label_0045: {
                synchronized (this) {
                    com.google.ads.util.b.d("v6.4.1 RC00");
                    if (this.h) {
                        com.google.ads.util.b.e("loadAd called after ad was destroyed.");
                    }
                    else {
                        if (!this.q()) {
                            break Label_0045;
                        }
                        com.google.ads.util.b.e("loadAd called while the ad is already loading, so aborting.");
                    }
                    return;
                }
            }
            if (AdActivity.isShowing()) {
                com.google.ads.util.b.e("loadAd called while an interstitial or landing page is displayed, so aborting");
                return;
            }
            if (!AdUtil.c(this.b.f.a()) || !AdUtil.b(this.b.f.a())) {
                return;
            }
            if (at.a(this.b.f.a(), this.o.getLong("GoogleAdMobDoritosLife", 60000L))) {
                at.a(this.b.c.a());
            }
            this.k = false;
            this.s.clear();
            this.t.clear();
            this.d = d;
            if (this.x.a()) {
                this.y.a(this.x.b(), d);
                return;
            }
            final l l = new l(this.b);
            this.b.m.a(l);
            (this.c = l.b.a()).a(d);
        }
    }
    
    public void a(final com.google.ads.c c) {
        synchronized (this) {
            this.c = null;
            this.y.a(c, this.d);
        }
    }
    
    public void a(final f f, final boolean b) {
        synchronized (this) {
            com.google.ads.util.b.a(String.format(Locale.US, "AdManager.onGWhirlAdClicked(%b) called.", b));
            this.b(f, b);
        }
    }
    
    public void a(final l l, final boolean b, final int n, final int n2, final int n3, final int n4) {
        this.b.e.a().setOverlayActivated(!b);
        this.a(n, n2, n3, n4);
        if (this.b.q.a() != null) {
            if (!b) {
                this.b.q.a().onAdDeactivated(this.b.a.a());
                return;
            }
            this.b.q.a().onAdActivated(this.b.a.a());
        }
    }
    
    public void a(final String b) {
        this.B = b;
        final Uri build = new Uri$Builder().encodedQuery(b).build();
        final StringBuilder sb = new StringBuilder();
        final HashMap<String, String> b2 = AdUtil.b(build);
        for (final String str : b2.keySet()) {
            sb.append(str).append(" = ").append(b2.get(str)).append("\n");
        }
        this.A = sb.toString().trim();
        if (TextUtils.isEmpty((CharSequence)this.A)) {
            this.A = null;
        }
    }
    
    public void a(final String s, final String s2) {
        synchronized (this) {
            final AppEventListener appEventListener = this.b.p.a();
            if (appEventListener != null) {
                appEventListener.onAppEvent(this.b.a.a(), s, s2);
            }
        }
    }
    
    protected void a(final LinkedList<String> u) {
        synchronized (this) {
            final Iterator<String> iterator = u.iterator();
            while (iterator.hasNext()) {
                com.google.ads.util.b.a("Adding a click tracking URL: " + iterator.next());
            }
        }
        this.u = u;
    }
    // monitorexit(this)
    
    public void a(final boolean j) {
        synchronized (this) {
            this.j = j;
        }
    }
    
    public void b() {
        synchronized (this) {
            if (this.y != null) {
                this.y.b();
            }
            this.b.o.a(null);
            this.b.p.a(null);
            this.C();
            this.f();
            if (this.f != null) {
                this.f.destroy();
            }
            this.h = true;
        }
    }
    
    public void b(final long n) {
        // monitorenter(this)
        if (n <= 0L) {
            return;
        }
        try {
            this.o.edit().putLong("GoogleAdMobDoritosLife", n).commit();
        }
        finally {
        }
        // monitorexit(this)
    }
    
    public void b(final com.google.ads.c c) {
        synchronized (this) {
            com.google.ads.util.b.a("AdManager.onGWhirlNoFill() called.");
            this.a(c.i(), c.c());
            final AdListener adListener = this.b.o.a();
            if (adListener != null) {
                adListener.onFailedToReceiveAd(this.b.a.a(), AdRequest.ErrorCode.NO_FILL);
            }
        }
    }
    
    protected void b(final String s) {
        synchronized (this) {
            com.google.ads.util.b.a("Adding a tracking URL: " + s);
            this.s.add(s);
        }
    }
    
    public void b(final boolean b) {
        this.w = b;
    }
    
    public String c() {
        return this.A;
    }
    
    protected void c(final String s) {
        synchronized (this) {
            com.google.ads.util.b.a("Adding a manual tracking URL: " + s);
            this.F().add(s);
        }
    }
    
    public String d() {
        return this.B;
    }
    
    public void e() {
        synchronized (this) {
            this.m = false;
            com.google.ads.util.b.a("Refreshing is no longer allowed on this AdView.");
        }
    }
    
    public void f() {
        synchronized (this) {
            if (this.l) {
                com.google.ads.util.b.a("Disabling refreshing.");
                com.google.ads.m.a().c.a().removeCallbacks((Runnable)this.q);
                this.l = false;
            }
            else {
                com.google.ads.util.b.a("Refreshing is already disabled.");
            }
        }
    }
    
    public void g() {
        while (true) {
            Label_0118: {
                synchronized (this) {
                    this.n = false;
                    if (!this.b.a()) {
                        break Label_0118;
                    }
                    if (this.m) {
                        if (!this.l) {
                            com.google.ads.util.b.a("Enabling refreshing every " + this.p + " milliseconds.");
                            com.google.ads.m.a().c.a().postDelayed((Runnable)this.q, this.p);
                            this.l = true;
                        }
                        else {
                            com.google.ads.util.b.a("Refreshing is already enabled.");
                        }
                        return;
                    }
                }
                com.google.ads.util.b.a("Refreshing disabled on this AdView");
                return;
            }
            com.google.ads.util.b.a("Tried to enable refreshing on something other than an AdView.");
        }
    }
    
    public void h() {
        this.g();
        this.n = true;
    }
    
    public n i() {
        return this.b;
    }
    
    public com.google.ads.d j() {
        synchronized (this) {
            return this.x;
        }
    }
    
    public c k() {
        synchronized (this) {
            return this.c;
        }
    }
    
    public AdWebView l() {
        synchronized (this) {
            return this.f;
        }
    }
    
    public i m() {
        synchronized (this) {
            return this.g;
        }
    }
    
    public g n() {
        return this.e;
    }
    
    public int o() {
        synchronized (this) {
            return this.v;
        }
    }
    
    public long p() {
        return this.i;
    }
    
    public boolean q() {
        synchronized (this) {
            return this.c != null;
        }
    }
    
    public boolean r() {
        synchronized (this) {
            return this.j;
        }
    }
    
    public boolean s() {
        synchronized (this) {
            return this.k;
        }
    }
    
    public boolean t() {
        synchronized (this) {
            return this.l;
        }
    }
    
    public void u() {
        synchronized (this) {
            this.e.C();
            com.google.ads.util.b.c("onDismissScreen()");
            final AdListener adListener = this.b.o.a();
            if (adListener != null) {
                adListener.onDismissScreen(this.b.a.a());
            }
        }
    }
    
    public void v() {
        synchronized (this) {
            com.google.ads.util.b.c("onPresentScreen()");
            final AdListener adListener = this.b.o.a();
            if (adListener != null) {
                adListener.onPresentScreen(this.b.a.a());
            }
        }
    }
    
    public void w() {
        synchronized (this) {
            com.google.ads.util.b.c("onLeaveApplication()");
            final AdListener adListener = this.b.o.a();
            if (adListener != null) {
                adListener.onLeaveApplication(this.b.a.a());
            }
        }
    }
    
    public void x() {
        this.e.f();
        this.D();
    }
    
    public void y() {
        synchronized (this) {
            final Activity activity = this.b.c.a();
            if (activity == null) {
                com.google.ads.util.b.e("activity was null while trying to ping tracking URLs.");
            }
            else {
                final Iterator<String> iterator = this.s.iterator();
                while (iterator.hasNext()) {
                    new Thread(new ae(iterator.next(), activity.getApplicationContext())).start();
                }
            }
        }
    }
    
    public void z() {
        synchronized (this) {
            final Activity activity = this.b.c.a();
            if (activity == null) {
                com.google.ads.util.b.e("activity was null while trying to ping manual tracking URLs.");
            }
            else {
                final Iterator<String> iterator = this.t.iterator();
                while (iterator.hasNext()) {
                    new Thread(new ae(iterator.next(), activity.getApplicationContext())).start();
                }
            }
        }
    }
}
