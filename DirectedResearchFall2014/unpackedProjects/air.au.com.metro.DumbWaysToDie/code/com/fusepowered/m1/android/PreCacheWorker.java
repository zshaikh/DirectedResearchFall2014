package com.fusepowered.m1.android;

import android.content.*;
import org.apache.http.*;
import android.text.*;

class PreCacheWorker extends Thread
{
    private static boolean busy;
    private Context appContext;
    private DTOCachedVideo[] cachedVideos;
    private volatile boolean downloadedNewVideos;
    private String noVideosToCacheURL;
    
    private PreCacheWorker(final DTOCachedVideo[] cachedVideos, final Context context, final String noVideosToCacheURL) {
        super();
        this.downloadedNewVideos = false;
        this.cachedVideos = cachedVideos;
        this.noVideosToCacheURL = noVideosToCacheURL;
        this.appContext = context.getApplicationContext();
    }
    
    private void handleContent(final DTOCachedVideo dtoCachedVideo, final HttpEntity httpEntity) {
        final Header contentType = httpEntity.getContentType();
        if (contentType != null) {
            final String value = contentType.getValue();
            if (value != null && value.equalsIgnoreCase("application/json")) {
                this.handleJson(dtoCachedVideo, httpEntity);
            }
            else if (value != null && value.startsWith("video/")) {
                this.handleVideoFile(dtoCachedVideo, httpEntity);
            }
        }
    }
    
    private void handleJson(final DTOCachedVideo p0, final HttpEntity p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_2        
        //     1: invokeinterface org/apache/http/HttpEntity.getContent:()Ljava/io/InputStream;
        //     6: invokestatic    com/fusepowered/m1/android/HttpGetRequest.convertStreamToString:(Ljava/io/InputStream;)Ljava/lang/String;
        //     9: astore          5
        //    11: aload           5
        //    13: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //    16: istore          6
        //    18: aconst_null    
        //    19: astore          7
        //    21: iload           6
        //    23: ifne            41
        //    26: new             Lcom/fusepowered/m1/android/VideoAd;
        //    29: dup            
        //    30: aload           5
        //    32: invokespecial   com/fusepowered/m1/android/VideoAd.<init>:(Ljava/lang/String;)V
        //    35: astore          8
        //    37: aload           8
        //    39: astore          7
        //    41: aload           7
        //    43: ifnull          86
        //    46: aload           7
        //    48: invokevirtual   com/fusepowered/m1/android/VideoAd.isValid:()Z
        //    51: ifeq            86
        //    54: aload           7
        //    56: iconst_1       
        //    57: putfield        com/fusepowered/m1/android/VideoAd.downloadPriority:I
        //    60: aload_0        
        //    61: getfield        com/fusepowered/m1/android/PreCacheWorker.appContext:Landroid/content/Context;
        //    64: aconst_null    
        //    65: aload           7
        //    67: new             Lcom/fusepowered/m1/android/PreCacheWorker$1;
        //    70: dup            
        //    71: aload_0        
        //    72: aload_1        
        //    73: invokespecial   com/fusepowered/m1/android/PreCacheWorker$1.<init>:(Lcom/fusepowered/m1/android/PreCacheWorker;Lcom/fusepowered/m1/android/DTOCachedVideo;)V
        //    76: invokestatic    com/fusepowered/m1/android/AdCache.startDownloadTask:(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m1/android/CachedAd;Lcom/fusepowered/m1/android/AdCache$AdCacheTaskListener;)Z
        //    79: ifeq            111
        //    82: aload_0        
        //    83: invokevirtual   java/lang/Object.wait:()V
        //    86: return         
        //    87: astore          4
        //    89: aload           4
        //    91: invokevirtual   java/lang/IllegalStateException.printStackTrace:()V
        //    94: ldc             "Pre cache worker: Millennial ad return failed. Invalid response data."
        //    96: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;)V
        //    99: return         
        //   100: astore_3       
        //   101: aload_3        
        //   102: invokevirtual   java/io/IOException.printStackTrace:()V
        //   105: ldc             "Pre cache worker: Millennial ad return failed. Invalid response data."
        //   107: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;)V
        //   110: return         
        //   111: aload_1        
        //   112: getfield        com/fusepowered/m1/android/DTOCachedVideo.preCacheStartURL:Ljava/lang/String;
        //   115: invokestatic    com/fusepowered/m1/android/MMSDK$Event.logEvent:(Ljava/lang/String;)V
        //   118: aload_1        
        //   119: getfield        com/fusepowered/m1/android/DTOCachedVideo.preCacheFailedURL:Ljava/lang/String;
        //   122: invokestatic    com/fusepowered/m1/android/MMSDK$Event.logEvent:(Ljava/lang/String;)V
        //   125: return         
        //   126: astore          9
        //   128: aload           9
        //   130: invokevirtual   java/lang/InterruptedException.printStackTrace:()V
        //   133: iconst_1       
        //   134: anewarray       Ljava/lang/Object;
        //   137: astore          10
        //   139: aload           10
        //   141: iconst_0       
        //   142: aload           9
        //   144: invokevirtual   java/lang/InterruptedException.getMessage:()Ljava/lang/String;
        //   147: aastore        
        //   148: ldc             "Pre cache worker interrupted: %s"
        //   150: aload           10
        //   152: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   155: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  0      18     87     100    Ljava/lang/IllegalStateException;
        //  0      18     100    111    Ljava/io/IOException;
        //  26     37     87     100    Ljava/lang/IllegalStateException;
        //  26     37     100    111    Ljava/io/IOException;
        //  54     86     126    156    Ljava/lang/InterruptedException;
        //  111    125    126    156    Ljava/lang/InterruptedException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0086:
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
    
    private void handleVideoFile(final DTOCachedVideo dtoCachedVideo, final HttpEntity httpEntity) {
        if (!TextUtils.isEmpty((CharSequence)dtoCachedVideo.videoFileId)) {
            MMSDK.Event.logEvent(dtoCachedVideo.preCacheStartURL);
            if (!AdCache.downloadComponentToCache(dtoCachedVideo.url, dtoCachedVideo.videoFileId + "video.dat", this.appContext)) {
                MMSDK.Event.logEvent(dtoCachedVideo.preCacheFailedURL);
                return;
            }
            MMSDK.Event.logEvent(dtoCachedVideo.preCacheCompleteURL);
        }
    }
    
    static void preCacheVideos(final DTOCachedVideo[] array, final Context context, final String s) {
        synchronized (PreCacheWorker.class) {
            if (!PreCacheWorker.busy) {
                PreCacheWorker.busy = true;
                new PreCacheWorker(array, context, s).start();
            }
        }
    }
    
    @Override
    public void run() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_0        
        //     3: getfield        com/fusepowered/m1/android/PreCacheWorker.cachedVideos:[Lcom/fusepowered/m1/android/DTOCachedVideo;
        //     6: ifnull          196
        //     9: aload_0        
        //    10: getfield        com/fusepowered/m1/android/PreCacheWorker.cachedVideos:[Lcom/fusepowered/m1/android/DTOCachedVideo;
        //    13: astore          5
        //    15: aload           5
        //    17: arraylength    
        //    18: istore          6
        //    20: iconst_0       
        //    21: istore          7
        //    23: iload           7
        //    25: iload           6
        //    27: if_icmpge       196
        //    30: aload           5
        //    32: iload           7
        //    34: aaload         
        //    35: astore          8
        //    37: new             Lcom/fusepowered/m1/android/HttpGetRequest;
        //    40: dup            
        //    41: invokespecial   com/fusepowered/m1/android/HttpGetRequest.<init>:()V
        //    44: aload           8
        //    46: getfield        com/fusepowered/m1/android/DTOCachedVideo.url:Ljava/lang/String;
        //    49: invokevirtual   com/fusepowered/m1/android/HttpGetRequest.get:(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
        //    52: astore          11
        //    54: aload           11
        //    56: ifnonnull       67
        //    59: ldc             "Pre cache worker: HTTP response is null"
        //    61: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;)V
        //    64: goto            254
        //    67: aload           11
        //    69: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
        //    74: astore          12
        //    76: aload           12
        //    78: ifnonnull       165
        //    81: ldc             "Pre cache worker: Null HTTP entity"
        //    83: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;)V
        //    86: goto            254
        //    89: astore_1       
        //    90: ldc             Lcom/fusepowered/m1/android/PreCacheWorker;.class
        //    92: monitorenter   
        //    93: iconst_0       
        //    94: putstatic       com/fusepowered/m1/android/PreCacheWorker.busy:Z
        //    97: aload_0        
        //    98: getfield        com/fusepowered/m1/android/PreCacheWorker.downloadedNewVideos:Z
        //   101: ifne            128
        //   104: aload_0        
        //   105: getfield        com/fusepowered/m1/android/PreCacheWorker.noVideosToCacheURL:Ljava/lang/String;
        //   108: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   111: ifne            128
        //   114: aload_0        
        //   115: getfield        com/fusepowered/m1/android/PreCacheWorker.cachedVideos:[Lcom/fusepowered/m1/android/DTOCachedVideo;
        //   118: ifnonnull       128
        //   121: aload_0        
        //   122: getfield        com/fusepowered/m1/android/PreCacheWorker.noVideosToCacheURL:Ljava/lang/String;
        //   125: invokestatic    com/fusepowered/m1/android/MMSDK$Event.logEvent:(Ljava/lang/String;)V
        //   128: ldc             Lcom/fusepowered/m1/android/PreCacheWorker;.class
        //   130: monitorexit    
        //   131: aload_1        
        //   132: athrow         
        //   133: astore_2       
        //   134: aload_0        
        //   135: monitorexit    
        //   136: aload_2        
        //   137: athrow         
        //   138: astore          9
        //   140: iconst_1       
        //   141: anewarray       Ljava/lang/Object;
        //   144: astore          10
        //   146: aload           10
        //   148: iconst_0       
        //   149: aload           9
        //   151: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   154: aastore        
        //   155: ldc             "Pre cache worker HTTP error: %s"
        //   157: aload           10
        //   159: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   162: goto            254
        //   165: aload           12
        //   167: invokeinterface org/apache/http/HttpEntity.getContentLength:()J
        //   172: lconst_0       
        //   173: lcmp           
        //   174: ifne            185
        //   177: ldc             "Pre cache worker: Millennial ad return failed. Zero content length returned."
        //   179: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;)V
        //   182: goto            254
        //   185: aload_0        
        //   186: aload           8
        //   188: aload           12
        //   190: invokespecial   com/fusepowered/m1/android/PreCacheWorker.handleContent:(Lcom/fusepowered/m1/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
        //   193: goto            254
        //   196: ldc             Lcom/fusepowered/m1/android/PreCacheWorker;.class
        //   198: monitorenter   
        //   199: iconst_0       
        //   200: putstatic       com/fusepowered/m1/android/PreCacheWorker.busy:Z
        //   203: aload_0        
        //   204: getfield        com/fusepowered/m1/android/PreCacheWorker.downloadedNewVideos:Z
        //   207: ifne            234
        //   210: aload_0        
        //   211: getfield        com/fusepowered/m1/android/PreCacheWorker.noVideosToCacheURL:Ljava/lang/String;
        //   214: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   217: ifne            234
        //   220: aload_0        
        //   221: getfield        com/fusepowered/m1/android/PreCacheWorker.cachedVideos:[Lcom/fusepowered/m1/android/DTOCachedVideo;
        //   224: ifnonnull       234
        //   227: aload_0        
        //   228: getfield        com/fusepowered/m1/android/PreCacheWorker.noVideosToCacheURL:Ljava/lang/String;
        //   231: invokestatic    com/fusepowered/m1/android/MMSDK$Event.logEvent:(Ljava/lang/String;)V
        //   234: ldc             Lcom/fusepowered/m1/android/PreCacheWorker;.class
        //   236: monitorexit    
        //   237: aload_0        
        //   238: monitorexit    
        //   239: return         
        //   240: astore          4
        //   242: ldc             Lcom/fusepowered/m1/android/PreCacheWorker;.class
        //   244: monitorexit    
        //   245: aload           4
        //   247: athrow         
        //   248: astore_3       
        //   249: ldc             Lcom/fusepowered/m1/android/PreCacheWorker;.class
        //   251: monitorexit    
        //   252: aload_3        
        //   253: athrow         
        //   254: iinc            7, 1
        //   257: goto            23
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  2      20     89     254    Any
        //  30     37     89     254    Any
        //  37     54     138    165    Ljava/lang/Exception;
        //  37     54     89     254    Any
        //  59     64     138    165    Ljava/lang/Exception;
        //  59     64     89     254    Any
        //  67     76     138    165    Ljava/lang/Exception;
        //  67     76     89     254    Any
        //  81     86     89     254    Any
        //  90     93     133    138    Any
        //  93     128    248    254    Any
        //  128    131    248    254    Any
        //  131    133    133    138    Any
        //  140    162    89     254    Any
        //  165    182    89     254    Any
        //  185    193    89     254    Any
        //  196    199    133    138    Any
        //  199    234    240    248    Any
        //  234    237    240    248    Any
        //  242    245    240    248    Any
        //  245    248    133    138    Any
        //  249    252    248    254    Any
        //  252    254    133    138    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0128:
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
