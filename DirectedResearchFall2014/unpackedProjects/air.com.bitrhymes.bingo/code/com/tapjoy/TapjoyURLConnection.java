package com.tapjoy;

import java.net.*;
import java.util.*;

public class TapjoyURLConnection
{
    private static final String TAG = "TapjoyURLConnection";
    public static final int TYPE_GET = 0;
    public static final int TYPE_POST = 1;
    public static boolean unitTestMode;
    
    static {
        TapjoyURLConnection.unitTestMode = false;
    }
    
    public String getContentLength(final String s) {
        while (true) {
            try {
                final String replaceAll = s.replaceAll(" ", "%20");
                TapjoyLog.i("TapjoyURLConnection", "requestURL: " + replaceAll);
                final HttpURLConnection httpURLConnection = (HttpURLConnection)new URL(replaceAll).openConnection();
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setReadTimeout(30000);
                final String headerField = httpURLConnection.getHeaderField("content-length");
                TapjoyLog.i("TapjoyURLConnection", "content-length: " + headerField);
                return headerField;
            }
            catch (Exception ex) {
                TapjoyLog.e("TapjoyURLConnection", "Exception: " + ex.toString());
                final String headerField = null;
                continue;
            }
            break;
        }
    }
    
    public TapjoyHttpURLResponse getRedirectFromURL(final String s) {
        return this.getResponseFromURL(s, "", 0, true);
    }
    
    public TapjoyHttpURLResponse getResponseFromURL(final String s) {
        return this.getResponseFromURL(s, "", 0);
    }
    
    public TapjoyHttpURLResponse getResponseFromURL(final String s, final String s2) {
        return this.getResponseFromURL(s, s2, 0);
    }
    
    public TapjoyHttpURLResponse getResponseFromURL(final String s, final String s2, final int n) {
        return this.getResponseFromURL(s, s2, 0, false);
    }
    
    public TapjoyHttpURLResponse getResponseFromURL(final String p0, final String p1, final int p2, final boolean p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Lcom/tapjoy/TapjoyHttpURLResponse;
        //     3: dup            
        //     4: invokespecial   com/tapjoy/TapjoyHttpURLResponse.<init>:()V
        //     7: astore          5
        //     9: aconst_null    
        //    10: astore          6
        //    12: aconst_null    
        //    13: astore          7
        //    15: aconst_null    
        //    16: astore          8
        //    18: new             Ljava/lang/StringBuilder;
        //    21: dup            
        //    22: invokespecial   java/lang/StringBuilder.<init>:()V
        //    25: aload_1        
        //    26: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    29: aload_2        
        //    30: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    33: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    36: astore          26
        //    38: new             Ljava/lang/StringBuilder;
        //    41: dup            
        //    42: invokespecial   java/lang/StringBuilder.<init>:()V
        //    45: ldc             "http "
        //    47: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    50: astore          27
        //    52: iload_3        
        //    53: ifne            567
        //    56: ldc             "get"
        //    58: astore          28
        //    60: ldc             "TapjoyURLConnection"
        //    62: aload           27
        //    64: aload           28
        //    66: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    69: ldc             ": "
        //    71: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    74: aload           26
        //    76: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    79: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    82: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //    85: getstatic       com/tapjoy/TapjoyURLConnection.unitTestMode:Z
        //    88: istore          29
        //    90: aconst_null    
        //    91: astore          6
        //    93: aconst_null    
        //    94: astore          7
        //    96: aconst_null    
        //    97: astore          8
        //    99: iload           29
        //   101: ifeq            595
        //   104: new             Lorg/apache/http/impl/client/DefaultHttpClient;
        //   107: dup            
        //   108: invokespecial   org/apache/http/impl/client/DefaultHttpClient.<init>:()V
        //   111: astore          30
        //   113: aconst_null    
        //   114: astore          6
        //   116: aconst_null    
        //   117: astore          7
        //   119: aconst_null    
        //   120: astore          8
        //   122: iload_3        
        //   123: iconst_1       
        //   124: if_icmpne       574
        //   127: aload           30
        //   129: new             Lorg/apache/http/client/methods/HttpPost;
        //   132: dup            
        //   133: aload           26
        //   135: invokespecial   org/apache/http/client/methods/HttpPost.<init>:(Ljava/lang/String;)V
        //   138: invokeinterface org/apache/http/client/HttpClient.execute:(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
        //   143: astore          31
        //   145: aload           5
        //   147: aload           31
        //   149: invokeinterface org/apache/http/HttpResponse.getStatusLine:()Lorg/apache/http/StatusLine;
        //   154: invokeinterface org/apache/http/StatusLine.getStatusCode:()I
        //   159: putfield        com/tapjoy/TapjoyHttpURLResponse.statusCode:I
        //   162: new             Ljava/io/BufferedReader;
        //   165: dup            
        //   166: new             Ljava/io/InputStreamReader;
        //   169: dup            
        //   170: aload           31
        //   172: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
        //   177: invokeinterface org/apache/http/HttpEntity.getContent:()Ljava/io/InputStream;
        //   182: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;)V
        //   185: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;)V
        //   188: astore          32
        //   190: aload           32
        //   192: astore          7
        //   194: aconst_null    
        //   195: astore          8
        //   197: iload           4
        //   199: ifne            719
        //   202: new             Ljava/lang/StringBuilder;
        //   205: dup            
        //   206: invokespecial   java/lang/StringBuilder.<init>:()V
        //   209: astore          11
        //   211: aload           7
        //   213: invokevirtual   java/io/BufferedReader.readLine:()Ljava/lang/String;
        //   216: astore          34
        //   218: aload           34
        //   220: ifnull          705
        //   223: new             Ljava/lang/StringBuilder;
        //   226: dup            
        //   227: invokespecial   java/lang/StringBuilder.<init>:()V
        //   230: aload           34
        //   232: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   235: bipush          10
        //   237: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //   240: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   243: astore          35
        //   245: aload           11
        //   247: aload           35
        //   249: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   252: pop            
        //   253: goto            211
        //   256: astore          33
        //   258: aload           33
        //   260: astore          10
        //   262: aload           7
        //   264: astore          12
        //   266: ldc             "TapjoyURLConnection"
        //   268: new             Ljava/lang/StringBuilder;
        //   271: dup            
        //   272: invokespecial   java/lang/StringBuilder.<init>:()V
        //   275: ldc             "Exception: "
        //   277: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   280: aload           10
        //   282: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   285: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   288: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   291: invokestatic    com/tapjoy/TapjoyLog.e:(Ljava/lang/String;Ljava/lang/String;)V
        //   294: aload           6
        //   296: ifnull          872
        //   299: aload           5
        //   301: getfield        com/tapjoy/TapjoyHttpURLResponse.response:Ljava/lang/String;
        //   304: ifnonnull       872
        //   307: new             Ljava/io/BufferedReader;
        //   310: dup            
        //   311: new             Ljava/io/InputStreamReader;
        //   314: dup            
        //   315: aload           6
        //   317: invokevirtual   java/net/HttpURLConnection.getErrorStream:()Ljava/io/InputStream;
        //   320: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;)V
        //   323: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;)V
        //   326: astore          19
        //   328: new             Ljava/lang/StringBuilder;
        //   331: dup            
        //   332: invokespecial   java/lang/StringBuilder.<init>:()V
        //   335: astore          20
        //   337: aload           19
        //   339: invokevirtual   java/io/BufferedReader.readLine:()Ljava/lang/String;
        //   342: astore          22
        //   344: aload           22
        //   346: ifnull          832
        //   349: aload           20
        //   351: new             Ljava/lang/StringBuilder;
        //   354: dup            
        //   355: invokespecial   java/lang/StringBuilder.<init>:()V
        //   358: aload           22
        //   360: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   363: bipush          10
        //   365: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //   368: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   371: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   374: pop            
        //   375: goto            337
        //   378: astore          21
        //   380: aload           21
        //   382: astore          16
        //   384: ldc             "TapjoyURLConnection"
        //   386: new             Ljava/lang/StringBuilder;
        //   389: dup            
        //   390: invokespecial   java/lang/StringBuilder.<init>:()V
        //   393: ldc             "Exception trying to get error code/content: "
        //   395: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   398: aload           16
        //   400: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   403: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   406: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   409: invokestatic    com/tapjoy/TapjoyLog.e:(Ljava/lang/String;Ljava/lang/String;)V
        //   412: ldc             "TapjoyURLConnection"
        //   414: ldc             "--------------------"
        //   416: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   419: ldc             "TapjoyURLConnection"
        //   421: new             Ljava/lang/StringBuilder;
        //   424: dup            
        //   425: invokespecial   java/lang/StringBuilder.<init>:()V
        //   428: ldc             "response status: "
        //   430: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   433: aload           5
        //   435: getfield        com/tapjoy/TapjoyHttpURLResponse.statusCode:I
        //   438: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   441: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   444: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   447: ldc             "TapjoyURLConnection"
        //   449: new             Ljava/lang/StringBuilder;
        //   452: dup            
        //   453: invokespecial   java/lang/StringBuilder.<init>:()V
        //   456: ldc             "response size: "
        //   458: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   461: aload           5
        //   463: getfield        com/tapjoy/TapjoyHttpURLResponse.contentLength:I
        //   466: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   469: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   472: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   475: ldc             "TapjoyURLConnection"
        //   477: ldc             "response: "
        //   479: invokestatic    com/tapjoy/TapjoyLog.v:(Ljava/lang/String;Ljava/lang/String;)V
        //   482: ldc             "TapjoyURLConnection"
        //   484: new             Ljava/lang/StringBuilder;
        //   487: dup            
        //   488: invokespecial   java/lang/StringBuilder.<init>:()V
        //   491: ldc             ""
        //   493: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   496: aload           5
        //   498: getfield        com/tapjoy/TapjoyHttpURLResponse.response:Ljava/lang/String;
        //   501: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   504: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   507: invokestatic    com/tapjoy/TapjoyLog.v:(Ljava/lang/String;Ljava/lang/String;)V
        //   510: aload           5
        //   512: getfield        com/tapjoy/TapjoyHttpURLResponse.redirectURL:Ljava/lang/String;
        //   515: ifnull          557
        //   518: aload           5
        //   520: getfield        com/tapjoy/TapjoyHttpURLResponse.redirectURL:Ljava/lang/String;
        //   523: invokevirtual   java/lang/String.length:()I
        //   526: ifle            557
        //   529: ldc             "TapjoyURLConnection"
        //   531: new             Ljava/lang/StringBuilder;
        //   534: dup            
        //   535: invokespecial   java/lang/StringBuilder.<init>:()V
        //   538: ldc             "redirectURL: "
        //   540: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   543: aload           5
        //   545: getfield        com/tapjoy/TapjoyHttpURLResponse.redirectURL:Ljava/lang/String;
        //   548: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   551: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   554: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   557: ldc             "TapjoyURLConnection"
        //   559: ldc             "--------------------"
        //   561: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   564: aload           5
        //   566: areturn        
        //   567: ldc             "post"
        //   569: astore          28
        //   571: goto            60
        //   574: aload           30
        //   576: new             Lorg/apache/http/client/methods/HttpGet;
        //   579: dup            
        //   580: aload           26
        //   582: invokespecial   org/apache/http/client/methods/HttpGet.<init>:(Ljava/lang/String;)V
        //   585: invokeinterface org/apache/http/client/HttpClient.execute:(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
        //   590: astore          31
        //   592: goto            145
        //   595: new             Ljava/net/URL;
        //   598: dup            
        //   599: aload           26
        //   601: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //   604: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
        //   607: checkcast       Ljava/net/HttpURLConnection;
        //   610: astore          6
        //   612: iload           4
        //   614: ifeq            623
        //   617: aload           6
        //   619: iconst_0       
        //   620: invokevirtual   java/net/HttpURLConnection.setInstanceFollowRedirects:(Z)V
        //   623: aload           6
        //   625: sipush          15000
        //   628: invokevirtual   java/net/HttpURLConnection.setConnectTimeout:(I)V
        //   631: aload           6
        //   633: sipush          30000
        //   636: invokevirtual   java/net/HttpURLConnection.setReadTimeout:(I)V
        //   639: iload_3        
        //   640: iconst_1       
        //   641: if_icmpne       651
        //   644: aload           6
        //   646: ldc             "POST"
        //   648: invokevirtual   java/net/HttpURLConnection.setRequestMethod:(Ljava/lang/String;)V
        //   651: aload           6
        //   653: invokevirtual   java/net/HttpURLConnection.connect:()V
        //   656: aload           5
        //   658: aload           6
        //   660: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //   663: putfield        com/tapjoy/TapjoyHttpURLResponse.statusCode:I
        //   666: aconst_null    
        //   667: astore          7
        //   669: aconst_null    
        //   670: astore          8
        //   672: iload           4
        //   674: ifne            194
        //   677: new             Ljava/io/BufferedReader;
        //   680: dup            
        //   681: new             Ljava/io/InputStreamReader;
        //   684: dup            
        //   685: aload           6
        //   687: invokevirtual   java/net/HttpURLConnection.getInputStream:()Ljava/io/InputStream;
        //   690: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;)V
        //   693: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;)V
        //   696: astore          39
        //   698: aload           39
        //   700: astore          7
        //   702: goto            194
        //   705: aload           5
        //   707: aload           11
        //   709: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   712: putfield        com/tapjoy/TapjoyHttpURLResponse.response:Ljava/lang/String;
        //   715: aload           11
        //   717: astore          8
        //   719: aload           5
        //   721: getfield        com/tapjoy/TapjoyHttpURLResponse.statusCode:I
        //   724: sipush          302
        //   727: if_icmpne       742
        //   730: aload           5
        //   732: aload           6
        //   734: ldc             "Location"
        //   736: invokevirtual   java/net/HttpURLConnection.getHeaderField:(Ljava/lang/String;)Ljava/lang/String;
        //   739: putfield        com/tapjoy/TapjoyHttpURLResponse.redirectURL:Ljava/lang/String;
        //   742: aload           6
        //   744: ldc             "content-length"
        //   746: invokevirtual   java/net/HttpURLConnection.getHeaderField:(Ljava/lang/String;)Ljava/lang/String;
        //   749: astore          37
        //   751: aload           37
        //   753: ifnull          769
        //   756: aload           5
        //   758: aload           37
        //   760: invokestatic    java/lang/Integer.valueOf:(Ljava/lang/String;)Ljava/lang/Integer;
        //   763: invokevirtual   java/lang/Integer.intValue:()I
        //   766: putfield        com/tapjoy/TapjoyHttpURLResponse.contentLength:I
        //   769: aload           7
        //   771: ifnull          881
        //   774: aload           7
        //   776: invokevirtual   java/io/BufferedReader.close:()V
        //   779: goto            881
        //   782: astore          38
        //   784: ldc             "TapjoyURLConnection"
        //   786: new             Ljava/lang/StringBuilder;
        //   789: dup            
        //   790: invokespecial   java/lang/StringBuilder.<init>:()V
        //   793: ldc             "Exception: "
        //   795: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   798: aload           38
        //   800: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   803: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   806: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   809: invokestatic    com/tapjoy/TapjoyLog.e:(Ljava/lang/String;Ljava/lang/String;)V
        //   812: goto            769
        //   815: astore          9
        //   817: aload           9
        //   819: astore          10
        //   821: aload           8
        //   823: astore          11
        //   825: aload           7
        //   827: astore          12
        //   829: goto            266
        //   832: aload           5
        //   834: aload           20
        //   836: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   839: putfield        com/tapjoy/TapjoyHttpURLResponse.response:Ljava/lang/String;
        //   842: goto            412
        //   845: astore          15
        //   847: aload           15
        //   849: astore          16
        //   851: aload           11
        //   853: pop            
        //   854: aload           12
        //   856: pop            
        //   857: goto            384
        //   860: astore          24
        //   862: aload           24
        //   864: astore          16
        //   866: aload           11
        //   868: pop            
        //   869: goto            384
        //   872: aload           11
        //   874: pop            
        //   875: aload           12
        //   877: pop            
        //   878: goto            412
        //   881: goto            412
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  18     52     815    832    Ljava/lang/Exception;
        //  60     90     815    832    Ljava/lang/Exception;
        //  104    113    815    832    Ljava/lang/Exception;
        //  127    145    815    832    Ljava/lang/Exception;
        //  145    190    815    832    Ljava/lang/Exception;
        //  202    211    815    832    Ljava/lang/Exception;
        //  211    218    256    266    Ljava/lang/Exception;
        //  223    253    256    266    Ljava/lang/Exception;
        //  299    328    845    860    Ljava/lang/Exception;
        //  328    337    860    872    Ljava/lang/Exception;
        //  337    344    378    384    Ljava/lang/Exception;
        //  349    375    378    384    Ljava/lang/Exception;
        //  574    592    815    832    Ljava/lang/Exception;
        //  595    612    815    832    Ljava/lang/Exception;
        //  617    623    815    832    Ljava/lang/Exception;
        //  623    639    815    832    Ljava/lang/Exception;
        //  644    651    815    832    Ljava/lang/Exception;
        //  651    666    815    832    Ljava/lang/Exception;
        //  677    698    815    832    Ljava/lang/Exception;
        //  705    715    256    266    Ljava/lang/Exception;
        //  719    742    815    832    Ljava/lang/Exception;
        //  742    751    815    832    Ljava/lang/Exception;
        //  756    769    782    815    Ljava/lang/Exception;
        //  774    779    815    832    Ljava/lang/Exception;
        //  784    812    815    832    Ljava/lang/Exception;
        //  832    842    378    384    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 376, Size: 376
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
    
    public TapjoyHttpURLResponse getResponseFromURL(final String s, final Map<String, String> map) {
        return this.getResponseFromURL(s, TapjoyUtil.convertURLParams(map, false), 0);
    }
    
    public TapjoyHttpURLResponse getResponseFromURL(final String s, final Map<String, String> map, final int n) {
        return this.getResponseFromURL(s, TapjoyUtil.convertURLParams(map, false), n);
    }
}
