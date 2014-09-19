package com.facebook.widget;

import android.content.*;
import java.net.*;
import java.io.*;
import com.facebook.internal.*;

class UrlRedirectCache
{
    private static final String REDIRECT_CONTENT_TAG;
    static final String TAG;
    private static volatile FileLruCache urlRedirectCache;
    
    static {
        TAG = UrlRedirectCache.class.getSimpleName();
        REDIRECT_CONTENT_TAG = UrlRedirectCache.TAG + "_Redirect";
    }
    
    static void cacheUrlRedirect(final Context context, final URL url, final URL url2) {
        if (url == null || url2 == null) {
            return;
        }
        OutputStream outputStream = null;
        try {
            final OutputStream openPutStream;
            outputStream = (openPutStream = getCache(context).openPutStream(url.toString(), UrlRedirectCache.REDIRECT_CONTENT_TAG));
            final URL url3 = url2;
            final String s = url3.toString();
            final byte[] array = s.getBytes();
            openPutStream.write(array);
            final OutputStream outputStream2 = outputStream;
            Utility.closeQuietly(outputStream2);
            return;
        }
        catch (IOException ex) {
            Utility.closeQuietly(outputStream);
            return;
        }
        finally {
            final Object o2;
            final Object o = o2;
            final Closeable closeable = null;
            final Object o3 = o;
        }
        while (true) {
            try {
                final OutputStream openPutStream = outputStream;
                final URL url3 = url2;
                final String s = url3.toString();
                final byte[] array = s.getBytes();
                openPutStream.write(array);
                final OutputStream outputStream2 = outputStream;
                Utility.closeQuietly(outputStream2);
                return;
                final Closeable closeable;
                Utility.closeQuietly(closeable);
                throw;
            }
            finally {
                final Closeable closeable = outputStream;
                final Throwable t;
                final Object o3 = t;
                continue;
            }
            break;
        }
    }
    
    static FileLruCache getCache(final Context context) {
        synchronized (UrlRedirectCache.class) {
            if (UrlRedirectCache.urlRedirectCache == null) {
                UrlRedirectCache.urlRedirectCache = new FileLruCache(context.getApplicationContext(), UrlRedirectCache.TAG, new FileLruCache$Limits());
            }
            return UrlRedirectCache.urlRedirectCache;
        }
    }
    
    static URL getRedirectedUrl(final Context p0, final URL p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: ifnonnull       6
        //     4: aconst_null    
        //     5: areturn        
        //     6: aload_1        
        //     7: invokevirtual   java/net/URL.toString:()Ljava/lang/String;
        //    10: astore_2       
        //    11: aload_0        
        //    12: invokestatic    com/facebook/widget/UrlRedirectCache.getCache:(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
        //    15: astore          9
        //    17: aload_2        
        //    18: astore          10
        //    20: iconst_0       
        //    21: istore          11
        //    23: aconst_null    
        //    24: astore          12
        //    26: aload           9
        //    28: aload           10
        //    30: getstatic       com/facebook/widget/UrlRedirectCache.REDIRECT_CONTENT_TAG:Ljava/lang/String;
        //    33: invokevirtual   com/facebook/internal/FileLruCache.get:(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
        //    36: astore          15
        //    38: aload           15
        //    40: ifnull          141
        //    43: iconst_1       
        //    44: istore          11
        //    46: new             Ljava/io/InputStreamReader;
        //    49: dup            
        //    50: aload           15
        //    52: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;)V
        //    55: astore          17
        //    57: sipush          128
        //    60: newarray        C
        //    62: astore          20
        //    64: new             Ljava/lang/StringBuilder;
        //    67: dup            
        //    68: invokespecial   java/lang/StringBuilder.<init>:()V
        //    71: astore          21
        //    73: aload           17
        //    75: aload           20
        //    77: iconst_0       
        //    78: aload           20
        //    80: arraylength    
        //    81: invokevirtual   java/io/InputStreamReader.read:([CII)I
        //    84: istore          22
        //    86: iload           22
        //    88: ifle            118
        //    91: aload           21
        //    93: aload           20
        //    95: iconst_0       
        //    96: iload           22
        //    98: invokevirtual   java/lang/StringBuilder.append:([CII)Ljava/lang/StringBuilder;
        //   101: pop            
        //   102: goto            73
        //   105: astore          19
        //   107: aload           17
        //   109: astore          4
        //   111: aload           4
        //   113: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   116: aconst_null    
        //   117: areturn        
        //   118: aload           17
        //   120: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   123: aload           21
        //   125: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   128: astore          24
        //   130: aload           24
        //   132: astore          10
        //   134: aload           17
        //   136: astore          12
        //   138: goto            26
        //   141: iload           11
        //   143: ifeq            242
        //   146: new             Ljava/net/URL;
        //   149: dup            
        //   150: aload           10
        //   152: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //   155: astore          16
        //   157: aload           12
        //   159: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   162: aload           16
        //   164: areturn        
        //   165: astore          7
        //   167: aconst_null    
        //   168: astore          8
        //   170: aload           8
        //   172: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   175: aconst_null    
        //   176: areturn        
        //   177: astore          5
        //   179: aconst_null    
        //   180: astore          6
        //   182: aload           6
        //   184: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   187: aload           5
        //   189: athrow         
        //   190: astore          5
        //   192: aload           17
        //   194: astore          6
        //   196: goto            182
        //   199: astore          5
        //   201: aload           12
        //   203: astore          6
        //   205: goto            182
        //   208: astore          18
        //   210: aload           17
        //   212: astore          8
        //   214: goto            170
        //   217: astore          14
        //   219: aload           12
        //   221: astore          8
        //   223: goto            170
        //   226: astore_3       
        //   227: aconst_null    
        //   228: astore          4
        //   230: goto            111
        //   233: astore          13
        //   235: aload           12
        //   237: astore          4
        //   239: goto            111
        //   242: aconst_null    
        //   243: astore          16
        //   245: goto            157
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  11     17     226    233    Ljava/net/MalformedURLException;
        //  11     17     165    170    Ljava/io/IOException;
        //  11     17     177    182    Any
        //  26     38     233    242    Ljava/net/MalformedURLException;
        //  26     38     217    226    Ljava/io/IOException;
        //  26     38     199    208    Any
        //  46     57     233    242    Ljava/net/MalformedURLException;
        //  46     57     217    226    Ljava/io/IOException;
        //  46     57     199    208    Any
        //  57     73     105    111    Ljava/net/MalformedURLException;
        //  57     73     208    217    Ljava/io/IOException;
        //  57     73     190    199    Any
        //  73     86     105    111    Ljava/net/MalformedURLException;
        //  73     86     208    217    Ljava/io/IOException;
        //  73     86     190    199    Any
        //  91     102    105    111    Ljava/net/MalformedURLException;
        //  91     102    208    217    Ljava/io/IOException;
        //  91     102    190    199    Any
        //  118    130    105    111    Ljava/net/MalformedURLException;
        //  118    130    208    217    Ljava/io/IOException;
        //  118    130    190    199    Any
        //  146    157    233    242    Ljava/net/MalformedURLException;
        //  146    157    217    226    Ljava/io/IOException;
        //  146    157    199    208    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0073:
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
