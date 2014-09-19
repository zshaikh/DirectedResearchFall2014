package com.vungle.sdk;

import java.net.*;
import java.io.*;
import java.util.*;

final class q
{
    public static String a(final String p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/vungle/sdk/IVungleConstants.a:Ljava/lang/String;
        //     3: pop            
        //     4: getstatic       com/vungle/sdk/IVungleConstants.a:Ljava/lang/String;
        //     7: pop            
        //     8: new             Ljava/net/URL;
        //    11: dup            
        //    12: aload_0        
        //    13: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //    16: invokestatic    com/vungle/sdk/q.a:(Ljava/net/URL;)Ljava/net/HttpURLConnection;
        //    19: astore          14
        //    21: aload           14
        //    23: getstatic       com/vungle/sdk/ah$a.c:Lcom/vungle/sdk/ah$a;
        //    26: invokevirtual   com/vungle/sdk/ah$a.toString:()Ljava/lang/String;
        //    29: invokevirtual   java/net/HttpURLConnection.setRequestMethod:(Ljava/lang/String;)V
        //    32: aload_1        
        //    33: ifnull          285
        //    36: aload_1        
        //    37: invokevirtual   java/lang/String.length:()I
        //    40: ifle            285
        //    43: iconst_1       
        //    44: istore          17
        //    46: iload           17
        //    48: ifeq            60
        //    51: aload           14
        //    53: ldc             "Content-Type"
        //    55: ldc             "application/json"
        //    57: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //    60: aload           14
        //    62: ldc             "User-Agent"
        //    64: ldc             "VungleDroid/1.3.10"
        //    66: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //    69: aload           14
        //    71: ldc             "X-VUNGLE-TIMEZONE"
        //    73: invokestatic    com/vungle/sdk/VungleUtil.c:()Ljava/lang/String;
        //    76: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //    79: aload           14
        //    81: ldc             "X-VUNGLE-LANGUAGE"
        //    83: invokestatic    com/vungle/sdk/VungleUtil.b:()Ljava/lang/String;
        //    86: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //    89: aload           14
        //    91: ldc             "X-VUNGLE-BUNDLE-ID"
        //    93: invokestatic    com/vungle/sdk/n.e:()Landroid/content/Context;
        //    96: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //    99: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //   102: invokestatic    com/vungle/sdk/n.e:()Landroid/content/Context;
        //   105: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //   108: pop            
        //   109: iload           17
        //   111: ifeq            132
        //   114: aload           14
        //   116: iconst_1       
        //   117: invokevirtual   java/net/HttpURLConnection.setDoOutput:(Z)V
        //   120: aload           14
        //   122: invokevirtual   java/net/HttpURLConnection.getOutputStream:()Ljava/io/OutputStream;
        //   125: aload_1        
        //   126: invokevirtual   java/lang/String.getBytes:()[B
        //   129: invokevirtual   java/io/OutputStream.write:([B)V
        //   132: getstatic       com/vungle/sdk/IVungleConstants.a:Ljava/lang/String;
        //   135: pop            
        //   136: new             Ljava/lang/StringBuilder;
        //   139: dup            
        //   140: ldc             "POST Response Code : "
        //   142: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   145: aload           14
        //   147: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //   150: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   153: pop            
        //   154: aload           14
        //   156: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //   159: sipush          200
        //   162: if_icmpne       481
        //   165: new             Ljava/io/BufferedReader;
        //   168: dup            
        //   169: new             Ljava/io/InputStreamReader;
        //   172: dup            
        //   173: aload           14
        //   175: invokevirtual   java/net/HttpURLConnection.getInputStream:()Ljava/io/InputStream;
        //   178: ldc             "UTF-8"
        //   180: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;Ljava/lang/String;)V
        //   183: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;)V
        //   186: astore_3       
        //   187: sipush          1024
        //   190: newarray        C
        //   192: astore          23
        //   194: new             Ljava/lang/StringBuilder;
        //   197: dup            
        //   198: invokespecial   java/lang/StringBuilder.<init>:()V
        //   201: astore          24
        //   203: aload_3        
        //   204: aload           23
        //   206: invokevirtual   java/io/BufferedReader.read:([C)I
        //   209: istore          25
        //   211: iload           25
        //   213: iconst_m1      
        //   214: if_icmpeq       291
        //   217: aload           24
        //   219: aload           23
        //   221: iconst_0       
        //   222: iload           25
        //   224: invokevirtual   java/lang/StringBuilder.append:([CII)Ljava/lang/StringBuilder;
        //   227: pop            
        //   228: goto            203
        //   231: astore          22
        //   233: aconst_null    
        //   234: astore          5
        //   236: aload           22
        //   238: astore_2       
        //   239: aload           14
        //   241: astore          4
        //   243: getstatic       com/vungle/sdk/IVungleConstants.b:Ljava/lang/String;
        //   246: aload_2        
        //   247: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   250: aload_3        
        //   251: ifnull          258
        //   254: aload_3        
        //   255: invokevirtual   java/io/BufferedReader.close:()V
        //   258: aload           4
        //   260: ifnull          467
        //   263: aload           4
        //   265: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   268: aload           5
        //   270: astore          9
        //   272: aload           9
        //   274: ifnonnull       282
        //   277: getstatic       com/vungle/sdk/IVungleConstants.i:Ljava/lang/String;
        //   280: astore          9
        //   282: aload           9
        //   284: areturn        
        //   285: iconst_0       
        //   286: istore          17
        //   288: goto            46
        //   291: aload           24
        //   293: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   296: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //   299: astore          27
        //   301: aload           27
        //   303: astore          28
        //   305: getstatic       com/vungle/sdk/IVungleConstants.a:Ljava/lang/String;
        //   308: pop            
        //   309: aload_3        
        //   310: ifnull          317
        //   313: aload_3        
        //   314: invokevirtual   java/io/BufferedReader.close:()V
        //   317: aload           14
        //   319: ifnull          474
        //   322: aload           14
        //   324: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   327: aload           28
        //   329: astore          9
        //   331: goto            272
        //   334: astore          31
        //   336: getstatic       com/vungle/sdk/IVungleConstants.b:Ljava/lang/String;
        //   339: pop            
        //   340: goto            317
        //   343: astore          10
        //   345: getstatic       com/vungle/sdk/IVungleConstants.b:Ljava/lang/String;
        //   348: pop            
        //   349: goto            258
        //   352: astore          6
        //   354: aconst_null    
        //   355: astore_3       
        //   356: aconst_null    
        //   357: astore          4
        //   359: aload_3        
        //   360: ifnull          367
        //   363: aload_3        
        //   364: invokevirtual   java/io/BufferedReader.close:()V
        //   367: aload           4
        //   369: ifnull          377
        //   372: aload           4
        //   374: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   377: aload           6
        //   379: athrow         
        //   380: astore          7
        //   382: getstatic       com/vungle/sdk/IVungleConstants.b:Ljava/lang/String;
        //   385: pop            
        //   386: goto            367
        //   389: astore          16
        //   391: aload           14
        //   393: astore          4
        //   395: aload           16
        //   397: astore          6
        //   399: aconst_null    
        //   400: astore_3       
        //   401: goto            359
        //   404: astore          21
        //   406: aload           14
        //   408: astore          4
        //   410: aload           21
        //   412: astore          6
        //   414: goto            359
        //   417: astore          6
        //   419: goto            359
        //   422: astore_2       
        //   423: aconst_null    
        //   424: astore_3       
        //   425: aconst_null    
        //   426: astore          4
        //   428: aconst_null    
        //   429: astore          5
        //   431: goto            243
        //   434: astore          15
        //   436: aload           14
        //   438: astore          4
        //   440: aload           15
        //   442: astore_2       
        //   443: aconst_null    
        //   444: astore_3       
        //   445: aconst_null    
        //   446: astore          5
        //   448: goto            243
        //   451: astore          29
        //   453: aload           28
        //   455: astore          5
        //   457: aload           14
        //   459: astore          4
        //   461: aload           29
        //   463: astore_2       
        //   464: goto            243
        //   467: aload           5
        //   469: astore          9
        //   471: goto            272
        //   474: aload           28
        //   476: astore          9
        //   478: goto            272
        //   481: aconst_null    
        //   482: astore_3       
        //   483: aconst_null    
        //   484: astore          28
        //   486: goto            309
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      21     422    434    Ljava/io/IOException;
        //  0      21     352    359    Any
        //  21     32     434    451    Ljava/io/IOException;
        //  21     32     389    404    Any
        //  36     43     434    451    Ljava/io/IOException;
        //  36     43     389    404    Any
        //  51     60     434    451    Ljava/io/IOException;
        //  51     60     389    404    Any
        //  60     109    434    451    Ljava/io/IOException;
        //  60     109    389    404    Any
        //  114    132    434    451    Ljava/io/IOException;
        //  114    132    389    404    Any
        //  132    187    434    451    Ljava/io/IOException;
        //  132    187    389    404    Any
        //  187    203    231    243    Ljava/io/IOException;
        //  187    203    404    417    Any
        //  203    211    231    243    Ljava/io/IOException;
        //  203    211    404    417    Any
        //  217    228    231    243    Ljava/io/IOException;
        //  217    228    404    417    Any
        //  243    250    417    422    Any
        //  254    258    343    352    Ljava/io/IOException;
        //  291    301    231    243    Ljava/io/IOException;
        //  291    301    404    417    Any
        //  305    309    451    467    Ljava/io/IOException;
        //  305    309    404    417    Any
        //  313    317    334    343    Ljava/io/IOException;
        //  363    367    380    389    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 230, Size: 230
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
    
    private static HttpURLConnection a(final URL url) throws IOException {
        final HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(30000);
        httpURLConnection.setUseCaches(false);
        return httpURLConnection;
    }
    
    public static ArrayList<String> a(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/util/ArrayList;
        //     3: dup            
        //     4: invokespecial   java/util/ArrayList.<init>:()V
        //     7: astore_1       
        //     8: new             Ljava/net/URL;
        //    11: dup            
        //    12: aload_0        
        //    13: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //    16: invokestatic    com/vungle/sdk/q.a:(Ljava/net/URL;)Ljava/net/HttpURLConnection;
        //    19: astore          12
        //    21: aload           12
        //    23: getstatic       com/vungle/sdk/ah$a.a:Lcom/vungle/sdk/ah$a;
        //    26: invokevirtual   com/vungle/sdk/ah$a.toString:()Ljava/lang/String;
        //    29: invokevirtual   java/net/HttpURLConnection.setRequestMethod:(Ljava/lang/String;)V
        //    32: aload           12
        //    34: invokevirtual   java/net/HttpURLConnection.connect:()V
        //    37: getstatic       com/vungle/sdk/IVungleConstants.a:Ljava/lang/String;
        //    40: pop            
        //    41: new             Ljava/lang/StringBuilder;
        //    44: dup            
        //    45: ldc             "GET Response Code : "
        //    47: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    50: aload           12
        //    52: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //    55: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    58: pop            
        //    59: aload_1        
        //    60: iconst_0       
        //    61: aload           12
        //    63: invokevirtual   java/net/HttpURLConnection.getResponseMessage:()Ljava/lang/String;
        //    66: invokevirtual   java/util/ArrayList.add:(ILjava/lang/Object;)V
        //    69: aload           12
        //    71: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //    74: sipush          200
        //    77: if_icmpne       337
        //    80: new             Ljava/io/BufferedReader;
        //    83: dup            
        //    84: new             Ljava/io/InputStreamReader;
        //    87: dup            
        //    88: aload           12
        //    90: invokevirtual   java/net/HttpURLConnection.getInputStream:()Ljava/io/InputStream;
        //    93: ldc             "UTF-8"
        //    95: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;Ljava/lang/String;)V
        //    98: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;)V
        //   101: astore_3       
        //   102: sipush          1024
        //   105: newarray        C
        //   107: astore          18
        //   109: new             Ljava/lang/StringBuilder;
        //   112: dup            
        //   113: invokespecial   java/lang/StringBuilder.<init>:()V
        //   116: astore          19
        //   118: aload_3        
        //   119: aload           18
        //   121: invokevirtual   java/io/BufferedReader.read:([C)I
        //   124: istore          20
        //   126: iload           20
        //   128: iconst_m1      
        //   129: if_icmpeq       182
        //   132: aload           19
        //   134: aload           18
        //   136: iconst_0       
        //   137: iload           20
        //   139: invokevirtual   java/lang/StringBuilder.append:([CII)Ljava/lang/StringBuilder;
        //   142: pop            
        //   143: goto            118
        //   146: astore          17
        //   148: aload           12
        //   150: astore          4
        //   152: aload           17
        //   154: astore_2       
        //   155: getstatic       com/vungle/sdk/IVungleConstants.b:Ljava/lang/String;
        //   158: aload_2        
        //   159: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   162: aload_3        
        //   163: ifnull          170
        //   166: aload_3        
        //   167: invokevirtual   java/io/BufferedReader.close:()V
        //   170: aload           4
        //   172: ifnull          180
        //   175: aload           4
        //   177: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   180: aload_1        
        //   181: areturn        
        //   182: aload_1        
        //   183: iconst_1       
        //   184: aload           19
        //   186: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   189: invokevirtual   java/util/ArrayList.add:(ILjava/lang/Object;)V
        //   192: getstatic       com/vungle/sdk/IVungleConstants.a:Ljava/lang/String;
        //   195: pop            
        //   196: aload_3        
        //   197: ifnull          204
        //   200: aload_3        
        //   201: invokevirtual   java/io/BufferedReader.close:()V
        //   204: aload           12
        //   206: ifnull          180
        //   209: aload           12
        //   211: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   214: aload_1        
        //   215: areturn        
        //   216: astore          23
        //   218: getstatic       com/vungle/sdk/IVungleConstants.b:Ljava/lang/String;
        //   221: pop            
        //   222: goto            204
        //   225: astore          10
        //   227: getstatic       com/vungle/sdk/IVungleConstants.b:Ljava/lang/String;
        //   230: pop            
        //   231: goto            170
        //   234: astore          5
        //   236: aconst_null    
        //   237: astore          6
        //   239: aconst_null    
        //   240: astore          7
        //   242: aload           6
        //   244: ifnull          252
        //   247: aload           6
        //   249: invokevirtual   java/io/BufferedReader.close:()V
        //   252: aload           7
        //   254: ifnull          262
        //   257: aload           7
        //   259: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   262: aload           5
        //   264: athrow         
        //   265: astore          8
        //   267: getstatic       com/vungle/sdk/IVungleConstants.b:Ljava/lang/String;
        //   270: pop            
        //   271: goto            252
        //   274: astore          5
        //   276: aload           12
        //   278: astore          7
        //   280: aconst_null    
        //   281: astore          6
        //   283: goto            242
        //   286: astore          5
        //   288: aload_3        
        //   289: astore          16
        //   291: aload           12
        //   293: astore          7
        //   295: aload           16
        //   297: astore          6
        //   299: goto            242
        //   302: astore          5
        //   304: aload_3        
        //   305: astore          6
        //   307: aload           4
        //   309: astore          7
        //   311: goto            242
        //   314: astore_2       
        //   315: aconst_null    
        //   316: astore_3       
        //   317: aconst_null    
        //   318: astore          4
        //   320: goto            155
        //   323: astore          13
        //   325: aload           12
        //   327: astore          4
        //   329: aload           13
        //   331: astore_2       
        //   332: aconst_null    
        //   333: astore_3       
        //   334: goto            155
        //   337: aconst_null    
        //   338: astore_3       
        //   339: goto            196
        //    Signature:
        //  (Ljava/lang/String;)Ljava/util/ArrayList<Ljava/lang/String;>;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  8      21     314    323    Ljava/io/IOException;
        //  8      21     234    242    Any
        //  21     102    323    337    Ljava/io/IOException;
        //  21     102    274    286    Any
        //  102    118    146    155    Ljava/io/IOException;
        //  102    118    286    302    Any
        //  118    126    146    155    Ljava/io/IOException;
        //  118    126    286    302    Any
        //  132    143    146    155    Ljava/io/IOException;
        //  132    143    286    302    Any
        //  155    162    302    314    Any
        //  166    170    225    234    Ljava/io/IOException;
        //  182    196    146    155    Ljava/io/IOException;
        //  182    196    286    302    Any
        //  200    204    216    225    Ljava/io/IOException;
        //  247    252    265    274    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 165, Size: 165
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
}
