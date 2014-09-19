package com.vungle.sdk;

import javax.inject.*;
import com.vungle.sdk.net.http.*;
import com.vungle.sdk.model.*;
import android.content.*;
import org.json.*;
import android.net.*;
import java.util.*;
import java.lang.ref.*;
import android.util.*;

public class VungleConnectionHandler
{
    @Inject
    static Provider<VungleConnectionHandler> a;
    @Inject
    HttpGateway b;
    @Inject
    Provider<VungleCache> c;
    @Inject
    VungleParser d;
    @Inject
    VungleUtil e;
    private boolean f;
    private TimerTask g;
    private final Context h;
    private int i;
    private int j;
    private int k;
    private long l;
    private String m;
    private b n;
    
    public VungleConnectionHandler(final Context h) {
        super();
        this.f = false;
        this.g = null;
        this.i = -1;
        this.j = -1;
        this.k = 0;
        this.l = -1L;
        this.m = null;
        this.n = null;
        this.h = h;
    }
    
    static /* synthetic */ void a(final VungleConnectionHandler vungleConnectionHandler, final a a) {
        final VungleUtil e = vungleConnectionHandler.e;
        VungleUtil.h(vungleConnectionHandler.h);
        vungleConnectionHandler.m = null;
        if (n.q) {
            n.q = false;
            final VungleCache vungleCache = (VungleCache)vungleConnectionHandler.c.get();
            if (vungleCache != null) {
                vungleConnectionHandler.m = vungleCache.d();
                final String m = vungleConnectionHandler.m;
            }
        }
        if (vungleConnectionHandler.m == null) {
            vungleConnectionHandler.b.a(ab.a().b(null));
        }
        else {
            final String i = vungleConnectionHandler.m;
            vungleConnectionHandler.m = i;
            final z a2 = vungleConnectionHandler.d.a(i);
            ab.a().a(a2);
            if (a2 == null || a2.a() != null) {
                a.a();
                return;
            }
            n.j = false;
            n.k = true;
            new Object() {
                VungleConnectionHandler.a a;
            }.a = a;
            final VungleCache vungleCache2 = (VungleCache)vungleConnectionHandler.c.get();
            if (vungleCache2 != null) {
                vungleCache2.a(a2);
            }
        }
    }
    
    static /* synthetic */ void b(final VungleConnectionHandler vungleConnectionHandler) {
        ArrayList<String> b = null;
        Label_0086: {
            try {
                b = ab.b();
                if (!VungleUtil.e(n.e())) {
                    break Label_0086;
                }
                if (b == null) {
                    return;
                }
                if (b.isEmpty()) {
                    return;
                }
                final Iterator<String> iterator = b.iterator();
                while (iterator.hasNext()) {
                    if (q.a(IVungleConstants.b(), iterator.next()).contains(IVungleConstants.j)) {
                        iterator.remove();
                    }
                }
            }
            catch (Throwable t) {
                ab.a(t);
                return;
            }
            ab.a(b);
        }
        if (b != null && !b.isEmpty()) {
            vungleConnectionHandler.j = 5;
            vungleConnectionHandler.f();
        }
    }
    
    static /* synthetic */ void c(final VungleConnectionHandler vungleConnectionHandler) {
        final Uri$Builder buildUpon = Uri.parse(IVungleConstants.c()).buildUpon();
        final VungleUtil e = vungleConnectionHandler.e;
        buildUpon.appendQueryParameter("isu", VungleUtil.c(vungleConnectionHandler.h));
        buildUpon.appendQueryParameter("app_id", ab.a().b());
        final VungleUtil e2 = vungleConnectionHandler.e;
        final String a = VungleUtil.a(vungleConnectionHandler.h);
        if (a != null && a.length() != 0) {
            buildUpon.appendQueryParameter("ma", a);
        }
        final VungleUtil e3 = vungleConnectionHandler.e;
        final String a2 = VungleUtil.a();
        if (!VungleUtil.b(a2)) {
            buildUpon.appendQueryParameter("serial", a2);
        }
        new StringBuilder("Request url: ").append(buildUpon.build().toString());
        final String string = buildUpon.build().toString();
        final String a3 = IVungleConstants.a;
        while (true) {
            Label_0263: {
                Label_0236: {
                    if (VungleUtil.b(string)) {
                        break Label_0236;
                    }
                    final ArrayList<String> a4 = q.a(string);
                    if (a4 == null) {
                        break Label_0263;
                    }
                    final Iterator<String> iterator = a4.iterator();
                    if (!iterator.hasNext() || !IVungleConstants.j.equals(iterator.next())) {
                        break Label_0263;
                    }
                    final boolean b = true;
                    VungleUtil.a(vungleConnectionHandler.h, IVungleConstants.E, IVungleConstants.F, b);
                    final String a5 = IVungleConstants.a;
                    new StringBuilder("Install report response: ").append(a4.get(0));
                }
                synchronized (n.l) {
                    n.l = false;
                    return;
                }
            }
            final boolean b = false;
            continue;
        }
    }
    
    static void e() {
        synchronized (n.k) {
            if (!n.d() && n.k) {
                return;
            }
            // monitorexit(n.k)
            n.k = true;
            ((VungleConnectionHandler)VungleConnectionHandler.a.get()).c();
        }
    }
    
    private void f() {
        this.g = new TimerTask() {
            @Override
            public final void run() {
                try {
                    switch (VungleConnectionHandler.this.j) {
                        default: {
                            VungleConnectionHandler.this.j = -1;
                            return;
                        }
                        case 4: {
                            VungleConnectionHandler.this.f = false;
                            VungleConnectionHandler.this.c();
                            return;
                        }
                        case 5: {
                            break;
                        }
                        case 6: {
                            return;
                        }
                    }
                }
                catch (Throwable t) {
                    ab.a(t);
                    return;
                }
                VungleConnectionHandler.this.b();
            }
        };
        ++this.k;
        if (this.k > com.vungle.sdk.n.c()) {
            this.f = false;
            com.vungle.sdk.n.k = false;
        }
        else {
            long delay;
            if (this.f) {
                this.f = false;
                delay = com.vungle.sdk.n.a();
            }
            else {
                if (this.l <= 0L) {
                    this.l = com.vungle.sdk.n.b();
                }
                else {
                    this.l <<= 1;
                }
                final String a = IVungleConstants.a;
                new StringBuilder("Retry Count : ").append(this.k);
                final String a2 = IVungleConstants.a;
                new StringBuilder("Current Sleep Time : ").append(this.l);
                delay = this.l;
            }
            if (delay > -1L) {
                new Timer().schedule(this.g, delay);
                final String a3 = IVungleConstants.a;
                new StringBuilder("Sleep Timer Starts for: ").append(delay / 1000L).append(" Seconds");
                final String a4 = IVungleConstants.a;
                new StringBuilder("Timer Type ").append(this.j);
                return;
            }
            if (ab.e() != null) {
                ab.f();
            }
        }
    }
    
    public final void a() {
        double n = 0.0;
        if (com.vungle.sdk.n.i) {
            final String a = IVungleConstants.a;
            ab.a(ab.c().a());
            final ArrayList<y> d = ab.c().d;
            final Iterator<y> iterator = d.iterator();
            double n2 = n;
            while (iterator.hasNext()) {
                final y y = iterator.next();
                n2 = y.b;
                if (y.c > n) {
                    n = y.c;
                }
            }
            if (d.size() > 0) {
                IVungleConstants.a(n / 1000.0, n2 / 1000.0);
            }
            ab.a(new x());
            if (!VungleUtil.e(this.h)) {
                this.j = 5;
                this.f();
                return;
            }
            this.b();
        }
    }
    
    public final void b() {
        if (this.g != null) {
            this.g.cancel();
        }
        this.g = null;
        if (VungleUtil.e(this.h)) {
            final String a = IVungleConstants.a;
            if (com.vungle.sdk.n.i) {
                this.n = new b(this, 1);
                this.n.c.start();
            }
            return;
        }
        this.j = 5;
        this.f();
    }
    
    final void c() {
        if (!com.vungle.sdk.n.m || com.vungle.sdk.n.i) {
            com.vungle.sdk.n.j = false;
            if (this.g != null) {
                this.g.cancel();
            }
            this.g = null;
            if (this.e.f(this.h) != null) {
                this.j = 4;
                this.f();
                return;
            }
            final String a = IVungleConstants.a;
            if (com.vungle.sdk.n.i) {
                this.i = 0;
                this.n = new b(this, 0);
                this.n.c.start();
            }
        }
    }
    
    public final void d() {
        synchronized (com.vungle.sdk.n.l) {
            if (com.vungle.sdk.n.k) {
                return;
            }
            // monitorexit(n.l = Boolean.valueOf(true))
            this.n = new b(this, 3);
            this.n.c.start();
        }
    }
    
    public interface a
    {
        void a();
    }
    
    static final class b
    {
        WeakReference<VungleConnectionHandler> a;
        int b;
        Thread c;
        
        public b(final VungleConnectionHandler referent, final int b) {
            super();
            this.a = new WeakReference<VungleConnectionHandler>(referent);
            this.b = b;
            (this.c = new Thread(new a((byte)0), "VungleNetworkTaskThread")).setDaemon(true);
        }
        
        final class a implements Runnable
        {
            @Override
            public final void run() {
                VungleConnectionHandler vungleConnectionHandler = null;
                Label_0117: {
                    Label_0112: {
                        try {
                            vungleConnectionHandler = VungleConnectionHandler.b.this.a.get();
                            if (vungleConnectionHandler == null) {
                                return;
                            }
                            switch (VungleConnectionHandler.b.this.b) {
                                default: {
                                    Log.e("VungleNetworkTask", "Unexpected event type: " + VungleConnectionHandler.b.this.b);
                                    return;
                                }
                                case 0: {
                                    break;
                                }
                                case 1: {
                                    break Label_0112;
                                }
                                case 3: {
                                    break Label_0117;
                                }
                            }
                        }
                        catch (Throwable t) {
                            r.a(IVungleConstants.b, t);
                            ab.a(t);
                            return;
                        }
                        VungleConnectionHandler.a(vungleConnectionHandler, (VungleConnectionHandler.a)new VungleConnectionHandler.a() {
                            @Override
                            public final void a() {
                                vungleConnectionHandler.j = 4;
                                vungleConnectionHandler.f = true;
                                vungleConnectionHandler.f();
                            }
                        });
                        return;
                    }
                    VungleConnectionHandler.b(vungleConnectionHandler);
                    return;
                }
                VungleConnectionHandler.c(vungleConnectionHandler);
            }
        }
    }
}
