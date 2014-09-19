package com.google.ads;

import android.app.*;
import android.util.*;
import com.google.ads.util.*;
import android.view.*;
import java.util.*;
import android.os.*;
import com.google.ads.internal.*;
import android.webkit.*;
import android.widget.*;
import android.content.*;

public class AdActivity extends Activity implements View$OnClickListener
{
    public static final String BASE_URL_PARAM = "baseurl";
    public static final String COMPONENT_NAME_PARAM = "c";
    public static final String CUSTOM_CLOSE_PARAM = "custom_close";
    public static final String HTML_PARAM = "html";
    public static final String INTENT_ACTION_PARAM = "i";
    public static final String INTENT_EXTRAS_PARAM = "e";
    public static final String INTENT_FLAGS_PARAM = "f";
    public static final String ORIENTATION_PARAM = "o";
    public static final String PACKAGE_NAME_PARAM = "p";
    public static final String TYPE_PARAM = "m";
    public static final String URL_PARAM = "u";
    private static final a a;
    private static final Object b;
    private static AdActivity c;
    private static d d;
    private static AdActivity e;
    private static AdActivity f;
    private static final StaticMethodWrapper g;
    private AdWebView h;
    private FrameLayout i;
    private int j;
    private ViewGroup k;
    private boolean l;
    private long m;
    private RelativeLayout n;
    private AdActivity o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private AdVideoView t;
    
    static {
        a = com.google.ads.internal.a.a.b();
        b = new Object();
        AdActivity.c = null;
        AdActivity.d = null;
        AdActivity.e = null;
        AdActivity.f = null;
        g = new StaticMethodWrapper();
    }
    
    public AdActivity() {
        super();
        this.k = null;
        this.o = null;
    }
    
    private RelativeLayout$LayoutParams a(final int n, final int n2, final int n3, final int n4) {
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(n3, n4);
        relativeLayout$LayoutParams.setMargins(n, n2, 0, 0);
        relativeLayout$LayoutParams.addRule(10);
        relativeLayout$LayoutParams.addRule(9);
        return relativeLayout$LayoutParams;
    }
    
    private void a(final String s) {
        com.google.ads.util.b.b(s);
        this.finish();
    }
    
    private void a(final String s, final Throwable t) {
        com.google.ads.util.b.b(s, t);
        this.finish();
    }
    
    private void e() {
        if (this.l) {
            return;
        }
    Block_19_Outer:
        while (true) {
            Label_0109: {
                if (this.h == null) {
                    break Label_0109;
                }
                AdActivity.a.b(this.h);
                this.h.setAdActivity(null);
                this.h.setIsExpandedMraid(false);
                if (this.q || this.n == null || this.k == null) {
                    break Label_0109;
                }
                if (!this.r || this.s) {
                    break Block_19_Outer;
                }
                com.google.ads.util.b.a("Disabling hardware acceleration on collapsing MRAID WebView.");
                this.h.g();
                this.n.removeView((View)this.h);
                this.k.addView((View)this.h);
            }
            if (this.t != null) {
                this.t.e();
                this.t = null;
            }
            if (this == AdActivity.c) {
                AdActivity.c = null;
            }
            AdActivity.f = this.o;
            synchronized (AdActivity.b) {
                if (AdActivity.d != null && this.q && this.h != null) {
                    if (this.h == AdActivity.d.l()) {
                        AdActivity.d.a();
                    }
                    this.h.stopLoading();
                }
                if (this == AdActivity.e) {
                    AdActivity.e = null;
                    if (AdActivity.d != null) {
                        AdActivity.d.u();
                        AdActivity.d = null;
                    }
                    else {
                        com.google.ads.util.b.e("currentAdManager is null while trying to destroy AdActivity.");
                    }
                }
                // monitorexit(AdActivity.b)
                this.l = true;
                com.google.ads.util.b.a("AdActivity is closing.");
                return;
                while (true) {
                    com.google.ads.util.b.a("Re-enabling hardware acceleration on collapsing MRAID WebView.");
                    this.h.h();
                    continue Block_19_Outer;
                    continue;
                }
            }
            // iftrue(Label_0087:, this.r || !this.s)
            break;
        }
    }
    
    public static boolean isShowing() {
        return AdActivity.g.isShowing();
    }
    
    public static void launchAdActivity(final d d, final e e) {
        AdActivity.g.launchAdActivity(d, e);
    }
    
    public static boolean leftApplication() {
        return AdActivity.g.leftApplication();
    }
    
    protected View a(final int n, final boolean customClose) {
        this.j = (int)TypedValue.applyDimension(1, (float)n, this.getResources().getDisplayMetrics());
        (this.i = new FrameLayout(this.getApplicationContext())).setMinimumWidth(this.j);
        this.i.setMinimumHeight(this.j);
        this.i.setOnClickListener((View$OnClickListener)this);
        this.setCustomClose(customClose);
        return (View)this.i;
    }
    
    protected AdVideoView a(final Activity activity) {
        return new AdVideoView(activity, this.h);
    }
    
    protected void a(final AdWebView adWebView, final boolean b, final int requestedOrientation, final boolean b2, final boolean b3) {
        this.requestWindowFeature(1);
        final Window window = this.getWindow();
        window.setFlags(1024, 1024);
        if (AdUtil.a >= 11) {
            if (this.r) {
                b.a("Enabling hardware acceleration on the AdActivity window.");
                com.google.ads.util.g.a(window);
            }
            else {
                b.a("Disabling hardware acceleration on the AdActivity WebView.");
                adWebView.g();
            }
        }
        final ViewParent parent = adWebView.getParent();
        if (parent != null) {
            if (!b2) {
                this.a("Interstitial created with an AdWebView that has a parent.");
                return;
            }
            if (!(parent instanceof ViewGroup)) {
                this.a("MRAID banner was not a child of a ViewGroup.");
                return;
            }
            (this.k = (ViewGroup)parent).removeView((View)adWebView);
        }
        if (adWebView.i() != null) {
            this.a("Interstitial created with an AdWebView that is already in use by another AdActivity.");
        }
        else {
            this.setRequestedOrientation(requestedOrientation);
            adWebView.setAdActivity(this);
            int n;
            if (b2) {
                n = 50;
            }
            else {
                n = 32;
            }
            final View a = this.a(n, b3);
            this.n.addView((View)adWebView, -1, -1);
            final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
            if (b2) {
                relativeLayout$LayoutParams.addRule(10);
                relativeLayout$LayoutParams.addRule(11);
            }
            else {
                relativeLayout$LayoutParams.addRule(10);
                relativeLayout$LayoutParams.addRule(9);
            }
            this.n.addView(a, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
            this.n.setKeepScreenOn(true);
            this.setContentView((View)this.n);
            this.n.getRootView().setBackgroundColor(-16777216);
            if (b) {
                AdActivity.a.a(adWebView);
            }
        }
    }
    
    protected void a(final d d) {
        this.h = null;
        this.m = SystemClock.elapsedRealtime();
        this.p = true;
        synchronized (AdActivity.b) {
            if (AdActivity.c == null) {
                AdActivity.c = this;
                d.w();
            }
        }
    }
    
    protected void a(final HashMap<String, String> p0, final d p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: ifnonnull       12
        //     4: aload_0        
        //     5: ldc_w           "Could not get the paramMap in launchIntent()"
        //     8: invokespecial   com/google/ads/AdActivity.a:(Ljava/lang/String;)V
        //    11: return         
        //    12: new             Landroid/content/Intent;
        //    15: dup            
        //    16: invokespecial   android/content/Intent.<init>:()V
        //    19: astore_3       
        //    20: aload_1        
        //    21: ldc             "u"
        //    23: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    26: checkcast       Ljava/lang/String;
        //    29: astore          4
        //    31: aload_1        
        //    32: ldc             "m"
        //    34: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    37: checkcast       Ljava/lang/String;
        //    40: astore          5
        //    42: aload_1        
        //    43: ldc             "i"
        //    45: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    48: checkcast       Ljava/lang/String;
        //    51: astore          6
        //    53: aload_1        
        //    54: ldc             "p"
        //    56: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    59: checkcast       Ljava/lang/String;
        //    62: astore          7
        //    64: aload_1        
        //    65: ldc             "c"
        //    67: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    70: checkcast       Ljava/lang/String;
        //    73: astore          8
        //    75: aload_1        
        //    76: ldc             "f"
        //    78: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    81: checkcast       Ljava/lang/String;
        //    84: astore          9
        //    86: aload_1        
        //    87: ldc             "e"
        //    89: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    92: checkcast       Ljava/lang/String;
        //    95: astore          10
        //    97: aload           4
        //    99: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   102: ifne            415
        //   105: iconst_1       
        //   106: istore          11
        //   108: aload           5
        //   110: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   113: ifne            421
        //   116: iconst_1       
        //   117: istore          12
        //   119: iload           11
        //   121: ifeq            427
        //   124: iload           12
        //   126: ifeq            427
        //   129: aload_3        
        //   130: aload           4
        //   132: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   135: aload           5
        //   137: invokevirtual   android/content/Intent.setDataAndType:(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
        //   140: pop            
        //   141: aload           6
        //   143: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   146: ifne            460
        //   149: aload_3        
        //   150: aload           6
        //   152: invokevirtual   android/content/Intent.setAction:(Ljava/lang/String;)Landroid/content/Intent;
        //   155: pop            
        //   156: aload           7
        //   158: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   161: ifne            177
        //   164: getstatic       com/google/ads/util/AdUtil.a:I
        //   167: iconst_4       
        //   168: if_icmplt       177
        //   171: aload_3        
        //   172: aload           7
        //   174: invokestatic    com/google/ads/util/e.a:(Landroid/content/Intent;Ljava/lang/String;)V
        //   177: aload           8
        //   179: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   182: ifne            239
        //   185: aload           8
        //   187: ldc_w           "/"
        //   190: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
        //   193: astore          32
        //   195: aload           32
        //   197: arraylength    
        //   198: iconst_2       
        //   199: if_icmpge       226
        //   202: new             Ljava/lang/StringBuilder;
        //   205: dup            
        //   206: invokespecial   java/lang/StringBuilder.<init>:()V
        //   209: ldc_w           "Warning: Could not parse component name from open GMSG: "
        //   212: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   215: aload           8
        //   217: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   220: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   223: invokestatic    com/google/ads/util/b.e:(Ljava/lang/String;)V
        //   226: aload_3        
        //   227: aload           32
        //   229: iconst_0       
        //   230: aaload         
        //   231: aload           32
        //   233: iconst_1       
        //   234: aaload         
        //   235: invokevirtual   android/content/Intent.setClassName:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
        //   238: pop            
        //   239: aload           9
        //   241: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   244: ifne            265
        //   247: aload           9
        //   249: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //   252: istore          31
        //   254: iload           31
        //   256: istore          29
        //   258: aload_3        
        //   259: iload           29
        //   261: invokevirtual   android/content/Intent.addFlags:(I)Landroid/content/Intent;
        //   264: pop            
        //   265: aload           10
        //   267: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   270: ifne            552
        //   273: new             Lorg/json/JSONObject;
        //   276: dup            
        //   277: aload           10
        //   279: invokespecial   org/json/JSONObject.<init>:(Ljava/lang/String;)V
        //   282: astore          16
        //   284: aload           16
        //   286: invokevirtual   org/json/JSONObject.names:()Lorg/json/JSONArray;
        //   289: astore          18
        //   291: iconst_0       
        //   292: istore          19
        //   294: iload           19
        //   296: aload           18
        //   298: invokevirtual   org/json/JSONArray.length:()I
        //   301: if_icmpge       552
        //   304: aload           18
        //   306: iload           19
        //   308: invokevirtual   org/json/JSONArray.getString:(I)Ljava/lang/String;
        //   311: astore          20
        //   313: aload           16
        //   315: aload           20
        //   317: invokevirtual   org/json/JSONObject.getJSONObject:(Ljava/lang/String;)Lorg/json/JSONObject;
        //   320: astore          21
        //   322: aload           21
        //   324: ldc_w           "t"
        //   327: invokevirtual   org/json/JSONObject.getInt:(Ljava/lang/String;)I
        //   330: istore          22
        //   332: iload           22
        //   334: tableswitch {
        //                2: 508
        //                3: 574
        //                4: 592
        //                5: 610
        //                6: 628
        //          default: 368
        //        }
        //   368: new             Ljava/lang/StringBuilder;
        //   371: dup            
        //   372: invokespecial   java/lang/StringBuilder.<init>:()V
        //   375: ldc_w           "Warning: Unknown type in extras from open GMSG: "
        //   378: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   381: aload           20
        //   383: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   386: ldc_w           " (type: "
        //   389: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   392: iload           22
        //   394: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   397: ldc_w           ")"
        //   400: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   403: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   406: invokestatic    com/google/ads/util/b.e:(Ljava/lang/String;)V
        //   409: iinc            19, 1
        //   412: goto            294
        //   415: iconst_0       
        //   416: istore          11
        //   418: goto            108
        //   421: iconst_0       
        //   422: istore          12
        //   424: goto            119
        //   427: iload           11
        //   429: ifeq            445
        //   432: aload_3        
        //   433: aload           4
        //   435: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   438: invokevirtual   android/content/Intent.setData:(Landroid/net/Uri;)Landroid/content/Intent;
        //   441: pop            
        //   442: goto            141
        //   445: iload           12
        //   447: ifeq            141
        //   450: aload_3        
        //   451: aload           5
        //   453: invokevirtual   android/content/Intent.setType:(Ljava/lang/String;)Landroid/content/Intent;
        //   456: pop            
        //   457: goto            141
        //   460: iload           11
        //   462: ifeq            156
        //   465: aload_3        
        //   466: ldc_w           "android.intent.action.VIEW"
        //   469: invokevirtual   android/content/Intent.setAction:(Ljava/lang/String;)Landroid/content/Intent;
        //   472: pop            
        //   473: goto            156
        //   476: astore          28
        //   478: new             Ljava/lang/StringBuilder;
        //   481: dup            
        //   482: invokespecial   java/lang/StringBuilder.<init>:()V
        //   485: ldc_w           "Warning: Could not parse flags from open GMSG: "
        //   488: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   491: aload           9
        //   493: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   496: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   499: invokestatic    com/google/ads/util/b.e:(Ljava/lang/String;)V
        //   502: iconst_0       
        //   503: istore          29
        //   505: goto            258
        //   508: aload_3        
        //   509: aload           20
        //   511: aload           21
        //   513: ldc_w           "v"
        //   516: invokevirtual   org/json/JSONObject.getBoolean:(Ljava/lang/String;)Z
        //   519: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Z)Landroid/content/Intent;
        //   522: pop            
        //   523: goto            409
        //   526: astore          17
        //   528: new             Ljava/lang/StringBuilder;
        //   531: dup            
        //   532: invokespecial   java/lang/StringBuilder.<init>:()V
        //   535: ldc_w           "Warning: Could not parse extras from open GMSG: "
        //   538: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   541: aload           10
        //   543: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   546: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   549: invokestatic    com/google/ads/util/b.e:(Ljava/lang/String;)V
        //   552: aload_3        
        //   553: new             Landroid/content/Intent;
        //   556: dup            
        //   557: invokespecial   android/content/Intent.<init>:()V
        //   560: invokevirtual   android/content/Intent.filterEquals:(Landroid/content/Intent;)Z
        //   563: ifeq            646
        //   566: aload_0        
        //   567: ldc_w           "Tried to launch empty intent."
        //   570: invokespecial   com/google/ads/AdActivity.a:(Ljava/lang/String;)V
        //   573: return         
        //   574: aload_3        
        //   575: aload           20
        //   577: aload           21
        //   579: ldc_w           "v"
        //   582: invokevirtual   org/json/JSONObject.getDouble:(Ljava/lang/String;)D
        //   585: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;D)Landroid/content/Intent;
        //   588: pop            
        //   589: goto            409
        //   592: aload_3        
        //   593: aload           20
        //   595: aload           21
        //   597: ldc_w           "v"
        //   600: invokevirtual   org/json/JSONObject.getInt:(Ljava/lang/String;)I
        //   603: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;I)Landroid/content/Intent;
        //   606: pop            
        //   607: goto            409
        //   610: aload_3        
        //   611: aload           20
        //   613: aload           21
        //   615: ldc_w           "v"
        //   618: invokevirtual   org/json/JSONObject.getLong:(Ljava/lang/String;)J
        //   621: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;J)Landroid/content/Intent;
        //   624: pop            
        //   625: goto            409
        //   628: aload_3        
        //   629: aload           20
        //   631: aload           21
        //   633: ldc_w           "v"
        //   636: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   639: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
        //   642: pop            
        //   643: goto            409
        //   646: new             Ljava/lang/StringBuilder;
        //   649: dup            
        //   650: invokespecial   java/lang/StringBuilder.<init>:()V
        //   653: ldc_w           "Launching an intent from AdActivity: "
        //   656: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   659: aload_3        
        //   660: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   663: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   666: invokestatic    com/google/ads/util/b.a:(Ljava/lang/String;)V
        //   669: aload_0        
        //   670: aload_3        
        //   671: invokevirtual   com/google/ads/AdActivity.startActivity:(Landroid/content/Intent;)V
        //   674: aload_0        
        //   675: aload_2        
        //   676: invokevirtual   com/google/ads/AdActivity.a:(Lcom/google/ads/internal/d;)V
        //   679: return         
        //   680: astore          15
        //   682: aload_0        
        //   683: aload           15
        //   685: invokevirtual   android/content/ActivityNotFoundException.getMessage:()Ljava/lang/String;
        //   688: aload           15
        //   690: invokespecial   com/google/ads/AdActivity.a:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   693: return         
        //    Signature:
        //  (Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;Lcom/google/ads/internal/d;)V
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                       
        //  -----  -----  -----  -----  -------------------------------------------
        //  247    254    476    508    Ljava/lang/NumberFormatException;
        //  273    291    526    552    Lorg/json/JSONException;
        //  294    332    526    552    Lorg/json/JSONException;
        //  368    409    526    552    Lorg/json/JSONException;
        //  508    523    526    552    Lorg/json/JSONException;
        //  574    589    526    552    Lorg/json/JSONException;
        //  592    607    526    552    Lorg/json/JSONException;
        //  610    625    526    552    Lorg/json/JSONException;
        //  628    643    526    552    Lorg/json/JSONException;
        //  646    679    680    694    Landroid/content/ActivityNotFoundException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0294:
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
    
    public AdVideoView getAdVideoView() {
        return this.t;
    }
    
    public AdWebView getOpeningAdWebView() {
        if (this.o != null) {
            return this.o.h;
        }
        synchronized (AdActivity.b) {
            if (AdActivity.d == null) {
                com.google.ads.util.b.e("currentAdManager was null while trying to get the opening AdWebView.");
                return null;
            }
            final AdWebView l = AdActivity.d.l();
            if (l != this.h) {
                return l;
            }
            return null;
        }
    }
    
    public void moveAdVideoView(final int n, final int n2, final int n3, final int n4) {
        if (this.t != null) {
            this.t.setLayoutParams((ViewGroup$LayoutParams)this.a(n, n2, n3, n4));
            this.t.requestLayout();
        }
    }
    
    public void newAdVideoView(final int n, final int n2, final int n3, final int n4) {
        if (this.t == null) {
            this.t = this.a(this);
            this.n.addView((View)this.t, 0, (ViewGroup$LayoutParams)this.a(n, n2, n3, n4));
            synchronized (AdActivity.b) {
                if (AdActivity.d == null) {
                    com.google.ads.util.b.e("currentAdManager was null while trying to get the opening AdWebView.");
                    return;
                }
                AdActivity.d.m().b(false);
            }
        }
    }
    
    public void onClick(final View view) {
        this.finish();
    }
    
    public void onCreate(final Bundle bundle) {
        d d = null;
        boolean r = false;
        Bundle bundleExtra = null;
    Label_0194_Outer:
        while (true) {
            super.onCreate(bundle);
            this.l = false;
            while (true) {
            Label_0268:
                while (true) {
                    synchronized (AdActivity.b) {
                        if (AdActivity.d == null) {
                            this.a("Could not get currentAdManager.");
                            return;
                        }
                        d = AdActivity.d;
                        if (AdActivity.e == null) {
                            AdActivity.e = this;
                            d.v();
                        }
                        if (this.o == null && AdActivity.f != null) {
                            this.o = AdActivity.f;
                        }
                        AdActivity.f = this;
                        if ((d.i().a() && AdActivity.e == this) || (d.i().b() && this.o == AdActivity.e)) {
                            d.x();
                        }
                        r = d.r();
                        final m.a a = d.i().d.a().b.a();
                        if (AdUtil.a >= a.b.a()) {
                            final boolean s = true;
                            this.s = s;
                            if (AdUtil.a < a.d.a()) {
                                break Label_0268;
                            }
                            final boolean r2 = true;
                            this.r = r2;
                            // monitorexit(AdActivity.b)
                            this.n = null;
                            this.p = false;
                            this.q = true;
                            this.t = null;
                            bundleExtra = this.getIntent().getBundleExtra("com.google.ads.AdOpener");
                            if (bundleExtra == null) {
                                this.a("Could not get the Bundle used to create AdActivity.");
                                return;
                            }
                            break;
                        }
                    }
                    final boolean s = false;
                    continue Label_0194_Outer;
                }
                final boolean r2 = false;
                continue;
            }
        }
        final e e = new e(bundleExtra);
        final String b = e.b();
        final HashMap<String, String> c = e.c();
        if (b.equals("intent")) {
            this.a(c, d);
            return;
        }
        this.n = new RelativeLayout(this.getApplicationContext());
        if (b.equals("webapp")) {
            this.h = new AdWebView(d.i(), null);
            final i a2 = com.google.ads.internal.i.a(d, com.google.ads.internal.a.d, true, !r);
            a2.d(true);
            if (r) {
                a2.a(true);
            }
            this.h.setWebViewClient((WebViewClient)a2);
            final String s2 = c.get("u");
            final String s3 = c.get("baseurl");
            final String s4 = c.get("html");
            if (s2 != null) {
                this.h.loadUrl(s2);
            }
            else {
                if (s4 == null) {
                    this.a("Could not get the URL or HTML parameter to show a web app.");
                    return;
                }
                this.h.loadDataWithBaseURL(s3, s4, "text/html", "utf-8", null);
            }
            final String s5 = c.get("o");
            int n;
            if ("p".equals(s5)) {
                n = AdUtil.b();
            }
            else if ("l".equals(s5)) {
                n = AdUtil.a();
            }
            else if (this == AdActivity.e) {
                n = d.o();
            }
            else {
                n = -1;
            }
            this.a(this.h, false, n, r, c != null && "1".equals(c.get("custom_close")));
            return;
        }
        if (b.equals("interstitial") || b.equals("expand")) {
            this.h = d.l();
            final int o = d.o();
            boolean j;
            if (b.equals("expand")) {
                this.h.setIsExpandedMraid(true);
                this.q = false;
                final boolean b2 = c != null && "1".equals(c.get("custom_close"));
                if (this.r && !this.s) {
                    com.google.ads.util.b.a("Re-enabling hardware acceleration on expanding MRAID WebView.");
                    this.h.h();
                    j = b2;
                }
                else {
                    j = b2;
                }
            }
            else {
                j = this.h.j();
            }
            this.a(this.h, true, o, r, j);
            return;
        }
        this.a("Unknown AdOpener, <action: " + b + ">");
    }
    
    public void onDestroy() {
        if (this.n != null) {
            this.n.removeAllViews();
        }
        if (this.isFinishing()) {
            this.e();
            if (this.q && this.h != null) {
                this.h.stopLoading();
                this.h.destroy();
                this.h = null;
            }
        }
        super.onDestroy();
    }
    
    public void onPause() {
        if (this.isFinishing()) {
            this.e();
        }
        super.onPause();
    }
    
    public void onWindowFocusChanged(final boolean b) {
        if (this.p && b && SystemClock.elapsedRealtime() - this.m > 250L) {
            b.d("Launcher AdActivity got focus and is closing.");
            this.finish();
        }
        super.onWindowFocusChanged(b);
    }
    
    public void setCustomClose(final boolean b) {
        if (this.i != null) {
            this.i.removeAllViews();
            if (!b) {
                final ImageButton imageButton = new ImageButton((Context)this);
                imageButton.setImageResource(17301527);
                imageButton.setBackgroundColor(0);
                imageButton.setOnClickListener((View$OnClickListener)this);
                imageButton.setPadding(0, 0, 0, 0);
                this.i.addView((View)imageButton, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(this.j, this.j, 17));
            }
        }
    }
    
    public static class StaticMethodWrapper
    {
        public boolean isShowing() {
            while (true) {
                synchronized (AdActivity.b) {
                    if (AdActivity.e != null) {
                        return true;
                    }
                }
                return false;
            }
        }
        
        public void launchAdActivity(final d d, final e e) {
            final Activity activity;
            synchronized (AdActivity.b) {
                if (AdActivity.d == null) {
                    AdActivity.d = d;
                }
                else if (AdActivity.d != d) {
                    com.google.ads.util.b.b("Tried to launch a new AdActivity with a different AdManager.");
                    return;
                }
                // monitorexit(AdActivity.a())
                activity = d.i().c.a();
                if (activity == null) {
                    com.google.ads.util.b.e("activity was null while launching an AdActivity.");
                    return;
                }
            }
            final Intent intent = new Intent(activity.getApplicationContext(), (Class)AdActivity.class);
            intent.putExtra("com.google.ads.AdOpener", e.a());
            try {
                com.google.ads.util.b.a("Launching AdActivity.");
                activity.startActivity(intent);
            }
            catch (ActivityNotFoundException ex) {
                com.google.ads.util.b.b("Activity not found.", (Throwable)ex);
            }
        }
        
        public boolean leftApplication() {
            while (true) {
                synchronized (AdActivity.b) {
                    if (AdActivity.c != null) {
                        return true;
                    }
                }
                return false;
            }
        }
    }
}
