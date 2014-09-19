package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import java.net.*;
import java.io.*;
import org.json.*;

class k
{
    private final AppLovinSdkImpl a;
    private final AppLovinLogger b;
    
    k(final AppLovinSdkImpl a) {
        super();
        this.a = a;
        this.b = a.getLogger();
    }
    
    private int a(final Throwable t) {
        if (t instanceof SocketTimeoutException) {
            return -102;
        }
        if (t instanceof IOException) {
            final String message = t.getMessage();
            if (message != null && message.toLowerCase().contains("authentication challenge")) {
                return 401;
            }
            return -100;
        }
        else {
            if (t instanceof JSONException) {
                return -104;
            }
            return 0;
        }
    }
    
    private HttpURLConnection a(final String spec, final String requestMethod, final int n) {
        final HttpURLConnection httpURLConnection = (HttpURLConnection)new URL(spec).openConnection();
        httpURLConnection.setRequestMethod(requestMethod);
        int intValue;
        if (n < 0) {
            intValue = (int)this.a.a(v.v);
        }
        else {
            intValue = n;
        }
        httpURLConnection.setConnectTimeout(intValue);
        int intValue2;
        if (n < 0) {
            intValue2 = (int)this.a.a(v.w);
        }
        else {
            intValue2 = n;
        }
        httpURLConnection.setReadTimeout(intValue2);
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setAllowUserInteraction(false);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }
    
    private static void a(final InputStream inputStream) {
        if (inputStream == null) {
            return;
        }
        try {
            inputStream.close();
        }
        catch (Exception ex) {}
    }
    
    private void a(final String str, final int n, final String s, final l l) {
        this.b.d("ConnectionManager", n + " received from from \"" + s + "\": " + str);
        if (n >= 200 && n < 300) {
            JSONObject jsonObject = new JSONObject();
            if (n != 204 && str != null && str.length() > 2) {
                jsonObject = new JSONObject(str);
            }
            l.a(jsonObject, n);
            return;
        }
        this.b.e("ConnectionManager", n + " error received from \"" + s + "\"");
        l.a(n);
    }
    
    private void a(final String str, final String str2, final int i, final long n) {
        this.b.i("ConnectionManager", "Succesfull " + str + " returned " + i + " in " + (System.currentTimeMillis() - n) / 1000.0f + " s" + " over " + m.a(this.a) + " to \"" + str2 + "\"");
    }
    
    private void a(final String str, final String str2, final int i, final long n, final Throwable t) {
        this.b.e("ConnectionManager", "Failed " + str + " returned " + i + " in " + (System.currentTimeMillis() - n) / 1000.0f + " s" + " over " + m.a(this.a) + " to \"" + str2 + "\"", t);
    }
    
    private static void a(final HttpURLConnection httpURLConnection) {
        if (httpURLConnection == null) {
            return;
        }
        try {
            httpURLConnection.disconnect();
        }
        catch (Exception ex) {}
    }
    
    void a(final String s, final int n, final l l) {
        this.a(s, "GET", n, null, l);
    }
    
    void a(final String s, final l l) {
        this.a(s, -1, l);
    }
    
    void a(final String p0, final String p1, final int p2, final JSONObject p3, final l p4) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     1: ifnonnull       14
        //     4: new             Ljava/lang/IllegalArgumentException;
        //     7: dup            
        //     8: ldc             "No endpoint specified"
        //    10: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //    13: athrow         
        //    14: aload_2        
        //    15: ifnonnull       28
        //    18: new             Ljava/lang/IllegalArgumentException;
        //    21: dup            
        //    22: ldc             "No method specified"
        //    24: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //    27: athrow         
        //    28: aload           5
        //    30: ifnonnull       43
        //    33: new             Ljava/lang/IllegalArgumentException;
        //    36: dup            
        //    37: ldc             "No callback specified"
        //    39: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //    42: athrow         
        //    43: invokestatic    java/lang/System.currentTimeMillis:()J
        //    46: lstore          6
        //    48: iconst_0       
        //    49: istore          8
        //    51: aload_0        
        //    52: getfield        com/applovin/impl/sdk/k.b:Lcom/applovin/sdk/AppLovinLogger;
        //    55: ldc             "ConnectionManager"
        //    57: new             Ljava/lang/StringBuilder;
        //    60: dup            
        //    61: invokespecial   java/lang/StringBuilder.<init>:()V
        //    64: ldc             "Sending "
        //    66: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    69: aload_2        
        //    70: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    73: ldc             " request to \""
        //    75: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    78: aload_1        
        //    79: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    82: ldc             "\"..."
        //    84: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    87: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    90: invokeinterface com/applovin/sdk/AppLovinLogger.i:(Ljava/lang/String;Ljava/lang/String;)V
        //    95: aload_0        
        //    96: aload_1        
        //    97: aload_2        
        //    98: iload_3        
        //    99: invokespecial   com/applovin/impl/sdk/k.a:(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
        //   102: astore          17
        //   104: aload           4
        //   106: ifnull          218
        //   109: aload           4
        //   111: invokevirtual   org/json/JSONObject.toString:()Ljava/lang/String;
        //   114: astore          25
        //   116: aload_0        
        //   117: getfield        com/applovin/impl/sdk/k.b:Lcom/applovin/sdk/AppLovinLogger;
        //   120: ldc             "ConnectionManager"
        //   122: new             Ljava/lang/StringBuilder;
        //   125: dup            
        //   126: invokespecial   java/lang/StringBuilder.<init>:()V
        //   129: ldc             "Request to \""
        //   131: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   134: aload_1        
        //   135: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   138: ldc             "\" is "
        //   140: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   143: aload           25
        //   145: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   148: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   151: invokeinterface com/applovin/sdk/AppLovinLogger.d:(Ljava/lang/String;Ljava/lang/String;)V
        //   156: aload           17
        //   158: ldc             "Content-Type"
        //   160: ldc             "application/json; charset=utf-8"
        //   162: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //   165: aload           17
        //   167: iconst_1       
        //   168: invokevirtual   java/net/HttpURLConnection.setDoOutput:(Z)V
        //   171: aload           17
        //   173: aload           25
        //   175: invokevirtual   java/lang/String.getBytes:()[B
        //   178: arraylength    
        //   179: invokevirtual   java/net/HttpURLConnection.setFixedLengthStreamingMode:(I)V
        //   182: new             Ljava/io/PrintWriter;
        //   185: dup            
        //   186: new             Ljava/io/OutputStreamWriter;
        //   189: dup            
        //   190: aload           17
        //   192: invokevirtual   java/net/HttpURLConnection.getOutputStream:()Ljava/io/OutputStream;
        //   195: ldc_w           "UTF8"
        //   198: invokespecial   java/io/OutputStreamWriter.<init>:(Ljava/io/OutputStream;Ljava/lang/String;)V
        //   201: invokespecial   java/io/PrintWriter.<init>:(Ljava/io/Writer;)V
        //   204: astore          26
        //   206: aload           26
        //   208: aload           25
        //   210: invokevirtual   java/io/PrintWriter.print:(Ljava/lang/String;)V
        //   213: aload           26
        //   215: invokevirtual   java/io/PrintWriter.close:()V
        //   218: aload           17
        //   220: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //   223: istore          19
        //   225: iload           19
        //   227: ifle            283
        //   230: aload           17
        //   232: invokevirtual   java/net/HttpURLConnection.getInputStream:()Ljava/io/InputStream;
        //   235: astore          22
        //   237: aload           22
        //   239: invokestatic    com/applovin/impl/sdk/m.a:(Ljava/io/InputStream;)Ljava/lang/String;
        //   242: astore          24
        //   244: aload_0        
        //   245: aload_2        
        //   246: aload_1        
        //   247: iload           19
        //   249: lload           6
        //   251: invokespecial   com/applovin/impl/sdk/k.a:(Ljava/lang/String;Ljava/lang/String;IJ)V
        //   254: aload_0        
        //   255: aload           24
        //   257: aload           17
        //   259: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //   262: aload_1        
        //   263: aload           5
        //   265: invokespecial   com/applovin/impl/sdk/k.a:(Ljava/lang/String;ILjava/lang/String;Lcom/applovin/impl/sdk/l;)V
        //   268: aload           22
        //   270: astore          21
        //   272: aload           21
        //   274: invokestatic    com/applovin/impl/sdk/k.a:(Ljava/io/InputStream;)V
        //   277: aload           17
        //   279: invokestatic    com/applovin/impl/sdk/k.a:(Ljava/net/HttpURLConnection;)V
        //   282: return         
        //   283: aload_0        
        //   284: aload_2        
        //   285: aload_1        
        //   286: iload           19
        //   288: lload           6
        //   290: aconst_null    
        //   291: invokespecial   com/applovin/impl/sdk/k.a:(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V
        //   294: aload           5
        //   296: iload           19
        //   298: invokeinterface com/applovin/impl/sdk/l.a:(I)V
        //   303: aconst_null    
        //   304: astore          21
        //   306: goto            272
        //   309: astore          12
        //   311: aload           12
        //   313: astore          13
        //   315: aconst_null    
        //   316: astore          14
        //   318: aconst_null    
        //   319: astore          15
        //   321: iload           8
        //   323: ifne            366
        //   326: aload_0        
        //   327: aload           13
        //   329: invokespecial   com/applovin/impl/sdk/k.a:(Ljava/lang/Throwable;)I
        //   332: istore          16
        //   334: aload_0        
        //   335: aload_2        
        //   336: aload_1        
        //   337: iload           16
        //   339: lload           6
        //   341: aload           13
        //   343: invokespecial   com/applovin/impl/sdk/k.a:(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V
        //   346: aload           5
        //   348: iload           16
        //   350: invokeinterface com/applovin/impl/sdk/l.a:(I)V
        //   355: aload           14
        //   357: invokestatic    com/applovin/impl/sdk/k.a:(Ljava/io/InputStream;)V
        //   360: aload           15
        //   362: invokestatic    com/applovin/impl/sdk/k.a:(Ljava/net/HttpURLConnection;)V
        //   365: return         
        //   366: iload           8
        //   368: istore          16
        //   370: goto            334
        //   373: astore          9
        //   375: aconst_null    
        //   376: astore          10
        //   378: aconst_null    
        //   379: astore          11
        //   381: aload           10
        //   383: invokestatic    com/applovin/impl/sdk/k.a:(Ljava/io/InputStream;)V
        //   386: aload           11
        //   388: invokestatic    com/applovin/impl/sdk/k.a:(Ljava/net/HttpURLConnection;)V
        //   391: aload           9
        //   393: athrow         
        //   394: astore          9
        //   396: aload           17
        //   398: astore          11
        //   400: aconst_null    
        //   401: astore          10
        //   403: goto            381
        //   406: astore          9
        //   408: aload           22
        //   410: astore          10
        //   412: aload           17
        //   414: astore          11
        //   416: goto            381
        //   419: astore          9
        //   421: aload           14
        //   423: astore          10
        //   425: aload           15
        //   427: astore          11
        //   429: goto            381
        //   432: astore          18
        //   434: aload           18
        //   436: astore          13
        //   438: aload           17
        //   440: astore          15
        //   442: iconst_0       
        //   443: istore          8
        //   445: aconst_null    
        //   446: astore          14
        //   448: goto            321
        //   451: astore          20
        //   453: aload           20
        //   455: astore          13
        //   457: aload           17
        //   459: astore          15
        //   461: iload           19
        //   463: istore          8
        //   465: aconst_null    
        //   466: astore          14
        //   468: goto            321
        //   471: astore          23
        //   473: aload           17
        //   475: astore          15
        //   477: aload           22
        //   479: astore          14
        //   481: aload           23
        //   483: astore          13
        //   485: iload           19
        //   487: istore          8
        //   489: goto            321
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  51     104    309    321    Ljava/lang/Throwable;
        //  51     104    373    381    Any
        //  109    218    432    451    Ljava/lang/Throwable;
        //  109    218    394    406    Any
        //  218    225    432    451    Ljava/lang/Throwable;
        //  218    225    394    406    Any
        //  230    237    451    471    Ljava/lang/Throwable;
        //  230    237    394    406    Any
        //  237    268    471    492    Ljava/lang/Throwable;
        //  237    268    406    419    Any
        //  283    303    451    471    Ljava/lang/Throwable;
        //  283    303    394    406    Any
        //  326    334    419    432    Any
        //  334    355    419    432    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 0, Size: 0
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertLocalVariables(AstBuilder.java:3037)
        //     at com.strobel.decompiler.ast.AstBuilder.performStackAnalysis(AstBuilder.java:2446)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:109)
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
    
    void a(final String s, final JSONObject jsonObject, final l l) {
        this.a(s, "PUT", -1, jsonObject, l);
    }
    
    void b(final String s, final JSONObject jsonObject, final l l) {
        this.a(s, "POST", -1, jsonObject, l);
    }
}
