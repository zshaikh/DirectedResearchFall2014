package com.facebook.widget;

import android.os.*;
import java.util.*;
import android.content.*;
import android.graphics.*;
import com.facebook.internal.*;
import java.net.*;
import java.io.*;

class ImageDownloader
{
    private static final int CACHE_READ_QUEUE_MAX_CONCURRENT = 2;
    private static final int DOWNLOAD_QUEUE_MAX_CONCURRENT = 8;
    private static WorkQueue cacheReadQueue;
    private static WorkQueue downloadQueue;
    private static final Handler handler;
    private static final Map pendingRequests;
    
    static {
        handler = new Handler();
        ImageDownloader.downloadQueue = new WorkQueue(8);
        ImageDownloader.cacheReadQueue = new WorkQueue(2);
        pendingRequests = new HashMap();
    }
    
    static boolean cancelRequest(final ImageRequest imageRequest) {
        final ImageDownloader$RequestKey imageDownloader$RequestKey = new ImageDownloader$RequestKey(imageRequest.getImageUrl(), imageRequest.getCallerTag());
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
    
    private static void download(final ImageDownloader$RequestKey p0, final Context p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore_2       
        //     2: aload_0        
        //     3: getfield        com/facebook/widget/ImageDownloader$RequestKey.url:Ljava/net/URL;
        //     6: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
        //     9: checkcast       Ljava/net/HttpURLConnection;
        //    12: astore          12
        //    14: aload           12
        //    16: iconst_0       
        //    17: invokevirtual   java/net/HttpURLConnection.setInstanceFollowRedirects:(Z)V
        //    20: aload           12
        //    22: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //    25: lookupswitch {
        //              200: 287
        //              301: 173
        //              302: 173
        //          default: 60
        //        }
        //    60: aload           12
        //    62: invokevirtual   java/net/HttpURLConnection.getErrorStream:()Ljava/io/InputStream;
        //    65: astore          26
        //    67: aload           26
        //    69: astore          4
        //    71: new             Ljava/io/InputStreamReader;
        //    74: dup            
        //    75: aload           4
        //    77: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;)V
        //    80: astore          27
        //    82: sipush          128
        //    85: newarray        C
        //    87: astore          28
        //    89: new             Ljava/lang/StringBuilder;
        //    92: dup            
        //    93: invokespecial   java/lang/StringBuilder.<init>:()V
        //    96: astore          29
        //    98: aload           27
        //   100: aload           28
        //   102: iconst_0       
        //   103: aload           28
        //   105: arraylength    
        //   106: invokevirtual   java/io/InputStreamReader.read:([CII)I
        //   109: istore          30
        //   111: iload           30
        //   113: ifle            320
        //   116: aload           29
        //   118: aload           28
        //   120: iconst_0       
        //   121: iload           30
        //   123: invokevirtual   java/lang/StringBuilder.append:([CII)Ljava/lang/StringBuilder;
        //   126: pop            
        //   127: goto            98
        //   130: astore          21
        //   132: aload           12
        //   134: astore          5
        //   136: aload           21
        //   138: astore_3       
        //   139: aload           4
        //   141: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   144: aload           5
        //   146: invokestatic    com/facebook/internal/Utility.disconnectQuietly:(Ljava/net/URLConnection;)V
        //   149: aload_3        
        //   150: astore          6
        //   152: iload_2        
        //   153: istore          7
        //   155: aconst_null    
        //   156: astore          8
        //   158: iload           7
        //   160: ifeq            172
        //   163: aload_0        
        //   164: aload           6
        //   166: aload           8
        //   168: iconst_0       
        //   169: invokestatic    com/facebook/widget/ImageDownloader.issueResponse:(Lcom/facebook/widget/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
        //   172: return         
        //   173: aload           12
        //   175: ldc             "location"
        //   177: invokevirtual   java/net/HttpURLConnection.getHeaderField:(Ljava/lang/String;)Ljava/lang/String;
        //   180: astore          23
        //   182: aload           23
        //   184: invokestatic    com/facebook/internal/Utility.isNullOrEmpty:(Ljava/lang/String;)Z
        //   187: ifne            445
        //   190: new             Ljava/net/URL;
        //   193: dup            
        //   194: aload           23
        //   196: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //   199: astore          24
        //   201: aload_1        
        //   202: aload_0        
        //   203: getfield        com/facebook/widget/ImageDownloader$RequestKey.url:Ljava/net/URL;
        //   206: aload           24
        //   208: invokestatic    com/facebook/widget/UrlRedirectCache.cacheUrlRedirect:(Landroid/content/Context;Ljava/net/URL;Ljava/net/URL;)V
        //   211: aload_0        
        //   212: invokestatic    com/facebook/widget/ImageDownloader.removePendingRequest:(Lcom/facebook/widget/ImageDownloader$RequestKey;)Lcom/facebook/widget/ImageDownloader$DownloaderContext;
        //   215: astore          25
        //   217: aload           25
        //   219: ifnull          252
        //   222: aload           25
        //   224: getfield        com/facebook/widget/ImageDownloader$DownloaderContext.isCancelled:Z
        //   227: ifne            252
        //   230: aload           25
        //   232: getfield        com/facebook/widget/ImageDownloader$DownloaderContext.request:Lcom/facebook/widget/ImageRequest;
        //   235: new             Lcom/facebook/widget/ImageDownloader$RequestKey;
        //   238: dup            
        //   239: aload           24
        //   241: aload_0        
        //   242: getfield        com/facebook/widget/ImageDownloader$RequestKey.tag:Ljava/lang/Object;
        //   245: invokespecial   com/facebook/widget/ImageDownloader$RequestKey.<init>:(Ljava/net/URL;Ljava/lang/Object;)V
        //   248: iconst_0       
        //   249: invokestatic    com/facebook/widget/ImageDownloader.enqueueCacheRead:(Lcom/facebook/widget/ImageRequest;Lcom/facebook/widget/ImageDownloader$RequestKey;Z)V
        //   252: iconst_0       
        //   253: istore_2       
        //   254: aconst_null    
        //   255: astore          19
        //   257: aconst_null    
        //   258: astore          20
        //   260: aconst_null    
        //   261: astore          18
        //   263: aload           18
        //   265: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   268: aload           12
        //   270: invokestatic    com/facebook/internal/Utility.disconnectQuietly:(Ljava/net/URLConnection;)V
        //   273: iload_2        
        //   274: istore          7
        //   276: aload           19
        //   278: astore          8
        //   280: aload           20
        //   282: astore          6
        //   284: goto            158
        //   287: aload_1        
        //   288: aload           12
        //   290: invokestatic    com/facebook/widget/ImageResponseCache.interceptAndCacheImageStream:(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
        //   293: astore          15
        //   295: aload           15
        //   297: astore          4
        //   299: aload           4
        //   301: invokestatic    android/graphics/BitmapFactory.decodeStream:(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
        //   304: astore          17
        //   306: aload           4
        //   308: astore          18
        //   310: aload           17
        //   312: astore          19
        //   314: aconst_null    
        //   315: astore          20
        //   317: goto            263
        //   320: aload           27
        //   322: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   325: new             Lcom/facebook/FacebookException;
        //   328: dup            
        //   329: aload           29
        //   331: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   334: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/String;)V
        //   337: astore          20
        //   339: aload           4
        //   341: astore          18
        //   343: aconst_null    
        //   344: astore          19
        //   346: goto            263
        //   349: astore          9
        //   351: aconst_null    
        //   352: astore          10
        //   354: aconst_null    
        //   355: astore          11
        //   357: aload           10
        //   359: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   362: aload           11
        //   364: invokestatic    com/facebook/internal/Utility.disconnectQuietly:(Ljava/net/URLConnection;)V
        //   367: aload           9
        //   369: athrow         
        //   370: astore          14
        //   372: aload           12
        //   374: astore          11
        //   376: aload           14
        //   378: astore          9
        //   380: aconst_null    
        //   381: astore          10
        //   383: goto            357
        //   386: astore          16
        //   388: aload           4
        //   390: astore          10
        //   392: aload           12
        //   394: astore          11
        //   396: aload           16
        //   398: astore          9
        //   400: goto            357
        //   403: astore_3       
        //   404: aconst_null    
        //   405: astore          4
        //   407: aconst_null    
        //   408: astore          5
        //   410: goto            139
        //   413: astore          13
        //   415: aload           12
        //   417: astore          5
        //   419: aload           13
        //   421: astore_3       
        //   422: aconst_null    
        //   423: astore          4
        //   425: goto            139
        //   428: astore          22
        //   430: aload           12
        //   432: astore          5
        //   434: aload           22
        //   436: astore_3       
        //   437: iconst_0       
        //   438: istore_2       
        //   439: aconst_null    
        //   440: astore          4
        //   442: goto            139
        //   445: iconst_0       
        //   446: istore_2       
        //   447: aconst_null    
        //   448: astore          19
        //   450: aconst_null    
        //   451: astore          20
        //   453: aconst_null    
        //   454: astore          18
        //   456: goto            263
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  2      14     403    413    Ljava/io/IOException;
        //  2      14     349    357    Any
        //  14     60     413    428    Ljava/io/IOException;
        //  14     60     370    386    Any
        //  60     67     413    428    Ljava/io/IOException;
        //  60     67     370    386    Any
        //  71     98     130    139    Ljava/io/IOException;
        //  71     98     386    403    Any
        //  98     111    130    139    Ljava/io/IOException;
        //  98     111    386    403    Any
        //  116    127    130    139    Ljava/io/IOException;
        //  116    127    386    403    Any
        //  173    217    428    445    Ljava/io/IOException;
        //  173    217    370    386    Any
        //  222    252    428    445    Ljava/io/IOException;
        //  222    252    370    386    Any
        //  287    295    413    428    Ljava/io/IOException;
        //  287    295    370    386    Any
        //  299    306    130    139    Ljava/io/IOException;
        //  299    306    386    403    Any
        //  320    339    130    139    Ljava/io/IOException;
        //  320    339    386    403    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 212, Size: 212
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
    
    static void downloadAsync(final ImageRequest request) {
        if (request == null) {
            return;
        }
        while (true) {
            final ImageDownloader$RequestKey imageDownloader$RequestKey = new ImageDownloader$RequestKey(request.getImageUrl(), request.getCallerTag());
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
    
    private static void issueResponse(final ImageDownloader$RequestKey imageDownloader$RequestKey, final Exception ex, final Bitmap bitmap, final boolean b) {
        final ImageDownloader$DownloaderContext removePendingRequest = removePendingRequest(imageDownloader$RequestKey);
        if (removePendingRequest != null && !removePendingRequest.isCancelled) {
            final ImageRequest request = removePendingRequest.request;
            final ImageRequest$Callback callback = request.getCallback();
            if (callback != null) {
                ImageDownloader.handler.post((Runnable)new ImageDownloader$1(request, ex, b, bitmap, callback));
            }
        }
    }
    
    static void prioritizeRequest(final ImageRequest imageRequest) {
        final ImageDownloader$RequestKey imageDownloader$RequestKey = new ImageDownloader$RequestKey(imageRequest.getImageUrl(), imageRequest.getCallerTag());
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
                final URL redirectedUrl = UrlRedirectCache.getRedirectedUrl(context, imageDownloader$RequestKey.url);
                if (redirectedUrl == null) {
                    break Label_0118;
                }
                final InputStream cachedImageStream = ImageResponseCache.getCachedImageStream(redirectedUrl, context);
                boolean b2 = false;
                if (cachedImageStream != null) {
                    b2 = true;
                }
                final boolean b3 = b2;
                InputStream cachedImageStream2 = cachedImageStream;
                final boolean b4 = b3;
                if (!b4) {
                    cachedImageStream2 = ImageResponseCache.getCachedImageStream(imageDownloader$RequestKey.url, context);
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
