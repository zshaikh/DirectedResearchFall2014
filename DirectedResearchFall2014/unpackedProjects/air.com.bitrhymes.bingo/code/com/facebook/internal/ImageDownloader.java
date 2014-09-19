package com.facebook.internal;

import java.util.*;
import android.content.*;
import android.os.*;
import android.graphics.*;
import java.io.*;
import java.net.*;

public class ImageDownloader
{
    private static final int CACHE_READ_QUEUE_MAX_CONCURRENT = 2;
    private static final int DOWNLOAD_QUEUE_MAX_CONCURRENT = 8;
    private static WorkQueue cacheReadQueue;
    private static WorkQueue downloadQueue;
    private static Handler handler;
    private static final Map<RequestKey, DownloaderContext> pendingRequests;
    
    static {
        ImageDownloader.downloadQueue = new WorkQueue(8);
        ImageDownloader.cacheReadQueue = new WorkQueue(2);
        pendingRequests = new HashMap<RequestKey, DownloaderContext>();
    }
    
    public static boolean cancelRequest(final ImageRequest imageRequest) {
        final RequestKey requestKey = new RequestKey(imageRequest.getImageUri(), imageRequest.getCallerTag());
        synchronized (ImageDownloader.pendingRequests) {
            final DownloaderContext downloaderContext = ImageDownloader.pendingRequests.get(requestKey);
            boolean b = false;
            if (downloaderContext != null) {
                b = true;
                if (downloaderContext.workItem.cancel()) {
                    ImageDownloader.pendingRequests.remove(requestKey);
                }
                else {
                    downloaderContext.isCancelled = true;
                }
            }
            return b;
        }
    }
    
    public static void clearCache(final Context context) {
        ImageResponseCache.clearCache(context);
        UrlRedirectCache.clearCache(context);
    }
    
    private static void download(final RequestKey p0, final Context p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_2       
        //     2: new             Ljava/net/URL;
        //     5: dup            
        //     6: aload_0        
        //     7: getfield        com/facebook/internal/ImageDownloader$RequestKey.uri:Ljava/net/URI;
        //    10: invokevirtual   java/net/URI.toString:()Ljava/lang/String;
        //    13: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //    16: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
        //    19: checkcast       Ljava/net/HttpURLConnection;
        //    22: astore          20
        //    24: aload           20
        //    26: iconst_0       
        //    27: invokevirtual   java/net/HttpURLConnection.setInstanceFollowRedirects:(Z)V
        //    30: aload           20
        //    32: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
        //    35: lookupswitch {
        //              200: 281
        //              301: 187
        //              302: 187
        //          default: 68
        //        }
        //    68: aload           20
        //    70: invokevirtual   java/net/HttpURLConnection.getErrorStream:()Ljava/io/InputStream;
        //    73: astore_2       
        //    74: new             Ljava/io/InputStreamReader;
        //    77: dup            
        //    78: aload_2        
        //    79: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;)V
        //    82: astore          39
        //    84: sipush          128
        //    87: newarray        C
        //    89: astore          40
        //    91: new             Ljava/lang/StringBuilder;
        //    94: dup            
        //    95: invokespecial   java/lang/StringBuilder.<init>:()V
        //    98: astore          41
        //   100: aload           39
        //   102: aload           40
        //   104: iconst_0       
        //   105: aload           40
        //   107: arraylength    
        //   108: invokevirtual   java/io/InputStreamReader.read:([CII)I
        //   111: istore          42
        //   113: iload           42
        //   115: ifgt            313
        //   118: aload           39
        //   120: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   123: new             Lcom/facebook/FacebookException;
        //   126: dup            
        //   127: aload           41
        //   129: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   132: invokespecial   com/facebook/FacebookException.<init>:(Ljava/lang/String;)V
        //   135: astore          43
        //   137: iconst_1       
        //   138: istore          30
        //   140: aload_2        
        //   141: astore          29
        //   143: aconst_null    
        //   144: astore          10
        //   146: aload           43
        //   148: astore          31
        //   150: aload           29
        //   152: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   155: aload           20
        //   157: invokestatic    com/facebook/internal/Utility.disconnectQuietly:(Ljava/net/URLConnection;)V
        //   160: iload           30
        //   162: istore          32
        //   164: aload           31
        //   166: astore          8
        //   168: iload           32
        //   170: istore          4
        //   172: iload           4
        //   174: ifeq            186
        //   177: aload_0        
        //   178: aload           8
        //   180: aload           10
        //   182: iconst_0       
        //   183: invokestatic    com/facebook/internal/ImageDownloader.issueResponse:(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
        //   186: return         
        //   187: aload           20
        //   189: ldc             "location"
        //   191: invokevirtual   java/net/HttpURLConnection.getHeaderField:(Ljava/lang/String;)Ljava/lang/String;
        //   194: astore          36
        //   196: aload           36
        //   198: invokestatic    com/facebook/internal/Utility.isNullOrEmpty:(Ljava/lang/String;)Z
        //   201: ifne            591
        //   204: new             Ljava/net/URI;
        //   207: dup            
        //   208: aload           36
        //   210: invokespecial   java/net/URI.<init>:(Ljava/lang/String;)V
        //   213: astore          37
        //   215: aload_1        
        //   216: aload_0        
        //   217: getfield        com/facebook/internal/ImageDownloader$RequestKey.uri:Ljava/net/URI;
        //   220: aload           37
        //   222: invokestatic    com/facebook/internal/UrlRedirectCache.cacheUriRedirect:(Landroid/content/Context;Ljava/net/URI;Ljava/net/URI;)V
        //   225: aload_0        
        //   226: invokestatic    com/facebook/internal/ImageDownloader.removePendingRequest:(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;
        //   229: astore          38
        //   231: aload           38
        //   233: ifnull          591
        //   236: aload           38
        //   238: getfield        com/facebook/internal/ImageDownloader$DownloaderContext.isCancelled:Z
        //   241: ifne            591
        //   244: aload           38
        //   246: getfield        com/facebook/internal/ImageDownloader$DownloaderContext.request:Lcom/facebook/internal/ImageRequest;
        //   249: new             Lcom/facebook/internal/ImageDownloader$RequestKey;
        //   252: dup            
        //   253: aload           37
        //   255: aload_0        
        //   256: getfield        com/facebook/internal/ImageDownloader$RequestKey.tag:Ljava/lang/Object;
        //   259: invokespecial   com/facebook/internal/ImageDownloader$RequestKey.<init>:(Ljava/net/URI;Ljava/lang/Object;)V
        //   262: iconst_0       
        //   263: invokestatic    com/facebook/internal/ImageDownloader.enqueueCacheRead:(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
        //   266: aconst_null    
        //   267: astore          31
        //   269: iconst_0       
        //   270: istore          30
        //   272: aconst_null    
        //   273: astore          29
        //   275: aconst_null    
        //   276: astore          10
        //   278: goto            150
        //   281: aload_1        
        //   282: aload           20
        //   284: invokestatic    com/facebook/internal/ImageResponseCache.interceptAndCacheImageStream:(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
        //   287: astore          24
        //   289: aload           24
        //   291: invokestatic    android/graphics/BitmapFactory.decodeStream:(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
        //   294: astore          28
        //   296: aload           28
        //   298: astore          10
        //   300: aload           24
        //   302: astore          29
        //   304: iconst_1       
        //   305: istore          30
        //   307: aconst_null    
        //   308: astore          31
        //   310: goto            150
        //   313: aload           41
        //   315: aload           40
        //   317: iconst_0       
        //   318: iload           42
        //   320: invokevirtual   java/lang/StringBuilder.append:([CII)Ljava/lang/StringBuilder;
        //   323: pop            
        //   324: goto            100
        //   327: astore          23
        //   329: aload           23
        //   331: astore          5
        //   333: aload_2        
        //   334: astore          6
        //   336: aload           20
        //   338: astore          7
        //   340: iconst_1       
        //   341: istore          4
        //   343: aload           5
        //   345: astore          8
        //   347: aload           6
        //   349: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   352: aload           7
        //   354: invokestatic    com/facebook/internal/Utility.disconnectQuietly:(Ljava/net/URLConnection;)V
        //   357: aload           7
        //   359: pop            
        //   360: aconst_null    
        //   361: astore          10
        //   363: goto            172
        //   366: astore          15
        //   368: iconst_1       
        //   369: istore          4
        //   371: aconst_null    
        //   372: astore          16
        //   374: aconst_null    
        //   375: astore          17
        //   377: aload           15
        //   379: astore          18
        //   381: aload           18
        //   383: astore          8
        //   385: aload           16
        //   387: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   390: aload           17
        //   392: invokestatic    com/facebook/internal/Utility.disconnectQuietly:(Ljava/net/URLConnection;)V
        //   395: aload           17
        //   397: pop            
        //   398: aconst_null    
        //   399: astore          10
        //   401: goto            172
        //   404: astore          11
        //   406: aconst_null    
        //   407: astore          12
        //   409: aconst_null    
        //   410: astore          13
        //   412: aload           11
        //   414: astore          14
        //   416: aload           12
        //   418: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //   421: aload           13
        //   423: invokestatic    com/facebook/internal/Utility.disconnectQuietly:(Ljava/net/URLConnection;)V
        //   426: aload           14
        //   428: athrow         
        //   429: astore          22
        //   431: aload           22
        //   433: astore          14
        //   435: aload_2        
        //   436: astore          12
        //   438: aload           20
        //   440: astore          13
        //   442: goto            416
        //   445: astore          35
        //   447: aload           35
        //   449: astore          14
        //   451: aload           20
        //   453: astore          13
        //   455: aconst_null    
        //   456: astore          12
        //   458: goto            416
        //   461: astore          27
        //   463: aload           24
        //   465: astore          12
        //   467: aload           27
        //   469: astore          14
        //   471: aload           20
        //   473: astore          13
        //   475: goto            416
        //   478: astore          21
        //   480: aload           21
        //   482: astore          18
        //   484: aload_2        
        //   485: astore          16
        //   487: aload           20
        //   489: astore          17
        //   491: iconst_1       
        //   492: istore          4
        //   494: goto            381
        //   497: astore          34
        //   499: aload           34
        //   501: astore          18
        //   503: aload           20
        //   505: astore          17
        //   507: iconst_0       
        //   508: istore          4
        //   510: aconst_null    
        //   511: astore          16
        //   513: goto            381
        //   516: astore          26
        //   518: aload           24
        //   520: astore          16
        //   522: aload           26
        //   524: astore          18
        //   526: aload           20
        //   528: astore          17
        //   530: iconst_1       
        //   531: istore          4
        //   533: goto            381
        //   536: astore_3       
        //   537: iconst_1       
        //   538: istore          4
        //   540: aload_3        
        //   541: astore          5
        //   543: aconst_null    
        //   544: astore          6
        //   546: aconst_null    
        //   547: astore          7
        //   549: goto            343
        //   552: astore          33
        //   554: aload           33
        //   556: astore          5
        //   558: aload           20
        //   560: astore          7
        //   562: iconst_0       
        //   563: istore          4
        //   565: aconst_null    
        //   566: astore          6
        //   568: goto            343
        //   571: astore          25
        //   573: aload           24
        //   575: astore          6
        //   577: aload           25
        //   579: astore          5
        //   581: aload           20
        //   583: astore          7
        //   585: iconst_1       
        //   586: istore          4
        //   588: goto            343
        //   591: aconst_null    
        //   592: astore          31
        //   594: iconst_0       
        //   595: istore          30
        //   597: aconst_null    
        //   598: astore          29
        //   600: aconst_null    
        //   601: astore          10
        //   603: goto            150
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                         
        //  -----  -----  -----  -----  -----------------------------
        //  2      24     536    552    Ljava/io/IOException;
        //  2      24     366    381    Ljava/net/URISyntaxException;
        //  2      24     404    416    Any
        //  24     68     327    343    Ljava/io/IOException;
        //  24     68     478    497    Ljava/net/URISyntaxException;
        //  24     68     429    445    Any
        //  68     100    327    343    Ljava/io/IOException;
        //  68     100    478    497    Ljava/net/URISyntaxException;
        //  68     100    429    445    Any
        //  100    113    327    343    Ljava/io/IOException;
        //  100    113    478    497    Ljava/net/URISyntaxException;
        //  100    113    429    445    Any
        //  118    137    327    343    Ljava/io/IOException;
        //  118    137    478    497    Ljava/net/URISyntaxException;
        //  118    137    429    445    Any
        //  187    231    552    571    Ljava/io/IOException;
        //  187    231    497    516    Ljava/net/URISyntaxException;
        //  187    231    445    461    Any
        //  236    266    552    571    Ljava/io/IOException;
        //  236    266    497    516    Ljava/net/URISyntaxException;
        //  236    266    445    461    Any
        //  281    289    327    343    Ljava/io/IOException;
        //  281    289    478    497    Ljava/net/URISyntaxException;
        //  281    289    429    445    Any
        //  289    296    571    591    Ljava/io/IOException;
        //  289    296    516    536    Ljava/net/URISyntaxException;
        //  289    296    461    478    Any
        //  313    324    327    343    Ljava/io/IOException;
        //  313    324    478    497    Ljava/net/URISyntaxException;
        //  313    324    429    445    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 288, Size: 288
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
            final RequestKey requestKey = new RequestKey(request.getImageUri(), request.getCallerTag());
            synchronized (ImageDownloader.pendingRequests) {
                final DownloaderContext downloaderContext = ImageDownloader.pendingRequests.get(requestKey);
                if (downloaderContext != null) {
                    downloaderContext.request = request;
                    downloaderContext.isCancelled = false;
                    downloaderContext.workItem.moveToFront();
                    return;
                }
            }
            enqueueCacheRead(request, requestKey, request.isCachedRedirectAllowed());
        }
    }
    
    private static void enqueueCacheRead(final ImageRequest imageRequest, final RequestKey requestKey, final boolean b) {
        enqueueRequest(imageRequest, requestKey, ImageDownloader.cacheReadQueue, new CacheReadWorkItem(imageRequest.getContext(), requestKey, b));
    }
    
    private static void enqueueDownload(final ImageRequest imageRequest, final RequestKey requestKey) {
        enqueueRequest(imageRequest, requestKey, ImageDownloader.downloadQueue, new DownloadImageWorkItem(imageRequest.getContext(), requestKey));
    }
    
    private static void enqueueRequest(final ImageRequest request, final RequestKey requestKey, final WorkQueue workQueue, final Runnable runnable) {
        synchronized (ImageDownloader.pendingRequests) {
            final DownloaderContext downloaderContext = new DownloaderContext(null);
            downloaderContext.request = request;
            ImageDownloader.pendingRequests.put(requestKey, downloaderContext);
            downloaderContext.workItem = workQueue.addActiveWorkItem(runnable);
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
    
    private static void issueResponse(final RequestKey requestKey, final Exception ex, final Bitmap bitmap, final boolean b) {
        final DownloaderContext removePendingRequest = removePendingRequest(requestKey);
        if (removePendingRequest != null && !removePendingRequest.isCancelled) {
            final ImageRequest request = removePendingRequest.request;
            final ImageRequest.Callback callback = request.getCallback();
            if (callback != null) {
                getHandler().post((Runnable)new Runnable() {
                    @Override
                    public void run() {
                        callback.onCompleted(new ImageResponse(request, ex, b, bitmap));
                    }
                });
            }
        }
    }
    
    public static void prioritizeRequest(final ImageRequest imageRequest) {
        final RequestKey requestKey = new RequestKey(imageRequest.getImageUri(), imageRequest.getCallerTag());
        synchronized (ImageDownloader.pendingRequests) {
            final DownloaderContext downloaderContext = ImageDownloader.pendingRequests.get(requestKey);
            if (downloaderContext != null) {
                downloaderContext.workItem.moveToFront();
            }
        }
    }
    
    private static void readFromCache(final RequestKey requestKey, final Context context, final boolean b) {
        InputStream inputStream = null;
        boolean b2 = false;
        if (b) {
            final URI redirectedUri = UrlRedirectCache.getRedirectedUri(context, requestKey.uri);
            inputStream = null;
            b2 = false;
            if (redirectedUri != null) {
                inputStream = ImageResponseCache.getCachedImageStream(redirectedUri, context);
                b2 = (inputStream != null);
            }
        }
        if (!b2) {
            inputStream = ImageResponseCache.getCachedImageStream(requestKey.uri, context);
        }
        if (inputStream != null) {
            final Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
            Utility.closeQuietly(inputStream);
            issueResponse(requestKey, null, decodeStream, b2);
        }
        else {
            final DownloaderContext removePendingRequest = removePendingRequest(requestKey);
            if (removePendingRequest != null && !removePendingRequest.isCancelled) {
                enqueueDownload(removePendingRequest.request, requestKey);
            }
        }
    }
    
    private static DownloaderContext removePendingRequest(final RequestKey requestKey) {
        synchronized (ImageDownloader.pendingRequests) {
            return ImageDownloader.pendingRequests.remove(requestKey);
        }
    }
    
    private static class CacheReadWorkItem implements Runnable
    {
        private boolean allowCachedRedirects;
        private Context context;
        private RequestKey key;
        
        CacheReadWorkItem(final Context context, final RequestKey key, final boolean allowCachedRedirects) {
            super();
            this.context = context;
            this.key = key;
            this.allowCachedRedirects = allowCachedRedirects;
        }
        
        @Override
        public void run() {
            readFromCache(this.key, this.context, this.allowCachedRedirects);
        }
    }
    
    private static class DownloadImageWorkItem implements Runnable
    {
        private Context context;
        private RequestKey key;
        
        DownloadImageWorkItem(final Context context, final RequestKey key) {
            super();
            this.context = context;
            this.key = key;
        }
        
        @Override
        public void run() {
            download(this.key, this.context);
        }
    }
    
    private static class DownloaderContext
    {
        boolean isCancelled;
        ImageRequest request;
        WorkQueue.WorkItem workItem;
    }
    
    private static class RequestKey
    {
        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        Object tag;
        URI uri;
        
        RequestKey(final URI uri, final Object tag) {
            super();
            this.uri = uri;
            this.tag = tag;
        }
        
        @Override
        public boolean equals(final Object o) {
            boolean b = false;
            if (o != null) {
                final boolean b2 = o instanceof RequestKey;
                b = false;
                if (b2) {
                    final RequestKey requestKey = (RequestKey)o;
                    if (requestKey.uri != this.uri || requestKey.tag != this.tag) {
                        return false;
                    }
                    b = true;
                }
            }
            return b;
        }
        
        @Override
        public int hashCode() {
            return 37 * (1073 + this.uri.hashCode()) + this.tag.hashCode();
        }
    }
}
