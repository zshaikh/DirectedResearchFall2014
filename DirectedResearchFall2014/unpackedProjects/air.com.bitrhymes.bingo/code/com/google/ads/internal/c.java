package com.google.ads.internal;

import android.app.*;
import android.webkit.*;
import java.util.regex.*;
import android.os.*;
import com.google.ads.searchads.*;
import com.google.ads.util.*;
import android.text.*;
import android.content.*;
import com.google.ads.*;
import java.util.*;
import android.content.pm.*;
import android.telephony.*;
import android.util.*;
import org.json.*;
import android.view.*;
import java.io.*;

public class c implements Runnable
{
    boolean a;
    private String b;
    private String c;
    private String d;
    private String e;
    private boolean f;
    private f g;
    private AdRequest h;
    private WebView i;
    private l j;
    private String k;
    private String l;
    private LinkedList<String> m;
    private String n;
    private AdSize o;
    private boolean p;
    private volatile boolean q;
    private boolean r;
    private AdRequest.ErrorCode s;
    private boolean t;
    private int u;
    private Thread v;
    private boolean w;
    private d x;
    
    protected c() {
        super();
        this.p = false;
        this.x = com.google.ads.internal.c.d.b;
    }
    
    public c(final l j) {
        super();
        this.p = false;
        this.x = com.google.ads.internal.c.d.b;
        this.j = j;
        this.k = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.m = new LinkedList<String>();
        this.s = null;
        this.t = false;
        this.u = -1;
        this.f = false;
        this.r = false;
        this.n = null;
        this.o = null;
        if (j.a.a().c.a() != null) {
            (this.i = new AdWebView(j.a.a(), null)).setWebViewClient((WebViewClient)com.google.ads.internal.i.a(j.a.a().b.a(), com.google.ads.internal.a.b, false, false));
            this.i.setVisibility(8);
            this.i.setWillNotDraw(true);
            this.g = new f(j);
            return;
        }
        this.i = null;
        this.g = null;
        com.google.ads.util.b.e("activity was null while trying to create an AdLoader.");
    }
    
    static void a(final String s, final c c, final com.google.ads.d d) {
        if (s != null && !s.contains("no-store") && !s.contains("no-cache")) {
            final Matcher matcher = Pattern.compile("max-age\\s*=\\s*(\\d+)").matcher(s);
            if (matcher.find()) {
                try {
                    final int int1 = Integer.parseInt(matcher.group(1));
                    d.a(c, int1);
                    com.google.ads.util.b.c(String.format(Locale.US, "Caching gWhirl configuration for: %d seconds", int1));
                    return;
                }
                catch (NumberFormatException ex) {
                    com.google.ads.util.b.b("Caught exception trying to parse cache control directive. Overflow?", ex);
                    return;
                }
            }
            com.google.ads.util.b.c("Unrecognized cacheControlDirective: '" + s + "'. Not caching configuration.");
        }
    }
    
    private void b(final String s, final String s2) {
        com.google.ads.m.a().c.a().post((Runnable)new c(this.i, s2, s));
    }
    
    private String d() {
        if (this.h instanceof SearchAdRequest) {
            return "AFMA_buildAdURL";
        }
        return "AFMA_buildAdURL";
    }
    
    private String e() {
        if (this.h instanceof SearchAdRequest) {
            return "AFMA_getSdkConstants();";
        }
        return "AFMA_getSdkConstants();";
    }
    
    private String f() {
        if (this.h instanceof SearchAdRequest) {
            return "http://www.gstatic.com/safa/";
        }
        return "http://media.admob.com/";
    }
    
    private String g() {
        if (this.h instanceof SearchAdRequest) {
            return "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>";
        }
        return "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>";
    }
    
    private String h() {
        if (this.h instanceof SearchAdRequest) {
            return "</script></head><body></body></html>";
        }
        return "</script></head><body></body></html>";
    }
    
    private void i() {
        final AdWebView l = this.j.a.a().b.a().l();
        this.j.a.a().b.a().m().c(true);
        this.j.a.a().b.a().n().h();
        com.google.ads.m.a().c.a().post((Runnable)new c(l, this.b, this.c));
    }
    
    private void j() {
        com.google.ads.m.a().c.a().post((Runnable)new e(this.j.a.a().b.a(), this.i, this.m, this.u, this.r, this.n, this.o));
    }
    
    public String a(final Map<String, Object> map, final Activity activity) throws b {
        final Context applicationContext = activity.getApplicationContext();
        final g n = this.j.a.a().b.a().n();
        final long m = n.m();
        if (m > 0L) {
            map.put("prl", m);
        }
        final long n2 = n.n();
        if (n2 > 0L) {
            map.put("prnl", n2);
        }
        final String l = n.l();
        if (l != null) {
            map.put("ppcl", l);
        }
        final String k = n.k();
        if (k != null) {
            map.put("pcl", k);
        }
        final long j = n.j();
        if (j > 0L) {
            map.put("pcc", j);
        }
        map.put("preqs", n.o());
        map.put("oar", n.p());
        map.put("bas_on", n.s());
        map.put("bas_off", n.v());
        if (n.y()) {
            map.put("aoi_timeout", "true");
        }
        if (n.A()) {
            map.put("aoi_nofill", "true");
        }
        final String d = n.D();
        if (d != null) {
            map.put("pit", d);
        }
        map.put("ptime", com.google.ads.internal.g.E());
        n.a();
        n.i();
        Label_1214: {
            if (!this.j.a.a().b()) {
                break Label_1214;
            }
            map.put("format", "interstitial_mb");
        Label_0986_Outer:
            while (true) {
                map.put("slotname", this.j.a.a().h.a());
                map.put("js", "afma-sdk-a-v6.4.1");
                final String packageName = applicationContext.getPackageName();
                int versionCode;
                String f;
                String s;
                String d2;
                String e;
                DisplayMetrics a;
                n n3;
                ak a2;
                AdView adView;
                int[] array;
                int i;
                int i2;
                DisplayMetrics displayMetrics;
                int widthPixels;
                int heightPixels;
                int i3;
                HashMap<String, Integer> hashMap;
                StringBuilder sb = null;
                AdSize[] array2;
                AdSize c;
                HashMap<String, Integer> hashMap2;
                Label_1385:Label_1283_Outer:Block_34_Outer:
                while (true) {
                    Label_1806: {
                        try {
                            versionCode = applicationContext.getPackageManager().getPackageInfo(packageName, 0).versionCode;
                            f = AdUtil.f(applicationContext);
                            if (!TextUtils.isEmpty((CharSequence)f)) {
                                map.put("mv", f);
                            }
                            s = com.google.ads.m.a().a.a();
                            if (!TextUtils.isEmpty((CharSequence)s)) {
                                map.put("imbf", s);
                            }
                            map.put("msid", applicationContext.getPackageName());
                            map.put("app_name", versionCode + ".android." + applicationContext.getPackageName());
                            map.put("isu", AdUtil.a(applicationContext));
                            d2 = AdUtil.d(applicationContext);
                            if (d2 == null) {
                                d2 = "null";
                            }
                            map.put("net", d2);
                            e = AdUtil.e(applicationContext);
                            if (e != null && e.length() != 0) {
                                map.put("cap", e);
                            }
                            map.put("u_audio", AdUtil.g(applicationContext).ordinal());
                            a = AdUtil.a(activity);
                            map.put("u_sd", a.density);
                            map.put("u_h", AdUtil.a(applicationContext, a));
                            map.put("u_w", AdUtil.b(applicationContext, a));
                            map.put("hl", Locale.getDefault().getLanguage());
                            n3 = this.j.a.a();
                            a2 = n3.r.a();
                            if (a2 == null) {
                                a2 = ak.a("afma-sdk-a-v6.4.1", (Context)activity);
                                n3.r.a(a2);
                                n3.s.a(new al(a2));
                            }
                            map.put("ms", a2.a(applicationContext));
                            if (this.j.a.a().j != null && this.j.a.a().j.a() != null) {
                                adView = this.j.a.a().j.a();
                                if (adView.getParent() != null) {
                                    array = new int[2];
                                    adView.getLocationOnScreen(array);
                                    i = array[0];
                                    i2 = array[1];
                                    displayMetrics = this.j.a.a().f.a().getResources().getDisplayMetrics();
                                    widthPixels = displayMetrics.widthPixels;
                                    heightPixels = displayMetrics.heightPixels;
                                    if (!adView.isShown() || i + adView.getWidth() <= 0 || i2 + adView.getHeight() <= 0 || i > widthPixels || i2 > heightPixels) {
                                        break Label_1806;
                                    }
                                    i3 = 1;
                                    hashMap = new HashMap<String, Integer>();
                                    hashMap.put("x", i);
                                    hashMap.put("y", i2);
                                    hashMap.put("width", adView.getWidth());
                                    hashMap.put("height", adView.getHeight());
                                    hashMap.put("visible", i3);
                                    map.put("ad_pos", hashMap);
                                }
                            }
                            sb = new StringBuilder();
                            array2 = this.j.a.a().n.a();
                            if (array2 != null) {
                                for (final AdSize adSize : array2) {
                                    if (sb.length() != 0) {
                                        sb.append("|");
                                    }
                                    sb.append(adSize.getWidth() + "x" + adSize.getHeight());
                                }
                                break Label_1385;
                            }
                            break;
                            // iftrue(Label_1309:, c.isCustomAdSize())
                            // iftrue(Label_1283:, !c.isAutoHeight())
                            // iftrue(Label_1262:, !c.isFullWidth())
                            while (true) {
                                while (true) {
                                    while (true) {
                                        map.put("format", c.toString());
                                        continue Label_0986_Outer;
                                        continue Label_1283_Outer;
                                    }
                                    map.put("smart_w", "full");
                                    Label_1262: {
                                        map.put("smart_h", "auto");
                                    }
                                    continue Block_34_Outer;
                                }
                                c = this.j.a.a().g.a().c();
                                continue;
                            }
                            Label_1309: {
                                hashMap2 = new HashMap<String, Integer>();
                            }
                            hashMap2.put("w", c.getWidth());
                            hashMap2.put("h", c.getHeight());
                            map.put("ad_frame", hashMap2);
                            continue Label_0986_Outer;
                        }
                        catch (PackageManager$NameNotFoundException ex) {
                            throw new b("NameNotFoundException");
                        }
                        break Label_1385;
                    }
                    i3 = 0;
                    continue;
                }
                map.put("sz", sb.toString());
                break;
            }
        }
        final TelephonyManager telephonyManager = (TelephonyManager)applicationContext.getSystemService("phone");
        final String networkOperator = telephonyManager.getNetworkOperator();
        if (!TextUtils.isEmpty((CharSequence)networkOperator)) {
            map.put("carrier", networkOperator);
        }
        map.put("pt", telephonyManager.getPhoneType());
        map.put("gnt", telephonyManager.getNetworkType());
        if (AdUtil.c()) {
            map.put("simulator", 1);
        }
        map.put("session_id", com.google.ads.b.a().b().toString());
        map.put("seq_num", com.google.ads.b.a().c().toString());
        if (this.j.a.a().g.a().b()) {
            map.put("swipeable", 1);
        }
        if (this.j.a.a().t.a()) {
            map.put("d_imp_hdr", 1);
        }
        final String a3 = AdUtil.a(map);
        String str;
        if (((m.a)this.j.a.a().d.a().b.a()).o.a()) {
            str = this.g() + this.d() + "(" + a3 + ");" + this.h();
        }
        else {
            str = this.g() + this.e() + this.d() + "(" + a3 + ");" + this.h();
        }
        com.google.ads.util.b.c("adRequestUrlHtml: " + str);
        return str;
    }
    
    protected void a() {
        com.google.ads.util.b.a("AdLoader cancelled.");
        if (this.i != null) {
            this.i.stopLoading();
            this.i.destroy();
        }
        if (this.v != null) {
            this.v.interrupt();
            this.v = null;
        }
        if (this.g != null) {
            this.g.a();
        }
        this.q = true;
    }
    
    public void a(final int u) {
        synchronized (this) {
            this.u = u;
        }
    }
    
    public void a(final AdRequest.ErrorCode s) {
        synchronized (this) {
            this.s = s;
            this.notify();
        }
    }
    
    protected void a(final AdRequest.ErrorCode errorCode, final boolean b) {
        com.google.ads.m.a().c.a().post((Runnable)new a(this.j.a.a().b.a(), this.i, this.g, errorCode, b));
    }
    
    protected void a(final AdRequest h) {
        this.h = h;
        this.q = false;
        (this.v = new Thread(this)).start();
    }
    
    public void a(final AdSize o) {
        synchronized (this) {
            this.o = o;
        }
    }
    
    public void a(final d x) {
        synchronized (this) {
            this.x = x;
        }
    }
    
    protected void a(final String e) {
        synchronized (this) {
            this.m.add(e);
        }
    }
    
    protected void a(final String c, final String b) {
        synchronized (this) {
            this.b = b;
            this.c = c;
            this.notify();
        }
    }
    
    public void a(final boolean p) {
        synchronized (this) {
            this.p = p;
        }
    }
    
    protected void b() {
        try {
            if (TextUtils.isEmpty((CharSequence)this.e)) {
                com.google.ads.util.b.b("Got a mediation response with no content type. Aborting mediation.");
                this.a(AdRequest.ErrorCode.INTERNAL_ERROR, false);
                return;
            }
            if (!this.e.startsWith("application/json")) {
                com.google.ads.util.b.b("Got a mediation response with a content type: '" + this.e + "'. Expected something starting with 'application/json'. Aborting mediation.");
                this.a(AdRequest.ErrorCode.INTERNAL_ERROR, false);
                return;
            }
        }
        catch (JSONException ex) {
            com.google.ads.util.b.b("AdLoader can't parse gWhirl server configuration.", (Throwable)ex);
            this.a(AdRequest.ErrorCode.INTERNAL_ERROR, false);
            return;
        }
        final c a = com.google.ads.c.a(this.c);
        a(this.d, a, this.j.a.a().b.a().j());
        com.google.ads.m.a().c.a().post((Runnable)new Runnable() {
            @Override
            public void run() {
                if (com.google.ads.internal.c.this.i != null) {
                    com.google.ads.internal.c.this.i.stopLoading();
                    com.google.ads.internal.c.this.i.destroy();
                }
                com.google.ads.internal.c.this.j.a.a().b.a().a(com.google.ads.internal.c.this.n);
                if (com.google.ads.internal.c.this.o != null) {
                    com.google.ads.internal.c.this.j.a.a().g.a().b(com.google.ads.internal.c.this.o);
                }
                com.google.ads.internal.c.this.j.a.a().b.a().a(a);
            }
        });
    }
    
    protected void b(final String e) {
        synchronized (this) {
            this.e = e;
        }
    }
    
    protected void b(final boolean f) {
        synchronized (this) {
            this.f = f;
        }
    }
    
    protected void c() {
        synchronized (this) {
            this.t = true;
            this.notify();
        }
    }
    
    protected void c(final String d) {
        synchronized (this) {
            this.d = d;
        }
    }
    
    public void c(final boolean r) {
        synchronized (this) {
            this.r = r;
        }
    }
    
    public void d(final String k) {
        synchronized (this) {
            this.k = k;
            this.notify();
        }
    }
    
    public void d(final boolean w) {
        synchronized (this) {
            this.w = w;
        }
    }
    
    public void e(final String l) {
        synchronized (this) {
            this.l = l;
        }
    }
    
    public void e(final boolean a) {
        synchronized (this) {
            this.a = a;
        }
    }
    
    public void f(final String n) {
        synchronized (this) {
            this.n = n;
        }
    }
    
    @Override
    public void run() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_0        
        //     3: getfield        com/google/ads/internal/c.i:Landroid/webkit/WebView;
        //     6: ifnull          16
        //     9: aload_0        
        //    10: getfield        com/google/ads/internal/c.g:Lcom/google/ads/internal/f;
        //    13: ifnonnull       33
        //    16: ldc_w           "adRequestWebView was null while trying to load an ad."
        //    19: invokestatic    com/google/ads/util/b.e:(Ljava/lang/String;)V
        //    22: aload_0        
        //    23: getstatic       com/google/ads/AdRequest$ErrorCode.INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
        //    26: iconst_0       
        //    27: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //    30: aload_0        
        //    31: monitorexit    
        //    32: return         
        //    33: aload_0        
        //    34: getfield        com/google/ads/internal/c.j:Lcom/google/ads/l;
        //    37: getfield        com/google/ads/l.a:Lcom/google/ads/util/i$b;
        //    40: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //    43: checkcast       Lcom/google/ads/n;
        //    46: getfield        com/google/ads/n.c:Lcom/google/ads/util/i$d;
        //    49: invokevirtual   com/google/ads/util/i$d.a:()Ljava/lang/Object;
        //    52: checkcast       Landroid/app/Activity;
        //    55: astore_3       
        //    56: aload_3        
        //    57: ifnonnull       82
        //    60: ldc_w           "activity was null while forming an ad request."
        //    63: invokestatic    com/google/ads/util/b.e:(Ljava/lang/String;)V
        //    66: aload_0        
        //    67: getstatic       com/google/ads/AdRequest$ErrorCode.INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
        //    70: iconst_0       
        //    71: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //    74: aload_0        
        //    75: monitorexit    
        //    76: return         
        //    77: astore_2       
        //    78: aload_0        
        //    79: monitorexit    
        //    80: aload_2        
        //    81: athrow         
        //    82: aload_0        
        //    83: getfield        com/google/ads/internal/c.j:Lcom/google/ads/l;
        //    86: getfield        com/google/ads/l.a:Lcom/google/ads/util/i$b;
        //    89: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //    92: checkcast       Lcom/google/ads/n;
        //    95: getfield        com/google/ads/n.b:Lcom/google/ads/util/i$b;
        //    98: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   101: checkcast       Lcom/google/ads/internal/d;
        //   104: invokevirtual   com/google/ads/internal/d.p:()J
        //   107: lstore          4
        //   109: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //   112: lstore          6
        //   114: aload_0        
        //   115: getfield        com/google/ads/internal/c.h:Lcom/google/ads/AdRequest;
        //   118: aload_0        
        //   119: getfield        com/google/ads/internal/c.j:Lcom/google/ads/l;
        //   122: getfield        com/google/ads/l.a:Lcom/google/ads/util/i$b;
        //   125: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   128: checkcast       Lcom/google/ads/n;
        //   131: getfield        com/google/ads/n.f:Lcom/google/ads/util/i$b;
        //   134: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   137: checkcast       Landroid/content/Context;
        //   140: invokevirtual   com/google/ads/AdRequest.getRequestMap:(Landroid/content/Context;)Ljava/util/Map;
        //   143: astore          8
        //   145: aload           8
        //   147: ldc_w           "extras"
        //   150: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   155: astore          9
        //   157: aload           9
        //   159: instanceof      Ljava/util/Map;
        //   162: ifeq            351
        //   165: aload           9
        //   167: checkcast       Ljava/util/Map;
        //   170: astore          31
        //   172: aload           31
        //   174: ldc_w           "_adUrl"
        //   177: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   182: astore          32
        //   184: aload           32
        //   186: instanceof      Ljava/lang/String;
        //   189: ifeq            201
        //   192: aload_0        
        //   193: aload           32
        //   195: checkcast       Ljava/lang/String;
        //   198: putfield        com/google/ads/internal/c.b:Ljava/lang/String;
        //   201: aload           31
        //   203: ldc_w           "_requestUrl"
        //   206: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   211: astore          33
        //   213: aload           33
        //   215: instanceof      Ljava/lang/String;
        //   218: ifeq            230
        //   221: aload_0        
        //   222: aload           33
        //   224: checkcast       Ljava/lang/String;
        //   227: putfield        com/google/ads/internal/c.k:Ljava/lang/String;
        //   230: aload           31
        //   232: ldc_w           "_activationOverlayUrl"
        //   235: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   240: astore          34
        //   242: aload           34
        //   244: instanceof      Ljava/lang/String;
        //   247: ifeq            259
        //   250: aload_0        
        //   251: aload           34
        //   253: checkcast       Ljava/lang/String;
        //   256: putfield        com/google/ads/internal/c.l:Ljava/lang/String;
        //   259: aload           31
        //   261: ldc_w           "_orientation"
        //   264: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   269: astore          35
        //   271: aload           35
        //   273: instanceof      Ljava/lang/String;
        //   276: ifeq            295
        //   279: aload           35
        //   281: ldc_w           "p"
        //   284: invokevirtual   java/lang/Object.equals:(Ljava/lang/Object;)Z
        //   287: ifeq            430
        //   290: aload_0        
        //   291: iconst_1       
        //   292: putfield        com/google/ads/internal/c.u:I
        //   295: aload           31
        //   297: ldc_w           "_norefresh"
        //   300: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   305: astore          36
        //   307: aload           36
        //   309: instanceof      Ljava/lang/String;
        //   312: ifeq            351
        //   315: aload           36
        //   317: ldc_w           "t"
        //   320: invokevirtual   java/lang/Object.equals:(Ljava/lang/Object;)Z
        //   323: ifeq            351
        //   326: aload_0        
        //   327: getfield        com/google/ads/internal/c.j:Lcom/google/ads/l;
        //   330: getfield        com/google/ads/l.a:Lcom/google/ads/util/i$b;
        //   333: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   336: checkcast       Lcom/google/ads/n;
        //   339: getfield        com/google/ads/n.b:Lcom/google/ads/util/i$b;
        //   342: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   345: checkcast       Lcom/google/ads/internal/d;
        //   348: invokevirtual   com/google/ads/internal/d.e:()V
        //   351: aload_0        
        //   352: getfield        com/google/ads/internal/c.b:Ljava/lang/String;
        //   355: ifnonnull       1593
        //   358: aload_0        
        //   359: getfield        com/google/ads/internal/c.k:Ljava/lang/String;
        //   362: astore          14
        //   364: aload           14
        //   366: ifnonnull       656
        //   369: aload_0        
        //   370: aload           8
        //   372: aload_3        
        //   373: invokevirtual   com/google/ads/internal/c.a:(Ljava/util/Map;Landroid/app/Activity;)Ljava/lang/String;
        //   376: astore          24
        //   378: aload_0        
        //   379: aload           24
        //   381: aload_0        
        //   382: invokespecial   com/google/ads/internal/c.f:()Ljava/lang/String;
        //   385: invokespecial   com/google/ads/internal/c.b:(Ljava/lang/String;Ljava/lang/String;)V
        //   388: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //   391: lstore          25
        //   393: lload           4
        //   395: lload           25
        //   397: lload           6
        //   399: lsub           
        //   400: lsub           
        //   401: lstore          27
        //   403: lload           27
        //   405: lconst_0       
        //   406: lcmp           
        //   407: ifle            416
        //   410: aload_0        
        //   411: lload           27
        //   413: invokevirtual   java/lang/Object.wait:(J)V
        //   416: aload_0        
        //   417: getfield        com/google/ads/internal/c.q:Z
        //   420: istore          29
        //   422: iload           29
        //   424: ifeq            534
        //   427: aload_0        
        //   428: monitorexit    
        //   429: return         
        //   430: aload           35
        //   432: ldc_w           "l"
        //   435: invokevirtual   java/lang/Object.equals:(Ljava/lang/Object;)Z
        //   438: ifeq            295
        //   441: aload_0        
        //   442: iconst_0       
        //   443: putfield        com/google/ads/internal/c.u:I
        //   446: goto            295
        //   449: astore_1       
        //   450: ldc_w           "An unknown error occurred in AdLoader."
        //   453: aload_1        
        //   454: invokestatic    com/google/ads/util/b.b:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   457: aload_0        
        //   458: getstatic       com/google/ads/AdRequest$ErrorCode.INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
        //   461: iconst_1       
        //   462: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //   465: aload_0        
        //   466: monitorexit    
        //   467: return         
        //   468: astore          23
        //   470: new             Ljava/lang/StringBuilder;
        //   473: dup            
        //   474: invokespecial   java/lang/StringBuilder.<init>:()V
        //   477: ldc_w           "Caught internal exception: "
        //   480: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   483: aload           23
        //   485: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   488: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   491: invokestatic    com/google/ads/util/b.c:(Ljava/lang/String;)V
        //   494: aload_0        
        //   495: getstatic       com/google/ads/AdRequest$ErrorCode.INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
        //   498: iconst_0       
        //   499: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //   502: aload_0        
        //   503: monitorexit    
        //   504: return         
        //   505: astore          30
        //   507: new             Ljava/lang/StringBuilder;
        //   510: dup            
        //   511: invokespecial   java/lang/StringBuilder.<init>:()V
        //   514: ldc_w           "AdLoader InterruptedException while getting the URL: "
        //   517: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   520: aload           30
        //   522: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   525: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   528: invokestatic    com/google/ads/util/b.a:(Ljava/lang/String;)V
        //   531: aload_0        
        //   532: monitorexit    
        //   533: return         
        //   534: aload_0        
        //   535: getfield        com/google/ads/internal/c.s:Lcom/google/ads/AdRequest$ErrorCode;
        //   538: ifnull          553
        //   541: aload_0        
        //   542: aload_0        
        //   543: getfield        com/google/ads/internal/c.s:Lcom/google/ads/AdRequest$ErrorCode;
        //   546: iconst_0       
        //   547: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //   550: aload_0        
        //   551: monitorexit    
        //   552: return         
        //   553: aload_0        
        //   554: getfield        com/google/ads/internal/c.k:Ljava/lang/String;
        //   557: ifnonnull       601
        //   560: new             Ljava/lang/StringBuilder;
        //   563: dup            
        //   564: invokespecial   java/lang/StringBuilder.<init>:()V
        //   567: ldc_w           "AdLoader timed out after "
        //   570: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   573: lload           4
        //   575: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   578: ldc_w           "ms while getting the URL."
        //   581: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   584: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   587: invokestatic    com/google/ads/util/b.c:(Ljava/lang/String;)V
        //   590: aload_0        
        //   591: getstatic       com/google/ads/AdRequest$ErrorCode.NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
        //   594: iconst_0       
        //   595: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //   598: aload_0        
        //   599: monitorexit    
        //   600: return         
        //   601: aload_0        
        //   602: getfield        com/google/ads/internal/c.j:Lcom/google/ads/l;
        //   605: getfield        com/google/ads/l.a:Lcom/google/ads/util/i$b;
        //   608: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   611: checkcast       Lcom/google/ads/n;
        //   614: getfield        com/google/ads/n.g:Lcom/google/ads/util/i$b;
        //   617: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   620: checkcast       Lcom/google/ads/internal/h;
        //   623: invokevirtual   com/google/ads/internal/h.b:()Z
        //   626: ifeq            656
        //   629: aload_0        
        //   630: getfield        com/google/ads/internal/c.l:Ljava/lang/String;
        //   633: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   636: ifeq            656
        //   639: ldc_w           "AdLoader doesn't have a URL for the activation overlay"
        //   642: invokestatic    com/google/ads/util/b.c:(Ljava/lang/String;)V
        //   645: aload_0        
        //   646: getstatic       com/google/ads/AdRequest$ErrorCode.INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
        //   649: iconst_0       
        //   650: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //   653: aload_0        
        //   654: monitorexit    
        //   655: return         
        //   656: aload_0        
        //   657: getfield        com/google/ads/internal/c.j:Lcom/google/ads/l;
        //   660: getfield        com/google/ads/l.a:Lcom/google/ads/util/i$b;
        //   663: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   666: checkcast       Lcom/google/ads/n;
        //   669: getfield        com/google/ads/n.b:Lcom/google/ads/util/i$b;
        //   672: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   675: checkcast       Lcom/google/ads/internal/d;
        //   678: invokevirtual   com/google/ads/internal/d.n:()Lcom/google/ads/internal/g;
        //   681: astore          15
        //   683: getstatic       com/google/ads/internal/c$3.a:[I
        //   686: aload_0        
        //   687: getfield        com/google/ads/internal/c.x:Lcom/google/ads/internal/c$d;
        //   690: invokevirtual   com/google/ads/internal/c$d.ordinal:()I
        //   693: iaload         
        //   694: tableswitch {
        //                2: 925
        //                3: 949
        //                4: 963
        //                5: 982
        //          default: 724
        //        }
        //   724: aload_0        
        //   725: getfield        com/google/ads/internal/c.a:Z
        //   728: ifne            1091
        //   731: ldc_w           "Not using loadUrl()."
        //   734: invokestatic    com/google/ads/util/b.a:(Ljava/lang/String;)V
        //   737: aload_0        
        //   738: getfield        com/google/ads/internal/c.g:Lcom/google/ads/internal/f;
        //   741: aload_0        
        //   742: getfield        com/google/ads/internal/c.w:Z
        //   745: invokevirtual   com/google/ads/internal/f.a:(Z)V
        //   748: aload_0        
        //   749: getfield        com/google/ads/internal/c.j:Lcom/google/ads/l;
        //   752: getfield        com/google/ads/l.a:Lcom/google/ads/util/i$b;
        //   755: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   758: checkcast       Lcom/google/ads/n;
        //   761: getfield        com/google/ads/n.g:Lcom/google/ads/util/i$b;
        //   764: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   767: checkcast       Lcom/google/ads/internal/h;
        //   770: invokevirtual   com/google/ads/internal/h.b:()Z
        //   773: ifeq            1587
        //   776: aload_0        
        //   777: getfield        com/google/ads/internal/c.j:Lcom/google/ads/l;
        //   780: getfield        com/google/ads/l.a:Lcom/google/ads/util/i$b;
        //   783: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   786: checkcast       Lcom/google/ads/n;
        //   789: getfield        com/google/ads/n.e:Lcom/google/ads/util/i$b;
        //   792: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   795: checkcast       Lcom/google/ads/internal/ActivationOverlay;
        //   798: invokevirtual   com/google/ads/internal/ActivationOverlay.e:()Lcom/google/ads/internal/i;
        //   801: astore          21
        //   803: aload           21
        //   805: iconst_1       
        //   806: invokevirtual   com/google/ads/internal/i.c:(Z)V
        //   809: invokestatic    com/google/ads/m.a:()Lcom/google/ads/m;
        //   812: getfield        com/google/ads/m.c:Lcom/google/ads/util/i$b;
        //   815: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //   818: checkcast       Landroid/os/Handler;
        //   821: new             Lcom/google/ads/internal/c$1;
        //   824: dup            
        //   825: aload_0        
        //   826: invokespecial   com/google/ads/internal/c$1.<init>:(Lcom/google/ads/internal/c;)V
        //   829: invokevirtual   android/os/Handler.post:(Ljava/lang/Runnable;)Z
        //   832: pop            
        //   833: aload           21
        //   835: astore          16
        //   837: aload_0        
        //   838: getfield        com/google/ads/internal/c.g:Lcom/google/ads/internal/f;
        //   841: aload_0        
        //   842: getfield        com/google/ads/internal/c.k:Ljava/lang/String;
        //   845: invokevirtual   com/google/ads/internal/f.a:(Ljava/lang/String;)V
        //   848: aload_0        
        //   849: getfield        com/google/ads/internal/c.q:Z
        //   852: ifne            1010
        //   855: aload_0        
        //   856: getfield        com/google/ads/internal/c.s:Lcom/google/ads/AdRequest$ErrorCode;
        //   859: ifnonnull       1010
        //   862: aload_0        
        //   863: getfield        com/google/ads/internal/c.c:Ljava/lang/String;
        //   866: ifnonnull       1010
        //   869: lload           4
        //   871: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //   874: lload           6
        //   876: lsub           
        //   877: lsub           
        //   878: lstore          19
        //   880: lload           19
        //   882: lconst_0       
        //   883: lcmp           
        //   884: ifle            1010
        //   887: aload_0        
        //   888: lload           19
        //   890: invokevirtual   java/lang/Object.wait:(J)V
        //   893: goto            848
        //   896: astore          17
        //   898: new             Ljava/lang/StringBuilder;
        //   901: dup            
        //   902: invokespecial   java/lang/StringBuilder.<init>:()V
        //   905: ldc_w           "AdLoader InterruptedException while getting the ad server's response: "
        //   908: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   911: aload           17
        //   913: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   916: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   919: invokestatic    com/google/ads/util/b.a:(Ljava/lang/String;)V
        //   922: aload_0        
        //   923: monitorexit    
        //   924: return         
        //   925: aload           15
        //   927: invokevirtual   com/google/ads/internal/g.r:()V
        //   930: aload           15
        //   932: invokevirtual   com/google/ads/internal/g.u:()V
        //   935: aload           15
        //   937: invokevirtual   com/google/ads/internal/g.x:()V
        //   940: ldc_w           "Request scenario: Online server request."
        //   943: invokestatic    com/google/ads/util/b.c:(Ljava/lang/String;)V
        //   946: goto            724
        //   949: aload           15
        //   951: invokevirtual   com/google/ads/internal/g.t:()V
        //   954: ldc_w           "Request scenario: Online using buffered ads."
        //   957: invokestatic    com/google/ads/util/b.c:(Ljava/lang/String;)V
        //   960: goto            724
        //   963: aload           15
        //   965: invokevirtual   com/google/ads/internal/g.w:()V
        //   968: aload           15
        //   970: invokevirtual   com/google/ads/internal/g.q:()V
        //   973: ldc_w           "Request scenario: Offline using buffered ads."
        //   976: invokestatic    com/google/ads/util/b.c:(Ljava/lang/String;)V
        //   979: goto            724
        //   982: aload           15
        //   984: invokevirtual   com/google/ads/internal/g.q:()V
        //   987: ldc_w           "Request scenario: Offline with no buffered ads."
        //   990: invokestatic    com/google/ads/util/b.c:(Ljava/lang/String;)V
        //   993: ldc_w           "Network is unavailable.  Aborting ad request."
        //   996: invokestatic    com/google/ads/util/b.c:(Ljava/lang/String;)V
        //   999: aload_0        
        //  1000: getstatic       com/google/ads/AdRequest$ErrorCode.NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
        //  1003: iconst_0       
        //  1004: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //  1007: aload_0        
        //  1008: monitorexit    
        //  1009: return         
        //  1010: aload_0        
        //  1011: getfield        com/google/ads/internal/c.q:Z
        //  1014: istore          18
        //  1016: iload           18
        //  1018: ifeq            1024
        //  1021: aload_0        
        //  1022: monitorexit    
        //  1023: return         
        //  1024: aload_0        
        //  1025: getfield        com/google/ads/internal/c.s:Lcom/google/ads/AdRequest$ErrorCode;
        //  1028: ifnull          1043
        //  1031: aload_0        
        //  1032: aload_0        
        //  1033: getfield        com/google/ads/internal/c.s:Lcom/google/ads/AdRequest$ErrorCode;
        //  1036: iconst_0       
        //  1037: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //  1040: aload_0        
        //  1041: monitorexit    
        //  1042: return         
        //  1043: aload_0        
        //  1044: getfield        com/google/ads/internal/c.c:Ljava/lang/String;
        //  1047: ifnonnull       1580
        //  1050: new             Ljava/lang/StringBuilder;
        //  1053: dup            
        //  1054: invokespecial   java/lang/StringBuilder.<init>:()V
        //  1057: ldc_w           "AdLoader timed out after "
        //  1060: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1063: lload           4
        //  1065: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //  1068: ldc_w           "ms while waiting for the ad server's response."
        //  1071: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1074: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1077: invokestatic    com/google/ads/util/b.c:(Ljava/lang/String;)V
        //  1080: aload_0        
        //  1081: getstatic       com/google/ads/AdRequest$ErrorCode.NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
        //  1084: iconst_0       
        //  1085: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //  1088: aload_0        
        //  1089: monitorexit    
        //  1090: return         
        //  1091: aload_0        
        //  1092: aload_0        
        //  1093: getfield        com/google/ads/internal/c.k:Ljava/lang/String;
        //  1096: putfield        com/google/ads/internal/c.b:Ljava/lang/String;
        //  1099: new             Ljava/lang/StringBuilder;
        //  1102: dup            
        //  1103: invokespecial   java/lang/StringBuilder.<init>:()V
        //  1106: ldc_w           "Using loadUrl.  adBaseUrl: "
        //  1109: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1112: aload_0        
        //  1113: getfield        com/google/ads/internal/c.b:Ljava/lang/String;
        //  1116: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1119: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1122: invokestatic    com/google/ads/util/b.a:(Ljava/lang/String;)V
        //  1125: goto            1593
        //  1128: aload_0        
        //  1129: getfield        com/google/ads/internal/c.a:Z
        //  1132: ifne            1389
        //  1135: aload_0        
        //  1136: getfield        com/google/ads/internal/c.f:Z
        //  1139: ifeq            1175
        //  1142: aload_0        
        //  1143: getfield        com/google/ads/internal/c.j:Lcom/google/ads/l;
        //  1146: getfield        com/google/ads/l.a:Lcom/google/ads/util/i$b;
        //  1149: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //  1152: checkcast       Lcom/google/ads/n;
        //  1155: getfield        com/google/ads/n.b:Lcom/google/ads/util/i$b;
        //  1158: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //  1161: checkcast       Lcom/google/ads/internal/d;
        //  1164: iconst_1       
        //  1165: invokevirtual   com/google/ads/internal/d.b:(Z)V
        //  1168: aload_0        
        //  1169: invokevirtual   com/google/ads/internal/c.b:()V
        //  1172: aload_0        
        //  1173: monitorexit    
        //  1174: return         
        //  1175: aload_0        
        //  1176: getfield        com/google/ads/internal/c.e:Ljava/lang/String;
        //  1179: ifnull          1251
        //  1182: aload_0        
        //  1183: getfield        com/google/ads/internal/c.e:Ljava/lang/String;
        //  1186: ldc_w           "application/json"
        //  1189: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //  1192: ifne            1208
        //  1195: aload_0        
        //  1196: getfield        com/google/ads/internal/c.e:Ljava/lang/String;
        //  1199: ldc_w           "text/javascript"
        //  1202: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //  1205: ifeq            1251
        //  1208: new             Ljava/lang/StringBuilder;
        //  1211: dup            
        //  1212: invokespecial   java/lang/StringBuilder.<init>:()V
        //  1215: ldc_w           "Expected HTML but received "
        //  1218: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1221: aload_0        
        //  1222: getfield        com/google/ads/internal/c.e:Ljava/lang/String;
        //  1225: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1228: ldc_w           "."
        //  1231: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1234: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1237: invokestatic    com/google/ads/util/b.b:(Ljava/lang/String;)V
        //  1240: aload_0        
        //  1241: getstatic       com/google/ads/AdRequest$ErrorCode.INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
        //  1244: iconst_0       
        //  1245: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //  1248: aload_0        
        //  1249: monitorexit    
        //  1250: return         
        //  1251: aload_0        
        //  1252: getfield        com/google/ads/internal/c.j:Lcom/google/ads/l;
        //  1255: getfield        com/google/ads/l.a:Lcom/google/ads/util/i$b;
        //  1258: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //  1261: checkcast       Lcom/google/ads/n;
        //  1264: getfield        com/google/ads/n.n:Lcom/google/ads/util/i$c;
        //  1267: invokevirtual   com/google/ads/util/i$c.a:()Ljava/lang/Object;
        //  1270: ifnull          1371
        //  1273: aload_0        
        //  1274: getfield        com/google/ads/internal/c.o:Lcom/google/ads/AdSize;
        //  1277: ifnonnull       1297
        //  1280: ldc_w           "Multiple supported ad sizes were specified, but the server did not respond with a size."
        //  1283: invokestatic    com/google/ads/util/b.b:(Ljava/lang/String;)V
        //  1286: aload_0        
        //  1287: getstatic       com/google/ads/AdRequest$ErrorCode.INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
        //  1290: iconst_0       
        //  1291: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //  1294: aload_0        
        //  1295: monitorexit    
        //  1296: return         
        //  1297: aload_0        
        //  1298: getfield        com/google/ads/internal/c.j:Lcom/google/ads/l;
        //  1301: getfield        com/google/ads/l.a:Lcom/google/ads/util/i$b;
        //  1304: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //  1307: checkcast       Lcom/google/ads/n;
        //  1310: getfield        com/google/ads/n.n:Lcom/google/ads/util/i$c;
        //  1313: invokevirtual   com/google/ads/util/i$c.a:()Ljava/lang/Object;
        //  1316: checkcast       [Ljava/lang/Object;
        //  1319: invokestatic    java/util/Arrays.asList:([Ljava/lang/Object;)Ljava/util/List;
        //  1322: aload_0        
        //  1323: getfield        com/google/ads/internal/c.o:Lcom/google/ads/AdSize;
        //  1326: invokeinterface java/util/List.contains:(Ljava/lang/Object;)Z
        //  1331: ifne            1389
        //  1334: new             Ljava/lang/StringBuilder;
        //  1337: dup            
        //  1338: invokespecial   java/lang/StringBuilder.<init>:()V
        //  1341: ldc_w           "The ad server did not respond with a supported AdSize: "
        //  1344: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1347: aload_0        
        //  1348: getfield        com/google/ads/internal/c.o:Lcom/google/ads/AdSize;
        //  1351: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1354: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1357: invokestatic    com/google/ads/util/b.b:(Ljava/lang/String;)V
        //  1360: aload_0        
        //  1361: getstatic       com/google/ads/AdRequest$ErrorCode.INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
        //  1364: iconst_0       
        //  1365: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //  1368: aload_0        
        //  1369: monitorexit    
        //  1370: return         
        //  1371: aload_0        
        //  1372: getfield        com/google/ads/internal/c.o:Lcom/google/ads/AdSize;
        //  1375: ifnull          1389
        //  1378: ldc_w           "adSize was expected to be null in AdLoader."
        //  1381: invokestatic    com/google/ads/util/b.e:(Ljava/lang/String;)V
        //  1384: aload_0        
        //  1385: aconst_null    
        //  1386: putfield        com/google/ads/internal/c.o:Lcom/google/ads/AdSize;
        //  1389: aload_0        
        //  1390: getfield        com/google/ads/internal/c.j:Lcom/google/ads/l;
        //  1393: getfield        com/google/ads/l.a:Lcom/google/ads/util/i$b;
        //  1396: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //  1399: checkcast       Lcom/google/ads/n;
        //  1402: getfield        com/google/ads/n.b:Lcom/google/ads/util/i$b;
        //  1405: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //  1408: checkcast       Lcom/google/ads/internal/d;
        //  1411: iconst_0       
        //  1412: invokevirtual   com/google/ads/internal/d.b:(Z)V
        //  1415: aload_0        
        //  1416: invokespecial   com/google/ads/internal/c.i:()V
        //  1419: aload_0        
        //  1420: getfield        com/google/ads/internal/c.q:Z
        //  1423: ifne            1525
        //  1426: aload_0        
        //  1427: getfield        com/google/ads/internal/c.t:Z
        //  1430: ifeq            1469
        //  1433: aload_0        
        //  1434: getfield        com/google/ads/internal/c.j:Lcom/google/ads/l;
        //  1437: getfield        com/google/ads/l.a:Lcom/google/ads/util/i$b;
        //  1440: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //  1443: checkcast       Lcom/google/ads/n;
        //  1446: getfield        com/google/ads/n.g:Lcom/google/ads/util/i$b;
        //  1449: invokevirtual   com/google/ads/util/i$b.a:()Ljava/lang/Object;
        //  1452: checkcast       Lcom/google/ads/internal/h;
        //  1455: invokevirtual   com/google/ads/internal/h.b:()Z
        //  1458: ifeq            1525
        //  1461: aload           10
        //  1463: invokevirtual   com/google/ads/internal/i.a:()Z
        //  1466: ifeq            1525
        //  1469: lload           4
        //  1471: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //  1474: lload           6
        //  1476: lsub           
        //  1477: lsub           
        //  1478: lstore          12
        //  1480: lload           12
        //  1482: lconst_0       
        //  1483: lcmp           
        //  1484: ifle            1525
        //  1487: aload_0        
        //  1488: lload           12
        //  1490: invokevirtual   java/lang/Object.wait:(J)V
        //  1493: goto            1419
        //  1496: astore          11
        //  1498: new             Ljava/lang/StringBuilder;
        //  1501: dup            
        //  1502: invokespecial   java/lang/StringBuilder.<init>:()V
        //  1505: ldc_w           "AdLoader InterruptedException while loading the HTML: "
        //  1508: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1511: aload           11
        //  1513: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //  1516: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1519: invokestatic    com/google/ads/util/b.a:(Ljava/lang/String;)V
        //  1522: aload_0        
        //  1523: monitorexit    
        //  1524: return         
        //  1525: aload_0        
        //  1526: getfield        com/google/ads/internal/c.t:Z
        //  1529: ifeq            1539
        //  1532: aload_0        
        //  1533: invokespecial   com/google/ads/internal/c.j:()V
        //  1536: goto            465
        //  1539: new             Ljava/lang/StringBuilder;
        //  1542: dup            
        //  1543: invokespecial   java/lang/StringBuilder.<init>:()V
        //  1546: ldc_w           "AdLoader timed out after "
        //  1549: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1552: lload           4
        //  1554: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //  1557: ldc_w           "ms while loading the HTML."
        //  1560: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  1563: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1566: invokestatic    com/google/ads/util/b.c:(Ljava/lang/String;)V
        //  1569: aload_0        
        //  1570: getstatic       com/google/ads/AdRequest$ErrorCode.NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;
        //  1573: iconst_1       
        //  1574: invokevirtual   com/google/ads/internal/c.a:(Lcom/google/ads/AdRequest$ErrorCode;Z)V
        //  1577: goto            465
        //  1580: aload           16
        //  1582: astore          10
        //  1584: goto            1128
        //  1587: aconst_null    
        //  1588: astore          16
        //  1590: goto            837
        //  1593: aconst_null    
        //  1594: astore          10
        //  1596: goto            1128
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  2      16     449    465    Ljava/lang/Throwable;
        //  2      16     77     82     Any
        //  16     30     449    465    Ljava/lang/Throwable;
        //  16     30     77     82     Any
        //  30     32     77     82     Any
        //  33     56     449    465    Ljava/lang/Throwable;
        //  33     56     77     82     Any
        //  60     74     449    465    Ljava/lang/Throwable;
        //  60     74     77     82     Any
        //  74     76     77     82     Any
        //  78     80     77     82     Any
        //  82     201    449    465    Ljava/lang/Throwable;
        //  82     201    77     82     Any
        //  201    230    449    465    Ljava/lang/Throwable;
        //  201    230    77     82     Any
        //  230    259    449    465    Ljava/lang/Throwable;
        //  230    259    77     82     Any
        //  259    295    449    465    Ljava/lang/Throwable;
        //  259    295    77     82     Any
        //  295    351    449    465    Ljava/lang/Throwable;
        //  295    351    77     82     Any
        //  351    364    449    465    Ljava/lang/Throwable;
        //  351    364    77     82     Any
        //  369    378    468    505    Lcom/google/ads/internal/c$b;
        //  369    378    449    465    Ljava/lang/Throwable;
        //  369    378    77     82     Any
        //  378    393    449    465    Ljava/lang/Throwable;
        //  378    393    77     82     Any
        //  410    416    505    534    Ljava/lang/InterruptedException;
        //  410    416    449    465    Ljava/lang/Throwable;
        //  410    416    77     82     Any
        //  416    422    449    465    Ljava/lang/Throwable;
        //  416    422    77     82     Any
        //  427    429    77     82     Any
        //  430    446    449    465    Ljava/lang/Throwable;
        //  430    446    77     82     Any
        //  450    465    77     82     Any
        //  465    467    77     82     Any
        //  470    502    449    465    Ljava/lang/Throwable;
        //  470    502    77     82     Any
        //  502    504    77     82     Any
        //  507    531    449    465    Ljava/lang/Throwable;
        //  507    531    77     82     Any
        //  531    533    77     82     Any
        //  534    550    449    465    Ljava/lang/Throwable;
        //  534    550    77     82     Any
        //  550    552    77     82     Any
        //  553    598    449    465    Ljava/lang/Throwable;
        //  553    598    77     82     Any
        //  598    600    77     82     Any
        //  601    653    449    465    Ljava/lang/Throwable;
        //  601    653    77     82     Any
        //  653    655    77     82     Any
        //  656    724    449    465    Ljava/lang/Throwable;
        //  656    724    77     82     Any
        //  724    833    449    465    Ljava/lang/Throwable;
        //  724    833    77     82     Any
        //  837    848    449    465    Ljava/lang/Throwable;
        //  837    848    77     82     Any
        //  848    880    896    925    Ljava/lang/InterruptedException;
        //  848    880    449    465    Ljava/lang/Throwable;
        //  848    880    77     82     Any
        //  887    893    896    925    Ljava/lang/InterruptedException;
        //  887    893    449    465    Ljava/lang/Throwable;
        //  887    893    77     82     Any
        //  898    922    449    465    Ljava/lang/Throwable;
        //  898    922    77     82     Any
        //  922    924    77     82     Any
        //  925    946    449    465    Ljava/lang/Throwable;
        //  925    946    77     82     Any
        //  949    960    449    465    Ljava/lang/Throwable;
        //  949    960    77     82     Any
        //  963    979    449    465    Ljava/lang/Throwable;
        //  963    979    77     82     Any
        //  982    1007   449    465    Ljava/lang/Throwable;
        //  982    1007   77     82     Any
        //  1007   1009   77     82     Any
        //  1010   1016   449    465    Ljava/lang/Throwable;
        //  1010   1016   77     82     Any
        //  1021   1023   77     82     Any
        //  1024   1040   449    465    Ljava/lang/Throwable;
        //  1024   1040   77     82     Any
        //  1040   1042   77     82     Any
        //  1043   1088   449    465    Ljava/lang/Throwable;
        //  1043   1088   77     82     Any
        //  1088   1090   77     82     Any
        //  1091   1125   449    465    Ljava/lang/Throwable;
        //  1091   1125   77     82     Any
        //  1128   1172   449    465    Ljava/lang/Throwable;
        //  1128   1172   77     82     Any
        //  1172   1174   77     82     Any
        //  1175   1208   449    465    Ljava/lang/Throwable;
        //  1175   1208   77     82     Any
        //  1208   1248   449    465    Ljava/lang/Throwable;
        //  1208   1248   77     82     Any
        //  1248   1250   77     82     Any
        //  1251   1294   449    465    Ljava/lang/Throwable;
        //  1251   1294   77     82     Any
        //  1294   1296   77     82     Any
        //  1297   1368   449    465    Ljava/lang/Throwable;
        //  1297   1368   77     82     Any
        //  1368   1370   77     82     Any
        //  1371   1389   449    465    Ljava/lang/Throwable;
        //  1371   1389   77     82     Any
        //  1389   1419   449    465    Ljava/lang/Throwable;
        //  1389   1419   77     82     Any
        //  1419   1469   1496   1525   Ljava/lang/InterruptedException;
        //  1419   1469   449    465    Ljava/lang/Throwable;
        //  1419   1469   77     82     Any
        //  1469   1480   1496   1525   Ljava/lang/InterruptedException;
        //  1469   1480   449    465    Ljava/lang/Throwable;
        //  1469   1480   77     82     Any
        //  1487   1493   1496   1525   Ljava/lang/InterruptedException;
        //  1487   1493   449    465    Ljava/lang/Throwable;
        //  1487   1493   77     82     Any
        //  1498   1522   449    465    Ljava/lang/Throwable;
        //  1498   1522   77     82     Any
        //  1522   1524   77     82     Any
        //  1525   1536   449    465    Ljava/lang/Throwable;
        //  1525   1536   77     82     Any
        //  1539   1577   449    465    Ljava/lang/Throwable;
        //  1539   1577   77     82     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 679, Size: 679
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    private static class a implements Runnable
    {
        private final com.google.ads.internal.d a;
        private final WebView b;
        private final f c;
        private final AdRequest.ErrorCode d;
        private final boolean e;
        
        public a(final com.google.ads.internal.d a, final WebView b, final f c, final AdRequest.ErrorCode d, final boolean e) {
            super();
            this.a = a;
            this.b = b;
            this.c = c;
            this.d = d;
            this.e = e;
        }
        
        @Override
        public void run() {
            if (this.b != null) {
                this.b.stopLoading();
                this.b.destroy();
            }
            if (this.c != null) {
                this.c.a();
            }
            if (this.e) {
                this.a.l().stopLoading();
                if (this.a.i().i.a() != null) {
                    this.a.i().i.a().setVisibility(8);
                }
            }
            this.a.a(this.d);
        }
    }
    
    private class b extends Exception
    {
        public b(final String message) {
            super(message);
        }
    }
    
    private class c implements Runnable
    {
        private final String b;
        private final String c;
        private final WebView d;
        
        public c(final WebView d, final String b, final String c) {
            super();
            this.d = d;
            this.b = b;
            this.c = c;
        }
        
        @Override
        public void run() {
            com.google.ads.internal.c.this.j.c.a(com.google.ads.internal.c.this.p);
            com.google.ads.internal.c.this.j.a.a().b.a().l().a(com.google.ads.internal.c.this.p);
            if (com.google.ads.internal.c.this.j.a.a().e.a() != null) {
                com.google.ads.internal.c.this.j.a.a().e.a().setOverlayEnabled(!com.google.ads.internal.c.this.p);
            }
            if (this.c != null) {
                this.d.loadDataWithBaseURL(this.b, this.c, "text/html", "utf-8", (String)null);
                return;
            }
            this.d.loadUrl(this.b);
        }
    }
    
    public enum d
    {
        a("online_buffered"), 
        b("online_request"), 
        c("offline_buffered"), 
        d("offline_empty");
        
        public String e;
        
        private d(final String e) {
            this.e = e;
        }
    }
    
    private class e implements Runnable
    {
        private final com.google.ads.internal.d b;
        private final WebView c;
        private final LinkedList<String> d;
        private final int e;
        private final boolean f;
        private final String g;
        private final AdSize h;
        
        public e(final com.google.ads.internal.d b, final WebView c, final LinkedList<String> d, final int e, final boolean f, final String g, final AdSize h) {
            super();
            this.b = b;
            this.c = c;
            this.d = d;
            this.e = e;
            this.f = f;
            this.g = g;
            this.h = h;
        }
        
        @Override
        public void run() {
            if (this.c != null) {
                this.c.stopLoading();
                this.c.destroy();
            }
            this.b.a(this.d);
            this.b.a(this.e);
            this.b.a(this.f);
            this.b.a(this.g);
            if (this.h != null) {
                com.google.ads.internal.c.this.j.a.a().g.a().b(this.h);
                this.b.l().setAdSize(this.h);
            }
            this.b.E();
        }
    }
}
