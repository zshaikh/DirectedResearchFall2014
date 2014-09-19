package com.facebook.internal;

import android.content.*;
import java.net.*;
import java.io.*;
import com.facebook.*;

class UrlRedirectCache
{
    private static final String REDIRECT_CONTENT_TAG;
    static final String TAG;
    private static volatile FileLruCache urlRedirectCache;
    
    static {
        TAG = UrlRedirectCache.class.getSimpleName();
        REDIRECT_CONTENT_TAG = String.valueOf(UrlRedirectCache.TAG) + "_Redirect";
    }
    
    static void cacheUriRedirect(final Context context, final URI uri, final URI uri2) {
        if (uri == null || uri2 == null) {
            return;
        }
        OutputStream openPutStream = null;
        try {
            openPutStream = getCache(context).openPutStream(uri.toString(), UrlRedirectCache.REDIRECT_CONTENT_TAG);
            openPutStream.write(uri2.toString().getBytes());
        }
        catch (IOException ex) {}
        finally {
            Utility.closeQuietly(openPutStream);
        }
    }
    
    static void clearCache(final Context context) {
        try {
            getCache(context).clearCache();
        }
        catch (IOException ex) {
            Logger.log(LoggingBehavior.CACHE, 5, UrlRedirectCache.TAG, "clearCache failed " + ex.getMessage());
        }
    }
    
    static FileLruCache getCache(final Context context) throws IOException {
        synchronized (UrlRedirectCache.class) {
            if (UrlRedirectCache.urlRedirectCache == null) {
                UrlRedirectCache.urlRedirectCache = new FileLruCache(context.getApplicationContext(), UrlRedirectCache.TAG, new FileLruCache.Limits());
            }
            return UrlRedirectCache.urlRedirectCache;
        }
    }
    
    static URI getRedirectedUri(final Context p0, final URI p1) {
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
        //     7: invokevirtual   java/net/URI.toString:()Ljava/lang/String;
        //    10: astore_2       
        //    11: aconst_null    
        //    12: astore_3       
        //    13: aload_0        
        //    14: invokestatic    com/facebook/internal/UrlRedirectCache.getCache:(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
        //    17: astore          7
        //    19: iconst_0       
        //    20: istore          8
        //    22: aconst_null    
        //    23: astore          9
        //    25: aload           7
        //    27: aload_2        
        //    28: getstatic       com/facebook/internal/UrlRedirectCache.REDIRECT_CONTENT_TAG:Ljava/lang/String;
        //    31: invokevirtual   com/facebook/internal/FileLruCache.get:(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
        //    34: astore          12
        //    36: aload           12
        //    38: ifnonnull       64
        //    41: iload           8
        //    43: ifeq            166
        //    46: new             Ljava/net/URI;
        //    49: dup            
        //    50: aload_2        
        //    51: invokespecial   java/net/URI.<init>:(Ljava/lang/String;)V
        //    54: astore          17
        //    56: aload           9
        //    58: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //    61: aload           17
        //    63: areturn        
        //    64: iconst_1       
        //    65: istore          8
        //    67: new             Ljava/io/InputStreamReader;
        //    70: dup            
        //    71: aload           12
        //    73: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;)V
        //    76: astore_3       
        //    77: sipush          128
        //    80: newarray        C
        //    82: astore          13
        //    84: new             Ljava/lang/StringBuilder;
        //    87: dup            
        //    88: invokespecial   java/lang/StringBuilder.<init>:()V
        //    91: astore          14
        //    93: aload_3        
        //    94: aload           13
        //    96: iconst_0       
        //    97: aload           13
        //    99: arraylength    
        //   100: invokevirtual   java/io/InputStreamReader.read:([CII)I
        //   103: istore          15
        //   105: iload           15
        //   107: ifgt            126
        //   110: aload_3        
        //   111: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   114: aload           14
        //   116: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   119: astore_2       
        //   120: aload_3        
        //   121: astore          9
        //   123: goto            25
        //   126: aload           14
        //   128: aload           13
        //   130: iconst_0       
        //   131: iload           15
        //   133: invokevirtual   java/lang/StringBuilder.append:([CII)Ljava/lang/StringBuilder;
        //   136: pop            
        //   137: goto            93
        //   140: astore          6
        //   142: aload_3        
        //   143: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   146: aconst_null    
        //   147: areturn        
        //   148: astore          5
        //   150: aload_3        
        //   151: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   154: goto            146
        //   157: astore          4
        //   159: aload_3        
        //   160: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   163: aload           4
        //   165: athrow         
        //   166: aload           9
        //   168: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   171: aload           9
        //   173: pop            
        //   174: goto            146
        //   177: astore          4
        //   179: aload           9
        //   181: astore_3       
        //   182: goto            159
        //   185: astore          11
        //   187: aload           9
        //   189: astore_3       
        //   190: goto            150
        //   193: astore          10
        //   195: aload           9
        //   197: astore_3       
        //   198: goto            142
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                         
        //  -----  -----  -----  -----  -----------------------------
        //  13     19     140    142    Ljava/net/URISyntaxException;
        //  13     19     148    150    Ljava/io/IOException;
        //  13     19     157    159    Any
        //  25     36     193    201    Ljava/net/URISyntaxException;
        //  25     36     185    193    Ljava/io/IOException;
        //  25     36     177    185    Any
        //  46     56     193    201    Ljava/net/URISyntaxException;
        //  46     56     185    193    Ljava/io/IOException;
        //  46     56     177    185    Any
        //  67     77     193    201    Ljava/net/URISyntaxException;
        //  67     77     185    193    Ljava/io/IOException;
        //  67     77     177    185    Any
        //  77     93     140    142    Ljava/net/URISyntaxException;
        //  77     93     148    150    Ljava/io/IOException;
        //  77     93     157    159    Any
        //  93     105    140    142    Ljava/net/URISyntaxException;
        //  93     105    148    150    Ljava/io/IOException;
        //  93     105    157    159    Any
        //  110    120    140    142    Ljava/net/URISyntaxException;
        //  110    120    148    150    Ljava/io/IOException;
        //  110    120    157    159    Any
        //  126    137    140    142    Ljava/net/URISyntaxException;
        //  126    137    148    150    Ljava/io/IOException;
        //  126    137    157    159    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0025:
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
