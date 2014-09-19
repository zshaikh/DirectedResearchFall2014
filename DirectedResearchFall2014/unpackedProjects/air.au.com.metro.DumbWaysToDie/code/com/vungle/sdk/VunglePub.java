package com.vungle.sdk;

import javax.inject.*;
import com.vungle.sdk.model.*;
import java.util.*;
import android.view.*;
import android.util.*;
import android.os.*;
import android.content.*;

public final class VunglePub
{
    private static VunglePub g;
    private static String h;
    @Inject
    Provider<RequestAd> a;
    @Inject
    IVungleConstants b;
    @Inject
    Provider<VungleCache> c;
    @Inject
    Provider<VungleConnectionHandler> d;
    @Inject
    VungleParser e;
    @Inject
    VungleUtil f;
    
    static {
        VunglePub.h = null;
    }
    
    private VunglePub(final Context context, final String s, final int n, final int n2) {
        super();
        n.a(context);
        final ap a = u.a(context);
        a.a();
        a.a(this);
        final RequestAd requestAd = (RequestAd)this.a.get();
        requestAd.a(s);
        ab.a(requestAd);
        ab.a().b(n);
        ab.a().a(n2);
        final Context e = n.e();
        int width = 270;
        final WindowManager windowManager = (WindowManager)n.e().getSystemService("window");
        while (true) {
            Label_0287: {
                if (windowManager == null) {
                    break Label_0287;
                }
                final Display defaultDisplay = windowManager.getDefaultDisplay();
                if (defaultDisplay == null) {
                    break Label_0287;
                }
                width = defaultDisplay.getWidth();
                final int height = defaultDisplay.getHeight();
                n.x = width;
                n.y = height;
                ab.a(new y());
                ab.a(new x());
                if (!VungleUtil.a(e, IVungleConstants.E, IVungleConstants.F) && VungleUtil.e(e)) {
                    ((VungleConnectionHandler)this.d.get()).d();
                }
                ab.a(new ArrayList<String>(0));
                VungleUtil.g(e);
                final SharedPreferences sharedPreferences = n.e().getSharedPreferences(IVungleConstants.E, 0);
                final long long1 = sharedPreferences.getLong(IVungleConstants.G, 0L);
                final int int1 = sharedPreferences.getInt(IVungleConstants.H, 0);
                long n3;
                int n4;
                if (long1 > System.currentTimeMillis()) {
                    n3 = 0L;
                    n4 = 0;
                }
                else {
                    n4 = int1;
                    n3 = long1;
                }
                final IVungleConstants b = this.b;
                IVungleConstants.a(n4);
                IVungleConstants.a(n3);
                return;
            }
            final int height = 480;
            continue;
        }
    }
    
    private static boolean a() {
        synchronized (VunglePub.class) {
            boolean b;
            if (VunglePub.g == null) {
                Log.e("VunglePub", "VunglePub was not initialized.");
                b = false;
            }
            else {
                b = true;
            }
            return b;
        }
    }
    
    private static boolean a(final boolean d, final String e, final boolean f) {
        if (!a()) {
            return false;
        }
        n.D = d;
        n.E = e;
        n.F = f;
        final long currentTimeMillis = System.currentTimeMillis();
        boolean b = false;
        boolean b2 = false;
        Label_0086: {
            if (currentTimeMillis - IVungleConstants.h() < 1000 * IVungleConstants.g()) {
                new StringBuilder("Time Diff: ").append((currentTimeMillis - IVungleConstants.h()) / 1000.0);
                new StringBuilder("Cur Delay: ").append(IVungleConstants.g());
                b = true;
            }
            else if (!n.j) {
                VungleConnectionHandler.e();
                b = false;
            }
            else {
                if (!n.n) {
                    b2 = VunglePub.g.b();
                    b = false;
                    break Label_0086;
                }
                b = false;
            }
            b2 = false;
        }
        if (!b2 && !b && !n.d()) {
            new Thread(new b.a(IVungleConstants.f(), ab.a().b(), VungleUtil.b(n.e())), "UnfilledAdRequestThread").start();
            VungleConnectionHandler.e();
        }
        return b2;
    }
    
    private boolean b() {
        synchronized (this) {
            new StringBuilder("video ready: ").append(n.j);
            new StringBuilder("ad in focus: ").append(n.d());
            boolean c;
            if (!n.j) {
                c = false;
            }
            else if (n.d()) {
                c = false;
            }
            else if (VungleUtil.c(ab.a().a().c)) {
                c = (Build$VERSION.SDK_INT >= 11 && VungleUtil.e(n.e()) && c());
            }
            else if (this.f.f(n.e()) != null) {
                c = false;
            }
            else {
                new StringBuilder(" -- delay: ").append(IVungleConstants.g());
                new StringBuilder(" -- start: ").append(IVungleConstants.h());
                new StringBuilder(" -- focus: ").append(n.d());
                c = c();
            }
            return c;
        }
    }
    
    private static boolean c() {
        synchronized (VunglePub.class) {
            ab.c().a = System.currentTimeMillis();
            n.j = false;
            final Intent intent = new Intent(n.e(), (Class)VungleAdvert.class);
            intent.addFlags(268435456);
            n.e().startActivity(intent);
            final VungleCache vungleCache = (VungleCache)VunglePub.g.c.get();
            boolean b;
            if (vungleCache == null) {
                b = false;
            }
            else {
                vungleCache.c();
                b = true;
            }
            return b;
        }
    }
    
    public static boolean displayAdvert() {
        synchronized (VunglePub.class) {
            return a(false, null, true);
        }
    }
    
    public static boolean displayIncentivizedAdvert(String s, final boolean b) {
        // monitorenter(VunglePub.class)
        while (true) {
            Label_0035: {
                if (s == null) {
                    break Label_0035;
                }
                try {
                    if (s.length() != 0) {
                        return a(true, s, b);
                    }
                }
                finally {
                }
                // monitorexit(VunglePub.class)
            }
            s = null;
            continue;
        }
    }
    
    public static boolean displayIncentivizedAdvert(final boolean b) {
        synchronized (VunglePub.class) {
            return a(true, null, b);
        }
    }
    
    public static boolean getSoundEnabled() {
        synchronized (VunglePub.class) {
            return a() && n.s;
        }
    }
    
    public static final String getVersionString() {
        // monitorenter(VunglePub.class)
        // monitorexit(VunglePub.class)
        return "VungleDroid/1.3.10";
    }
    
    public static void init(final Context context, final String s) {
        synchronized (VunglePub.class) {
            init(context, s, 0, -1);
        }
    }
    
    public static void init(final Context context, final String s, final int n, final int n2) {
        synchronized (VunglePub.class) {
            int n3;
            if (VunglePub.g == null) {
                n3 = 1;
            }
            else {
                n3 = 0;
            }
            if (n3 != 0) {
                n.i = true;
                VunglePub.g = new VunglePub(context, s, n, n2);
                VungleConnectionHandler.e();
                if (ab.b() != null && !ab.b().isEmpty()) {
                    ((VungleConnectionHandler)VunglePub.g.d.get()).b();
                }
            }
        }
    }
    
    public static boolean isVideoAvailable() {
        synchronized (VunglePub.class) {
            boolean b;
            if (!a()) {
                VunglePub.h = "VunglePub not initialized.";
                b = false;
            }
            else if (System.currentTimeMillis() - IVungleConstants.h() < 1000 * IVungleConstants.g()) {
                VunglePub.h = "Ad views are too close together. (Within the delay time provided by the adserver)";
                b = false;
            }
            else {
                final String f = VunglePub.g.f.f(n.e());
                if (f != null) {
                    VunglePub.h = f + " not currently available.";
                    b = false;
                }
                else if (!n.j) {
                    VunglePub.h = "Advert has not been fully downloaded yet.";
                    b = false;
                }
                else {
                    VunglePub.h = "Advert is available.";
                    b = true;
                }
            }
            return b;
        }
    }
    
    public static boolean isVideoAvailable(final boolean b) {
        synchronized (VunglePub.class) {
            final boolean videoAvailable = isVideoAvailable();
            if (b) {
                final String h = VunglePub.h;
                final String h2 = VunglePub.h;
                VunglePub.h = null;
            }
            return videoAvailable;
        }
    }
    
    public static void onPause() {
        synchronized (VunglePub.class) {
            if (a()) {
                t.b();
                s.b();
            }
        }
    }
    
    public static void onResume() {
        synchronized (VunglePub.class) {
            if (a()) {
                t.a();
                s.a();
            }
        }
    }
    
    public static void setAutoRotation(final boolean r) {
        synchronized (VunglePub.class) {
            n.r = r;
        }
    }
    
    public static void setBackButtonEnabled(final boolean t) {
        synchronized (VunglePub.class) {
            if (a()) {
                n.t = t;
            }
        }
    }
    
    public static void setEventListener(final EventListener eventListener) {
        synchronized (VunglePub.class) {
            if (a()) {
                IVungleConstants.a(eventListener);
            }
        }
    }
    
    public static void setIncentivizedBackButtonEnabled(final boolean u) {
        synchronized (VunglePub.class) {
            if (a()) {
                n.u = u;
            }
        }
    }
    
    public static void setSoundEnabled(final boolean s) {
        synchronized (VunglePub.class) {
            if (a()) {
                n.s = s;
            }
        }
    }
    
    public static void setVungleBitmapFactory(final VungleBitmapFactory vungleBitmapFactory) {
        synchronized (VunglePub.class) {
            m.a().a(vungleBitmapFactory);
        }
    }
    
    public interface EventListener
    {
        void onVungleAdEnd();
        
        void onVungleAdStart();
        
        void onVungleView(double p0, double p1);
    }
    
    public static final class Gender
    {
        public static final int FEMALE = 1;
        public static final int MALE = 0;
        public static final int UNKNOWN = -1;
        
        public static String toString(final int n) {
            switch (n) {
                default: {
                    return "unknown";
                }
                case 0: {
                    return "male";
                }
                case 1: {
                    return "female";
                }
            }
        }
    }
}
