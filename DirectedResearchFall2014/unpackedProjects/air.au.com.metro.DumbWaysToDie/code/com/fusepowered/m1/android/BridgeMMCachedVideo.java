package com.fusepowered.m1.android;

import java.lang.ref.*;
import android.app.*;
import java.util.*;
import android.content.*;
import org.json.*;
import java.util.concurrent.*;

class BridgeMMCachedVideo extends MMJSObject implements AdCacheTaskListener
{
    private boolean success;
    
    private VideoPlayerActivity getVPA() {
        final WeakReference<MMWebView> mmWebViewRef = this.mmWebViewRef;
        VideoPlayerActivity videoPlayerActivity = null;
        if (mmWebViewRef != null) {
            final Object value = this.mmWebViewRef.get();
            videoPlayerActivity = null;
            if (value != null) {
                final boolean b = this.mmWebViewRef.get().getActivity() instanceof MMActivity;
                videoPlayerActivity = null;
                if (b) {
                    final MMWebView mmWebView = this.mmWebViewRef.get();
                    videoPlayerActivity = null;
                    if (mmWebView != null) {
                        final Activity activity = mmWebView.getActivity();
                        videoPlayerActivity = null;
                        if (activity != null) {
                            final boolean b2 = activity instanceof MMActivity;
                            videoPlayerActivity = null;
                            if (b2) {
                                final MMActivity mmActivity = (MMActivity)activity;
                                final MMBaseActivity wrappedActivity = mmActivity.getWrappedActivity();
                                videoPlayerActivity = null;
                                if (wrappedActivity != null) {
                                    final boolean b3 = mmActivity.getWrappedActivity() instanceof VideoPlayerActivity;
                                    videoPlayerActivity = null;
                                    if (b3) {
                                        videoPlayerActivity = (VideoPlayerActivity)mmActivity.getWrappedActivity();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return videoPlayerActivity;
    }
    
    public MMJSResponse availableCachedVideos(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        if (context != null) {
            final JSONArray response = new JSONArray();
            AdCache.iterateCachedAds(context, 2, (AdCache.Iterator)new Iterator() {
                @Override
                boolean callback(final CachedAd cachedAd) {
                    if (cachedAd instanceof VideoAd && cachedAd.isOnDisk(context) && !cachedAd.isExpired()) {
                        response.put((Object)cachedAd.getId());
                    }
                    return true;
                }
            });
            final MMJSResponse mmjsResponse = new MMJSResponse();
            mmjsResponse.result = 1;
            mmjsResponse.response = response;
            return mmjsResponse;
        }
        return null;
    }
    
    public MMJSResponse cacheVideo(final HashMap<String, String> p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_0        
        //     3: getfield        com/fusepowered/m1/android/BridgeMMCachedVideo.contextRef:Ljava/lang/ref/WeakReference;
        //     6: invokevirtual   java/lang/ref/WeakReference.get:()Ljava/lang/Object;
        //     9: checkcast       Landroid/content/Context;
        //    12: astore_3       
        //    13: aload_1        
        //    14: ldc             "url"
        //    16: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    19: checkcast       Ljava/lang/String;
        //    22: astore          4
        //    24: aload           4
        //    26: ifnull          329
        //    29: aload_3        
        //    30: ifnull          329
        //    33: new             Lcom/fusepowered/m1/android/HttpGetRequest;
        //    36: dup            
        //    37: invokespecial   com/fusepowered/m1/android/HttpGetRequest.<init>:()V
        //    40: aload           4
        //    42: invokevirtual   com/fusepowered/m1/android/HttpGetRequest.get:(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
        //    45: astore          7
        //    47: aload           7
        //    49: ifnonnull       65
        //    52: ldc             "HTTP response is null"
        //    54: invokestatic    com/fusepowered/m1/android/MMSDK$Log.i:(Ljava/lang/String;)V
        //    57: aconst_null    
        //    58: astore          5
        //    60: aload_0        
        //    61: monitorexit    
        //    62: aload           5
        //    64: areturn        
        //    65: aload           7
        //    67: invokeinterface org/apache/http/HttpResponse.getEntity:()Lorg/apache/http/HttpEntity;
        //    72: astore          8
        //    74: aload           8
        //    76: ifnonnull       124
        //    79: ldc             "Null HTTP entity"
        //    81: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;)V
        //    84: aconst_null    
        //    85: astore          5
        //    87: goto            60
        //    90: astore          6
        //    92: new             Ljava/lang/StringBuilder;
        //    95: dup            
        //    96: invokespecial   java/lang/StringBuilder.<init>:()V
        //    99: ldc             "HTTP error: "
        //   101: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   104: aload           6
        //   106: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   109: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   112: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   115: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;)V
        //   118: aconst_null    
        //   119: astore          5
        //   121: goto            60
        //   124: aload           8
        //   126: invokeinterface org/apache/http/HttpEntity.getContentLength:()J
        //   131: lconst_0       
        //   132: lcmp           
        //   133: ifne            147
        //   136: ldc             "Millennial ad return failed. Zero content length returned."
        //   138: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;)V
        //   141: aconst_null    
        //   142: astore          5
        //   144: goto            60
        //   147: aload           8
        //   149: invokeinterface org/apache/http/HttpEntity.getContentType:()Lorg/apache/http/Header;
        //   154: astore          9
        //   156: aload           9
        //   158: ifnull          329
        //   161: aload           9
        //   163: invokeinterface org/apache/http/Header.getValue:()Ljava/lang/String;
        //   168: ifnull          329
        //   171: aload           9
        //   173: invokeinterface org/apache/http/Header.getValue:()Ljava/lang/String;
        //   178: ldc             "application/json"
        //   180: invokevirtual   java/lang/String.equalsIgnoreCase:(Ljava/lang/String;)Z
        //   183: istore          10
        //   185: iload           10
        //   187: ifeq            329
        //   190: new             Lcom/fusepowered/m1/android/VideoAd;
        //   193: dup            
        //   194: aload           8
        //   196: invokeinterface org/apache/http/HttpEntity.getContent:()Ljava/io/InputStream;
        //   201: invokestatic    com/fusepowered/m1/android/HttpGetRequest.convertStreamToString:(Ljava/io/InputStream;)Ljava/lang/String;
        //   204: invokespecial   com/fusepowered/m1/android/VideoAd.<init>:(Ljava/lang/String;)V
        //   207: astore          11
        //   209: aload           11
        //   211: ifnull          329
        //   214: aload           11
        //   216: invokevirtual   com/fusepowered/m1/android/VideoAd.isValid:()Z
        //   219: ifeq            329
        //   222: aload           11
        //   224: iconst_3       
        //   225: putfield        com/fusepowered/m1/android/VideoAd.downloadPriority:I
        //   228: aload_3        
        //   229: aconst_null    
        //   230: aload           11
        //   232: aload_0        
        //   233: invokestatic    com/fusepowered/m1/android/AdCache.startDownloadTask:(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m1/android/CachedAd;Lcom/fusepowered/m1/android/AdCache$AdCacheTaskListener;)Z
        //   236: istore          12
        //   238: iload           12
        //   240: ifeq            380
        //   243: aload_0        
        //   244: invokevirtual   java/lang/Object.wait:()V
        //   247: aload_0        
        //   248: getfield        com/fusepowered/m1/android/BridgeMMCachedVideo.success:Z
        //   251: ifeq            325
        //   254: ldc             "Cached video(%s)"
        //   256: iconst_1       
        //   257: anewarray       Ljava/lang/Object;
        //   260: dup            
        //   261: iconst_0       
        //   262: aload           4
        //   264: aastore        
        //   265: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   268: invokestatic    com/fusepowered/m1/android/MMJSResponse.responseWithSuccess:(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;
        //   271: astore          17
        //   273: aload           17
        //   275: astore          5
        //   277: aload_0        
        //   278: invokevirtual   java/lang/Object.notify:()V
        //   281: goto            60
        //   284: astore_2       
        //   285: aload_0        
        //   286: monitorexit    
        //   287: aload_2        
        //   288: athrow         
        //   289: astore          19
        //   291: aload           19
        //   293: invokevirtual   java/lang/IllegalStateException.printStackTrace:()V
        //   296: ldc             "Millennial ad return failed. Invalid response data."
        //   298: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;)V
        //   301: aconst_null    
        //   302: astore          5
        //   304: goto            60
        //   307: astore          18
        //   309: aload           18
        //   311: invokevirtual   java/io/IOException.printStackTrace:()V
        //   314: ldc             "Millennial ad return failed. Invalid response data."
        //   316: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;)V
        //   319: aconst_null    
        //   320: astore          5
        //   322: goto            60
        //   325: aload_0        
        //   326: invokevirtual   java/lang/Object.notify:()V
        //   329: aconst_null    
        //   330: astore          5
        //   332: goto            60
        //   335: astore          15
        //   337: aload           15
        //   339: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/Throwable;)V
        //   342: iconst_1       
        //   343: anewarray       Ljava/lang/Object;
        //   346: astore          16
        //   348: aload           16
        //   350: iconst_0       
        //   351: aload           15
        //   353: invokevirtual   java/lang/InterruptedException.getMessage:()Ljava/lang/String;
        //   356: aastore        
        //   357: ldc             "Caching interrupted: %s"
        //   359: aload           16
        //   361: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   364: aload_0        
        //   365: invokevirtual   java/lang/Object.notify:()V
        //   368: goto            329
        //   371: astore          14
        //   373: aload_0        
        //   374: invokevirtual   java/lang/Object.notify:()V
        //   377: aload           14
        //   379: athrow         
        //   380: ldc             "Unable to start download for Cached video(%s)"
        //   382: iconst_1       
        //   383: anewarray       Ljava/lang/Object;
        //   386: dup            
        //   387: iconst_0       
        //   388: aload           4
        //   390: aastore        
        //   391: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   394: invokestatic    com/fusepowered/m1/android/MMJSResponse.responseWithError:(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;
        //   397: astore          13
        //   399: aload           13
        //   401: astore          5
        //   403: goto            60
        //    Signature:
        //  (Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Lcom/fusepowered/m1/android/MMJSResponse;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  2      24     284    289    Any
        //  33     47     90     124    Ljava/lang/Exception;
        //  33     47     284    289    Any
        //  52     57     90     124    Ljava/lang/Exception;
        //  52     57     284    289    Any
        //  65     74     90     124    Ljava/lang/Exception;
        //  65     74     284    289    Any
        //  79     84     284    289    Any
        //  92     118    284    289    Any
        //  124    141    284    289    Any
        //  147    156    284    289    Any
        //  161    185    284    289    Any
        //  190    209    289    307    Ljava/lang/IllegalStateException;
        //  190    209    307    325    Ljava/io/IOException;
        //  190    209    284    289    Any
        //  214    238    284    289    Any
        //  243    273    335    371    Ljava/lang/InterruptedException;
        //  243    273    371    380    Any
        //  277    281    284    289    Any
        //  291    301    284    289    Any
        //  309    319    284    289    Any
        //  325    329    284    289    Any
        //  337    364    371    380    Any
        //  364    368    284    289    Any
        //  373    380    284    289    Any
        //  380    399    284    289    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 185, Size: 185
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
    
    @Override
    public void downloadCompleted(final CachedAd cachedAd, final boolean success) {
        synchronized (this) {
            final Context context = this.contextRef.get();
            if (success && context != null) {
                AdCache.save(context, cachedAd);
            }
            this.success = success;
            this.notify();
        }
    }
    
    @Override
    public void downloadStart(final CachedAd cachedAd) {
    }
    
    public MMJSResponse endVideo(final HashMap<String, String> hashMap) {
        final VideoPlayerActivity vpa = this.getVPA();
        if (vpa != null) {
            return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
                @Override
                public MMJSResponse call() {
                    vpa.endVideo();
                    return MMJSResponse.responseWithSuccess();
                }
            });
        }
        return null;
    }
    
    public MMJSResponse pauseVideo(final HashMap<String, String> hashMap) {
        final VideoPlayerActivity vpa = this.getVPA();
        if (vpa != null) {
            return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
                @Override
                public MMJSResponse call() {
                    vpa.pauseVideoByUser();
                    return MMJSResponse.responseWithSuccess();
                }
            });
        }
        return null;
    }
    
    public MMJSResponse playCachedVideo(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        final String s = hashMap.get("videoId");
        if (s != null && context != null) {
            final VideoAd videoAd = (VideoAd)AdCache.load(context, s);
            if (videoAd != null && videoAd.canShow(context, null, false)) {
                videoAd.show(context, this.getAdImplId(hashMap.get("PROPERTY_EXPANDING")));
                return MMJSResponse.responseWithSuccess(String.format("Playing Video(%s)", s));
            }
        }
        return null;
    }
    
    public MMJSResponse playVideo(final HashMap<String, String> hashMap) {
        final VideoPlayerActivity vpa = this.getVPA();
        if (vpa != null) {
            return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
                @Override
                public MMJSResponse call() {
                    vpa.resumeVideo();
                    return MMJSResponse.responseWithSuccess();
                }
            });
        }
        return null;
    }
    
    public MMJSResponse restartVideo(final HashMap<String, String> hashMap) {
        final VideoPlayerActivity vpa = this.getVPA();
        if (vpa != null) {
            return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
                @Override
                public MMJSResponse call() {
                    vpa.restartVideo();
                    return MMJSResponse.responseWithSuccess();
                }
            });
        }
        return null;
    }
    
    @Deprecated
    public MMJSResponse videoIdExists(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        final String s = hashMap.get("videoId");
        if (s != null && context != null) {
            final VideoAd videoAd = (VideoAd)AdCache.load(context, s);
            if (videoAd != null && videoAd.isOnDisk(context) && !videoAd.isExpired()) {
                return MMJSResponse.responseWithSuccess(s);
            }
        }
        return null;
    }
}
