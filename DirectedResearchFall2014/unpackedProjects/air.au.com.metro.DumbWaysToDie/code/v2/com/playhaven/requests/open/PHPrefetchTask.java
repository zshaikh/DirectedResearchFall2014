package v2.com.playhaven.requests.open;

import android.os.*;
import v2.com.playhaven.listeners.*;
import v2.com.playhaven.utils.*;
import java.net.*;

public class PHPrefetchTask extends AsyncTask<Integer, Integer, Integer>
{
    private static final String GZIP_ENCODING = "gzip";
    public PHPrefetchTaskListener listener;
    public URL url;
    
    protected Integer doInBackground(final Integer... p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: sipush          400
        //     3: istore_2       
        //     4: invokestatic    v2/com/playhaven/cache/PHCache.hasBeenInstalled:()Z
        //     7: ifne            15
        //    10: iload_2        
        //    11: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //    14: areturn        
        //    15: invokestatic    v2/com/playhaven/cache/PHCache.getSharedCache:()Lv2/com/playhaven/cache/PHCache;
        //    18: astore          5
        //    20: aload           5
        //    22: monitorenter   
        //    23: aload_0        
        //    24: getfield        v2/com/playhaven/requests/open/PHPrefetchTask.url:Ljava/net/URL;
        //    27: ifnonnull       44
        //    30: sipush          400
        //    33: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //    36: astore          16
        //    38: aload           5
        //    40: monitorexit    
        //    41: aload           16
        //    43: areturn        
        //    44: new             Lorg/apache/http/impl/client/DefaultHttpClient;
        //    47: dup            
        //    48: invokespecial   org/apache/http/impl/client/DefaultHttpClient.<init>:()V
        //    51: astore          7
        //    53: new             Lorg/apache/http/client/methods/HttpGet;
        //    56: dup            
        //    57: aload_0        
        //    58: getfield        v2/com/playhaven/requests/open/PHPrefetchTask.url:Ljava/net/URL;
        //    61: invokevirtual   java/net/URL.toString:()Ljava/lang/String;
        //    64: invokespecial   org/apache/http/client/methods/HttpGet.<init>:(Ljava/lang/String;)V
        //    67: astore          8
        //    69: aload           8
        //    71: ldc             "Accept-Encoding"
        //    73: ldc             "gzip"
        //    75: invokevirtual   org/apache/http/client/methods/HttpGet.addHeader:(Ljava/lang/String;Ljava/lang/String;)V
        //    78: aload           7
        //    80: aload           8
        //    82: invokevirtual   org/apache/http/impl/client/DefaultHttpClient.execute:(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
        //    85: astore          9
        //    87: aload           9
        //    89: invokeinterface org/apache/http/HttpResponse.getStatusLine:()Lorg/apache/http/StatusLine;
        //    94: invokeinterface org/apache/http/StatusLine.getStatusCode:()I
        //    99: istore_2       
        //   100: iload_2        
        //   101: sipush          200
        //   104: if_icmpeq       119
        //   107: iload_2        
        //   108: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   111: astore          10
        //   113: aload           5
        //   115: monitorexit    
        //   116: aload           10
        //   118: areturn        
        //   119: aload           9
        //   121: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
        //   126: astore          11
        //   128: aload           11
        //   130: invokeinterface org/apache/http/HttpEntity.getContentEncoding:()Lorg/apache/http/Header;
        //   135: astore          15
        //   137: aload           15
        //   139: astore          13
        //   141: aload           13
        //   143: ifnonnull       181
        //   146: iconst_0       
        //   147: istore          14
        //   149: ldc             "Prefetch done....caching file"
        //   151: invokestatic    v2/com/playhaven/utils/PHStringUtil.log:(Ljava/lang/String;)V
        //   154: invokestatic    v2/com/playhaven/cache/PHCache.getSharedCache:()Lv2/com/playhaven/cache/PHCache;
        //   157: aload_0        
        //   158: getfield        v2/com/playhaven/requests/open/PHPrefetchTask.url:Ljava/net/URL;
        //   161: aload           11
        //   163: invokeinterface org/apache/http/HttpEntity.getContent:()Ljava/io/InputStream;
        //   168: iload           14
        //   170: invokevirtual   v2/com/playhaven/cache/PHCache.cacheFile:(Ljava/net/URL;Ljava/io/InputStream;Z)V
        //   173: aload           5
        //   175: monitorexit    
        //   176: iload_2        
        //   177: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   180: areturn        
        //   181: aload           13
        //   183: invokeinterface org/apache/http/Header.getValue:()Ljava/lang/String;
        //   188: ldc             "gzip"
        //   190: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   193: istore          14
        //   195: goto            149
        //   198: astore          6
        //   200: aload           5
        //   202: monitorexit    
        //   203: aload           6
        //   205: athrow         
        //   206: astore_3       
        //   207: aload_3        
        //   208: ldc             "PHPrefetchTask - doInBackground"
        //   210: getstatic       v2/com/playhaven/requests/crashreport/PHCrashReport$Urgency.low:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;
        //   213: invokestatic    v2/com/playhaven/requests/crashreport/PHCrashReport.reportCrash:(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;
        //   216: pop            
        //   217: goto            176
        //   220: astore          12
        //   222: aconst_null    
        //   223: astore          13
        //   225: goto            141
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  15     23     206    220    Ljava/lang/Exception;
        //  23     41     198    206    Any
        //  44     100    198    206    Any
        //  107    116    198    206    Any
        //  119    128    198    206    Any
        //  128    137    220    228    Ljava/lang/UnsupportedOperationException;
        //  128    137    198    206    Any
        //  149    176    198    206    Any
        //  181    195    198    206    Any
        //  200    203    198    206    Any
        //  203    206    206    220    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0141:
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
    
    public PHPrefetchTaskListener getPrefetchListener() {
        return this.listener;
    }
    
    public URL getURL() {
        return this.url;
    }
    
    protected void onPostExecute(final Integer n) {
        if (this.listener != null) {
            this.listener.onPrefetchDone(n);
        }
    }
    
    protected void onProgressUpdate(final Integer... array) {
    }
    
    public void setPrefetchListener(final PHPrefetchTaskListener listener) {
        this.listener = listener;
    }
    
    public void setURL(final String s) {
        try {
            this.url = new URL(s);
        }
        catch (MalformedURLException ex) {
            this.url = null;
            PHStringUtil.log("Malformed URL in PHPrefetchTask: " + s);
        }
    }
}
