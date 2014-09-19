package com.vungle.sdk;

import android.app.*;
import com.vungle.sdk.net.http.*;
import javax.inject.*;
import java.util.*;
import android.text.*;
import android.util.*;
import android.net.*;
import android.widget.*;
import android.content.*;
import android.os.*;
import android.view.animation.*;
import android.view.*;

public class VungleAdvert extends Activity
{
    @Inject
    HttpGateway a;
    @Inject
    Provider<VungleCache> b;
    @Inject
    VungleUtil c;
    g d;
    g e;
    private boolean f;
    private ViewFlipper g;
    private int h;
    private Boolean[] i;
    private int j;
    private long k;
    private boolean l;
    private boolean m;
    
    public VungleAdvert() {
        super();
        this.f = false;
        this.g = null;
        this.h = 0;
        this.i = new Boolean[] { false, false };
        this.k = Long.MIN_VALUE;
        this.l = false;
        this.m = false;
        this.d = null;
        this.e = null;
    }
    
    private g a(final int n) {
        final VungleCache vungleCache = (VungleCache)this.b.get();
        switch (n) {
            default: {
                return null;
            }
            case 0: {
                return null;
            }
            case 1: {
                if (vungleCache == null) {
                    return null;
                }
                final String a = a(vungleCache.a.c());
                try {
                    return new i((Context)this, a, new i.b() {
                        @Override
                        public final void a() {
                            ab.c().a("watch");
                            VungleAdvert.this.c();
                            VungleAdvert.this.e();
                        }
                        
                        @Override
                        public final void a(final String s) {
                            VungleAdvert.this.j = 4;
                            VungleAdvert.a(VungleAdvert.this, s);
                            ab.c().a("custom");
                            VungleAdvert.this.e();
                        }
                        
                        @Override
                        public final void b() {
                            ab.c().a("close");
                            VungleAdvert.this.j = 4;
                            VungleAdvert.this.e();
                        }
                        
                        @Override
                        public final void c() {
                            VungleAdvert.this.j = 4;
                            VungleAdvert.a(VungleAdvert.this, null);
                            ab.c().a("download");
                            VungleAdvert.this.e();
                        }
                    });
                }
                catch (g.a a3) {
                    return null;
                }
            }
            case 2: {
                final String b = vungleCache.a.b();
                final int m = ab.a().a().m;
                final int l = ab.a().a().l;
                try {
                    final j j = new j((Context)this, b, m, l, (j.g)new j.g() {
                        private aa b;
                        private int c = 0;
                        
                        {
                            try {
                                this.b = ab.a().a().s;
                            }
                            catch (Exception ex) {
                                com.vungle.sdk.r.a("VungleAd.Video", ex);
                            }
                        }
                        
                        @Override
                        public final void a() {
                            try {
                                if (this.b != null) {
                                    final HttpGateway a = VungleAdvert.this.a;
                                    final VungleAdvert a2 = VungleAdvert.this;
                                    HttpGateway.a(VungleAdvert.a(), this.b.b);
                                }
                            }
                            catch (Exception ex) {
                                com.vungle.sdk.r.a("VungleAd.Video", ex);
                            }
                        }
                        
                        @Override
                        public final void a(final float n, final float n2) {
                            try {
                                if (this.b != null) {
                                    final aa.a[] a = this.b.a;
                                    if (a != null && a.length > this.c) {
                                        final aa.a a2 = a[this.c];
                                        if (a2 != null) {
                                            final Float a3 = a2.a;
                                            final float n3 = n / n2;
                                            if (a3 != null && n3 > a3) {
                                                final HttpGateway a4 = VungleAdvert.this.a;
                                                final VungleAdvert a5 = VungleAdvert.this;
                                                HttpGateway.a(VungleAdvert.a(), a2.b);
                                                ++this.c;
                                            }
                                        }
                                    }
                                }
                            }
                            catch (Exception ex) {
                                com.vungle.sdk.r.a("VungleAd.Video", ex);
                            }
                        }
                        
                        @Override
                        public final void a(final long a, final long n) {
                            try {
                                new StringBuilder("Video Completion. Len: ").append(n / 1000.0);
                                ab.d().a = a;
                                ab.d().c = n;
                                ab.d().b = n;
                                ab.c().d.add(VungleAdvert.b());
                                if (this.b != null) {
                                    final aa.a[] a2 = this.b.a;
                                    if (a2 != null) {
                                        final int length = a2.length;
                                        if (length > 0) {
                                            final aa.a a3 = a2[length - 1];
                                            final Float a4 = a3.a;
                                            if (a4 != null && a4 == 1.0f) {
                                                final String[] b = a3.b;
                                                final HttpGateway a5 = VungleAdvert.this.a;
                                                final VungleAdvert a6 = VungleAdvert.this;
                                                HttpGateway.a(VungleAdvert.a(), b);
                                            }
                                        }
                                    }
                                }
                            }
                            catch (Exception ex) {
                                com.vungle.sdk.r.a("VungleAd.Video", ex);
                            }
                            finally {
                                VungleAdvert.a(VungleAdvert.this, 3);
                            }
                        }
                        
                        @Override
                        public final void a(final long a, final long c, final long b) {
                            try {
                                new StringBuilder("Video Cancelled. Watched ").append(c / 1000.0).append(" of ").append(b / 1000.0);
                                ab.d().a = a;
                                ab.d().c = c;
                                ab.d().b = b;
                                ab.c().d.add(VungleAdvert.b());
                                if (this.b != null) {
                                    final HttpGateway a2 = VungleAdvert.this.a;
                                    final VungleAdvert a3 = VungleAdvert.this;
                                    HttpGateway.a(VungleAdvert.a(), this.b.d);
                                }
                            }
                            catch (Exception ex) {
                                com.vungle.sdk.r.a("VungleAd.Video", ex);
                            }
                            finally {
                                VungleAdvert.a(VungleAdvert.this, 3);
                            }
                        }
                        
                        @Override
                        public final void b() {
                            try {
                                if (this.b != null) {
                                    final HttpGateway a = VungleAdvert.this.a;
                                    final VungleAdvert a2 = VungleAdvert.this;
                                    HttpGateway.a(VungleAdvert.a(), this.b.c);
                                }
                            }
                            catch (Exception ex) {
                                com.vungle.sdk.r.a("VungleAd.Video", ex);
                            }
                        }
                        
                        @Override
                        public final void c() {
                            try {
                                ab.c().a("videoerror");
                            }
                            catch (Exception ex) {
                                com.vungle.sdk.r.a("VungleAd.Video", ex);
                            }
                            finally {
                                VungleAdvert.a(VungleAdvert.this, 3);
                            }
                        }
                    });
                    j.a(n.F);
                    return j;
                }
                catch (g.a a4) {
                    return null;
                }
            }
            case 3: {
                final String a2 = a(vungleCache.a.d());
                try {
                    return new h((Context)this, a2, new h.b() {
                        private aa b;
                        
                        {
                            try {
                                this.b = ab.a().a().s;
                            }
                            catch (Exception ex) {
                                r.a("VungleAd.PostRoll", ex);
                            }
                        }
                        
                        @Override
                        public final void a() {
                            try {
                                if (this.b != null) {
                                    final HttpGateway a = VungleAdvert.this.a;
                                    final VungleAdvert a2 = VungleAdvert.this;
                                    HttpGateway.a(VungleAdvert.a(), this.b.e);
                                }
                            }
                            catch (Exception ex) {
                                r.a("VungleAd.PostRoll", ex);
                            }
                        }
                        
                        @Override
                        public final void a(final String s) {
                            try {
                                VungleAdvert.a(VungleAdvert.this, s);
                                ab.c().a("custom");
                            }
                            catch (Exception ex) {
                                r.a("VungleAd.PostRoll", ex);
                            }
                            finally {
                                VungleAdvert.a(VungleAdvert.this, 4);
                            }
                        }
                        
                        @Override
                        public final void b() {
                            try {
                                ab.c().a("close");
                            }
                            catch (Exception ex) {
                                r.a("VungleAd.PostRoll", ex);
                            }
                            finally {
                                VungleAdvert.a(VungleAdvert.this, 4);
                            }
                        }
                        
                        @Override
                        public final void c() {
                            try {
                                VungleAdvert.a(VungleAdvert.this, null);
                                ab.c().a("download");
                                if (this.b != null) {
                                    final HttpGateway a = VungleAdvert.this.a;
                                    final VungleAdvert a2 = VungleAdvert.this;
                                    HttpGateway.a(VungleAdvert.a(), this.b.f);
                                }
                            }
                            catch (Exception ex) {
                                r.a("VungleAd.PostRoll", ex);
                            }
                            finally {
                                VungleAdvert.a(VungleAdvert.this, 4);
                            }
                        }
                        
                        @Override
                        public final void d() {
                            try {
                                ab.c().a("replay");
                            }
                            catch (Exception ex) {
                                r.a("VungleAd.PostRoll", ex);
                            }
                            finally {
                                VungleAdvert.a(VungleAdvert.this, 2);
                            }
                        }
                    });
                }
                catch (g.a a5) {
                    return null;
                }
            }
            case 4: {
                return null;
            }
        }
    }
    
    private static String a(final String str) {
        if (str == null) {
            return null;
        }
        return "file://" + str;
    }
    
    static Map<String, String> a() {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("%timestamp%", String.valueOf(System.currentTimeMillis() / 1000L));
        return hashMap;
    }
    
    static /* synthetic */ void a(final VungleAdvert vungleAdvert, final int n) {
        int j = n;
        while (true) {
            try {
                vungleAdvert.j = j;
                vungleAdvert.e();
            }
            catch (Exception ex) {
                r.a("VungleAd", ex);
                if (j < 4) {
                    ++j;
                    continue;
                }
            }
            break;
        }
    }
    
    static /* synthetic */ void a(final VungleAdvert vungleAdvert, final String s) {
        final z a = ab.a().a();
        String d;
        if (TextUtils.isEmpty((CharSequence)s)) {
            final String e = a.e;
            if (TextUtils.isEmpty((CharSequence)e)) {
                d = a.d;
            }
            else {
                final String d2 = a.d;
                final HttpGateway a2 = vungleAdvert.a;
                HttpGateway.a(null, d2);
                d = e;
            }
        }
        else {
            d = s;
        }
        vungleAdvert.runOnUiThread(new Runnable() {
            String a = null;
            
            public final Runnable a(final String a) {
                this.a = a;
                return this;
            }
            
            @Override
            public final void run() {
                final String a = this.a;
                if (a == null || a.length() == 0) {
                    Log.e("VungleAdvertCTA", "CTA is either null or empty.");
                    return;
                }
                try {
                    final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(a));
                    intent.addFlags(268435456);
                    VungleAdvert.this.startActivity(intent);
                }
                catch (ActivityNotFoundException ex) {
                    if (a.toLowerCase().startsWith("amzn://")) {
                        Log.e("VungleAdvertCTA", "Clicked, but Amazon Appstore was not available.");
                        Toast.makeText((Context)VungleAdvert.this, (CharSequence)"Amazon AppStore needs to be installed for this link to work.", 1).show();
                        return;
                    }
                    Log.e("VungleAdvertCTA", "Clicked, but could not find an activity to service the CTA.");
                    Toast.makeText((Context)VungleAdvert.this, (CharSequence)"We encountered an error while trying to open that link. Sorry 'bout that! :X", 1).show();
                }
            }
        }.a(d));
    }
    
    static /* synthetic */ y b() {
        final y y = new y();
        y.a = ab.d().a;
        y.b = ab.d().b;
        y.c = ab.d().c;
        ab.a(new y());
        return y;
    }
    
    private void c() {
        if (this.d()) {
            return;
        }
        ++this.j;
    }
    
    private boolean d() {
        return this.j >= 4;
    }
    
    private void e() {
        while (true) {
            new StringBuilder("Showing stage for: ").append(this.j);
            final g d = this.d;
            this.d = this.a(this.j);
            if (this.d != null) {
                this.e = d;
                if (this.i[this.h]) {
                    this.g.removeViewAt(this.h);
                }
                this.i[this.h] = true;
                this.g.addView(this.d.a(), this.h);
                this.g.setDisplayedChild(this.h);
                this.h = 1 - this.h;
                return;
            }
            if (this.d()) {
                this.f();
                this.finish();
                return;
            }
            this.c();
        }
    }
    
    private void f() {
        if (!this.f) {
            new Thread() {
                @Override
                public final void run() {
                    try {
                        final long b = SystemClock.elapsedRealtime() - VungleAdvert.this.k;
                        VungleAdvert.this.f = true;
                        final x c = ab.c();
                        if (c != null) {
                            c.b = b;
                        }
                        n.a(false);
                        VungleAdvert.this.c.e();
                    }
                    catch (Exception ex) {
                        r.a("VungleAd", ex);
                    }
                }
            }.start();
        }
    }
    
    public void onBackPressed() {
        this.f();
        super.onBackPressed();
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        try {
            u.a().a(this);
            this.getWindow().addFlags(128);
            if (bundle != null) {
                this.j = bundle.getInt("stage");
                this.k = bundle.getLong("start");
            }
            else {
                this.j = 0;
                this.k = SystemClock.elapsedRealtime();
                this.c();
            }
            n.a(true);
            (this.g = new c((Context)this)).setInAnimation((Context)this, 17432578);
            this.g.setOutAnimation((Context)this, 17432577);
            this.g.setAnimateFirstView(true);
            this.g.getInAnimation().setAnimationListener((Animation$AnimationListener)new Animation$AnimationListener() {
                public final void onAnimationEnd(final Animation animation) {
                    if (VungleAdvert.this.d != null && VungleAdvert.this.m && VungleAdvert.this.l) {
                        VungleAdvert.this.d.b();
                    }
                    if (VungleAdvert.this.e != null) {
                        VungleAdvert.this.e.c();
                    }
                }
                
                public final void onAnimationRepeat(final Animation animation) {
                }
                
                public final void onAnimationStart(final Animation animation) {
                }
            });
            this.requestWindowFeature(1);
            this.setContentView((View)this.g);
            if (this.c.f(n.e()) != null) {
                this.j = 4;
            }
            this.e();
        }
        catch (Throwable t) {
            r.a(IVungleConstants.b, t);
            ab.a(t);
            this.j = 4;
            this.f();
            this.finish();
        }
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        if (this.j != 2) {
            return super.onKeyDown(n, keyEvent);
        }
        if (n == 25 || n == 24 || n == 91) {
            return super.onKeyDown(n, keyEvent);
        }
        boolean b;
        if ((n.t && !n.D) || (n.u && n.D)) {
            b = true;
        }
        else {
            b = false;
        }
        if (b && n == 4) {
            final j j = (j)this.d;
            ab.c().a("back");
            j.d();
        }
        return true;
    }
    
    protected void onPause() {
        super.onPause();
        if (this.d != null) {
            this.d.c();
        }
        this.l = false;
        VunglePub.onPause();
    }
    
    protected void onResume() {
        super.onResume();
        if (this.d != null && !this.l && this.m) {
            this.d.b();
        }
        this.l = true;
        VunglePub.onResume();
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("stage", this.j);
        bundle.putLong("start", this.k);
    }
    
    public void onWindowFocusChanged(final boolean b) {
        super.onWindowFocusChanged(b);
        new StringBuilder("onWindowFocusChanged(").append(b).append(")");
        if (this.d != null && this.l && !this.m && b) {
            this.d.b();
        }
        this.m = b;
    }
}
