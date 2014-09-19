package com.fusepowered.fuseapi;

import android.content.*;
import android.net.*;
import java.net.*;
import android.widget.*;
import android.os.*;
import org.apache.http.util.*;
import android.graphics.*;
import android.util.*;
import android.graphics.drawable.*;
import java.io.*;
import com.fusepowered.util.*;
import org.apache.http.client.methods.*;
import org.apache.http.message.*;
import org.apache.http.client.entity.*;
import java.util.*;
import org.apache.http.*;
import org.apache.http.impl.client.*;
import org.apache.http.params.*;
import org.apache.http.client.*;

public class NetworkService
{
    private static final int CONNECTION_TIMEOUT_IN_MS = 60000;
    private static final int READ_TIMEOUT_IN_MS = 120000;
    private static final String TAG = "NetworkService";
    Bitmap imgFromCall;
    
    static {
        System.setProperty("http.keepAlive", "false");
    }
    
    private String getB64Auth(final String str, final String str2) {
        return "Basic " + Base64.encodeToString((str + ':' + str2).getBytes(), 10);
    }
    
    public static String getConnectionType(final Context context) {
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
            return activeNetworkInfo.getTypeName();
        }
        return "Not Connected";
    }
    
    public static String isWifiConnection(final Context context) {
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting() && activeNetworkInfo.getTypeName().contentEquals("WIFI")) {
            return "1";
        }
        return "0";
    }
    
    private HttpURLConnection openHttpConnection(final String s) {
        if (Build$VERSION.SDK_INT > 10 && Build$VERSION.SDK_INT < 14) {
            return this.openHttpConnection_HoneyCombMR2(s);
        }
        return this.openHttpConnection_AllOthers(s);
    }
    
    private HttpURLConnection openHttpConnection_AllOthers(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: bipush          63
        //     3: invokevirtual   java/lang/String.indexOf:(I)I
        //     6: istore_2       
        //     7: iload_2        
        //     8: iconst_m1      
        //     9: if_icmple       238
        //    12: aload_1        
        //    13: iconst_0       
        //    14: iload_2        
        //    15: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //    18: astore_3       
        //    19: iload_2        
        //    20: iconst_m1      
        //    21: if_icmple       243
        //    24: aload_1        
        //    25: iload_2        
        //    26: iconst_1       
        //    27: iadd           
        //    28: aload_1        
        //    29: invokevirtual   java/lang/String.length:()I
        //    32: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //    35: astore          4
        //    37: aconst_null    
        //    38: astore          5
        //    40: aconst_null    
        //    41: astore          6
        //    43: new             Ljava/net/URL;
        //    46: dup            
        //    47: aload_3        
        //    48: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //    51: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
        //    54: checkcast       Ljava/net/HttpURLConnection;
        //    57: astore          5
        //    59: aload           5
        //    61: iconst_0       
        //    62: invokevirtual   java/net/HttpURLConnection.setAllowUserInteraction:(Z)V
        //    65: aload           5
        //    67: iconst_1       
        //    68: invokevirtual   java/net/HttpURLConnection.setInstanceFollowRedirects:(Z)V
        //    71: aload           5
        //    73: ldc             "POST"
        //    75: invokevirtual   java/net/HttpURLConnection.setRequestMethod:(Ljava/lang/String;)V
        //    78: aload           5
        //    80: ldc             60000
        //    82: invokevirtual   java/net/HttpURLConnection.setConnectTimeout:(I)V
        //    85: aload           5
        //    87: ldc             120000
        //    89: invokevirtual   java/net/HttpURLConnection.setReadTimeout:(I)V
        //    92: aload           5
        //    94: ldc             "Content-Length"
        //    96: aload           4
        //    98: invokevirtual   java/lang/String.getBytes:()[B
        //   101: arraylength    
        //   102: invokestatic    java/lang/Integer.toString:(I)Ljava/lang/String;
        //   105: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //   108: aload           5
        //   110: ldc             "Content-Language"
        //   112: ldc             "en-US"
        //   114: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //   117: aload           5
        //   119: ldc             "Authorization"
        //   121: aload_0        
        //   122: ldc             "jimmyjimmyjango"
        //   124: ldc             "1Qdow7mFZMh7"
        //   126: invokespecial   com/fusepowered/fuseapi/NetworkService.getB64Auth:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   129: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //   132: aload           5
        //   134: iconst_1       
        //   135: invokevirtual   java/net/HttpURLConnection.setDoOutput:(Z)V
        //   138: aload           5
        //   140: invokevirtual   java/net/HttpURLConnection.connect:()V
        //   143: new             Ljava/io/OutputStreamWriter;
        //   146: dup            
        //   147: aload           5
        //   149: invokevirtual   java/net/HttpURLConnection.getOutputStream:()Ljava/io/OutputStream;
        //   152: invokespecial   java/io/OutputStreamWriter.<init>:(Ljava/io/OutputStream;)V
        //   155: astore          17
        //   157: aload           17
        //   159: aload           4
        //   161: invokevirtual   java/io/OutputStreamWriter.write:(Ljava/lang/String;)V
        //   164: aload           17
        //   166: invokevirtual   java/io/OutputStreamWriter.flush:()V
        //   169: aload           5
        //   171: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //   174: istore          19
        //   176: aload           17
        //   178: ifnull          186
        //   181: aload           17
        //   183: invokevirtual   java/io/OutputStreamWriter.close:()V
        //   186: aload           5
        //   188: ifnull          418
        //   191: iload           19
        //   193: sipush          200
        //   196: if_icmpeq       418
        //   199: iconst_1       
        //   200: anewarray       Ljava/lang/Object;
        //   203: astore          20
        //   205: aload           20
        //   207: iconst_0       
        //   208: iload           19
        //   210: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   213: aastore        
        //   214: ldc             "FuseAPI"
        //   216: ldc             "Unexpected response code %d"
        //   218: aload           20
        //   220: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   223: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   226: pop            
        //   227: aload           5
        //   229: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   232: aconst_null    
        //   233: astore          5
        //   235: aload           5
        //   237: areturn        
        //   238: aload_1        
        //   239: astore_3       
        //   240: goto            19
        //   243: ldc             ""
        //   245: astore          4
        //   247: goto            37
        //   250: astore          11
        //   252: aload           11
        //   254: astore          12
        //   256: ldc             "FuseAPI"
        //   258: ldc             "Unexpected network problem"
        //   260: aload           12
        //   262: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   265: pop            
        //   266: aload           6
        //   268: ifnull          276
        //   271: aload           6
        //   273: invokevirtual   java/io/OutputStreamWriter.close:()V
        //   276: aload           5
        //   278: ifnull          235
        //   281: iconst_m1      
        //   282: sipush          200
        //   285: if_icmpeq       235
        //   288: iconst_1       
        //   289: anewarray       Ljava/lang/Object;
        //   292: astore          14
        //   294: aload           14
        //   296: iconst_0       
        //   297: iconst_m1      
        //   298: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   301: aastore        
        //   302: ldc             "FuseAPI"
        //   304: ldc             "Unexpected response code %d"
        //   306: aload           14
        //   308: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   311: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   314: pop            
        //   315: aload           5
        //   317: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   320: aconst_null    
        //   321: areturn        
        //   322: astore          7
        //   324: aload           6
        //   326: ifnull          334
        //   329: aload           6
        //   331: invokevirtual   java/io/OutputStreamWriter.close:()V
        //   334: aload           5
        //   336: ifnull          378
        //   339: iconst_m1      
        //   340: sipush          200
        //   343: if_icmpeq       378
        //   346: iconst_1       
        //   347: anewarray       Ljava/lang/Object;
        //   350: astore          8
        //   352: aload           8
        //   354: iconst_0       
        //   355: iconst_m1      
        //   356: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   359: aastore        
        //   360: ldc             "FuseAPI"
        //   362: ldc             "Unexpected response code %d"
        //   364: aload           8
        //   366: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   369: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   372: pop            
        //   373: aload           5
        //   375: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   378: aload           7
        //   380: athrow         
        //   381: astore          22
        //   383: goto            186
        //   386: astore          16
        //   388: goto            276
        //   391: astore          10
        //   393: goto            334
        //   396: astore          7
        //   398: aload           17
        //   400: astore          6
        //   402: goto            324
        //   405: astore          18
        //   407: aload           18
        //   409: astore          12
        //   411: aload           17
        //   413: astore          6
        //   415: goto            256
        //   418: aload           5
        //   420: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  43     157    250    256    Ljava/lang/Exception;
        //  43     157    322    324    Any
        //  157    176    405    418    Ljava/lang/Exception;
        //  157    176    396    405    Any
        //  181    186    381    386    Ljava/io/IOException;
        //  256    266    322    324    Any
        //  271    276    386    391    Ljava/io/IOException;
        //  329    334    391    396    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 202, Size: 202
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
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
    
    private HttpURLConnection openHttpConnection_HoneyCombMR2(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: bipush          63
        //     3: invokevirtual   java/lang/String.indexOf:(I)I
        //     6: istore_2       
        //     7: iload_2        
        //     8: iconst_m1      
        //     9: if_icmple       243
        //    12: aload_1        
        //    13: iconst_0       
        //    14: iload_2        
        //    15: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //    18: astore_3       
        //    19: iload_2        
        //    20: iconst_m1      
        //    21: if_icmple       248
        //    24: aload_1        
        //    25: iload_2        
        //    26: iconst_1       
        //    27: iadd           
        //    28: aload_1        
        //    29: invokevirtual   java/lang/String.length:()I
        //    32: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //    35: astore          4
        //    37: aconst_null    
        //    38: astore          5
        //    40: aconst_null    
        //    41: astore          6
        //    43: new             Ljava/net/URL;
        //    46: dup            
        //    47: aload_3        
        //    48: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //    51: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
        //    54: checkcast       Ljava/net/HttpURLConnection;
        //    57: astore          5
        //    59: aload           5
        //    61: iconst_1       
        //    62: invokevirtual   java/net/HttpURLConnection.setDoOutput:(Z)V
        //    65: aload           5
        //    67: iconst_0       
        //    68: invokevirtual   java/net/HttpURLConnection.setAllowUserInteraction:(Z)V
        //    71: aload           5
        //    73: iconst_1       
        //    74: invokevirtual   java/net/HttpURLConnection.setInstanceFollowRedirects:(Z)V
        //    77: aload           5
        //    79: ldc             "POST"
        //    81: invokevirtual   java/net/HttpURLConnection.setRequestMethod:(Ljava/lang/String;)V
        //    84: aload           5
        //    86: sipush          10000
        //    89: invokevirtual   java/net/HttpURLConnection.setConnectTimeout:(I)V
        //    92: aload           5
        //    94: sipush          10000
        //    97: invokevirtual   java/net/HttpURLConnection.setReadTimeout:(I)V
        //   100: aload           5
        //   102: ldc             "Authorization"
        //   104: aload_0        
        //   105: ldc             "jimmyjimmyjango"
        //   107: ldc             "1Qdow7mFZMh7"
        //   109: invokespecial   com/fusepowered/fuseapi/NetworkService.getB64Auth:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   112: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //   115: aload           5
        //   117: ldc             "Content-Language"
        //   119: ldc             "en-US"
        //   121: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //   124: aload           5
        //   126: ldc             "Content-Type"
        //   128: ldc             "application/x-www-form-urlencoded"
        //   130: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
        //   133: aload           4
        //   135: invokevirtual   java/lang/String.getBytes:()[B
        //   138: astore          17
        //   140: aload           5
        //   142: aload           17
        //   144: arraylength    
        //   145: invokevirtual   java/net/HttpURLConnection.setFixedLengthStreamingMode:(I)V
        //   148: new             Ljava/io/BufferedOutputStream;
        //   151: dup            
        //   152: aload           5
        //   154: invokevirtual   java/net/HttpURLConnection.getOutputStream:()Ljava/io/OutputStream;
        //   157: invokespecial   java/io/BufferedOutputStream.<init>:(Ljava/io/OutputStream;)V
        //   160: astore          18
        //   162: aload           18
        //   164: aload           17
        //   166: invokevirtual   java/io/BufferedOutputStream.write:([B)V
        //   169: aload           18
        //   171: invokevirtual   java/io/BufferedOutputStream.flush:()V
        //   174: aload           5
        //   176: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //   179: istore          20
        //   181: aload           18
        //   183: ifnull          191
        //   186: aload           18
        //   188: invokevirtual   java/io/BufferedOutputStream.close:()V
        //   191: aload           5
        //   193: ifnull          423
        //   196: iload           20
        //   198: sipush          200
        //   201: if_icmpeq       423
        //   204: iconst_1       
        //   205: anewarray       Ljava/lang/Object;
        //   208: astore          21
        //   210: aload           21
        //   212: iconst_0       
        //   213: iload           20
        //   215: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   218: aastore        
        //   219: ldc             "FuseAPI"
        //   221: ldc             "Unexpected response code %d"
        //   223: aload           21
        //   225: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   228: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   231: pop            
        //   232: aload           5
        //   234: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   237: aconst_null    
        //   238: astore          5
        //   240: aload           5
        //   242: areturn        
        //   243: aload_1        
        //   244: astore_3       
        //   245: goto            19
        //   248: ldc             ""
        //   250: astore          4
        //   252: goto            37
        //   255: astore          11
        //   257: aload           11
        //   259: astore          12
        //   261: ldc             "FuseAPI"
        //   263: ldc             "Unexpected network problem"
        //   265: aload           12
        //   267: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   270: pop            
        //   271: aload           6
        //   273: ifnull          281
        //   276: aload           6
        //   278: invokevirtual   java/io/BufferedOutputStream.close:()V
        //   281: aload           5
        //   283: ifnull          240
        //   286: iconst_m1      
        //   287: sipush          200
        //   290: if_icmpeq       240
        //   293: iconst_1       
        //   294: anewarray       Ljava/lang/Object;
        //   297: astore          14
        //   299: aload           14
        //   301: iconst_0       
        //   302: iconst_m1      
        //   303: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   306: aastore        
        //   307: ldc             "FuseAPI"
        //   309: ldc             "Unexpected response code %d"
        //   311: aload           14
        //   313: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   316: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   319: pop            
        //   320: aload           5
        //   322: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   325: aconst_null    
        //   326: areturn        
        //   327: astore          7
        //   329: aload           6
        //   331: ifnull          339
        //   334: aload           6
        //   336: invokevirtual   java/io/BufferedOutputStream.close:()V
        //   339: aload           5
        //   341: ifnull          383
        //   344: iconst_m1      
        //   345: sipush          200
        //   348: if_icmpeq       383
        //   351: iconst_1       
        //   352: anewarray       Ljava/lang/Object;
        //   355: astore          8
        //   357: aload           8
        //   359: iconst_0       
        //   360: iconst_m1      
        //   361: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   364: aastore        
        //   365: ldc             "FuseAPI"
        //   367: ldc             "Unexpected response code %d"
        //   369: aload           8
        //   371: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   374: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   377: pop            
        //   378: aload           5
        //   380: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   383: aload           7
        //   385: athrow         
        //   386: astore          23
        //   388: goto            191
        //   391: astore          16
        //   393: goto            281
        //   396: astore          10
        //   398: goto            339
        //   401: astore          7
        //   403: aload           18
        //   405: astore          6
        //   407: goto            329
        //   410: astore          19
        //   412: aload           19
        //   414: astore          12
        //   416: aload           18
        //   418: astore          6
        //   420: goto            261
        //   423: aload           5
        //   425: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  43     162    255    261    Ljava/lang/Exception;
        //  43     162    327    329    Any
        //  162    181    410    423    Ljava/lang/Exception;
        //  162    181    401    410    Any
        //  186    191    386    391    Ljava/io/IOException;
        //  261    271    327    329    Any
        //  276    281    391    396    Ljava/io/IOException;
        //  334    339    396    401    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 204, Size: 204
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
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
    
    public void createImageButton(final String s, final ImageButton imageButton) {
        new AsyncTask<String, Integer, Bitmap>() {
            protected Bitmap doInBackground(final String... array) {
                final DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                while (true) {
                    try {
                        while (true) {
                            final HttpGet httpGet = new HttpGet(array[0]);
                            while (true) {
                                StatusLine statusLine;
                                int statusCode;
                                try {
                                    final HttpResponse execute = ((HttpClient)defaultHttpClient).execute((HttpUriRequest)httpGet);
                                    statusLine = execute.getStatusLine();
                                    statusCode = statusLine.getStatusCode();
                                    if (statusCode == 200) {
                                        final byte[] byteArray = EntityUtils.toByteArray(execute.getEntity());
                                        NetworkService.this.imgFromCall = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                                        ((HttpClient)defaultHttpClient).getConnectionManager().shutdown();
                                        return NetworkService.this.imgFromCall;
                                    }
                                }
                                catch (ClientProtocolException ex) {
                                    Log.e("FuseAPI", "Error downloading bitmap", (Throwable)ex);
                                    return null;
                                }
                                catch (IOException ex2) {
                                    Log.e("FuseAPI", "Error downloading bitmap", (Throwable)ex2);
                                    return null;
                                }
                                Log.e("FuseAPI", String.format("Error downloading bitmap -- response code: %d reason: %s", statusCode, statusLine.getReasonPhrase()));
                                continue;
                            }
                        }
                    }
                    catch (IOException ex3) {
                        Log.e("FuseAPI", "Error decoding bitmap", (Throwable)ex3);
                        ((HttpClient)defaultHttpClient).getConnectionManager().shutdown();
                        continue;
                    }
                    finally {
                        ((HttpClient)defaultHttpClient).getConnectionManager().shutdown();
                    }
                    break;
                }
            }
            
            protected void onPostExecute(final Bitmap bitmap) {
                imageButton.setBackgroundDrawable((Drawable)new BitmapDrawable(bitmap));
            }
        }.execute((Object[])new String[] { s });
    }
    
    public Bitmap downloadImage(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: aload_1        
        //     2: invokespecial   com/fusepowered/fuseapi/NetworkService.openHttpConnection:(Ljava/lang/String;)Ljava/net/HttpURLConnection;
        //     5: astore_2       
        //     6: aconst_null    
        //     7: astore_3       
        //     8: aload_2        
        //     9: ifnull          45
        //    12: aconst_null    
        //    13: astore          4
        //    15: aload_2        
        //    16: invokevirtual   java/net/HttpURLConnection.getInputStream:()Ljava/io/InputStream;
        //    19: astore          4
        //    21: aload           4
        //    23: invokestatic    android/graphics/BitmapFactory.decodeStream:(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
        //    26: astore          10
        //    28: aload           10
        //    30: astore_3       
        //    31: aload           4
        //    33: ifnull          41
        //    36: aload           4
        //    38: invokevirtual   java/io/InputStream.close:()V
        //    41: aload_2        
        //    42: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //    45: aload_3        
        //    46: areturn        
        //    47: astore          7
        //    49: ldc             "FuseAPI"
        //    51: ldc_w           "Error decoding bitmap"
        //    54: iconst_1       
        //    55: anewarray       Ljava/lang/Object;
        //    58: dup            
        //    59: iconst_0       
        //    60: aload           7
        //    62: aastore        
        //    63: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //    66: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    69: pop            
        //    70: aload           4
        //    72: ifnull          80
        //    75: aload           4
        //    77: invokevirtual   java/io/InputStream.close:()V
        //    80: aload_2        
        //    81: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //    84: aconst_null    
        //    85: areturn        
        //    86: astore          5
        //    88: aload           4
        //    90: ifnull          98
        //    93: aload           4
        //    95: invokevirtual   java/io/InputStream.close:()V
        //    98: aload_2        
        //    99: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   102: aload           5
        //   104: athrow         
        //   105: astore          11
        //   107: goto            41
        //   110: astore          9
        //   112: goto            80
        //   115: astore          6
        //   117: goto            98
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  15     28     47     86     Ljava/io/IOException;
        //  15     28     86     105    Any
        //  36     41     105    110    Ljava/io/IOException;
        //  49     70     86     105    Any
        //  75     80     110    115    Ljava/io/IOException;
        //  93     98     115    120    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 61, Size: 61
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
    
    public Bitmap downloadImage2(final String s) {
        final DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        try {
            while (true) {
                final HttpGet httpGet = new HttpGet(s);
                StatusLine statusLine;
                int statusCode;
                try {
                    final HttpResponse execute = ((HttpClient)defaultHttpClient).execute((HttpUriRequest)httpGet);
                    statusLine = execute.getStatusLine();
                    statusCode = statusLine.getStatusCode();
                    if (statusCode == 200) {
                        final byte[] byteArray = EntityUtils.toByteArray(execute.getEntity());
                        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                    }
                }
                catch (ClientProtocolException ex) {
                    Log.e("FuseAPI", "Error downloading bitmap", (Throwable)ex);
                    return null;
                }
                catch (IOException ex2) {
                    Log.e("FuseAPI", "Error downloading bitmap", (Throwable)ex2);
                    return null;
                }
                Log.e("FuseAPI", String.format("Error downloading bitmap -- response code: %d reason: %s", statusCode, statusLine.getReasonPhrase()));
                return null;
            }
        }
        catch (IOException ex3) {
            Log.e("FuseAPI", "Error decoding bitmap", (Throwable)ex3);
            ((HttpClient)defaultHttpClient).getConnectionManager().shutdown();
            return null;
        }
        finally {
            ((HttpClient)defaultHttpClient).getConnectionManager().shutdown();
        }
    }
    
    public String sendRequest(final String s) throws IOException {
        String s2 = "";
        final HttpURLConnection openHttpConnection = this.openHttpConnection(s);
        if (openHttpConnection == null) {
            return s2;
        }
        final StringBuilder sb = new StringBuilder(1000);
        while (true) {
            try {
                final BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openHttpConnection.getInputStream()));
                Label_0108: {
                    BufferedReader bufferedReader2;
                    try {
                        final char[] str = new char[1000];
                        while (true) {
                            final int read = bufferedReader.read(str, 0, 1000);
                            if (read <= -1) {
                                break Label_0108;
                            }
                            sb.append(str, 0, read);
                        }
                    }
                    finally {
                        bufferedReader2 = bufferedReader;
                    }
                    Label_0101: {
                        if (bufferedReader2 == null) {
                            break Label_0101;
                        }
                        try {
                            bufferedReader2.close();
                            openHttpConnection.disconnect();
                            throw;
                            try {
                                bufferedReader.close();
                                Label_0118: {
                                    openHttpConnection.disconnect();
                                }
                                s2 = new String(Base64.decode(sb.toString(), 0));
                                return s2;
                            }
                            catch (IOException ex) {}
                        }
                        // iftrue(Label_0118:, bufferedReader == null)
                        catch (IOException ex2) {}
                    }
                }
            }
            finally {
                final BufferedReader bufferedReader2 = null;
                continue;
            }
            break;
        }
    }
    
    public String sendRequest(final String s, final ActionType actionType) throws IOException {
        final String encodeToString = Base64.encodeToString(s.getBytes(), 2);
        final String serverUrlForActionCode = ActionType.getServerUrlForActionCode(actionType);
        final int lastIndex = serverUrlForActionCode.lastIndexOf(63);
        Label_0236: {
            if (lastIndex <= -1) {
                break Label_0236;
            }
            String substring = serverUrlForActionCode.substring(0, lastIndex);
            while (true) {
                final DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                final HttpParams params = ((HttpClient)defaultHttpClient).getParams();
                HttpConnectionParams.setConnectionTimeout(params, 60000);
                HttpConnectionParams.setSoTimeout(params, 120000);
                final String b64Auth = this.getB64Auth("jimmyjimmyjango", "1Qdow7mFZMh7");
                try {
                    final HttpPost httpPost = new HttpPost(substring);
                    httpPost.setHeader("Authorization", b64Auth);
                    httpPost.setHeader("Content-Language", "en-US");
                    final ArrayList<BasicNameValuePair> list = new ArrayList<BasicNameValuePair>();
                    list.add(new BasicNameValuePair("api_ver", "1.34.3"));
                    list.add(new BasicNameValuePair("d", encodeToString));
                    httpPost.setEntity((HttpEntity)new UrlEncodedFormEntity((List)list, "UTF-8"));
                    final String s2 = (String)((HttpClient)defaultHttpClient).execute((HttpUriRequest)httpPost, (ResponseHandler)new BasicResponseHandler());
                    ((HttpClient)defaultHttpClient).getConnectionManager().shutdown();
                    return new String(Base64.decode(s2, 0));
                    substring = serverUrlForActionCode;
                }
                finally {
                    ((HttpClient)defaultHttpClient).getConnectionManager().shutdown();
                }
            }
        }
    }
}
