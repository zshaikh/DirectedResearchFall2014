package com.vungle.sdk;

import java.util.regex.*;
import android.os.*;
import java.io.*;

public final class ag
{
    private static final Pattern a;
    private static final ag b;
    
    static {
        a = Pattern.compile("\\bcharset=([\\w\\-]+)\\b");
        b = new ag();
        if (Build$VERSION.SDK_INT < 8) {
            System.setProperty("http.keepAlive", "false");
        }
    }
    
    public static ag a() {
        return ag.b;
    }
    
    public static aj a(final ah p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   com/vungle/sdk/ah.i:()V
        //     4: aload_0        
        //     5: invokevirtual   com/vungle/sdk/ah.c:()Ljava/lang/String;
        //     8: astore          13
        //    10: aload_0        
        //    11: invokevirtual   com/vungle/sdk/ah.b:()Lcom/vungle/sdk/ah$a;
        //    14: astore          14
        //    16: new             Ljava/lang/StringBuilder;
        //    19: dup            
        //    20: invokespecial   java/lang/StringBuilder.<init>:()V
        //    23: aload           14
        //    25: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    28: ldc             " "
        //    30: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    33: aload           13
        //    35: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    38: pop            
        //    39: new             Ljava/net/URL;
        //    42: dup            
        //    43: aload_0        
        //    44: invokevirtual   com/vungle/sdk/ah.c:()Ljava/lang/String;
        //    47: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //    50: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
        //    53: checkcast       Ljava/net/HttpURLConnection;
        //    56: astore          4
        //    58: aload           4
        //    60: sipush          30000
        //    63: invokevirtual   java/net/HttpURLConnection.setConnectTimeout:(I)V
        //    66: aload           4
        //    68: sipush          30000
        //    71: invokevirtual   java/net/HttpURLConnection.setReadTimeout:(I)V
        //    74: aload           4
        //    76: iconst_0       
        //    77: invokevirtual   java/net/HttpURLConnection.setUseCaches:(Z)V
        //    80: aload           14
        //    82: ifnull          95
        //    85: aload           4
        //    87: aload           14
        //    89: invokevirtual   com/vungle/sdk/ah$a.toString:()Ljava/lang/String;
        //    92: invokevirtual   java/net/HttpURLConnection.setRequestMethod:(Ljava/lang/String;)V
        //    95: aload_0        
        //    96: invokevirtual   com/vungle/sdk/ah.f:()Landroid/os/Bundle;
        //    99: astore          19
        //   101: aload           19
        //   103: ifnull          294
        //   106: aload           19
        //   108: invokevirtual   android/os/Bundle.keySet:()Ljava/util/Set;
        //   111: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //   116: astore          20
        //   118: aload           20
        //   120: invokeinterface java/util/Iterator.hasNext:()Z
        //   125: ifeq            294
        //   128: aload           20
        //   130: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   135: checkcast       Ljava/lang/String;
        //   138: astore          32
        //   140: aload           19
        //   142: aload           32
        //   144: invokevirtual   android/os/Bundle.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   147: astore          33
        //   149: aload           33
        //   151: ifnonnull       225
        //   154: aload           19
        //   156: aload           32
        //   158: invokevirtual   android/os/Bundle.getStringArray:(Ljava/lang/String;)[Ljava/lang/String;
        //   161: astore          34
        //   163: aload           34
        //   165: arraylength    
        //   166: istore          35
        //   168: iconst_0       
        //   169: istore          36
        //   171: iload           36
        //   173: iload           35
        //   175: if_icmpge       118
        //   178: aload           34
        //   180: iload           36
        //   182: aaload         
        //   183: astore          37
        //   185: new             Ljava/lang/StringBuilder;
        //   188: dup            
        //   189: ldc             "Request header: "
        //   191: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   194: aload           32
        //   196: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   199: ldc             ": "
        //   201: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   204: aload           37
        //   206: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   209: pop            
        //   210: aload           4
        //   212: aload           32
        //   214: aload           37
        //   216: invokevirtual   java/net/HttpURLConnection.addRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //   219: iinc            36, 1
        //   222: goto            171
        //   225: new             Ljava/lang/StringBuilder;
        //   228: dup            
        //   229: ldc             "Request header: "
        //   231: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   234: aload           32
        //   236: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   239: ldc             ": "
        //   241: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   244: aload           33
        //   246: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   249: pop            
        //   250: aload           4
        //   252: aload           32
        //   254: aload           33
        //   256: invokevirtual   java/net/HttpURLConnection.addRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //   259: goto            118
        //   262: astore          18
        //   264: aload           4
        //   266: astore_2       
        //   267: sipush          601
        //   270: invokestatic    com/vungle/sdk/aj.a:(I)Lcom/vungle/sdk/aj;
        //   273: astore          6
        //   275: aload           6
        //   277: astore          7
        //   279: aload_2        
        //   280: ifnull          626
        //   283: aload_2        
        //   284: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   287: aload           7
        //   289: astore          8
        //   291: aload           8
        //   293: areturn        
        //   294: aload_0        
        //   295: invokevirtual   com/vungle/sdk/ah.h:()Ljava/lang/String;
        //   298: astore          21
        //   300: aload           21
        //   302: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   305: ifne            327
        //   308: aload           4
        //   310: iconst_1       
        //   311: invokevirtual   java/net/HttpURLConnection.setDoOutput:(Z)V
        //   314: aload           4
        //   316: invokevirtual   java/net/HttpURLConnection.getOutputStream:()Ljava/io/OutputStream;
        //   319: aload           21
        //   321: invokevirtual   java/lang/String.getBytes:()[B
        //   324: invokevirtual   java/io/OutputStream.write:([B)V
        //   327: aload           4
        //   329: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //   332: istore          22
        //   334: aload           4
        //   336: invokevirtual   java/net/HttpURLConnection.getContentType:()Ljava/lang/String;
        //   339: astore          23
        //   341: aconst_null    
        //   342: astore          24
        //   344: aload           23
        //   346: ifnull          382
        //   349: getstatic       com/vungle/sdk/ag.a:Ljava/util/regex/Pattern;
        //   352: aload           23
        //   354: invokevirtual   java/util/regex/Pattern.matcher:(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
        //   357: astore          25
        //   359: aload           25
        //   361: invokevirtual   java/util/regex/Matcher.find:()Z
        //   364: istore          26
        //   366: aconst_null    
        //   367: astore          24
        //   369: iload           26
        //   371: ifeq            382
        //   374: aload           25
        //   376: iconst_1       
        //   377: invokevirtual   java/util/regex/Matcher.group:(I)Ljava/lang/String;
        //   380: astore          24
        //   382: new             Ljava/lang/StringBuilder;
        //   385: dup            
        //   386: ldc             "Response code: "
        //   388: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   391: iload           22
        //   393: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   396: ldc             "; content-type: "
        //   398: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   401: aload           23
        //   403: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   406: ldc             "; charset: "
        //   408: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   411: aload           24
        //   413: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   416: ldc             " ("
        //   418: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   421: aload           14
        //   423: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   426: ldc             " "
        //   428: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   431: aload           13
        //   433: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   436: ldc             ")"
        //   438: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   441: pop            
        //   442: iload           22
        //   444: bipush          100
        //   446: idiv           
        //   447: iconst_3       
        //   448: if_icmpgt       497
        //   451: iconst_1       
        //   452: istore          28
        //   454: iload           28
        //   456: ifeq            503
        //   459: aload           4
        //   461: invokevirtual   java/net/HttpURLConnection.getInputStream:()Ljava/io/InputStream;
        //   464: astore          29
        //   466: iload           22
        //   468: aload           29
        //   470: aload           24
        //   472: invokestatic    com/vungle/sdk/ag.a:(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
        //   475: invokestatic    com/vungle/sdk/aj.a:(ILjava/lang/String;)Lcom/vungle/sdk/aj;
        //   478: astore          30
        //   480: aload           30
        //   482: astore          8
        //   484: aload           4
        //   486: ifnull          291
        //   489: aload           4
        //   491: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   494: aload           8
        //   496: areturn        
        //   497: iconst_0       
        //   498: istore          28
        //   500: goto            454
        //   503: aload           4
        //   505: invokevirtual   java/net/HttpURLConnection.getErrorStream:()Ljava/io/InputStream;
        //   508: astore          31
        //   510: aload           31
        //   512: astore          29
        //   514: goto            466
        //   517: astore          11
        //   519: aconst_null    
        //   520: astore_2       
        //   521: sipush          602
        //   524: invokestatic    com/vungle/sdk/aj.a:(I)Lcom/vungle/sdk/aj;
        //   527: astore          12
        //   529: aload           12
        //   531: astore          7
        //   533: aload_2        
        //   534: ifnull          626
        //   537: aload_2        
        //   538: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   541: aload           7
        //   543: areturn        
        //   544: astore          9
        //   546: aconst_null    
        //   547: astore_2       
        //   548: sipush          600
        //   551: invokestatic    com/vungle/sdk/aj.a:(I)Lcom/vungle/sdk/aj;
        //   554: astore          10
        //   556: aload           10
        //   558: astore          7
        //   560: aload_2        
        //   561: ifnull          626
        //   564: aload_2        
        //   565: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   568: aload           7
        //   570: areturn        
        //   571: astore          5
        //   573: aconst_null    
        //   574: astore          4
        //   576: aload           4
        //   578: ifnull          586
        //   581: aload           4
        //   583: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   586: aload           5
        //   588: athrow         
        //   589: astore          5
        //   591: goto            576
        //   594: astore_3       
        //   595: aload_2        
        //   596: astore          4
        //   598: aload_3        
        //   599: astore          5
        //   601: goto            576
        //   604: astore          17
        //   606: aload           4
        //   608: astore_2       
        //   609: goto            548
        //   612: astore          16
        //   614: aload           4
        //   616: astore_2       
        //   617: goto            521
        //   620: astore_1       
        //   621: aconst_null    
        //   622: astore_2       
        //   623: goto            267
        //   626: aload           7
        //   628: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  0      58     620    626    Ljava/net/MalformedURLException;
        //  0      58     517    521    Ljava/net/SocketTimeoutException;
        //  0      58     544    548    Ljava/io/IOException;
        //  0      58     571    576    Any
        //  58     80     262    267    Ljava/net/MalformedURLException;
        //  58     80     612    620    Ljava/net/SocketTimeoutException;
        //  58     80     604    612    Ljava/io/IOException;
        //  58     80     589    594    Any
        //  85     95     262    267    Ljava/net/MalformedURLException;
        //  85     95     612    620    Ljava/net/SocketTimeoutException;
        //  85     95     604    612    Ljava/io/IOException;
        //  85     95     589    594    Any
        //  95     101    262    267    Ljava/net/MalformedURLException;
        //  95     101    612    620    Ljava/net/SocketTimeoutException;
        //  95     101    604    612    Ljava/io/IOException;
        //  95     101    589    594    Any
        //  106    118    262    267    Ljava/net/MalformedURLException;
        //  106    118    612    620    Ljava/net/SocketTimeoutException;
        //  106    118    604    612    Ljava/io/IOException;
        //  106    118    589    594    Any
        //  118    149    262    267    Ljava/net/MalformedURLException;
        //  118    149    612    620    Ljava/net/SocketTimeoutException;
        //  118    149    604    612    Ljava/io/IOException;
        //  118    149    589    594    Any
        //  154    168    262    267    Ljava/net/MalformedURLException;
        //  154    168    612    620    Ljava/net/SocketTimeoutException;
        //  154    168    604    612    Ljava/io/IOException;
        //  154    168    589    594    Any
        //  178    219    262    267    Ljava/net/MalformedURLException;
        //  178    219    612    620    Ljava/net/SocketTimeoutException;
        //  178    219    604    612    Ljava/io/IOException;
        //  178    219    589    594    Any
        //  225    259    262    267    Ljava/net/MalformedURLException;
        //  225    259    612    620    Ljava/net/SocketTimeoutException;
        //  225    259    604    612    Ljava/io/IOException;
        //  225    259    589    594    Any
        //  267    275    594    604    Any
        //  294    327    262    267    Ljava/net/MalformedURLException;
        //  294    327    612    620    Ljava/net/SocketTimeoutException;
        //  294    327    604    612    Ljava/io/IOException;
        //  294    327    589    594    Any
        //  327    341    262    267    Ljava/net/MalformedURLException;
        //  327    341    612    620    Ljava/net/SocketTimeoutException;
        //  327    341    604    612    Ljava/io/IOException;
        //  327    341    589    594    Any
        //  349    366    262    267    Ljava/net/MalformedURLException;
        //  349    366    612    620    Ljava/net/SocketTimeoutException;
        //  349    366    604    612    Ljava/io/IOException;
        //  349    366    589    594    Any
        //  374    382    262    267    Ljava/net/MalformedURLException;
        //  374    382    612    620    Ljava/net/SocketTimeoutException;
        //  374    382    604    612    Ljava/io/IOException;
        //  374    382    589    594    Any
        //  382    451    262    267    Ljava/net/MalformedURLException;
        //  382    451    612    620    Ljava/net/SocketTimeoutException;
        //  382    451    604    612    Ljava/io/IOException;
        //  382    451    589    594    Any
        //  459    466    262    267    Ljava/net/MalformedURLException;
        //  459    466    612    620    Ljava/net/SocketTimeoutException;
        //  459    466    604    612    Ljava/io/IOException;
        //  459    466    589    594    Any
        //  466    480    262    267    Ljava/net/MalformedURLException;
        //  466    480    612    620    Ljava/net/SocketTimeoutException;
        //  466    480    604    612    Ljava/io/IOException;
        //  466    480    589    594    Any
        //  503    510    262    267    Ljava/net/MalformedURLException;
        //  503    510    612    620    Ljava/net/SocketTimeoutException;
        //  503    510    604    612    Ljava/io/IOException;
        //  503    510    589    594    Any
        //  521    529    594    604    Any
        //  548    556    594    604    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0267:
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
    
    private static String a(final InputStream p0, final String p1) throws IOException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //     4: ifeq            79
        //     7: new             Ljava/io/InputStreamReader;
        //    10: dup            
        //    11: aload_0        
        //    12: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;)V
        //    15: astore          6
        //    17: new             Ljava/io/BufferedReader;
        //    20: dup            
        //    21: aload           6
        //    23: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;)V
        //    26: astore          7
        //    28: new             Ljava/lang/StringBuilder;
        //    31: dup            
        //    32: invokespecial   java/lang/StringBuilder.<init>:()V
        //    35: astore          8
        //    37: aload           7
        //    39: invokevirtual   java/io/BufferedReader.read:()I
        //    42: istore          9
        //    44: iload           9
        //    46: iconst_m1      
        //    47: if_icmpeq       102
        //    50: aload           8
        //    52: iload           9
        //    54: i2c            
        //    55: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //    58: pop            
        //    59: goto            37
        //    62: astore_3       
        //    63: aload           7
        //    65: astore          4
        //    67: aload           4
        //    69: ifnull          77
        //    72: aload           4
        //    74: invokevirtual   java/io/BufferedReader.close:()V
        //    77: aload_3        
        //    78: athrow         
        //    79: new             Ljava/io/InputStreamReader;
        //    82: dup            
        //    83: aload_0        
        //    84: aload_1        
        //    85: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;Ljava/lang/String;)V
        //    88: astore          6
        //    90: goto            17
        //    93: astore_2       
        //    94: aload_2        
        //    95: astore_3       
        //    96: aconst_null    
        //    97: astore          4
        //    99: goto            67
        //   102: aload           8
        //   104: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   107: astore          11
        //   109: aload           7
        //   111: invokevirtual   java/io/BufferedReader.close:()V
        //   114: aload           11
        //   116: areturn        
        //   117: astore          12
        //   119: ldc             "VungleNetwork"
        //   121: ldc_w           "Error closing input stream"
        //   124: aload           12
        //   126: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   129: aload           11
        //   131: areturn        
        //   132: astore          5
        //   134: ldc             "VungleNetwork"
        //   136: ldc_w           "Error closing input stream"
        //   139: aload           5
        //   141: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   144: goto            77
        //    Exceptions:
        //  throws java.io.IOException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      17     93     102    Any
        //  17     28     93     102    Any
        //  28     37     62     67     Any
        //  37     44     62     67     Any
        //  50     59     62     67     Any
        //  72     77     132    147    Ljava/io/IOException;
        //  79     90     93     102    Any
        //  102    109    62     67     Any
        //  109    114    117    132    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0077:
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
}
