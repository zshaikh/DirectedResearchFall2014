package com.facebook.internal;

import java.util.*;
import android.content.*;
import android.os.*;
import android.graphics.*;
import java.net.*;
import java.io.*;

public class ImageDownloader
{
    private static final int CACHE_READ_QUEUE_MAX_CONCURRENT = 2;
    private static final int DOWNLOAD_QUEUE_MAX_CONCURRENT = 8;
    private static WorkQueue cacheReadQueue;
    private static WorkQueue downloadQueue;
    private static Handler handler;
    private static final Map<ImageDownloader$RequestKey, ImageDownloader$DownloaderContext> pendingRequests;
    
    static {
        ImageDownloader.downloadQueue = new WorkQueue(8);
        ImageDownloader.cacheReadQueue = new WorkQueue(2);
        pendingRequests = new HashMap<ImageDownloader$RequestKey, ImageDownloader$DownloaderContext>();
    }
    
    public static boolean cancelRequest(final ImageRequest imageRequest) {
        final ImageDownloader$RequestKey imageDownloader$RequestKey = new ImageDownloader$RequestKey(imageRequest.getImageUri(), imageRequest.getCallerTag());
        synchronized (ImageDownloader.pendingRequests) {
            final ImageDownloader$DownloaderContext imageDownloader$DownloaderContext = ImageDownloader.pendingRequests.get(imageDownloader$RequestKey);
            boolean b = false;
            if (imageDownloader$DownloaderContext != null) {
                if (imageDownloader$DownloaderContext.workItem.cancel()) {
                    ImageDownloader.pendingRequests.remove(imageDownloader$RequestKey);
                    b = true;
                }
                else {
                    imageDownloader$DownloaderContext.isCancelled = true;
                    b = true;
                }
            }
            return b;
        }
    }
    
    public static void clearCache(final Context context) {
        ImageResponseCache.clearCache(context);
        UrlRedirectCache.clearCache(context);
    }
    
    private static void download(final ImageDownloader$RequestKey p0, final Context p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore_2       
        //     2: new             Ljava/net/URL;
        //     5: dup            
        //     6: aload_0        
        //     7: getfield        com/facebook/internal/ImageDownloader$RequestKey.uri:Ljava/net/URI;
        //    10: invokevirtual   java/net/URI.toString:()Ljava/lang/String;
        //    13: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //    16: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
        //    19: checkcast       Ljava/net/HttpURLConnection;
        //    22: astore          14
        //    24: aload           14
        //    26: iconst_0       
        //    27: invokevirtual   java/net/HttpURLConnection.setInstanceFollowRedirects:(Z)V
        //    30: aload           14
        //    32: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //    35: lookupswitch {
        //              200: 295
        //              301: 181
        //              302: 181
        //          default: 68
        //        }
        //    68: aload           14
        //    70: invokevirtual   java/net/HttpURLConnection.getErrorStream:()Ljava/io/InputStream;
        //    73: astore          31
        //    75: aload           31
        //    77: astore          4
        //    79: new             Ljava/io/InputStreamReader;
        //    82: dup            
        //    83: aload           4
        //    85: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;)V
        //    88: astore          32
        //    90: sipush          128
        //    93: newarray        C
        //    95: astore          33
        //    97: new             Ljava/lang/StringBuilder;
        //   100: dup            
        //   101: invokespecial   java/lang/StringBuilder.<init>:()V
        //   104: astore          34
        //   106: aload           32
        //   108: aload           33
        //   110: iconst_0       
        //   111: aload           33
        //   113: arraylength    
        //   114: invokevirtual   java/io/InputStreamReader.read:([CII)I
        //   117: istore          35
        //   119: iload           35
        //   121: ifle            328
        //   124: aload           34
        //   126: aload           33
        //   128: iconst_0       
        //   129: iload           35
        //   131: invokevirtual   java/lang/StringBuilder.append:([CII)Ljava/lang/StringBuilder;
        //   134: pop            
        //   135: goto            106
        //   138: astore          25
        //   140: aload           14
        //   142: astore          5
        //   144: aload           25
        //   146: astore_3       
        //   147: aload           4
        //   149: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   152: aload           5
        //   154: invokestatic    com/facebook/internal/Utility.disconnectQuietly:(Ljava/net/URLConnection;)V
        //   157: aload_3        
        //   158: astore          6
        //   160: iload_2        
        //   161: istore          7
        //   163: aconst_null    
        //   164: astore          8
        //   166: iload           7
        //   168: ifeq            180
        //   171: aload_0        
        //   172: aload           6
        //   174: aload           8
        //   176: iconst_0       
        //   177: invokestatic    com/facebook/internal/ImageDownloader.issueResponse:(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
        //   180: return         
        //   181: aload           14
        //   183: ldc             "location"
        //   185: invokevirtual   java/net/HttpURLConnection.getHeaderField:(Ljava/lang/String;)Ljava/lang/String;
        //   188: astore          28
        //   190: aload           28
        //   192: invokestatic    com/facebook/internal/Utility.isNullOrEmpty:(Ljava/lang/String;)Z
        //   195: ifne            531
        //   198: new             Ljava/net/URI;
        //   201: dup            
        //   202: aload           28
        //   204: invokespecial   java/net/URI.<init>:(Ljava/lang/String;)V
        //   207: astore          29
        //   209: aload_1        
        //   210: aload_0        
        //   211: getfield        com/facebook/internal/ImageDownloader$RequestKey.uri:Ljava/net/URI;
        //   214: aload           29
        //   216: invokestatic    com/facebook/internal/UrlRedirectCache.cacheUriRedirect:(Landroid/content/Context;Ljava/net/URI;Ljava/net/URI;)V
        //   219: aload_0        
        //   220: invokestatic    com/facebook/internal/ImageDownloader.removePendingRequest:(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;
        //   223: astore          30
        //   225: aload           30
        //   227: ifnull          260
        //   230: aload           30
        //   232: getfield        com/facebook/internal/ImageDownloader$DownloaderContext.isCancelled:Z
        //   235: ifne            260
        //   238: aload           30
        //   240: getfield        com/facebook/internal/ImageDownloader$DownloaderContext.request:Lcom/facebook/internal/ImageRequest;
        //   243: new             Lcom/facebook/internal/ImageDownloader$RequestKey;
        //   246: dup            
        //   247: aload           29
        //   249: aload_0        
        //   250: getfield        com/facebook/internal/ImageDownloader$RequestKey.tag:Ljava/lang/Object;
        //   253: invokespecial   com/facebook/internal/ImageDownloader$RequestKey.<init>:(Ljava/net/URI;Ljava/lang/Object;)V
        //   256: iconst_0       
        //   257: invokestatic    com/facebook/internal/ImageDownloader.enqueueCacheRead:(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
        //   260: iconst_0       
        //   261: istore_2       
        //   262: aconst_null    
        //   263: astore          23
        //   265: aconst_null    
        //   266: astore          24
        //   268: aconst_null    
        //   269: astore          22
        //   271: aload           22
        //   273: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   276: aload           14
        //   278: invokestatic    com/facebook/internal/Utility.disconnectQuietly:(Ljava/net/URLConnection;)V
        //   281: iload_2        
        //   282: istore          7
        //   284: aload           23
        //   286: astore          8
        //   288: aload           24
        //   290: astore          6
        //   292: goto            166
        //   295: aload_1        
        //   296: aload           14
        //   298: invokestatic    com/facebook/internal/ImageResponseCache.interceptAndCacheImageStream:(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
        //   301: astore          18
        //   303: aload           18
        //   305: astore          4
        //   307: aload           4
        //   309: invokestatic    android/graphics/BitmapFactory.decodeStream:(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
        //   312: astore          21
        //   314: aload           4
        //   316: astore          22
        //   318: aload           21
        //   320: astore          23
        //   322: aconst_null    
        //   323: astore          24
        //   325: goto            271
        //   328: aload           32
        //   330: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   333: new             Lcom/facebook/FacebookException;
        //   336: dup            
        //   337: aload           34
        //   339: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   342: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/String;)V
        //   345: astore          24
        //   347: aload           4
        //   349: astore          22
        //   351: aconst_null    
        //   352: astore          23
        //   354: goto            271
        //   357: astore          12
        //   359: aconst_null    
        //   360: astore          4
        //   362: aconst_null    
        //   363: astore          13
        //   365: aload           4
        //   367: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   370: aload           13
        //   372: invokestatic    com/facebook/internal/Utility.disconnectQuietly:(Ljava/net/URLConnection;)V
        //   375: aload           12
        //   377: astore          6
        //   379: iload_2        
        //   380: istore          7
        //   382: aconst_null    
        //   383: astore          8
        //   385: goto            166
        //   388: astore          9
        //   390: aconst_null    
        //   391: astore          10
        //   393: aconst_null    
        //   394: astore          11
        //   396: aload           10
        //   398: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   401: aload           11
        //   403: invokestatic    com/facebook/internal/Utility.disconnectQuietly:(Ljava/net/URLConnection;)V
        //   406: aload           9
        //   408: athrow         
        //   409: astore          17
        //   411: aload           14
        //   413: astore          11
        //   415: aload           17
        //   417: astore          9
        //   419: aconst_null    
        //   420: astore          10
        //   422: goto            396
        //   425: astore          20
        //   427: aload           4
        //   429: astore          10
        //   431: aload           14
        //   433: astore          11
        //   435: aload           20
        //   437: astore          9
        //   439: goto            396
        //   442: astore          16
        //   444: aload           14
        //   446: astore          13
        //   448: aload           16
        //   450: astore          12
        //   452: aconst_null    
        //   453: astore          4
        //   455: goto            365
        //   458: astore          27
        //   460: aload           14
        //   462: astore          13
        //   464: aload           27
        //   466: astore          12
        //   468: iconst_0       
        //   469: istore_2       
        //   470: aconst_null    
        //   471: astore          4
        //   473: goto            365
        //   476: astore          19
        //   478: aload           14
        //   480: astore          13
        //   482: aload           19
        //   484: astore          12
        //   486: goto            365
        //   489: astore_3       
        //   490: aconst_null    
        //   491: astore          4
        //   493: aconst_null    
        //   494: astore          5
        //   496: goto            147
        //   499: astore          15
        //   501: aload           14
        //   503: astore          5
        //   505: aload           15
        //   507: astore_3       
        //   508: aconst_null    
        //   509: astore          4
        //   511: goto            147
        //   514: astore          26
        //   516: aload           14
        //   518: astore          5
        //   520: aload           26
        //   522: astore_3       
        //   523: iconst_0       
        //   524: istore_2       
        //   525: aconst_null    
        //   526: astore          4
        //   528: goto            147
        //   531: iconst_0       
        //   532: istore_2       
        //   533: aconst_null    
        //   534: astore          23
        //   536: aconst_null    
        //   537: astore          24
        //   539: aconst_null    
        //   540: astore          22
        //   542: goto            271
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                         
        //  -----  -----  -----  -----  -----------------------------
        //  2      24     489    499    Ljava/io/IOException;
        //  2      24     357    365    Ljava/net/URISyntaxException;
        //  2      24     388    396    Any
        //  24     68     499    514    Ljava/io/IOException;
        //  24     68     442    458    Ljava/net/URISyntaxException;
        //  24     68     409    425    Any
        //  68     75     499    514    Ljava/io/IOException;
        //  68     75     442    458    Ljava/net/URISyntaxException;
        //  68     75     409    425    Any
        //  79     106    138    147    Ljava/io/IOException;
        //  79     106    476    489    Ljava/net/URISyntaxException;
        //  79     106    425    442    Any
        //  106    119    138    147    Ljava/io/IOException;
        //  106    119    476    489    Ljava/net/URISyntaxException;
        //  106    119    425    442    Any
        //  124    135    138    147    Ljava/io/IOException;
        //  124    135    476    489    Ljava/net/URISyntaxException;
        //  124    135    425    442    Any
        //  181    225    514    531    Ljava/io/IOException;
        //  181    225    458    476    Ljava/net/URISyntaxException;
        //  181    225    409    425    Any
        //  230    260    514    531    Ljava/io/IOException;
        //  230    260    458    476    Ljava/net/URISyntaxException;
        //  230    260    409    425    Any
        //  295    303    499    514    Ljava/io/IOException;
        //  295    303    442    458    Ljava/net/URISyntaxException;
        //  295    303    409    425    Any
        //  307    314    138    147    Ljava/io/IOException;
        //  307    314    476    489    Ljava/net/URISyntaxException;
        //  307    314    425    442    Any
        //  328    347    138    147    Ljava/io/IOException;
        //  328    347    476    489    Ljava/net/URISyntaxException;
        //  328    347    425    442    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 256, Size: 256
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
    
    public static void downloadAsync(final ImageRequest request) {
        if (request == null) {
            return;
        }
        while (true) {
            final ImageDownloader$RequestKey imageDownloader$RequestKey = new ImageDownloader$RequestKey(request.getImageUri(), request.getCallerTag());
            synchronized (ImageDownloader.pendingRequests) {
                final ImageDownloader$DownloaderContext imageDownloader$DownloaderContext = ImageDownloader.pendingRequests.get(imageDownloader$RequestKey);
                if (imageDownloader$DownloaderContext != null) {
                    imageDownloader$DownloaderContext.request = request;
                    imageDownloader$DownloaderContext.isCancelled = false;
                    imageDownloader$DownloaderContext.workItem.moveToFront();
                    return;
                }
            }
            enqueueCacheRead(request, imageDownloader$RequestKey, request.isCachedRedirectAllowed());
        }
    }
    
    private static void enqueueCacheRead(final ImageRequest imageRequest, final ImageDownloader$RequestKey imageDownloader$RequestKey, final boolean b) {
        enqueueRequest(imageRequest, imageDownloader$RequestKey, ImageDownloader.cacheReadQueue, new ImageDownloader$CacheReadWorkItem(imageRequest.getContext(), imageDownloader$RequestKey, b));
    }
    
    private static void enqueueDownload(final ImageRequest imageRequest, final ImageDownloader$RequestKey imageDownloader$RequestKey) {
        enqueueRequest(imageRequest, imageDownloader$RequestKey, ImageDownloader.downloadQueue, new ImageDownloader$DownloadImageWorkItem(imageRequest.getContext(), imageDownloader$RequestKey));
    }
    
    private static void enqueueRequest(final ImageRequest request, final ImageDownloader$RequestKey imageDownloader$RequestKey, final WorkQueue workQueue, final Runnable runnable) {
        synchronized (ImageDownloader.pendingRequests) {
            final ImageDownloader$DownloaderContext imageDownloader$DownloaderContext = new ImageDownloader$DownloaderContext(null);
            imageDownloader$DownloaderContext.request = request;
            ImageDownloader.pendingRequests.put(imageDownloader$RequestKey, imageDownloader$DownloaderContext);
            imageDownloader$DownloaderContext.workItem = workQueue.addActiveWorkItem(runnable);
        }
    }
    
    private static Handler getHandler() {
        synchronized (ImageDownloader.class) {
            if (ImageDownloader.handler == null) {
                ImageDownloader.handler = new Handler(Looper.getMainLooper());
            }
            return ImageDownloader.handler;
        }
    }
    
    private static void issueResponse(final ImageDownloader$RequestKey imageDownloader$RequestKey, final Exception ex, final Bitmap bitmap, final boolean b) {
        final ImageDownloader$DownloaderContext removePendingRequest = removePendingRequest(imageDownloader$RequestKey);
        if (removePendingRequest != null && !removePendingRequest.isCancelled) {
            final ImageRequest request = removePendingRequest.request;
            final ImageRequest$Callback callback = request.getCallback();
            if (callback != null) {
                getHandler().post((Runnable)new ImageDownloader$1(request, ex, b, bitmap, callback));
            }
        }
    }
    
    public static void prioritizeRequest(final ImageRequest imageRequest) {
        final ImageDownloader$RequestKey imageDownloader$RequestKey = new ImageDownloader$RequestKey(imageRequest.getImageUri(), imageRequest.getCallerTag());
        synchronized (ImageDownloader.pendingRequests) {
            final ImageDownloader$DownloaderContext imageDownloader$DownloaderContext = ImageDownloader.pendingRequests.get(imageDownloader$RequestKey);
            if (imageDownloader$DownloaderContext != null) {
                imageDownloader$DownloaderContext.workItem.moveToFront();
            }
        }
    }
    
    private static void readFromCache(final ImageDownloader$RequestKey imageDownloader$RequestKey, final Context context, final boolean b) {
        while (true) {
            Label_0118: {
                if (!b) {
                    break Label_0118;
                }
                final URI redirectedUri = UrlRedirectCache.getRedirectedUri(context, imageDownloader$RequestKey.uri);
                if (redirectedUri == null) {
                    break Label_0118;
                }
                final InputStream cachedImageStream = ImageResponseCache.getCachedImageStream(redirectedUri, context);
                boolean b2 = false;
                if (cachedImageStream != null) {
                    b2 = true;
                }
                final boolean b3 = b2;
                InputStream cachedImageStream2 = cachedImageStream;
                final boolean b4 = b3;
                if (!b4) {
                    cachedImageStream2 = ImageResponseCache.getCachedImageStream(imageDownloader$RequestKey.uri, context);
                }
                if (cachedImageStream2 != null) {
                    final Bitmap decodeStream = BitmapFactory.decodeStream(cachedImageStream2);
                    Utility.closeQuietly(cachedImageStream2);
                    issueResponse(imageDownloader$RequestKey, null, decodeStream, b4);
                }
                else {
                    final ImageDownloader$DownloaderContext removePendingRequest = removePendingRequest(imageDownloader$RequestKey);
                    if (removePendingRequest != null && !removePendingRequest.isCancelled) {
                        enqueueDownload(removePendingRequest.request, imageDownloader$RequestKey);
                        return;
                    }
                }
                return;
            }
            final boolean b4 = false;
            InputStream cachedImageStream2 = null;
            continue;
        }
    }
    
    private static ImageDownloader$DownloaderContext removePendingRequest(final ImageDownloader$RequestKey imageDownloader$RequestKey) {
        synchronized (ImageDownloader.pendingRequests) {
            return ImageDownloader.pendingRequests.remove(imageDownloader$RequestKey);
        }
    }
}
