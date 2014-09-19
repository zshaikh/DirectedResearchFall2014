package com.flurry.android;

import java.util.concurrent.atomic.*;
import android.content.*;
import java.nio.*;
import android.location.*;
import android.app.*;
import org.apache.http.entity.*;
import org.apache.http.*;
import org.apache.http.params.*;
import org.apache.http.client.methods.*;
import android.content.pm.*;
import android.os.*;
import java.net.*;
import android.util.*;
import android.telephony.*;
import java.util.*;
import java.io.*;

public final class FlurryAgent implements LocationListener
{
    private static long aA;
    private static boolean aB;
    private static boolean aC;
    private static boolean aD;
    private static boolean aE;
    private static Criteria aF;
    private static AtomicInteger aH;
    private static AtomicInteger aI;
    private static final String[] av;
    private static volatile String aw;
    private static volatile String ax;
    private static volatile String ay;
    static FlurryAgent az;
    FlurryAds Q;
    private final Handler aG;
    private File aJ;
    private File aK;
    private File aL;
    private volatile boolean aM;
    private volatile boolean aN;
    private long aO;
    private Map<Context, Context> aP;
    private String aQ;
    private String aR;
    private String aS;
    private boolean aT;
    private List<byte[]> aU;
    private LocationManager aV;
    private String aW;
    private Map<Integer, ByteBuffer> aX;
    private boolean aY;
    private long aZ;
    private List<byte[]> ba;
    private long bb;
    private long bc;
    private long bd;
    private String be;
    private String bf;
    private byte bg;
    private String bh;
    private byte bi;
    private Long bj;
    private int bk;
    private Location bl;
    private Map<String, i> bm;
    private List<bs> bn;
    private boolean bo;
    private int bp;
    private List<ci> bq;
    private int br;
    private Map<String, List<String>> bs;
    private Map<String, List<String>> bt;
    
    static {
        av = new String[] { "9774d56d682e549c", "dead00beef" };
        FlurryAgent.aw = null;
        FlurryAgent.ax = "http://data.flurry.com/aap.do";
        FlurryAgent.ay = "https://data.flurry.com/aap.do";
        FlurryAgent.az = new FlurryAgent();
        FlurryAgent.aA = 10000L;
        FlurryAgent.aB = true;
        FlurryAgent.aC = false;
        FlurryAgent.aD = false;
        FlurryAgent.aE = true;
        FlurryAgent.aF = null;
        FlurryAgent.aH = new AtomicInteger(0);
        FlurryAgent.aI = new AtomicInteger(0);
    }
    
    private FlurryAgent() {
        super();
        this.aK = null;
        this.aL = null;
        this.aM = false;
        this.aN = false;
        this.aP = new WeakHashMap<Context, Context>();
        this.aT = true;
        this.aX = new HashMap<Integer, ByteBuffer>();
        this.ba = new ArrayList<byte[]>();
        this.be = "";
        this.bf = "";
        this.bg = -1;
        this.bh = "";
        this.bi = -1;
        this.bm = new HashMap<String, i>();
        this.bn = new ArrayList<bs>();
        this.bq = new ArrayList<ci>();
        this.Q = FlurryAds.getInstance();
        final HandlerThread handlerThread = new HandlerThread("FlurryAgent");
        handlerThread.start();
        this.aG = new Handler(handlerThread.getLooper());
    }
    
    private static double a(final double n) {
        return Math.round(n * 1000.0) / 1000.0;
    }
    
    private static String a(final File p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/io/FileInputStream;
        //     3: dup            
        //     4: aload_0        
        //     5: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //     8: astore_1       
        //     9: new             Ljava/lang/StringBuffer;
        //    12: dup            
        //    13: invokespecial   java/lang/StringBuffer.<init>:()V
        //    16: astore_2       
        //    17: sipush          1024
        //    20: newarray        B
        //    22: astore          10
        //    24: aload_1        
        //    25: aload           10
        //    27: invokevirtual   java/io/FileInputStream.read:([B)I
        //    30: istore          11
        //    32: iload           11
        //    34: ifle            94
        //    37: aload_2        
        //    38: new             Ljava/lang/String;
        //    41: dup            
        //    42: aload           10
        //    44: iconst_0       
        //    45: iload           11
        //    47: invokespecial   java/lang/String.<init>:([BII)V
        //    50: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //    53: pop            
        //    54: goto            24
        //    57: astore          6
        //    59: aload_1        
        //    60: astore          7
        //    62: aload           6
        //    64: astore          8
        //    66: ldc             "FlurryAgent"
        //    68: ldc             "Error when loading persistent file"
        //    70: aload           8
        //    72: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //    75: aload           7
        //    77: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    80: aload_2        
        //    81: astore          9
        //    83: aload           9
        //    85: ifnull          117
        //    88: aload           9
        //    90: invokevirtual   java/lang/StringBuffer.toString:()Ljava/lang/String;
        //    93: areturn        
        //    94: aload_1        
        //    95: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    98: aload_2        
        //    99: astore          9
        //   101: goto            83
        //   104: astore          5
        //   106: aconst_null    
        //   107: astore          4
        //   109: aload           4
        //   111: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   114: aload           5
        //   116: athrow         
        //   117: aconst_null    
        //   118: areturn        
        //   119: astore_3       
        //   120: aload_1        
        //   121: astore          4
        //   123: aload_3        
        //   124: astore          5
        //   126: goto            109
        //   129: astore          5
        //   131: aload           7
        //   133: astore          4
        //   135: goto            109
        //   138: astore          8
        //   140: aconst_null    
        //   141: astore_2       
        //   142: aconst_null    
        //   143: astore          7
        //   145: goto            66
        //   148: astore          13
        //   150: aload_1        
        //   151: astore          7
        //   153: aload           13
        //   155: astore          8
        //   157: aconst_null    
        //   158: astore_2       
        //   159: goto            66
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      9      138    148    Ljava/lang/Throwable;
        //  0      9      104    109    Any
        //  9      17     148    162    Ljava/lang/Throwable;
        //  9      17     119    129    Any
        //  17     24     57     66     Ljava/lang/Throwable;
        //  17     24     119    129    Any
        //  24     32     57     66     Ljava/lang/Throwable;
        //  24     32     119    129    Any
        //  37     54     57     66     Ljava/lang/Throwable;
        //  37     54     119    129    Any
        //  66     75     129    138    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0024:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
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
    
    private void a(final Context context, final String aq) {
        Label_0745: {
            Label_0740: {
                while (true) {
                    while (true) {
                        Label_0678: {
                            synchronized (this) {
                                if (this.aQ != null && !this.aQ.equals(aq)) {
                                    db.d("FlurryAgent", "onStartSession called with different api keys: " + this.aQ + " and " + aq);
                                }
                                if (this.aP.put(context, context) != null) {
                                    db.g("FlurryAgent", "onStartSession called with duplicate context, use a specific Activity or Service as context instead of using a global context");
                                }
                                if (this.aM) {
                                    break Label_0745;
                                }
                                db.c("FlurryAgent", "Initializing Flurry session");
                                this.aQ = aq;
                                this.aK = context.getFileStreamPath(".flurryagent." + Integer.toString(this.aQ.hashCode(), 16));
                                this.aJ = context.getFileStreamPath(".flurryb.");
                                this.aL = context.getFileStreamPath(".flurryinstallreceiver.");
                                if (FlurryAgent.aE) {
                                    Thread.setDefaultUncaughtExceptionHandler((Thread.UncaughtExceptionHandler)new FlurryAgent$FlurryDefaultExceptionHandler());
                                }
                                final Context applicationContext = context.getApplicationContext();
                                if (this.aS == null) {
                                    this.aS = d(applicationContext);
                                }
                                final String packageName = applicationContext.getPackageName();
                                if (this.aR != null && !this.aR.equals(packageName)) {
                                    db.d("FlurryAgent", "onStartSession called from different application packages: " + this.aR + " and " + packageName);
                                }
                                this.aR = packageName;
                                final long elapsedRealtime = SystemClock.elapsedRealtime();
                                if (elapsedRealtime - this.aO <= FlurryAgent.aA) {
                                    break;
                                }
                                db.c("FlurryAgent", "New session");
                                this.bb = System.currentTimeMillis();
                                this.bc = elapsedRealtime;
                                this.bd = -1L;
                                this.bh = "";
                                this.bk = 0;
                                this.bl = null;
                                this.bf = TimeZone.getDefault().getID();
                                this.be = Locale.getDefault().getLanguage() + "_" + Locale.getDefault().getCountry();
                                this.bm = new HashMap<String, i>();
                                this.bn = new ArrayList<bs>();
                                this.bo = true;
                                this.bq = new ArrayList<ci>();
                                this.bp = 0;
                                this.br = 0;
                                FlurryAgent.aH.set(0);
                                FlurryAgent.aI.set(0);
                                if (n()) {
                                    this.Q.a(context, this.bb, this.bc);
                                }
                                this.a(new d(this, applicationContext, this.aT));
                                if (!(context instanceof Activity)) {
                                    break Label_0740;
                                }
                                final Bundle extras = ((Activity)context).getIntent().getExtras();
                                if (extras != null) {
                                    new StringBuilder().append("Launch Options Bundle is present ").append(extras.toString()).toString();
                                    this.bt = new HashMap<String, List<String>>();
                                    for (final String str : extras.keySet()) {
                                        if (str != null) {
                                            final Object value = extras.get(str);
                                            if (value == null) {
                                                break Label_0678;
                                            }
                                            final String string = value.toString();
                                            this.bt.put(str, new ArrayList<String>(Arrays.asList(string)));
                                            new StringBuilder().append("Launch options Key: ").append(str).append(". Its value: ").append(string).toString();
                                        }
                                    }
                                }
                                break Label_0740;
                            }
                        }
                        final String string = "null";
                        continue;
                    }
                }
                db.c("FlurryAgent", "Continuing previous session");
                if (!this.ba.isEmpty()) {
                    this.ba.remove(this.ba.size() - 1);
                }
                if (n()) {
                    this.Q.J();
                }
            }
            this.aM = true;
        }
    }
    // monitorexit(this)
    
    private void a(final Context context, final boolean b) {
        // monitorenter(this)
        Label_0030: {
            if (context == null) {
                break Label_0030;
            }
            try {
                if (this.aP.remove(context) == null) {
                    db.g("FlurryAgent", "onEndSession called without context from corresponding onStartSession");
                }
                if (this.aM && this.aP.isEmpty()) {
                    db.c("FlurryAgent", "Ending session");
                    this.v();
                    Context applicationContext;
                    if (context == null) {
                        applicationContext = null;
                    }
                    else {
                        applicationContext = context.getApplicationContext();
                    }
                    if (context != null) {
                        final String packageName = applicationContext.getPackageName();
                        if (!this.aR.equals(packageName)) {
                            db.d("FlurryAgent", "onEndSession called from different application package, expected: " + this.aR + " actual: " + packageName);
                        }
                    }
                    final long elapsedRealtime = SystemClock.elapsedRealtime();
                    this.aO = elapsedRealtime;
                    this.bd = elapsedRealtime - this.bc;
                    if (this.id() == null) {
                        db.d("FlurryAgent", "Not creating report because of bad Android ID or generated ID is null");
                    }
                    this.a(new a(this, b, applicationContext));
                    if (n()) {
                        this.Q.K();
                    }
                    this.aM = false;
                }
            }
            finally {
            }
            // monitorexit(this)
        }
    }
    
    private void a(final bk bk) {
        this.aG.post((Runnable)bk);
    }
    
    private void a(final DataInputStream dataInputStream) throws IOException {
        final int unsignedShort;
        synchronized (this) {
            unsignedShort = dataInputStream.readUnsignedShort();
            if (unsignedShort > 2) {
                db.d("FlurryAgent", "Unknown agent file version: " + unsignedShort);
                throw new IOException("Unknown agent file version: " + unsignedShort);
            }
        }
        if (unsignedShort >= 2) {
            final String utf = dataInputStream.readUTF();
            db.c("FlurryAgent", "Loading API key: " + f(this.aQ));
            if (utf.equals(this.aQ)) {
                final String utf2 = dataInputStream.readUTF();
                if (this.id() == null) {
                    db.c("FlurryAgent", "Loading phoneId: " + utf2);
                }
                this.g(utf2);
                this.aY = dataInputStream.readBoolean();
                this.aZ = dataInputStream.readLong();
                db.c("FlurryAgent", "Loading session reports");
                int i = 0;
                while (true) {
                    final int unsignedShort2 = dataInputStream.readUnsignedShort();
                    if (unsignedShort2 == 0) {
                        break;
                    }
                    final byte[] b = new byte[unsignedShort2];
                    dataInputStream.readFully(b);
                    this.ba.add(0, b);
                    final StringBuilder append = new StringBuilder().append("Session report added: ");
                    ++i;
                    db.c("FlurryAgent", append.append(i).toString());
                }
                db.c("FlurryAgent", "Persistent file loaded");
                this.aN = true;
            }
            else {
                db.c("FlurryAgent", "Api keys do not match, old: " + f(utf) + ", new: " + f(this.aQ));
            }
        }
        else {
            db.g("FlurryAgent", "Deleting old file version: " + unsignedShort);
        }
    }
    // monitorexit(this)
    
    private void a(final String s, final String s2, final String s3, final Throwable t) {
        while (true) {
            boolean b = false;
        Label_0168:
            while (true) {
                Label_0162: {
                    synchronized (this) {
                        if (this.bq == null) {
                            db.d("FlurryAgent", "onError called before onStartSession.  Error: " + s);
                        }
                        else {
                            if (s == null || !"uncaught".equals(s)) {
                                break Label_0162;
                            }
                            b = true;
                            ++this.bk;
                            if (this.bq.size() >= 50) {
                                break Label_0168;
                            }
                            final ci ci = new ci(FlurryAgent.aI.incrementAndGet(), Long.valueOf(System.currentTimeMillis()), s, s2, s3, t);
                            this.bq.add(ci);
                            db.c("FlurryAgent", "Error logged: " + ci.am());
                        }
                        return;
                    }
                }
                b = false;
                continue;
            }
            if (b) {
                for (int i = 0; i < this.bq.size(); ++i) {
                    final ci ci2 = this.bq.get(i);
                    if (ci2.am() != null && !"uncaught".equals(ci2.am())) {
                        this.bq.set(i, new ci(FlurryAgent.aI.incrementAndGet(), Long.valueOf(System.currentTimeMillis()), s, s2, s3, t));
                        return;
                    }
                }
                return;
            }
            db.c("FlurryAgent", "Max errors logged. No more errors logged.");
        }
    }
    
    private void a(final String str, final Map<String, String> map, final boolean b) {
    Label_0191_Outer:
        while (true) {
            while (true) {
                Label_0388: {
                    Label_0380: {
                        long n = 0L;
                        String sanitize = null;
                        Map<String, String> emptyMap = null;
                    Label_0288:
                        while (true) {
                            final i i;
                            Label_0273: {
                                Label_0244: {
                                    synchronized (this) {
                                        if (this.bn == null) {
                                            db.d("FlurryAgent", "onEvent called before onStartSession.  Event: " + str);
                                        }
                                        else {
                                            n = SystemClock.elapsedRealtime() - this.bc;
                                            sanitize = com.flurry.android.bd.sanitize(str);
                                            if (sanitize.length() != 0) {
                                                i = this.bm.get(sanitize);
                                                if (i != null) {
                                                    break Label_0273;
                                                }
                                                if (this.bm.size() >= 100) {
                                                    break Label_0244;
                                                }
                                                final i j = new i();
                                                j.value = 1;
                                                this.bm.put(sanitize, j);
                                                db.c("FlurryAgent", "Event count incremented: " + sanitize);
                                                if (!FlurryAgent.aB || this.bn.size() >= 1000 || this.bp >= 160000) {
                                                    break Label_0380;
                                                }
                                                if (map != null) {
                                                    break Label_0388;
                                                }
                                                emptyMap = (Map<String, String>)Collections.emptyMap();
                                                if (emptyMap.size() <= 10) {
                                                    break Label_0288;
                                                }
                                                db.g("FlurryAgent", "MaxEventParams exceeded: " + emptyMap.size());
                                            }
                                        }
                                        return;
                                    }
                                }
                                db.g("FlurryAgent", "Too many different events. Event not counted: " + sanitize);
                                continue Label_0191_Outer;
                            }
                            ++i.value;
                            continue Label_0191_Outer;
                        }
                        final bs bs = new bs(FlurryAgent.aH.incrementAndGet(), sanitize, emptyMap, n, b);
                        if (bs.getBytes().length + this.bp <= 160000) {
                            this.bn.add(bs);
                            this.bp += bs.getBytes().length;
                            return;
                        }
                        this.bp = 160000;
                        this.bo = false;
                        db.g("FlurryAgent", "Event Log size exceeded. No more event details logged.");
                        return;
                    }
                    this.bo = false;
                    return;
                }
                Map<String, String> emptyMap = map;
                continue;
            }
        }
    }
    
    private boolean a(final byte[] array) throws IOException {
        final String r = r();
        boolean a = false;
        if (r == null) {
            a = false;
        }
        else {
            String s2 = null;
            Label_0111: {
                while (true) {
                    try {
                        a = this.a(array, r);
                        if (a || FlurryAgent.aw != null || !FlurryAgent.aC || FlurryAgent.aD) {
                            return a;
                        }
                        final FlurryAgent az = FlurryAgent.az;
                        // monitorenter(az)
                        FlurryAgent.aD = true;
                        final String s = r();
                        final String s3;
                        s2 = (s3 = s);
                        if (s3 == null) {
                            return false;
                        }
                        break Label_0111;
                    }
                    catch (Exception ex) {
                        db.c("FlurryAgent", "Sending report exception: " + ex.getMessage());
                        a = false;
                        continue;
                    }
                    break;
                }
                try {
                    FlurryAgent.aD = true;
                    final String s = r();
                    final String s3;
                    s2 = (s3 = s);
                    if (s3 == null) {
                        return false;
                    }
                    // monitorexit(az)
                    final FlurryAgent flurryAgent = this;
                    final byte[] array2 = array;
                    final String s4 = s2;
                    final boolean a2 = flurryAgent.a(array2, s4);
                    return a2;
                }
                finally {
                }
                // monitorexit(az)
            }
            try {
                final FlurryAgent flurryAgent = this;
                final byte[] array2 = array;
                final String s4 = s2;
                final boolean a3;
                final boolean a2 = a3 = flurryAgent.a(array2, s4);
                return a3;
            }
            catch (Exception ex2) {
                return a;
            }
        }
        return a;
    }
    
    private boolean a(final byte[] array, final String s) throws IOException {
        if ("local".equals(s)) {
            return true;
        }
        db.c("FlurryAgent", "Sending report to: " + s);
        final ByteArrayEntity entity = new ByteArrayEntity(array);
        entity.setContentType("application/octet-stream");
        final HttpPost httpPost = new HttpPost(s);
        httpPost.setEntity((HttpEntity)entity);
        final BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout((HttpParams)basicHttpParams, 10000);
        HttpConnectionParams.setSoTimeout((HttpParams)basicHttpParams, 15000);
        httpPost.getParams().setBooleanParameter("http.protocol.expect-continue", false);
        final int statusCode = cn.a((HttpParams)basicHttpParams).execute((HttpUriRequest)httpPost).getStatusLine().getStatusCode();
        // monitorenter(this)
        while (true) {
            Label_0190: {
                if (statusCode != 200) {
                    break Label_0190;
                }
                try {
                    db.c("FlurryAgent", "Report successful");
                    this.aY = true;
                    this.ba.removeAll(this.aU);
                    final boolean b = true;
                    this.aU = null;
                    return b;
                }
                finally {
                }
                // monitorexit(this)
            }
            db.c("FlurryAgent", "Report failed. HTTP response: " + statusCode);
            final boolean b = false;
            continue;
        }
    }
    
    private void b(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_0        
        //     3: aload_1        
        //     4: invokespecial   com/flurry/android/FlurryAgent.c:(Landroid/content/Context;)Ljava/lang/String;
        //     7: astore_3       
        //     8: aload_0        
        //     9: getfield        com/flurry/android/FlurryAgent.aK:Ljava/io/File;
        //    12: invokevirtual   java/io/File.exists:()Z
        //    15: ifeq            351
        //    18: ldc             "FlurryAgent"
        //    20: new             Ljava/lang/StringBuilder;
        //    23: dup            
        //    24: invokespecial   java/lang/StringBuilder.<init>:()V
        //    27: ldc_w           "loading persistent data: "
        //    30: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    33: aload_0        
        //    34: getfield        com/flurry/android/FlurryAgent.aK:Ljava/io/File;
        //    37: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //    40: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    43: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    46: invokestatic    com/flurry/android/db.e:(Ljava/lang/String;Ljava/lang/String;)V
        //    49: aconst_null    
        //    50: astore          6
        //    52: new             Ljava/io/DataInputStream;
        //    55: dup            
        //    56: new             Ljava/io/FileInputStream;
        //    59: dup            
        //    60: aload_0        
        //    61: getfield        com/flurry/android/FlurryAgent.aK:Ljava/io/File;
        //    64: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //    67: invokespecial   java/io/DataInputStream.<init>:(Ljava/io/InputStream;)V
        //    70: astore          7
        //    72: aload           7
        //    74: invokevirtual   java/io/DataInputStream.readUnsignedShort:()I
        //    77: ldc_w           46586
        //    80: if_icmpne       277
        //    83: aload_0        
        //    84: aload           7
        //    86: invokespecial   com/flurry/android/FlurryAgent.a:(Ljava/io/DataInputStream;)V
        //    89: aload           7
        //    91: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    94: aload_0        
        //    95: getfield        com/flurry/android/FlurryAgent.aN:Z
        //    98: ifne            119
        //   101: aload_0        
        //   102: getfield        com/flurry/android/FlurryAgent.aK:Ljava/io/File;
        //   105: invokevirtual   java/io/File.delete:()Z
        //   108: ifeq            326
        //   111: ldc             "FlurryAgent"
        //   113: ldc_w           "Deleted persistence file"
        //   116: invokestatic    com/flurry/android/db.c:(Ljava/lang/String;Ljava/lang/String;)V
        //   119: aload_0        
        //   120: getfield        com/flurry/android/FlurryAgent.aN:Z
        //   123: ifne            144
        //   126: aload_0        
        //   127: iconst_0       
        //   128: putfield        com/flurry/android/FlurryAgent.aY:Z
        //   131: aload_0        
        //   132: aload_0        
        //   133: getfield        com/flurry/android/FlurryAgent.bb:J
        //   136: putfield        com/flurry/android/FlurryAgent.aZ:J
        //   139: aload_0        
        //   140: iconst_1       
        //   141: putfield        com/flurry/android/FlurryAgent.aN:Z
        //   144: aload_3        
        //   145: ifnonnull       211
        //   148: invokestatic    java/lang/Math.random:()D
        //   151: invokestatic    java/lang/Double.doubleToLongBits:(D)J
        //   154: ldc2_w          37
        //   157: invokestatic    java/lang/System.nanoTime:()J
        //   160: bipush          37
        //   162: aload_0        
        //   163: getfield        com/flurry/android/FlurryAgent.aQ:Ljava/lang/String;
        //   166: invokevirtual   java/lang/String.hashCode:()I
        //   169: imul           
        //   170: i2l            
        //   171: ladd           
        //   172: lmul           
        //   173: ladd           
        //   174: lstore          4
        //   176: new             Ljava/lang/StringBuilder;
        //   179: dup            
        //   180: invokespecial   java/lang/StringBuilder.<init>:()V
        //   183: ldc_w           "ID"
        //   186: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   189: lload           4
        //   191: bipush          16
        //   193: invokestatic    java/lang/Long.toString:(JI)Ljava/lang/String;
        //   196: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   199: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   202: astore_3       
        //   203: ldc             "FlurryAgent"
        //   205: ldc_w           "Generated id"
        //   208: invokestatic    com/flurry/android/db.e:(Ljava/lang/String;Ljava/lang/String;)V
        //   211: aload_0        
        //   212: aload_3        
        //   213: invokespecial   com/flurry/android/FlurryAgent.g:(Ljava/lang/String;)V
        //   216: invokestatic    com/flurry/android/FlurryAgent.n:()Z
        //   219: ifeq            244
        //   222: aload_0        
        //   223: getfield        com/flurry/android/FlurryAgent.Q:Lcom/flurry/android/FlurryAds;
        //   226: aload_0        
        //   227: getfield        com/flurry/android/FlurryAgent.aW:Ljava/lang/String;
        //   230: invokevirtual   com/flurry/android/FlurryAds.k:(Ljava/lang/String;)V
        //   233: aload_0        
        //   234: getfield        com/flurry/android/FlurryAgent.Q:Lcom/flurry/android/FlurryAds;
        //   237: aload_0        
        //   238: getfield        com/flurry/android/FlurryAgent.aX:Ljava/util/Map;
        //   241: invokevirtual   com/flurry/android/FlurryAds.b:(Ljava/util/Map;)V
        //   244: aload_3        
        //   245: ldc_w           "AND"
        //   248: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //   251: ifne            270
        //   254: aload_0        
        //   255: getfield        com/flurry/android/FlurryAgent.aJ:Ljava/io/File;
        //   258: invokevirtual   java/io/File.exists:()Z
        //   261: ifne            270
        //   264: aload_0        
        //   265: aload_1        
        //   266: aload_3        
        //   267: invokespecial   com/flurry/android/FlurryAgent.b:(Landroid/content/Context;Ljava/lang/String;)V
        //   270: aload_0        
        //   271: invokespecial   com/flurry/android/FlurryAgent.t:()V
        //   274: aload_0        
        //   275: monitorexit    
        //   276: return         
        //   277: ldc             "FlurryAgent"
        //   279: ldc_w           "Unexpected file type"
        //   282: invokestatic    com/flurry/android/db.c:(Ljava/lang/String;Ljava/lang/String;)V
        //   285: goto            89
        //   288: astore          9
        //   290: aload           7
        //   292: astore          10
        //   294: ldc             "FlurryAgent"
        //   296: ldc             "Error when loading persistent file"
        //   298: aload           9
        //   300: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   303: aload           10
        //   305: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   308: goto            94
        //   311: astore_2       
        //   312: aload_0        
        //   313: monitorexit    
        //   314: aload_2        
        //   315: athrow         
        //   316: astore          8
        //   318: aload           6
        //   320: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   323: aload           8
        //   325: athrow         
        //   326: ldc             "FlurryAgent"
        //   328: ldc_w           "Cannot delete persistence file"
        //   331: invokestatic    com/flurry/android/db.d:(Ljava/lang/String;Ljava/lang/String;)V
        //   334: goto            119
        //   337: astore          11
        //   339: ldc             "FlurryAgent"
        //   341: ldc             ""
        //   343: aload           11
        //   345: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   348: goto            119
        //   351: ldc             "FlurryAgent"
        //   353: ldc_w           "Agent cache file doesn't exist."
        //   356: invokestatic    com/flurry/android/db.e:(Ljava/lang/String;Ljava/lang/String;)V
        //   359: goto            119
        //   362: astore          8
        //   364: aload           7
        //   366: astore          6
        //   368: goto            318
        //   371: astore          8
        //   373: aload           10
        //   375: astore          6
        //   377: goto            318
        //   380: astore          12
        //   382: aload           12
        //   384: astore          9
        //   386: aconst_null    
        //   387: astore          10
        //   389: goto            294
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  2      49     311    316    Any
        //  52     72     380    392    Ljava/lang/Throwable;
        //  52     72     316    318    Any
        //  72     89     288    294    Ljava/lang/Throwable;
        //  72     89     362    371    Any
        //  89     94     311    316    Any
        //  94     119    337    351    Ljava/lang/Throwable;
        //  94     119    311    316    Any
        //  119    144    311    316    Any
        //  148    211    311    316    Any
        //  211    244    311    316    Any
        //  244    270    311    316    Any
        //  270    274    311    316    Any
        //  277    285    288    294    Ljava/lang/Throwable;
        //  277    285    362    371    Any
        //  294    303    371    380    Any
        //  303    308    311    316    Any
        //  318    326    311    316    Any
        //  326    334    337    351    Ljava/lang/Throwable;
        //  326    334    311    316    Any
        //  339    348    311    316    Any
        //  351    359    311    316    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 179, Size: 179
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
    
    private void b(final Context p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_0        
        //     3: aload_1        
        //     4: ldc_w           ".flurryb."
        //     7: invokevirtual   android/content/Context.getFileStreamPath:(Ljava/lang/String;)Ljava/io/File;
        //    10: putfield        com/flurry/android/FlurryAgent.aJ:Ljava/io/File;
        //    13: aload_0        
        //    14: getfield        com/flurry/android/FlurryAgent.aJ:Ljava/io/File;
        //    17: invokestatic    com/flurry/android/bc.b:(Ljava/io/File;)Z
        //    20: istore          4
        //    22: iload           4
        //    24: ifne            30
        //    27: aload_0        
        //    28: monitorexit    
        //    29: return         
        //    30: new             Ljava/io/DataOutputStream;
        //    33: dup            
        //    34: new             Ljava/io/FileOutputStream;
        //    37: dup            
        //    38: aload_0        
        //    39: getfield        com/flurry/android/FlurryAgent.aJ:Ljava/io/File;
        //    42: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //    45: invokespecial   java/io/DataOutputStream.<init>:(Ljava/io/OutputStream;)V
        //    48: astore          5
        //    50: aload           5
        //    52: iconst_1       
        //    53: invokevirtual   java/io/DataOutputStream.writeInt:(I)V
        //    56: aload           5
        //    58: aload_2        
        //    59: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //    62: aload           5
        //    64: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    67: goto            27
        //    70: astore_3       
        //    71: aload_0        
        //    72: monitorexit    
        //    73: aload_3        
        //    74: athrow         
        //    75: astore          10
        //    77: aconst_null    
        //    78: astore          7
        //    80: aload           10
        //    82: astore          6
        //    84: ldc             "FlurryAgent"
        //    86: ldc_w           "Error when saving b file"
        //    89: aload           6
        //    91: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //    94: aload           7
        //    96: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    99: goto            27
        //   102: aload           7
        //   104: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   107: aload           8
        //   109: athrow         
        //   110: astore          8
        //   112: aload           5
        //   114: astore          7
        //   116: goto            102
        //   119: astore          8
        //   121: goto            102
        //   124: astore          6
        //   126: aload           5
        //   128: astore          7
        //   130: goto            84
        //   133: astore          9
        //   135: aload           9
        //   137: astore          8
        //   139: aconst_null    
        //   140: astore          7
        //   142: goto            102
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  2      22     70     75     Any
        //  30     50     75     84     Ljava/lang/Throwable;
        //  30     50     133    145    Any
        //  50     62     124    133    Ljava/lang/Throwable;
        //  50     62     110    119    Any
        //  62     67     70     75     Any
        //  84     94     119    124    Any
        //  94     99     70     75     Any
        //  102    110    70     75     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 71, Size: 71
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
    
    private void b(final String s, final Map<String, String> map) {
        while (true) {
            while (true) {
                bs bs = null;
                HashMap hashMap = null;
                Label_0212: {
                    synchronized (this) {
                        final Iterator<bs> iterator = this.bn.iterator();
                        while (iterator.hasNext()) {
                            bs = iterator.next();
                            if (bs.w(s)) {
                                final long n = SystemClock.elapsedRealtime() - this.bc;
                                if (map != null && map.size() > 0 && this.bp < 160000) {
                                    final int n2 = this.bp - bs.getBytes().length;
                                    hashMap = new HashMap<String, String>(bs.getParameters());
                                    bs.d(map);
                                    if (n2 + bs.getBytes().length > 160000) {
                                        break Label_0212;
                                    }
                                    if (bs.getParameters().size() > 10) {
                                        db.g("FlurryAgent", "MaxEventParams exceeded on endEvent: " + bs.getParameters().size());
                                        bs.e((Map<String, String>)hashMap);
                                    }
                                    else {
                                        this.bp = n2 + bs.getBytes().length;
                                    }
                                }
                                bs.c(n);
                                break;
                            }
                        }
                        return;
                    }
                }
                bs.e((Map<String, String>)hashMap);
                this.bo = false;
                this.bp = 160000;
                db.g("FlurryAgent", "Event Log size exceeded. No more event details logged.");
                continue;
            }
        }
    }
    
    private String c(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokespecial   com/flurry/android/FlurryAgent.id:()Ljava/lang/String;
        //     4: astore_2       
        //     5: aload_2        
        //     6: ifnull          11
        //     9: aload_2        
        //    10: areturn        
        //    11: aload_1        
        //    12: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    15: ldc_w           "android_id"
        //    18: invokestatic    android/provider/Settings$Secure.getString:(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
        //    21: astore_3       
        //    22: aload_3        
        //    23: ifnull          43
        //    26: aload_3        
        //    27: invokevirtual   java/lang/String.length:()I
        //    30: ifle            43
        //    33: aload_3        
        //    34: ldc_w           "null"
        //    37: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    40: ifeq            72
        //    43: iconst_0       
        //    44: istore          4
        //    46: iload           4
        //    48: ifeq            122
        //    51: new             Ljava/lang/StringBuilder;
        //    54: dup            
        //    55: invokespecial   java/lang/StringBuilder.<init>:()V
        //    58: ldc_w           "AND"
        //    61: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    64: aload_3        
        //    65: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    68: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    71: areturn        
        //    72: getstatic       com/flurry/android/FlurryAgent.av:[Ljava/lang/String;
        //    75: astore          13
        //    77: aload           13
        //    79: arraylength    
        //    80: istore          14
        //    82: iconst_0       
        //    83: istore          15
        //    85: iload           15
        //    87: iload           14
        //    89: if_icmpge       116
        //    92: aload_3        
        //    93: aload           13
        //    95: iload           15
        //    97: aaload         
        //    98: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   101: ifeq            110
        //   104: iconst_0       
        //   105: istore          4
        //   107: goto            46
        //   110: iinc            15, 1
        //   113: goto            85
        //   116: iconst_1       
        //   117: istore          4
        //   119: goto            46
        //   122: aload_1        
        //   123: ldc_w           ".flurryb."
        //   126: invokevirtual   android/content/Context.getFileStreamPath:(Ljava/lang/String;)Ljava/io/File;
        //   129: astore          5
        //   131: aload           5
        //   133: invokevirtual   java/io/File.exists:()Z
        //   136: ifeq            9
        //   139: aconst_null    
        //   140: astore          6
        //   142: new             Ljava/io/DataInputStream;
        //   145: dup            
        //   146: new             Ljava/io/FileInputStream;
        //   149: dup            
        //   150: aload           5
        //   152: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //   155: invokespecial   java/io/DataInputStream.<init>:(Ljava/io/InputStream;)V
        //   158: astore          7
        //   160: aload           7
        //   162: invokevirtual   java/io/DataInputStream.readInt:()I
        //   165: pop            
        //   166: aload           7
        //   168: invokevirtual   java/io/DataInputStream.readUTF:()Ljava/lang/String;
        //   171: astore          12
        //   173: aload           7
        //   175: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   178: aload           12
        //   180: areturn        
        //   181: astore          9
        //   183: ldc             "FlurryAgent"
        //   185: ldc_w           "Error when loading b file"
        //   188: aload           9
        //   190: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   193: aload           6
        //   195: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   198: aload_2        
        //   199: areturn        
        //   200: astore          10
        //   202: aconst_null    
        //   203: astore          7
        //   205: aload           7
        //   207: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   210: aload           10
        //   212: athrow         
        //   213: astore          10
        //   215: goto            205
        //   218: astore          10
        //   220: aload           6
        //   222: astore          7
        //   224: goto            205
        //   227: astore          8
        //   229: aload           7
        //   231: astore          6
        //   233: aload           8
        //   235: astore          9
        //   237: goto            183
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  142    160    181    183    Ljava/lang/Throwable;
        //  142    160    200    205    Any
        //  160    173    227    240    Ljava/lang/Throwable;
        //  160    173    213    218    Any
        //  183    193    218    227    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 113, Size: 113
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
    
    private static String d(final Context context) {
        try {
            final PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo.versionName != null) {
                return packageInfo.versionName;
            }
            if (packageInfo.versionCode != 0) {
                return Integer.toString(packageInfo.versionCode);
            }
        }
        catch (Throwable t) {
            db.b("FlurryAgent", "", t);
        }
        return "Unknown";
    }
    
    private Location e(final Context context) {
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 || context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
            LocationManager av = (LocationManager)context.getSystemService("location");
            synchronized (this) {
                if (this.aV == null) {
                    this.aV = av;
                }
                else {
                    av = this.aV;
                }
                // monitorexit(this)
                Criteria af = FlurryAgent.aF;
                if (af == null) {
                    af = new Criteria();
                }
                final String bestProvider = av.getBestProvider(af, true);
                if (bestProvider != null) {
                    av.requestLocationUpdates(bestProvider, 0L, 0.0f, (LocationListener)this, Looper.getMainLooper());
                    return av.getLastKnownLocation(bestProvider);
                }
            }
        }
        return null;
    }
    
    private static Map<String, List<String>> e(final String str) {
        final HashMap<String, List<String>> hashMap = new HashMap<String, List<String>>();
        final String[] split = str.split("&");
        for (int length = split.length, i = 0; i < length; ++i) {
            final String[] split2 = split[i].split("=");
            if (split2.length != 2) {
                db.c("FlurryAgent", "Invalid referrer Element: " + split[i] + " in referrer tag " + str);
            }
            else {
                final String decode = URLDecoder.decode(split2[0]);
                final String decode2 = URLDecoder.decode(split2[1]);
                if (hashMap.get(decode) == null) {
                    hashMap.put(decode, new ArrayList<String>());
                }
                hashMap.get(decode).add(decode2);
            }
        }
        final StringBuilder sb = new StringBuilder();
        if (hashMap.get("utm_source") == null) {
            sb.append("Campaign Source is missing.\n");
        }
        if (hashMap.get("utm_medium") == null) {
            sb.append("Campaign Medium is missing.\n");
        }
        if (hashMap.get("utm_campaign") == null) {
            sb.append("Campaign Name is missing.\n");
        }
        if (sb.length() > 0) {
            Log.w("Detected missing referrer keys", sb.toString());
        }
        return hashMap;
    }
    
    public static void endTimedEvent(final String str) {
        if (str == null) {
            db.d("FlurryAgent", "String eventId passed to endTimedEvent was null.");
            return;
        }
        try {
            FlurryAgent.az.b(str, null);
        }
        catch (Throwable t) {
            db.b("FlurryAgent", "Failed to signify the end of event: " + str, t);
        }
    }
    
    public static void endTimedEvent(final String str, final Map<String, String> map) {
        if (str == null) {
            db.d("FlurryAgent", "String eventId passed to endTimedEvent was null.");
            return;
        }
        if (map == null) {
            db.d("FlurryAgent", "String eventId passed to endTimedEvent was null.");
            return;
        }
        try {
            FlurryAgent.az.b(str, map);
        }
        catch (Throwable t) {
            db.b("FlurryAgent", "Failed to signify the end of event: " + str, t);
        }
    }
    
    private static String f(final String s) {
        if (s != null && s.length() > 4) {
            final StringBuilder sb = new StringBuilder();
            for (int i = 0; i < s.length() - 4; ++i) {
                sb.append('*');
            }
            sb.append(s.substring(s.length() - 4));
            return sb.toString();
        }
        return s;
    }
    
    private static byte[] f(final Context context) {
        Label_0095: {
            if (context.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
                break Label_0095;
            }
            final TelephonyManager telephonyManager = (TelephonyManager)context.getSystemService("phone");
            if (telephonyManager == null) {
                break Label_0095;
            }
            final String deviceId = telephonyManager.getDeviceId();
            if (deviceId == null || deviceId.trim().length() <= 0) {
                break Label_0095;
            }
            try {
                final byte[] r = bd.r(deviceId);
                if (r != null && r.length == 20) {
                    return r;
                }
                db.d("FlurryAgent", "sha1 is not 20 bytes long: " + Arrays.toString(r));
                return null;
            }
            catch (Exception ex) {
                return null;
            }
        }
    }
    
    private void g(final String aw) {
        // monitorenter(this)
        if (aw == null) {
            return;
        }
        try {
            this.aW = aw;
        }
        finally {
        }
        // monitorexit(this)
    }
    
    public static int getAgentVersion() {
        return 148;
    }
    
    public static boolean getForbidPlaintextFallback() {
        return false;
    }
    
    static String getLocale() {
        return FlurryAgent.az.be;
    }
    
    public static String getPhoneId() {
        return FlurryAgent.az.id();
    }
    
    public static boolean getUseHttps() {
        return FlurryAgent.aC;
    }
    
    private String id() {
        synchronized (this) {
            return this.aW;
        }
    }
    
    protected static boolean isCaptureUncaughtExceptions() {
        return FlurryAgent.aE;
    }
    
    public static void logEvent(final String str) {
        if (str == null) {
            db.d("FlurryAgent", "String eventId passed to logEvent was null.");
            return;
        }
        try {
            FlurryAgent.az.a(str, null, false);
        }
        catch (Throwable t) {
            db.b("FlurryAgent", "Failed to log event: " + str, t);
        }
    }
    
    public static void logEvent(final String str, final Map<String, String> map) {
        if (str == null) {
            db.d("FlurryAgent", "String eventId passed to logEvent was null.");
            return;
        }
        if (map == null) {
            db.d("FlurryAgent", "String parameters passed to logEvent was null.");
            return;
        }
        try {
            FlurryAgent.az.a(str, map, false);
        }
        catch (Throwable t) {
            db.b("FlurryAgent", "Failed to log event: " + str, t);
        }
    }
    
    public static void logEvent(final String str, final Map<String, String> map, final boolean b) {
        if (str == null) {
            db.d("FlurryAgent", "String eventId passed to logEvent was null.");
            return;
        }
        if (map == null) {
            db.d("FlurryAgent", "String parameters passed to logEvent was null.");
            return;
        }
        try {
            FlurryAgent.az.a(str, map, b);
        }
        catch (Throwable t) {
            db.b("FlurryAgent", "Failed to log event: " + str, t);
        }
    }
    
    public static void logEvent(final String str, final boolean b) {
        if (str == null) {
            db.d("FlurryAgent", "String eventId passed to logEvent was null.");
            return;
        }
        try {
            FlurryAgent.az.a(str, null, b);
        }
        catch (Throwable t) {
            db.b("FlurryAgent", "Failed to log event: " + str, t);
        }
    }
    
    static boolean m() {
        return FlurryAgent.az.aN && FlurryAgent.az.aM;
    }
    
    static boolean n() {
        if (FlurryAgent.az != null && FlurryAgent.az.Q != null) {
            return true;
        }
        try {
            return Class.forName("com.flurry.android.FlurryAds") != null;
        }
        catch (Throwable t) {
            new StringBuilder().append("isAppSpotEnabled caught:").append(t.toString()).toString();
            return false;
        }
    }
    
    private void o() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: new             Ljava/io/ByteArrayOutputStream;
        //     5: dup            
        //     6: invokespecial   java/io/ByteArrayOutputStream.<init>:()V
        //     9: astore_1       
        //    10: new             Ljava/io/DataOutputStream;
        //    13: dup            
        //    14: aload_1        
        //    15: invokespecial   java/io/DataOutputStream.<init>:(Ljava/io/OutputStream;)V
        //    18: astore_2       
        //    19: aload_2        
        //    20: iconst_1       
        //    21: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //    24: aload_2        
        //    25: aload_0        
        //    26: getfield        com/flurry/android/FlurryAgent.aS:Ljava/lang/String;
        //    29: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //    32: aload_2        
        //    33: aload_0        
        //    34: getfield        com/flurry/android/FlurryAgent.bb:J
        //    37: invokevirtual   java/io/DataOutputStream.writeLong:(J)V
        //    40: aload_2        
        //    41: aload_0        
        //    42: getfield        com/flurry/android/FlurryAgent.bd:J
        //    45: invokevirtual   java/io/DataOutputStream.writeLong:(J)V
        //    48: aload_2        
        //    49: lconst_0       
        //    50: invokevirtual   java/io/DataOutputStream.writeLong:(J)V
        //    53: aload_2        
        //    54: aload_0        
        //    55: getfield        com/flurry/android/FlurryAgent.be:Ljava/lang/String;
        //    58: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //    61: aload_2        
        //    62: aload_0        
        //    63: getfield        com/flurry/android/FlurryAgent.bf:Ljava/lang/String;
        //    66: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //    69: aload_2        
        //    70: aload_0        
        //    71: getfield        com/flurry/android/FlurryAgent.bg:B
        //    74: invokevirtual   java/io/DataOutputStream.writeByte:(I)V
        //    77: aload_0        
        //    78: getfield        com/flurry/android/FlurryAgent.bh:Ljava/lang/String;
        //    81: ifnonnull       251
        //    84: ldc             ""
        //    86: astore          7
        //    88: aload_2        
        //    89: aload           7
        //    91: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //    94: aload_0        
        //    95: getfield        com/flurry/android/FlurryAgent.bl:Landroid/location/Location;
        //    98: ifnonnull       260
        //   101: aload_2        
        //   102: iconst_0       
        //   103: invokevirtual   java/io/DataOutputStream.writeBoolean:(Z)V
        //   106: aload_2        
        //   107: aload_0        
        //   108: getfield        com/flurry/android/FlurryAgent.br:I
        //   111: invokevirtual   java/io/DataOutputStream.writeInt:(I)V
        //   114: aload_2        
        //   115: iconst_m1      
        //   116: invokevirtual   java/io/DataOutputStream.writeByte:(I)V
        //   119: aload_2        
        //   120: iconst_m1      
        //   121: invokevirtual   java/io/DataOutputStream.writeByte:(I)V
        //   124: aload_2        
        //   125: aload_0        
        //   126: getfield        com/flurry/android/FlurryAgent.bi:B
        //   129: invokevirtual   java/io/DataOutputStream.writeByte:(I)V
        //   132: aload_0        
        //   133: getfield        com/flurry/android/FlurryAgent.bj:Ljava/lang/Long;
        //   136: ifnonnull       325
        //   139: aload_2        
        //   140: iconst_0       
        //   141: invokevirtual   java/io/DataOutputStream.writeBoolean:(Z)V
        //   144: aload_2        
        //   145: aload_0        
        //   146: getfield        com/flurry/android/FlurryAgent.bm:Ljava/util/Map;
        //   149: invokeinterface java/util/Map.size:()I
        //   154: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   157: aload_0        
        //   158: getfield        com/flurry/android/FlurryAgent.bm:Ljava/util/Map;
        //   161: invokeinterface java/util/Map.entrySet:()Ljava/util/Set;
        //   166: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //   171: astore          8
        //   173: aload           8
        //   175: invokeinterface java/util/Iterator.hasNext:()Z
        //   180: ifeq            344
        //   183: aload           8
        //   185: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   190: checkcast       Ljava/util/Map$Entry;
        //   193: astore          16
        //   195: aload_2        
        //   196: aload           16
        //   198: invokeinterface java/util/Map$Entry.getKey:()Ljava/lang/Object;
        //   203: checkcast       Ljava/lang/String;
        //   206: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   209: aload_2        
        //   210: aload           16
        //   212: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
        //   217: checkcast       Lcom/flurry/android/i;
        //   220: getfield        com/flurry/android/i.value:I
        //   223: invokevirtual   java/io/DataOutputStream.writeInt:(I)V
        //   226: goto            173
        //   229: astore          6
        //   231: aload_2        
        //   232: astore          4
        //   234: ldc             "FlurryAgent"
        //   236: ldc             ""
        //   238: aload           6
        //   240: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   243: aload           4
        //   245: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   248: aload_0        
        //   249: monitorexit    
        //   250: return         
        //   251: aload_0        
        //   252: getfield        com/flurry/android/FlurryAgent.bh:Ljava/lang/String;
        //   255: astore          7
        //   257: goto            88
        //   260: aload_2        
        //   261: iconst_1       
        //   262: invokevirtual   java/io/DataOutputStream.writeBoolean:(Z)V
        //   265: aload_2        
        //   266: aload_0        
        //   267: getfield        com/flurry/android/FlurryAgent.bl:Landroid/location/Location;
        //   270: invokevirtual   android/location/Location.getLatitude:()D
        //   273: invokestatic    com/flurry/android/FlurryAgent.a:(D)D
        //   276: invokevirtual   java/io/DataOutputStream.writeDouble:(D)V
        //   279: aload_2        
        //   280: aload_0        
        //   281: getfield        com/flurry/android/FlurryAgent.bl:Landroid/location/Location;
        //   284: invokevirtual   android/location/Location.getLongitude:()D
        //   287: invokestatic    com/flurry/android/FlurryAgent.a:(D)D
        //   290: invokevirtual   java/io/DataOutputStream.writeDouble:(D)V
        //   293: aload_2        
        //   294: aload_0        
        //   295: getfield        com/flurry/android/FlurryAgent.bl:Landroid/location/Location;
        //   298: invokevirtual   android/location/Location.getAccuracy:()F
        //   301: invokevirtual   java/io/DataOutputStream.writeFloat:(F)V
        //   304: goto            106
        //   307: astore_3       
        //   308: aload_2        
        //   309: astore          4
        //   311: aload           4
        //   313: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   316: aload_3        
        //   317: athrow         
        //   318: astore          5
        //   320: aload_0        
        //   321: monitorexit    
        //   322: aload           5
        //   324: athrow         
        //   325: aload_2        
        //   326: iconst_1       
        //   327: invokevirtual   java/io/DataOutputStream.writeBoolean:(Z)V
        //   330: aload_2        
        //   331: aload_0        
        //   332: getfield        com/flurry/android/FlurryAgent.bj:Ljava/lang/Long;
        //   335: invokevirtual   java/lang/Long.longValue:()J
        //   338: invokevirtual   java/io/DataOutputStream.writeLong:(J)V
        //   341: goto            144
        //   344: aload_2        
        //   345: aload_0        
        //   346: getfield        com/flurry/android/FlurryAgent.bn:Ljava/util/List;
        //   349: invokeinterface java/util/List.size:()I
        //   354: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   357: aload_0        
        //   358: getfield        com/flurry/android/FlurryAgent.bn:Ljava/util/List;
        //   361: invokeinterface java/util/List.iterator:()Ljava/util/Iterator;
        //   366: astore          9
        //   368: aload           9
        //   370: invokeinterface java/util/Iterator.hasNext:()Z
        //   375: ifeq            398
        //   378: aload_2        
        //   379: aload           9
        //   381: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   386: checkcast       Lcom/flurry/android/bs;
        //   389: invokevirtual   com/flurry/android/bs.getBytes:()[B
        //   392: invokevirtual   java/io/DataOutputStream.write:([B)V
        //   395: goto            368
        //   398: aload_2        
        //   399: aload_0        
        //   400: getfield        com/flurry/android/FlurryAgent.bo:Z
        //   403: invokevirtual   java/io/DataOutputStream.writeBoolean:(Z)V
        //   406: iconst_0       
        //   407: istore          10
        //   409: iconst_0       
        //   410: istore          11
        //   412: iconst_0       
        //   413: istore          12
        //   415: iload           10
        //   417: aload_0        
        //   418: getfield        com/flurry/android/FlurryAgent.bq:Ljava/util/List;
        //   421: invokeinterface java/util/List.size:()I
        //   426: if_icmpge       468
        //   429: iload           12
        //   431: aload_0        
        //   432: getfield        com/flurry/android/FlurryAgent.bq:Ljava/util/List;
        //   435: iload           10
        //   437: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   442: checkcast       Lcom/flurry/android/ci;
        //   445: invokevirtual   com/flurry/android/ci.getBytes:()[B
        //   448: arraylength    
        //   449: iadd           
        //   450: istore          15
        //   452: iload           15
        //   454: ldc_w           160000
        //   457: if_icmple       577
        //   460: ldc             "FlurryAgent"
        //   462: ldc_w           "Error Log size exceeded. No more event details logged."
        //   465: invokestatic    com/flurry/android/db.g:(Ljava/lang/String;Ljava/lang/String;)V
        //   468: aload_2        
        //   469: aload_0        
        //   470: getfield        com/flurry/android/FlurryAgent.bk:I
        //   473: invokevirtual   java/io/DataOutputStream.writeInt:(I)V
        //   476: aload_2        
        //   477: iload           11
        //   479: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   482: iconst_0       
        //   483: istore          13
        //   485: iload           13
        //   487: iload           11
        //   489: if_icmpge       519
        //   492: aload_2        
        //   493: aload_0        
        //   494: getfield        com/flurry/android/FlurryAgent.bq:Ljava/util/List;
        //   497: iload           13
        //   499: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   504: checkcast       Lcom/flurry/android/ci;
        //   507: invokevirtual   com/flurry/android/ci.getBytes:()[B
        //   510: invokevirtual   java/io/DataOutputStream.write:([B)V
        //   513: iinc            13, 1
        //   516: goto            485
        //   519: aload_2        
        //   520: iconst_0       
        //   521: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   524: aload_2        
        //   525: iconst_0       
        //   526: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   529: aload_0        
        //   530: getfield        com/flurry/android/FlurryAgent.ba:Ljava/util/List;
        //   533: aload_1        
        //   534: invokevirtual   java/io/ByteArrayOutputStream.toByteArray:()[B
        //   537: invokeinterface java/util/List.add:(Ljava/lang/Object;)Z
        //   542: pop            
        //   543: aload_2        
        //   544: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   547: goto            248
        //   550: astore          18
        //   552: aload           18
        //   554: astore_3       
        //   555: aconst_null    
        //   556: astore          4
        //   558: goto            311
        //   561: astore_3       
        //   562: goto            311
        //   565: astore          17
        //   567: aload           17
        //   569: astore          6
        //   571: aconst_null    
        //   572: astore          4
        //   574: goto            234
        //   577: iinc            11, 1
        //   580: iinc            10, 1
        //   583: iload           15
        //   585: istore          12
        //   587: goto            415
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  2      19     565    577    Ljava/io/IOException;
        //  2      19     550    561    Any
        //  19     84     229    234    Ljava/io/IOException;
        //  19     84     307    311    Any
        //  88     106    229    234    Ljava/io/IOException;
        //  88     106    307    311    Any
        //  106    144    229    234    Ljava/io/IOException;
        //  106    144    307    311    Any
        //  144    173    229    234    Ljava/io/IOException;
        //  144    173    307    311    Any
        //  173    226    229    234    Ljava/io/IOException;
        //  173    226    307    311    Any
        //  234    243    561    565    Any
        //  243    248    318    325    Any
        //  251    257    229    234    Ljava/io/IOException;
        //  251    257    307    311    Any
        //  260    304    229    234    Ljava/io/IOException;
        //  260    304    307    311    Any
        //  311    318    318    325    Any
        //  325    341    229    234    Ljava/io/IOException;
        //  325    341    307    311    Any
        //  344    368    229    234    Ljava/io/IOException;
        //  344    368    307    311    Any
        //  368    395    229    234    Ljava/io/IOException;
        //  368    395    307    311    Any
        //  398    406    229    234    Ljava/io/IOException;
        //  398    406    307    311    Any
        //  415    452    229    234    Ljava/io/IOException;
        //  415    452    307    311    Any
        //  460    468    229    234    Ljava/io/IOException;
        //  460    468    307    311    Any
        //  468    482    229    234    Ljava/io/IOException;
        //  468    482    307    311    Any
        //  492    513    229    234    Ljava/io/IOException;
        //  492    513    307    311    Any
        //  519    543    229    234    Ljava/io/IOException;
        //  519    543    307    311    Any
        //  543    547    318    325    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0248:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
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
    
    public static void onEndSession(final Context context) {
        if (context == null) {
            throw new NullPointerException("Null context");
        }
        try {
            FlurryAgent.az.a(context, false);
        }
        catch (Throwable t) {
            db.b("FlurryAgent", "", t);
        }
    }
    
    public static void onError(final String s, final String message, final String s2) {
        if (s == null) {
            db.d("FlurryAgent", "String errorId passed to onError was null.");
            return;
        }
        if (message == null) {
            db.d("FlurryAgent", "String message passed to onError was null.");
            return;
        }
        if (s2 == null) {
            db.d("FlurryAgent", "String errorClass passed to onError was null.");
            return;
        }
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            if (stackTrace != null && stackTrace.length > 2) {
                final StackTraceElement[] array = new StackTraceElement[stackTrace.length - 2];
                System.arraycopy(stackTrace, 2, array, 0, array.length);
                stackTrace = array;
            }
            final Throwable t = new Throwable(message);
            t.setStackTrace(stackTrace);
            FlurryAgent.az.a(s, message, s2, t);
        }
        catch (Throwable t2) {
            db.b("FlurryAgent", "", t2);
        }
    }
    
    public static void onError(final String s, final String s2, final Throwable t) {
        if (s == null) {
            db.d("FlurryAgent", "String errorId passed to onError was null.");
            return;
        }
        if (s2 == null) {
            db.d("FlurryAgent", "String message passed to onError was null.");
            return;
        }
        if (t == null) {
            db.d("FlurryAgent", "Throwable passed to onError was null.");
            return;
        }
        try {
            FlurryAgent.az.a(s, s2, t.getClass().getName(), t);
        }
        catch (Throwable t2) {
            db.b("FlurryAgent", "", t2);
        }
    }
    
    public static void onEvent(final String s) {
        if (s == null) {
            db.d("FlurryAgent", "String eventId passed to onEvent was null.");
            return;
        }
        try {
            FlurryAgent.az.a(s, null, false);
        }
        catch (Throwable t) {
            db.b("FlurryAgent", "", t);
        }
    }
    
    public static void onEvent(final String s, final Map<String, String> map) {
        if (s == null) {
            db.d("FlurryAgent", "String eventId passed to onEvent was null.");
            return;
        }
        if (map == null) {
            db.d("FlurryAgent", "Parameters Map passed to onEvent was null.");
            return;
        }
        try {
            FlurryAgent.az.a(s, map, false);
        }
        catch (Throwable t) {
            db.b("FlurryAgent", "", t);
        }
    }
    
    public static void onPageView() {
        try {
            FlurryAgent.az.p();
        }
        catch (Throwable t) {
            db.b("FlurryAgent", "", t);
        }
    }
    
    public static void onStartSession(final Context context, final String s) {
        if (context == null) {
            throw new NullPointerException("Null context");
        }
        if (s == null || s.length() == 0) {
            throw new IllegalArgumentException("Api key not specified");
        }
        try {
            FlurryAgent.az.a(context, s);
        }
        catch (Throwable t) {
            db.b("FlurryAgent", "", t);
        }
    }
    
    private void p() {
        synchronized (this) {
            ++this.br;
        }
    }
    
    private byte[] q() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: new             Lcom/flurry/android/CrcMessageDigest;
        //     5: dup            
        //     6: invokespecial   com/flurry/android/CrcMessageDigest.<init>:()V
        //     9: astore_1       
        //    10: new             Ljava/io/ByteArrayOutputStream;
        //    13: dup            
        //    14: invokespecial   java/io/ByteArrayOutputStream.<init>:()V
        //    17: astore_2       
        //    18: new             Ljava/security/DigestOutputStream;
        //    21: dup            
        //    22: aload_2        
        //    23: aload_1        
        //    24: invokespecial   java/security/DigestOutputStream.<init>:(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V
        //    27: astore_3       
        //    28: new             Ljava/io/DataOutputStream;
        //    31: dup            
        //    32: aload_3        
        //    33: invokespecial   java/io/DataOutputStream.<init>:(Ljava/io/OutputStream;)V
        //    36: astore          4
        //    38: aload           4
        //    40: bipush          26
        //    42: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //    45: aload           4
        //    47: iconst_0       
        //    48: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //    51: aload           4
        //    53: lconst_0       
        //    54: invokevirtual   java/io/DataOutputStream.writeLong:(J)V
        //    57: aload           4
        //    59: iconst_0       
        //    60: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //    63: aload           4
        //    65: iconst_3       
        //    66: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //    69: aload           4
        //    71: sipush          148
        //    74: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //    77: aload           4
        //    79: invokestatic    java/lang/System.currentTimeMillis:()J
        //    82: invokevirtual   java/io/DataOutputStream.writeLong:(J)V
        //    85: aload           4
        //    87: aload_0        
        //    88: getfield        com/flurry/android/FlurryAgent.aQ:Ljava/lang/String;
        //    91: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //    94: aload           4
        //    96: aload_0        
        //    97: getfield        com/flurry/android/FlurryAgent.aS:Ljava/lang/String;
        //   100: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   103: aload           4
        //   105: iconst_1       
        //   106: aload_0        
        //   107: getfield        com/flurry/android/FlurryAgent.aX:Ljava/util/Map;
        //   110: invokeinterface java/util/Map.size:()I
        //   115: iadd           
        //   116: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   119: aload           4
        //   121: iconst_0       
        //   122: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   125: aload           4
        //   127: aload_0        
        //   128: invokespecial   com/flurry/android/FlurryAgent.id:()Ljava/lang/String;
        //   131: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   134: aload_0        
        //   135: getfield        com/flurry/android/FlurryAgent.aX:Ljava/util/Map;
        //   138: invokeinterface java/util/Map.isEmpty:()Z
        //   143: ifne            264
        //   146: aload_0        
        //   147: getfield        com/flurry/android/FlurryAgent.aX:Ljava/util/Map;
        //   150: invokeinterface java/util/Map.entrySet:()Ljava/util/Set;
        //   155: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //   160: astore          31
        //   162: aload           31
        //   164: invokeinterface java/util/Iterator.hasNext:()Z
        //   169: ifeq            264
        //   172: aload           31
        //   174: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   179: checkcast       Ljava/util/Map$Entry;
        //   182: astore          32
        //   184: aload           4
        //   186: aload           32
        //   188: invokeinterface java/util/Map$Entry.getKey:()Ljava/lang/Object;
        //   193: checkcast       Ljava/lang/Integer;
        //   196: invokevirtual   java/lang/Integer.intValue:()I
        //   199: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   202: aload           32
        //   204: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
        //   209: checkcast       Ljava/nio/ByteBuffer;
        //   212: invokevirtual   java/nio/ByteBuffer.array:()[B
        //   215: astore          33
        //   217: aload           4
        //   219: aload           33
        //   221: arraylength    
        //   222: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   225: aload           4
        //   227: aload           33
        //   229: invokevirtual   java/io/DataOutputStream.write:([B)V
        //   232: goto            162
        //   235: astore          8
        //   237: aload           4
        //   239: astore          6
        //   241: ldc             "FlurryAgent"
        //   243: ldc_w           "Error when generating report"
        //   246: aload           8
        //   248: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   251: aload           6
        //   253: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   256: aconst_null    
        //   257: astore          9
        //   259: aload_0        
        //   260: monitorexit    
        //   261: aload           9
        //   263: areturn        
        //   264: aload           4
        //   266: iconst_0       
        //   267: invokevirtual   java/io/DataOutputStream.writeByte:(I)V
        //   270: aload           4
        //   272: aload_0        
        //   273: getfield        com/flurry/android/FlurryAgent.aZ:J
        //   276: invokevirtual   java/io/DataOutputStream.writeLong:(J)V
        //   279: aload           4
        //   281: aload_0        
        //   282: getfield        com/flurry/android/FlurryAgent.bb:J
        //   285: invokevirtual   java/io/DataOutputStream.writeLong:(J)V
        //   288: aload           4
        //   290: bipush          6
        //   292: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   295: aload           4
        //   297: ldc_w           "device.model"
        //   300: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   303: aload           4
        //   305: getstatic       android/os/Build.MODEL:Ljava/lang/String;
        //   308: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   311: aload           4
        //   313: ldc_w           "build.brand"
        //   316: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   319: aload           4
        //   321: getstatic       android/os/Build.BRAND:Ljava/lang/String;
        //   324: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   327: aload           4
        //   329: ldc_w           "build.id"
        //   332: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   335: aload           4
        //   337: getstatic       android/os/Build.ID:Ljava/lang/String;
        //   340: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   343: aload           4
        //   345: ldc_w           "version.release"
        //   348: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   351: aload           4
        //   353: getstatic       android/os/Build$VERSION.RELEASE:Ljava/lang/String;
        //   356: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   359: aload           4
        //   361: ldc_w           "build.device"
        //   364: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   367: aload           4
        //   369: getstatic       android/os/Build.DEVICE:Ljava/lang/String;
        //   372: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   375: aload           4
        //   377: ldc_w           "build.product"
        //   380: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   383: aload           4
        //   385: getstatic       android/os/Build.PRODUCT:Ljava/lang/String;
        //   388: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   391: aload_0        
        //   392: getfield        com/flurry/android/FlurryAgent.bs:Ljava/util/Map;
        //   395: ifnull          724
        //   398: aload_0        
        //   399: getfield        com/flurry/android/FlurryAgent.bs:Ljava/util/Map;
        //   402: invokeinterface java/util/Map.keySet:()Ljava/util/Set;
        //   407: invokeinterface java/util/Set.size:()I
        //   412: istore          10
        //   414: new             Ljava/lang/StringBuilder;
        //   417: dup            
        //   418: invokespecial   java/lang/StringBuilder.<init>:()V
        //   421: ldc_w           "refMapSize is:  "
        //   424: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   427: iload           10
        //   429: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   432: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   435: pop            
        //   436: iload           10
        //   438: ifne            469
        //   441: new             Ljava/lang/StringBuilder;
        //   444: dup            
        //   445: invokespecial   java/lang/StringBuilder.<init>:()V
        //   448: ldc_w           "Referrer file Name if it exists:  "
        //   451: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   454: aload_0        
        //   455: getfield        com/flurry/android/FlurryAgent.aL:Ljava/io/File;
        //   458: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   461: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   464: pop            
        //   465: aload_0        
        //   466: invokespecial   com/flurry/android/FlurryAgent.t:()V
        //   469: aload           4
        //   471: iload           10
        //   473: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   476: aload_0        
        //   477: getfield        com/flurry/android/FlurryAgent.bs:Ljava/util/Map;
        //   480: ifnull          730
        //   483: aload_0        
        //   484: getfield        com/flurry/android/FlurryAgent.bs:Ljava/util/Map;
        //   487: invokeinterface java/util/Map.entrySet:()Ljava/util/Set;
        //   492: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //   497: astore          24
        //   499: aload           24
        //   501: invokeinterface java/util/Iterator.hasNext:()Z
        //   506: ifeq            730
        //   509: aload           24
        //   511: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   516: checkcast       Ljava/util/Map$Entry;
        //   519: astore          25
        //   521: new             Ljava/lang/StringBuilder;
        //   524: dup            
        //   525: invokespecial   java/lang/StringBuilder.<init>:()V
        //   528: ldc_w           "Referrer Entry:  "
        //   531: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   534: aload           25
        //   536: invokeinterface java/util/Map$Entry.getKey:()Ljava/lang/Object;
        //   541: checkcast       Ljava/lang/String;
        //   544: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   547: ldc_w           "="
        //   550: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   553: aload           25
        //   555: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
        //   560: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   563: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   566: pop            
        //   567: aload           4
        //   569: aload           25
        //   571: invokeinterface java/util/Map$Entry.getKey:()Ljava/lang/Object;
        //   576: checkcast       Ljava/lang/String;
        //   579: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   582: new             Ljava/lang/StringBuilder;
        //   585: dup            
        //   586: invokespecial   java/lang/StringBuilder.<init>:()V
        //   589: ldc_w           "referrer key is :"
        //   592: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   595: aload           25
        //   597: invokeinterface java/util/Map$Entry.getKey:()Ljava/lang/Object;
        //   602: checkcast       Ljava/lang/String;
        //   605: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   608: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   611: pop            
        //   612: aload           4
        //   614: aload           25
        //   616: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
        //   621: checkcast       Ljava/util/List;
        //   624: invokeinterface java/util/List.size:()I
        //   629: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   632: aload           25
        //   634: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
        //   639: checkcast       Ljava/util/List;
        //   642: invokeinterface java/util/List.iterator:()Ljava/util/Iterator;
        //   647: astore          28
        //   649: aload           28
        //   651: invokeinterface java/util/Iterator.hasNext:()Z
        //   656: ifeq            499
        //   659: aload           28
        //   661: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   666: checkcast       Ljava/lang/String;
        //   669: astore          29
        //   671: aload           4
        //   673: aload           29
        //   675: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   678: new             Ljava/lang/StringBuilder;
        //   681: dup            
        //   682: invokespecial   java/lang/StringBuilder.<init>:()V
        //   685: ldc_w           "referrer value is :"
        //   688: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   691: aload           29
        //   693: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   696: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   699: pop            
        //   700: goto            649
        //   703: astore          5
        //   705: aload           4
        //   707: astore          6
        //   709: aload           6
        //   711: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   714: aload           5
        //   716: athrow         
        //   717: astore          7
        //   719: aload_0        
        //   720: monitorexit    
        //   721: aload           7
        //   723: athrow         
        //   724: iconst_0       
        //   725: istore          10
        //   727: goto            414
        //   730: aload           4
        //   732: iconst_0       
        //   733: invokevirtual   java/io/DataOutputStream.writeBoolean:(Z)V
        //   736: aload_0        
        //   737: getfield        com/flurry/android/FlurryAgent.bt:Ljava/util/Map;
        //   740: ifnull          1095
        //   743: aload_0        
        //   744: getfield        com/flurry/android/FlurryAgent.bt:Ljava/util/Map;
        //   747: invokeinterface java/util/Map.keySet:()Ljava/util/Set;
        //   752: invokeinterface java/util/Set.size:()I
        //   757: istore          13
        //   759: new             Ljava/lang/StringBuilder;
        //   762: dup            
        //   763: invokespecial   java/lang/StringBuilder.<init>:()V
        //   766: ldc_w           "optionsMapSize is:  "
        //   769: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   772: iload           13
        //   774: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   777: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   780: pop            
        //   781: aload           4
        //   783: iload           13
        //   785: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   788: aload_0        
        //   789: getfield        com/flurry/android/FlurryAgent.bt:Ljava/util/Map;
        //   792: ifnull          969
        //   795: aload_0        
        //   796: getfield        com/flurry/android/FlurryAgent.bt:Ljava/util/Map;
        //   799: invokeinterface java/util/Map.entrySet:()Ljava/util/Set;
        //   804: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //   809: astore          18
        //   811: aload           18
        //   813: invokeinterface java/util/Iterator.hasNext:()Z
        //   818: ifeq            969
        //   821: aload           18
        //   823: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   828: checkcast       Ljava/util/Map$Entry;
        //   831: astore          19
        //   833: new             Ljava/lang/StringBuilder;
        //   836: dup            
        //   837: invokespecial   java/lang/StringBuilder.<init>:()V
        //   840: ldc_w           "Launch Options Key:  "
        //   843: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   846: aload           19
        //   848: invokeinterface java/util/Map$Entry.getKey:()Ljava/lang/Object;
        //   853: checkcast       Ljava/lang/String;
        //   856: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   859: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   862: pop            
        //   863: aload           4
        //   865: aload           19
        //   867: invokeinterface java/util/Map$Entry.getKey:()Ljava/lang/Object;
        //   872: checkcast       Ljava/lang/String;
        //   875: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   878: aload           4
        //   880: aload           19
        //   882: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
        //   887: checkcast       Ljava/util/List;
        //   890: invokeinterface java/util/List.size:()I
        //   895: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   898: aload           19
        //   900: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
        //   905: checkcast       Ljava/util/List;
        //   908: invokeinterface java/util/List.iterator:()Ljava/util/Iterator;
        //   913: astore          21
        //   915: aload           21
        //   917: invokeinterface java/util/Iterator.hasNext:()Z
        //   922: ifeq            811
        //   925: aload           21
        //   927: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   932: checkcast       Ljava/lang/String;
        //   935: astore          22
        //   937: aload           4
        //   939: aload           22
        //   941: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   944: new             Ljava/lang/StringBuilder;
        //   947: dup            
        //   948: invokespecial   java/lang/StringBuilder.<init>:()V
        //   951: ldc_w           "Launch Options value is :"
        //   954: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   957: aload           22
        //   959: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   962: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   965: pop            
        //   966: goto            915
        //   969: aload_0        
        //   970: getfield        com/flurry/android/FlurryAgent.ba:Ljava/util/List;
        //   973: invokeinterface java/util/List.size:()I
        //   978: istore          15
        //   980: aload           4
        //   982: iload           15
        //   984: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   987: iconst_0       
        //   988: istore          16
        //   990: iload           16
        //   992: iload           15
        //   994: if_icmpge       1022
        //   997: aload           4
        //   999: aload_0        
        //  1000: getfield        com/flurry/android/FlurryAgent.ba:Ljava/util/List;
        //  1003: iload           16
        //  1005: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //  1010: checkcast       [B
        //  1013: invokevirtual   java/io/DataOutputStream.write:([B)V
        //  1016: iinc            16, 1
        //  1019: goto            990
        //  1022: aload_0        
        //  1023: new             Ljava/util/ArrayList;
        //  1026: dup            
        //  1027: aload_0        
        //  1028: getfield        com/flurry/android/FlurryAgent.ba:Ljava/util/List;
        //  1031: invokespecial   java/util/ArrayList.<init>:(Ljava/util/Collection;)V
        //  1034: putfield        com/flurry/android/FlurryAgent.aU:Ljava/util/List;
        //  1037: aload_3        
        //  1038: iconst_0       
        //  1039: invokevirtual   java/security/DigestOutputStream.on:(Z)V
        //  1042: aload           4
        //  1044: aload_1        
        //  1045: invokevirtual   com/flurry/android/CrcMessageDigest.getDigest:()[B
        //  1048: invokevirtual   java/io/DataOutputStream.write:([B)V
        //  1051: aload           4
        //  1053: invokevirtual   java/io/DataOutputStream.close:()V
        //  1056: aload_2        
        //  1057: invokevirtual   java/io/ByteArrayOutputStream.toByteArray:()[B
        //  1060: astore          17
        //  1062: aload           17
        //  1064: astore          9
        //  1066: aload           4
        //  1068: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //  1071: goto            259
        //  1074: astore          5
        //  1076: aconst_null    
        //  1077: astore          6
        //  1079: goto            709
        //  1082: astore          5
        //  1084: goto            709
        //  1087: astore          8
        //  1089: aconst_null    
        //  1090: astore          6
        //  1092: goto            241
        //  1095: iconst_0       
        //  1096: istore          13
        //  1098: goto            759
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  2      38     1087   1095   Ljava/lang/Throwable;
        //  2      38     1074   1082   Any
        //  38     162    235    241    Ljava/lang/Throwable;
        //  38     162    703    709    Any
        //  162    232    235    241    Ljava/lang/Throwable;
        //  162    232    703    709    Any
        //  241    251    1082   1087   Any
        //  251    256    717    724    Any
        //  264    414    235    241    Ljava/lang/Throwable;
        //  264    414    703    709    Any
        //  414    436    235    241    Ljava/lang/Throwable;
        //  414    436    703    709    Any
        //  441    469    235    241    Ljava/lang/Throwable;
        //  441    469    703    709    Any
        //  469    499    235    241    Ljava/lang/Throwable;
        //  469    499    703    709    Any
        //  499    649    235    241    Ljava/lang/Throwable;
        //  499    649    703    709    Any
        //  649    700    235    241    Ljava/lang/Throwable;
        //  649    700    703    709    Any
        //  709    717    717    724    Any
        //  730    759    235    241    Ljava/lang/Throwable;
        //  730    759    703    709    Any
        //  759    811    235    241    Ljava/lang/Throwable;
        //  759    811    703    709    Any
        //  811    915    235    241    Ljava/lang/Throwable;
        //  811    915    703    709    Any
        //  915    966    235    241    Ljava/lang/Throwable;
        //  915    966    703    709    Any
        //  969    987    235    241    Ljava/lang/Throwable;
        //  969    987    703    709    Any
        //  997    1016   235    241    Ljava/lang/Throwable;
        //  997    1016   703    709    Any
        //  1022   1062   235    241    Ljava/lang/Throwable;
        //  1022   1062   703    709    Any
        //  1066   1071   717    724    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0259:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
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
    
    private static String r() {
        if (FlurryAgent.aw != null) {
            return FlurryAgent.aw;
        }
        if (FlurryAgent.aD) {
            return FlurryAgent.ax;
        }
        if (FlurryAgent.aC) {
            return FlurryAgent.ay;
        }
        return FlurryAgent.ax;
    }
    
    private void s() {
        while (true) {
            while (true) {
                Label_0107: {
                    try {
                        db.c("FlurryAgent", "generating report");
                        final byte[] q = this.q();
                        if (q == null) {
                            db.c("FlurryAgent", "Error generating report");
                            return;
                        }
                        if (this.a(q)) {
                            final StringBuilder append = new StringBuilder().append("Done sending ");
                            if (this.aM) {
                                final String str = "initial ";
                                db.c("FlurryAgent", append.append(str).append("agent report").toString());
                                this.u();
                                return;
                            }
                            break Label_0107;
                        }
                    }
                    catch (IOException ex) {
                        db.a("FlurryAgent", "", ex);
                        return;
                    }
                    catch (Throwable t) {
                        db.b("FlurryAgent", "", t);
                    }
                    break;
                }
                final String str = "";
                continue;
            }
        }
    }
    
    public static void setAge(final int n) {
        if (n > 0 && n < 110) {
            FlurryAgent.az.bj = new Date(new Date(System.currentTimeMillis() - 31449600000L * n).getYear(), 1, 1).getTime();
        }
    }
    
    public static void setCaptureUncaughtExceptions(final boolean ae) {
        synchronized (FlurryAgent.az) {
            if (FlurryAgent.az.aM) {
                db.d("FlurryAgent", "Cannot setCaptureUncaughtExceptions after onStartSession");
                return;
            }
            FlurryAgent.aE = ae;
        }
    }
    
    public static void setContinueSessionMillis(final long n) {
        if (n < 5000L) {
            db.d("FlurryAgent", "Invalid time set for session resumption: " + n);
            return;
        }
        synchronized (FlurryAgent.az) {
            FlurryAgent.aA = n;
        }
    }
    
    public static void setGender(final byte bi) {
        switch (bi) {
            default: {
                FlurryAgent.az.bi = -1;
            }
            case 0:
            case 1: {
                FlurryAgent.az.bi = bi;
            }
        }
    }
    
    public static void setLocationCriteria(final Criteria af) {
        synchronized (FlurryAgent.az) {
            FlurryAgent.aF = af;
        }
    }
    
    public static void setLogEnabled(final boolean b) {
        final FlurryAgent az = FlurryAgent.az;
        // monitorenter(az)
        Label_0016: {
            if (!b) {
                break Label_0016;
            }
            try {
                db.ax();
                return;
                db.aw();
            }
            finally {
            }
            // monitorexit(az)
        }
    }
    
    public static void setLogEvents(final boolean ab) {
        synchronized (FlurryAgent.az) {
            FlurryAgent.aB = ab;
        }
    }
    
    public static void setLogLevel(final int logLevel) {
        synchronized (FlurryAgent.az) {
            db.setLogLevel(logLevel);
        }
    }
    
    public static void setReportLocation(final boolean at) {
        synchronized (FlurryAgent.az) {
            FlurryAgent.az.aT = at;
        }
    }
    
    public static void setReportUrl(final String aw) {
        if (aw != null) {
            aw.endsWith(".do");
        }
        FlurryAgent.aw = aw;
    }
    
    public static void setUseHttps(final boolean ac) {
        FlurryAgent.aC = ac;
    }
    
    public static void setUserId(final String s) {
        if (s == null) {
            db.d("FlurryAgent", "String userId passed to setUserId was null.");
            return;
        }
        synchronized (FlurryAgent.az) {
            FlurryAgent.az.bh = bd.sanitize(s);
        }
    }
    
    public static void setVersionName(final String as) {
        if (as == null) {
            db.d("FlurryAgent", "String versionName passed to setVersionName was null.");
            return;
        }
        synchronized (FlurryAgent.az) {
            FlurryAgent.az.aS = as;
        }
    }
    
    private void t() {
        if (this.aL.exists()) {
            db.e("FlurryAgent", "Loading referrer info from file:  " + this.aL.getAbsolutePath());
            final String a = a(this.aL);
            if (a != null) {
                this.bs = e(a);
            }
        }
    }
    
    private void u() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_0        
        //     3: getfield        com/flurry/android/FlurryAgent.aK:Ljava/io/File;
        //     6: invokestatic    com/flurry/android/bc.b:(Ljava/io/File;)Z
        //     9: istore          5
        //    11: iload           5
        //    13: ifne            23
        //    16: aconst_null    
        //    17: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    20: aload_0        
        //    21: monitorexit    
        //    22: return         
        //    23: new             Ljava/io/DataOutputStream;
        //    26: dup            
        //    27: new             Ljava/io/FileOutputStream;
        //    30: dup            
        //    31: aload_0        
        //    32: getfield        com/flurry/android/FlurryAgent.aK:Ljava/io/File;
        //    35: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //    38: invokespecial   java/io/DataOutputStream.<init>:(Ljava/io/OutputStream;)V
        //    41: astore_2       
        //    42: aload_2        
        //    43: ldc_w           46586
        //    46: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //    49: aload_2        
        //    50: iconst_2       
        //    51: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //    54: aload_2        
        //    55: aload_0        
        //    56: getfield        com/flurry/android/FlurryAgent.aQ:Ljava/lang/String;
        //    59: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //    62: aload_2        
        //    63: aload_0        
        //    64: invokespecial   com/flurry/android/FlurryAgent.id:()Ljava/lang/String;
        //    67: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //    70: aload_2        
        //    71: aload_0        
        //    72: getfield        com/flurry/android/FlurryAgent.aY:Z
        //    75: invokevirtual   java/io/DataOutputStream.writeBoolean:(Z)V
        //    78: aload_2        
        //    79: aload_0        
        //    80: getfield        com/flurry/android/FlurryAgent.aZ:J
        //    83: invokevirtual   java/io/DataOutputStream.writeLong:(J)V
        //    86: aload_0        
        //    87: getfield        com/flurry/android/FlurryAgent.ba:Ljava/util/List;
        //    90: invokeinterface java/util/List.size:()I
        //    95: iconst_1       
        //    96: isub           
        //    97: istore          6
        //    99: iload           6
        //   101: iflt            166
        //   104: aload_0        
        //   105: getfield        com/flurry/android/FlurryAgent.ba:Ljava/util/List;
        //   108: iload           6
        //   110: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   115: checkcast       [B
        //   118: astore          7
        //   120: aload           7
        //   122: arraylength    
        //   123: istore          8
        //   125: iload           8
        //   127: iconst_2       
        //   128: iadd           
        //   129: aload_2        
        //   130: invokevirtual   java/io/DataOutputStream.size:()I
        //   133: iadd           
        //   134: ldc_w           50000
        //   137: if_icmple       183
        //   140: ldc             "FlurryAgent"
        //   142: new             Ljava/lang/StringBuilder;
        //   145: dup            
        //   146: invokespecial   java/lang/StringBuilder.<init>:()V
        //   149: ldc_w           "discarded sessions: "
        //   152: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   155: iload           6
        //   157: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   160: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   163: invokestatic    com/flurry/android/db.c:(Ljava/lang/String;Ljava/lang/String;)V
        //   166: aload_2        
        //   167: iconst_0       
        //   168: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   171: aload_2        
        //   172: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   175: goto            20
        //   178: astore_3       
        //   179: aload_0        
        //   180: monitorexit    
        //   181: aload_3        
        //   182: athrow         
        //   183: aload_2        
        //   184: iload           8
        //   186: invokevirtual   java/io/DataOutputStream.writeShort:(I)V
        //   189: aload_2        
        //   190: aload           7
        //   192: invokevirtual   java/io/DataOutputStream.write:([B)V
        //   195: iinc            6, -1
        //   198: goto            99
        //   201: astore          4
        //   203: aconst_null    
        //   204: astore_2       
        //   205: ldc             "FlurryAgent"
        //   207: ldc             ""
        //   209: aload           4
        //   211: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   214: aload_2        
        //   215: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   218: goto            20
        //   221: aload_2        
        //   222: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   225: aload_1        
        //   226: athrow         
        //   227: astore_1       
        //   228: goto            221
        //   231: astore          4
        //   233: goto            205
        //   236: astore_1       
        //   237: aconst_null    
        //   238: astore_2       
        //   239: goto            221
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  2      11     201    205    Ljava/lang/Throwable;
        //  2      11     236    242    Any
        //  16     20     178    183    Any
        //  23     42     201    205    Ljava/lang/Throwable;
        //  23     42     236    242    Any
        //  42     99     231    236    Ljava/lang/Throwable;
        //  42     99     227    231    Any
        //  104    166    231    236    Ljava/lang/Throwable;
        //  104    166    227    231    Any
        //  166    171    231    236    Ljava/lang/Throwable;
        //  166    171    227    231    Any
        //  171    175    178    183    Any
        //  183    195    231    236    Ljava/lang/Throwable;
        //  183    195    227    231    Any
        //  205    214    227    231    Any
        //  214    218    178    183    Any
        //  221    227    178    183    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0099:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
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
    
    private void v() {
        synchronized (this) {
            if (this.aV != null) {
                this.aV.removeUpdates((LocationListener)this);
            }
        }
    }
    
    static String w() {
        return FlurryAgent.az.aQ;
    }
    
    static String x() {
        return FlurryAgent.az.bf;
    }
    
    final void a(final Throwable t) {
        t.printStackTrace();
        String s = "";
        final StackTraceElement[] stackTrace = t.getStackTrace();
        if (stackTrace != null && stackTrace.length > 0) {
            final StringBuilder sb = new StringBuilder();
            if (t.getMessage() != null) {
                sb.append(" (" + t.getMessage() + ")\n");
            }
            s = sb.toString();
        }
        else if (t.getMessage() != null) {
            s = t.getMessage();
        }
        onError("uncaught", s, t);
        this.aP.clear();
        this.a(null, true);
    }
    
    public final void onLocationChanged(final Location bl) {
        synchronized (this) {
            try {
                this.bl = bl;
                this.v();
            }
            catch (Throwable t) {
                db.b("FlurryAgent", "", t);
            }
        }
    }
    
    public final void onProviderDisabled(final String s) {
    }
    
    public final void onProviderEnabled(final String s) {
    }
    
    public final void onStatusChanged(final String s, final int n, final Bundle bundle) {
    }
}
