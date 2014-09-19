package com.applovin.impl.sdk;

import java.util.*;
import android.content.*;
import java.io.*;
import com.applovin.sdk.*;
import org.json.*;

class ar extends an
{
    private static final Collection a;
    private static volatile int b;
    private final JSONObject c;
    private final AppLovinAdLoadListener h;
    
    static {
        a = Arrays.asList(')', ']', '\"', '\'', ' ');
        ar.b = 0;
    }
    
    ar(final JSONObject c, final AppLovinAdLoadListener h, final AppLovinSdkImpl appLovinSdkImpl) {
        super("RenderAd", appLovinSdkImpl);
        this.c = c;
        this.h = h;
    }
    
    private String a(final String str) {
        if (str == null || str.length() <= 0) {
            return "";
        }
        if (str.contains("#")) {
            return str;
        }
        return str + "#sdk_version_" + "5.1.1-5.1.1";
    }
    
    private String a(final String s, final Context context) {
        final ba ba = new ba(s, this.f);
        ba.a("click", "applovin://com.applovin.sdk/adservice/track_click");
        ba.a("click.javascript", "javascript:window.applovin_sdk.execute('track_click')");
        final String a = ba.a();
        if (this.e.a(v.L)) {
            return this.c(a);
        }
        return a;
    }
    
    private String a(final String str, final String s) {
        final File a = bc.a(s, this.e.getApplicationContext());
        if (a.exists()) {
            this.f.d(this.d, "Loaded " + s + " from cache: file://" + a.getAbsolutePath());
            return "file://" + a.getAbsolutePath();
        }
        if (this.a(a, str + s)) {
            return "file://" + a.getAbsolutePath();
        }
        return null;
    }
    
    private boolean a(final File p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/applovin/impl/sdk/ar.f:Lcom/applovin/sdk/AppLovinLogger;
        //     4: aload_0        
        //     5: getfield        com/applovin/impl/sdk/ar.d:Ljava/lang/String;
        //     8: new             Ljava/lang/StringBuilder;
        //    11: dup            
        //    12: invokespecial   java/lang/StringBuilder.<init>:()V
        //    15: ldc             "Starting caching of "
        //    17: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    20: aload_2        
        //    21: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    24: ldc             " into "
        //    26: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    29: aload_1        
        //    30: invokevirtual   java/io/File.getAbsoluteFile:()Ljava/io/File;
        //    33: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    36: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    39: invokeinterface com/applovin/sdk/AppLovinLogger.d:(Ljava/lang/String;Ljava/lang/String;)V
        //    44: new             Ljava/io/FileOutputStream;
        //    47: dup            
        //    48: aload_1        
        //    49: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //    52: astore_3       
        //    53: new             Ljava/net/URL;
        //    56: dup            
        //    57: aload_2        
        //    58: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //    61: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
        //    64: checkcast       Ljava/net/HttpURLConnection;
        //    67: astore          15
        //    69: aload           15
        //    71: aload_0        
        //    72: getfield        com/applovin/impl/sdk/ar.e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;
        //    75: getstatic       com/applovin/impl/sdk/v.v:Lcom/applovin/impl/sdk/x;
        //    78: invokevirtual   com/applovin/impl/sdk/AppLovinSdkImpl.a:(Lcom/applovin/impl/sdk/x;)Ljava/lang/Object;
        //    81: checkcast       Ljava/lang/Integer;
        //    84: invokevirtual   java/lang/Integer.intValue:()I
        //    87: invokevirtual   java/net/HttpURLConnection.setConnectTimeout:(I)V
        //    90: aload           15
        //    92: aload_0        
        //    93: getfield        com/applovin/impl/sdk/ar.e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;
        //    96: getstatic       com/applovin/impl/sdk/v.w:Lcom/applovin/impl/sdk/x;
        //    99: invokevirtual   com/applovin/impl/sdk/AppLovinSdkImpl.a:(Lcom/applovin/impl/sdk/x;)Ljava/lang/Object;
        //   102: checkcast       Ljava/lang/Integer;
        //   105: invokevirtual   java/lang/Integer.intValue:()I
        //   108: invokevirtual   java/net/HttpURLConnection.setReadTimeout:(I)V
        //   111: aload           15
        //   113: iconst_1       
        //   114: invokevirtual   java/net/HttpURLConnection.setDefaultUseCaches:(Z)V
        //   117: aload           15
        //   119: iconst_1       
        //   120: invokevirtual   java/net/HttpURLConnection.setUseCaches:(Z)V
        //   123: aload           15
        //   125: iconst_0       
        //   126: invokevirtual   java/net/HttpURLConnection.setAllowUserInteraction:(Z)V
        //   129: aload           15
        //   131: iconst_1       
        //   132: invokevirtual   java/net/HttpURLConnection.setInstanceFollowRedirects:(Z)V
        //   135: aload           15
        //   137: invokevirtual   java/net/HttpURLConnection.getInputStream:()Ljava/io/InputStream;
        //   140: astore          18
        //   142: sipush          1024
        //   145: newarray        B
        //   147: astore          21
        //   149: aload           18
        //   151: aload           21
        //   153: iconst_0       
        //   154: aload           21
        //   156: arraylength    
        //   157: invokevirtual   java/io/InputStream.read:([BII)I
        //   160: istore          22
        //   162: iload           22
        //   164: iflt            279
        //   167: aload_3        
        //   168: aload           21
        //   170: iconst_0       
        //   171: iload           22
        //   173: invokevirtual   java/io/OutputStream.write:([BII)V
        //   176: goto            149
        //   179: astore          20
        //   181: aload_3        
        //   182: astore          5
        //   184: aload           18
        //   186: astore          7
        //   188: aload           15
        //   190: astore          6
        //   192: aload           20
        //   194: astore          4
        //   196: aload_0        
        //   197: getfield        com/applovin/impl/sdk/ar.f:Lcom/applovin/sdk/AppLovinLogger;
        //   200: aload_0        
        //   201: getfield        com/applovin/impl/sdk/ar.d:Ljava/lang/String;
        //   204: new             Ljava/lang/StringBuilder;
        //   207: dup            
        //   208: invokespecial   java/lang/StringBuilder.<init>:()V
        //   211: ldc             "Failed to cache \""
        //   213: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   216: aload_2        
        //   217: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   220: ldc             "\" into \""
        //   222: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   225: aload_1        
        //   226: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //   229: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   232: ldc             "\""
        //   234: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   237: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   240: aload           4
        //   242: invokeinterface com/applovin/sdk/AppLovinLogger.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   247: aload           7
        //   249: ifnull          257
        //   252: aload           7
        //   254: invokevirtual   java/io/InputStream.close:()V
        //   257: aload           5
        //   259: ifnull          267
        //   262: aload           5
        //   264: invokevirtual   java/io/OutputStream.close:()V
        //   267: aload           6
        //   269: ifnull          277
        //   272: aload           6
        //   274: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   277: iconst_0       
        //   278: ireturn        
        //   279: aload_3        
        //   280: invokevirtual   java/io/OutputStream.flush:()V
        //   283: aload_0        
        //   284: getfield        com/applovin/impl/sdk/ar.f:Lcom/applovin/sdk/AppLovinLogger;
        //   287: aload_0        
        //   288: getfield        com/applovin/impl/sdk/ar.d:Ljava/lang/String;
        //   291: new             Ljava/lang/StringBuilder;
        //   294: dup            
        //   295: invokespecial   java/lang/StringBuilder.<init>:()V
        //   298: ldc             "Caching completed for "
        //   300: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   303: aload_1        
        //   304: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   307: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   310: invokeinterface com/applovin/sdk/AppLovinLogger.d:(Ljava/lang/String;Ljava/lang/String;)V
        //   315: aload           18
        //   317: ifnull          325
        //   320: aload           18
        //   322: invokevirtual   java/io/InputStream.close:()V
        //   325: aload_3        
        //   326: ifnull          333
        //   329: aload_3        
        //   330: invokevirtual   java/io/OutputStream.close:()V
        //   333: aload           15
        //   335: ifnull          343
        //   338: aload           15
        //   340: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   343: iconst_1       
        //   344: ireturn        
        //   345: astore          8
        //   347: aconst_null    
        //   348: astore          6
        //   350: aconst_null    
        //   351: astore          7
        //   353: aconst_null    
        //   354: astore          5
        //   356: aload           7
        //   358: ifnull          366
        //   361: aload           7
        //   363: invokevirtual   java/io/InputStream.close:()V
        //   366: aload           5
        //   368: ifnull          376
        //   371: aload           5
        //   373: invokevirtual   java/io/OutputStream.close:()V
        //   376: aload           6
        //   378: ifnull          386
        //   381: aload           6
        //   383: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   386: aload           8
        //   388: athrow         
        //   389: astore          25
        //   391: goto            325
        //   394: astore          24
        //   396: goto            333
        //   399: astore          23
        //   401: goto            343
        //   404: astore          14
        //   406: goto            257
        //   409: astore          13
        //   411: goto            267
        //   414: astore          12
        //   416: goto            277
        //   419: astore          11
        //   421: goto            366
        //   424: astore          10
        //   426: goto            376
        //   429: astore          9
        //   431: goto            386
        //   434: astore          8
        //   436: aload_3        
        //   437: astore          5
        //   439: aconst_null    
        //   440: astore          6
        //   442: aconst_null    
        //   443: astore          7
        //   445: goto            356
        //   448: astore          17
        //   450: aload_3        
        //   451: astore          5
        //   453: aload           17
        //   455: astore          8
        //   457: aload           15
        //   459: astore          6
        //   461: aconst_null    
        //   462: astore          7
        //   464: goto            356
        //   467: astore          19
        //   469: aload_3        
        //   470: astore          5
        //   472: aload           18
        //   474: astore          7
        //   476: aload           15
        //   478: astore          6
        //   480: aload           19
        //   482: astore          8
        //   484: goto            356
        //   487: astore          8
        //   489: goto            356
        //   492: astore          4
        //   494: aconst_null    
        //   495: astore          6
        //   497: aconst_null    
        //   498: astore          7
        //   500: aconst_null    
        //   501: astore          5
        //   503: goto            196
        //   506: astore          4
        //   508: aload_3        
        //   509: astore          5
        //   511: aconst_null    
        //   512: astore          6
        //   514: aconst_null    
        //   515: astore          7
        //   517: goto            196
        //   520: astore          16
        //   522: aload_3        
        //   523: astore          5
        //   525: aload           16
        //   527: astore          4
        //   529: aload           15
        //   531: astore          6
        //   533: aconst_null    
        //   534: astore          7
        //   536: goto            196
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  44     53     492    506    Ljava/io/IOException;
        //  44     53     345    356    Any
        //  53     69     506    520    Ljava/io/IOException;
        //  53     69     434    448    Any
        //  69     142    520    539    Ljava/io/IOException;
        //  69     142    448    467    Any
        //  142    149    179    196    Ljava/io/IOException;
        //  142    149    467    487    Any
        //  149    162    179    196    Ljava/io/IOException;
        //  149    162    467    487    Any
        //  167    176    179    196    Ljava/io/IOException;
        //  167    176    467    487    Any
        //  196    247    487    492    Any
        //  252    257    404    409    Ljava/lang/Exception;
        //  262    267    409    414    Ljava/lang/Exception;
        //  272    277    414    419    Ljava/lang/Exception;
        //  279    315    179    196    Ljava/io/IOException;
        //  279    315    467    487    Any
        //  320    325    389    394    Ljava/lang/Exception;
        //  329    333    394    399    Ljava/lang/Exception;
        //  338    343    399    404    Ljava/lang/Exception;
        //  361    366    419    424    Ljava/lang/Exception;
        //  371    376    424    429    Ljava/lang/Exception;
        //  381    386    429    434    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 247, Size: 247
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3419)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3419)
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
    
    private String b(final String str) {
        final StringBuffer sb = new StringBuffer(m.b("click", this.e));
        sb.append("?");
        sb.append("clcode=").append(str);
        sb.append("&sdk_version=").append("5.1.1-5.1.1");
        return sb.toString();
    }
    
    private String c(final String str) {
        final StringBuffer sb = new StringBuffer(str);
        for (final String str2 : ((String)this.e.a(v.M)).split(",")) {
            int fromIndex = 0;
            int index;
            int end;
            for (int j = 0; j < sb.length(); j = index, fromIndex = end) {
                index = sb.indexOf(str2, fromIndex);
                if (index == -1) {
                    break;
                }
                int length2;
                for (length2 = sb.length(), end = index; !ar.a.contains(sb.charAt(end)) && end < length2; ++end) {}
                if (end > index && end != length2) {
                    final String a = this.a(str2, sb.substring(index + str2.length(), end));
                    if (a != null) {
                        sb.replace(index, end, a);
                    }
                }
                else {
                    System.out.println("HTML is bad");
                }
            }
        }
        return sb.toString();
    }
    
    private String d(final String s) {
        final String string = "al_video_" + ar.b + s.substring(1 + s.lastIndexOf("."), s.length());
        final File a = bc.a(string, this.e.getApplicationContext());
        a.delete();
        if (this.a(a, s)) {
            ar.b = (1 + ar.b) % 2;
            return string;
        }
        return null;
    }
    
    protected void a(final AppLovinAd appLovinAd) {
        if (this.h != null) {
            this.h.adReceived(appLovinAd);
        }
        final aa b = this.e.b();
        b.a("ad_dsp");
        b.a("ad_dsp_session");
    }
    
    protected void b() {
        try {
            if (this.h != null) {
                this.h.failedToReceiveAd(-6);
            }
        }
        catch (Throwable t) {
            this.f.e(this.d, "Unable process a failure to recieve an ad", t);
        }
    }
    
    @Override
    public void run() {
        while (true) {
            this.f.d(this.d, "Rendering ad...");
            while (true) {
                Label_0372: {
                    while (true) {
                        try {
                            final String string = this.c.getString("html");
                            AppLovinAdSize appLovinAdSize;
                            if (this.c.has("size")) {
                                appLovinAdSize = AppLovinAdSize.fromString(this.c.getString("size"));
                            }
                            else {
                                appLovinAdSize = AppLovinAdSize.BANNER;
                            }
                            if (string == null || string.length() <= 0) {
                                break;
                            }
                            String s;
                            if (this.c.has("clcode")) {
                                s = this.b(this.c.getString("clcode"));
                            }
                            else {
                                if (!this.c.has("click_url")) {
                                    this.f.e(this.d, "Ad server has not returned a clcode or click URL");
                                    this.b();
                                    return;
                                }
                                s = this.c.getString("click_url");
                            }
                            if (!this.c.has("redirect_url")) {
                                goto Label_0299;
                            }
                            final String a = this.a(this.c.getString("redirect_url"));
                            if (!this.c.has("video")) {
                                break Label_0372;
                            }
                            final String d = this.d(this.c.getString("video"));
                            final String a2 = this.a(string, this.g);
                            if (this.c.has("ad_target")) {
                                final AppLovinAdInternal$AdTarget appLovinAdInternal$AdTarget = AppLovinAdInternal$AdTarget.valueOf(this.c.getString("ad_target").toUpperCase());
                                this.a(new AppLovinAdInternal(a2, appLovinAdSize, a, s, d, appLovinAdInternal$AdTarget));
                                return;
                            }
                        }
                        catch (JSONException ex) {
                            this.f.e(this.d, "Unable to parse ad service response", (Throwable)ex);
                            this.b();
                            return;
                        }
                        catch (IllegalArgumentException ex2) {
                            this.f.e(this.d, "Ad response is not valid", ex2);
                            this.b();
                            return;
                        }
                        final AppLovinAdInternal$AdTarget appLovinAdInternal$AdTarget = AppLovinAdInternal$AdTarget.DEFAULT;
                        continue;
                    }
                }
                final String d = null;
                continue;
            }
        }
        this.f.e(this.d, "No HTML recieved for requseted ad");
        this.b();
    }
}
