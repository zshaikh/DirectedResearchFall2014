package com.tapjoy;

import android.os.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;
import java.util.*;
import android.graphics.*;
import java.net.*;
import android.util.*;
import android.content.*;
import java.io.*;

public class TapjoyVideo
{
    private static final String TAG = "TapjoyVideo";
    private static TapjoyVideo tapjoyVideo;
    private static TapjoyVideoNotifier tapjoyVideoNotifier;
    private static Bitmap watermarkImage;
    private static final String watermarkURL = "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png";
    private boolean cache3g;
    private boolean cacheAuto;
    private boolean cacheWifi;
    private Hashtable<String, TapjoyVideoObject> cachedVideos;
    Context context;
    private String imageCacheDir;
    private boolean initialized;
    private Hashtable<String, TapjoyVideoObject> uncachedVideos;
    private String videoCacheDir;
    private int videoCacheLimit;
    private Vector<String> videoQueue;
    private TapjoyVideoObject videoToPlay;
    
    static {
        TapjoyVideo.tapjoyVideo = null;
    }
    
    public TapjoyVideo(final Context context) {
        super();
        this.videoCacheDir = null;
        this.imageCacheDir = null;
        this.videoCacheLimit = 5;
        this.cacheAuto = false;
        this.initialized = false;
        this.cacheWifi = false;
        this.cache3g = false;
        this.context = context;
        TapjoyVideo.tapjoyVideo = this;
        if (Environment.getExternalStorageDirectory() != null) {
            this.videoCacheDir = Environment.getExternalStorageDirectory().toString() + "/tjcache/data/";
            this.imageCacheDir = Environment.getExternalStorageDirectory().toString() + "/tjcache/tmp/";
            TapjoyUtil.deleteFileOrDirectory(new File(Environment.getExternalStorageDirectory().toString() + "/tapjoy/"));
            TapjoyUtil.deleteFileOrDirectory(new File(this.imageCacheDir));
        }
        this.videoQueue = new Vector<String>();
        this.uncachedVideos = new Hashtable<String, TapjoyVideoObject>();
        this.cachedVideos = new Hashtable<String, TapjoyVideoObject>();
        while (true) {
            if (TapjoyConnectCore.getConnectFlagValue("video_cache_count") == null || TapjoyConnectCore.getConnectFlagValue("video_cache_count").length() <= 0) {
                break Label_0250;
            }
            try {
                TapjoyLog.i("TapjoyVideo", "Setting video cache count to: " + TapjoyConnectCore.getConnectFlagValue("video_cache_count"));
                this.setVideoCacheCount(Integer.parseInt(TapjoyConnectCore.getConnectFlagValue("video_cache_count")));
                this.init();
            }
            catch (Exception ex) {
                TapjoyLog.e("TapjoyVideo", "Error, invalid value for video_cache_count: " + TapjoyConnectCore.getConnectFlagValue("video_cache_count"));
                continue;
            }
            break;
        }
    }
    
    private void cacheVideoFromURL(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             "TapjoyVideo"
        //     2: new             Ljava/lang/StringBuilder;
        //     5: dup            
        //     6: invokespecial   java/lang/StringBuilder.<init>:()V
        //     9: ldc             "download and cache video from: "
        //    11: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    14: aload_1        
        //    15: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    18: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    21: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //    24: invokestatic    java/lang/System.currentTimeMillis:()J
        //    27: lstore_2       
        //    28: aconst_null    
        //    29: astore          4
        //    31: aconst_null    
        //    32: astore          5
        //    34: aconst_null    
        //    35: astore          6
        //    37: new             Ljava/net/URL;
        //    40: dup            
        //    41: aload_1        
        //    42: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //    45: astore          7
        //    47: aload           7
        //    49: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
        //    52: astore          20
        //    54: aload           20
        //    56: sipush          15000
        //    59: invokevirtual   java/net/URLConnection.setConnectTimeout:(I)V
        //    62: aload           20
        //    64: sipush          30000
        //    67: invokevirtual   java/net/URLConnection.setReadTimeout:(I)V
        //    70: aload           20
        //    72: invokevirtual   java/net/URLConnection.connect:()V
        //    75: new             Ljava/io/BufferedInputStream;
        //    78: dup            
        //    79: aload           20
        //    81: invokevirtual   java/net/URLConnection.getInputStream:()Ljava/io/InputStream;
        //    84: invokespecial   java/io/BufferedInputStream.<init>:(Ljava/io/InputStream;)V
        //    87: astore          21
        //    89: new             Ljava/io/File;
        //    92: dup            
        //    93: aload_0        
        //    94: getfield        com/tapjoy/TapjoyVideo.videoCacheDir:Ljava/lang/String;
        //    97: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //   100: astore          22
        //   102: aload_1        
        //   103: iconst_0       
        //   104: iconst_1       
        //   105: aload_1        
        //   106: ldc             "/"
        //   108: invokevirtual   java/lang/String.lastIndexOf:(Ljava/lang/String;)I
        //   111: iadd           
        //   112: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //   115: astore          25
        //   117: aload_1        
        //   118: iconst_1       
        //   119: aload_1        
        //   120: ldc             "/"
        //   122: invokevirtual   java/lang/String.lastIndexOf:(Ljava/lang/String;)I
        //   125: iadd           
        //   126: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //   129: astore          26
        //   131: aload           26
        //   133: iconst_0       
        //   134: aload           26
        //   136: bipush          46
        //   138: invokevirtual   java/lang/String.indexOf:(I)I
        //   141: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //   144: astore          27
        //   146: ldc             "TapjoyVideo"
        //   148: new             Ljava/lang/StringBuilder;
        //   151: dup            
        //   152: invokespecial   java/lang/StringBuilder.<init>:()V
        //   155: ldc             "fileDir: "
        //   157: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   160: aload           22
        //   162: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   165: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   168: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   171: ldc             "TapjoyVideo"
        //   173: new             Ljava/lang/StringBuilder;
        //   176: dup            
        //   177: invokespecial   java/lang/StringBuilder.<init>:()V
        //   180: ldc             "path: "
        //   182: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   185: aload           25
        //   187: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   190: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   193: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   196: ldc             "TapjoyVideo"
        //   198: new             Ljava/lang/StringBuilder;
        //   201: dup            
        //   202: invokespecial   java/lang/StringBuilder.<init>:()V
        //   205: ldc             "file name: "
        //   207: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   210: aload           27
        //   212: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   215: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   218: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   221: aload           22
        //   223: invokevirtual   java/io/File.mkdirs:()Z
        //   226: ifeq            258
        //   229: ldc             "TapjoyVideo"
        //   231: new             Ljava/lang/StringBuilder;
        //   234: dup            
        //   235: invokespecial   java/lang/StringBuilder.<init>:()V
        //   238: ldc_w           "created directory at: "
        //   241: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   244: aload           22
        //   246: invokevirtual   java/io/File.getPath:()Ljava/lang/String;
        //   249: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   252: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   255: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   258: new             Ljava/io/File;
        //   261: dup            
        //   262: aload_0        
        //   263: getfield        com/tapjoy/TapjoyVideo.videoCacheDir:Ljava/lang/String;
        //   266: aload           27
        //   268: invokespecial   java/io/File.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   271: astore          28
        //   273: new             Ljava/io/FileOutputStream;
        //   276: dup            
        //   277: aload           28
        //   279: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //   282: astore          29
        //   284: ldc             "TapjoyVideo"
        //   286: new             Ljava/lang/StringBuilder;
        //   289: dup            
        //   290: invokespecial   java/lang/StringBuilder.<init>:()V
        //   293: ldc_w           "downloading video file to: "
        //   296: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   299: aload           28
        //   301: invokevirtual   java/io/File.toString:()Ljava/lang/String;
        //   304: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   307: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   310: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   313: sipush          1024
        //   316: newarray        B
        //   318: astore          32
        //   320: aload           21
        //   322: aload           32
        //   324: invokevirtual   java/io/BufferedInputStream.read:([B)I
        //   327: istore          33
        //   329: iload           33
        //   331: iconst_m1      
        //   332: if_icmpeq       542
        //   335: aload           29
        //   337: aload           32
        //   339: iconst_0       
        //   340: iload           33
        //   342: invokevirtual   java/io/OutputStream.write:([BII)V
        //   345: goto            320
        //   348: astore          31
        //   350: aload           31
        //   352: astore          9
        //   354: aload           28
        //   356: astore          6
        //   358: aload           29
        //   360: astore          5
        //   362: aload           21
        //   364: astore          4
        //   366: ldc             "TapjoyVideo"
        //   368: new             Ljava/lang/StringBuilder;
        //   371: dup            
        //   372: invokespecial   java/lang/StringBuilder.<init>:()V
        //   375: ldc_w           "Network timeout: "
        //   378: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   381: aload           9
        //   383: invokevirtual   java/net/SocketTimeoutException.toString:()Ljava/lang/String;
        //   386: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   389: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   392: invokestatic    com/tapjoy/TapjoyLog.e:(Ljava/lang/String;Ljava/lang/String;)V
        //   395: iconst_1       
        //   396: istore          10
        //   398: iconst_1       
        //   399: istore          11
        //   401: iload           10
        //   403: iconst_1       
        //   404: if_icmpne       425
        //   407: ldc             "TapjoyVideo"
        //   409: ldc_w           "Network timeout"
        //   412: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   415: aload           4
        //   417: invokevirtual   java/io/BufferedInputStream.close:()V
        //   420: aload           5
        //   422: invokevirtual   java/io/OutputStream.close:()V
        //   425: iload           10
        //   427: ifne            699
        //   430: iload           11
        //   432: ifne            699
        //   435: aload_0        
        //   436: getfield        com/tapjoy/TapjoyVideo.videoQueue:Ljava/util/Vector;
        //   439: iconst_0       
        //   440: invokevirtual   java/util/Vector.elementAt:(I)Ljava/lang/Object;
        //   443: checkcast       Ljava/lang/String;
        //   446: astore          13
        //   448: aload_0        
        //   449: getfield        com/tapjoy/TapjoyVideo.uncachedVideos:Ljava/util/Hashtable;
        //   452: aload           13
        //   454: invokevirtual   java/util/Hashtable.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   457: checkcast       Lcom/tapjoy/TapjoyVideoObject;
        //   460: astore          14
        //   462: aload           14
        //   464: aload           6
        //   466: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //   469: putfield        com/tapjoy/TapjoyVideoObject.dataLocation:Ljava/lang/String;
        //   472: aload_0        
        //   473: getfield        com/tapjoy/TapjoyVideo.cachedVideos:Ljava/util/Hashtable;
        //   476: aload           13
        //   478: aload           14
        //   480: invokevirtual   java/util/Hashtable.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   483: pop            
        //   484: aload_0        
        //   485: getfield        com/tapjoy/TapjoyVideo.uncachedVideos:Ljava/util/Hashtable;
        //   488: aload           13
        //   490: invokevirtual   java/util/Hashtable.remove:(Ljava/lang/Object;)Ljava/lang/Object;
        //   493: pop            
        //   494: aload_0        
        //   495: getfield        com/tapjoy/TapjoyVideo.videoQueue:Ljava/util/Vector;
        //   498: iconst_0       
        //   499: invokevirtual   java/util/Vector.removeElementAt:(I)V
        //   502: aload_0        
        //   503: invokespecial   com/tapjoy/TapjoyVideo.setVideoIDs:()V
        //   506: ldc             "TapjoyVideo"
        //   508: new             Ljava/lang/StringBuilder;
        //   511: dup            
        //   512: invokespecial   java/lang/StringBuilder.<init>:()V
        //   515: ldc_w           "video cached in: "
        //   518: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   521: invokestatic    java/lang/System.currentTimeMillis:()J
        //   524: lload_2        
        //   525: lsub           
        //   526: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   529: ldc_w           "ms"
        //   532: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   535: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   538: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   541: return         
        //   542: aload           29
        //   544: invokevirtual   java/io/OutputStream.close:()V
        //   547: aload           21
        //   549: invokevirtual   java/io/BufferedInputStream.close:()V
        //   552: ldc             "TapjoyVideo"
        //   554: new             Ljava/lang/StringBuilder;
        //   557: dup            
        //   558: invokespecial   java/lang/StringBuilder.<init>:()V
        //   561: ldc_w           "FILE SIZE: "
        //   564: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   567: aload           28
        //   569: invokevirtual   java/io/File.length:()J
        //   572: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   575: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   578: invokestatic    com/tapjoy/TapjoyLog.i:(Ljava/lang/String;Ljava/lang/String;)V
        //   581: aload           28
        //   583: invokevirtual   java/io/File.length:()J
        //   586: lstore          34
        //   588: lload           34
        //   590: lconst_0       
        //   591: lcmp           
        //   592: istore          36
        //   594: iconst_0       
        //   595: istore          10
        //   597: iload           36
        //   599: ifne            605
        //   602: iconst_1       
        //   603: istore          10
        //   605: aload           28
        //   607: astore          6
        //   609: aload           29
        //   611: astore          5
        //   613: aload           21
        //   615: astore          4
        //   617: iconst_0       
        //   618: istore          11
        //   620: goto            401
        //   623: astore          18
        //   625: aload           18
        //   627: astore          19
        //   629: ldc             "TapjoyVideo"
        //   631: new             Ljava/lang/StringBuilder;
        //   634: dup            
        //   635: invokespecial   java/lang/StringBuilder.<init>:()V
        //   638: ldc_w           "Error caching video file: "
        //   641: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   644: aload           19
        //   646: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   649: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   652: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   655: invokestatic    com/tapjoy/TapjoyLog.e:(Ljava/lang/String;Ljava/lang/String;)V
        //   658: iconst_1       
        //   659: istore          11
        //   661: iconst_0       
        //   662: istore          10
        //   664: goto            401
        //   667: astore          12
        //   669: ldc             "TapjoyVideo"
        //   671: new             Ljava/lang/StringBuilder;
        //   674: dup            
        //   675: invokespecial   java/lang/StringBuilder.<init>:()V
        //   678: ldc_w           "error caching video ???: "
        //   681: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   684: aload           12
        //   686: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   689: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   692: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   695: invokestatic    com/tapjoy/TapjoyLog.e:(Ljava/lang/String;Ljava/lang/String;)V
        //   698: return         
        //   699: iconst_2       
        //   700: invokestatic    com/tapjoy/TapjoyVideo.videoNotifierError:(I)V
        //   703: return         
        //   704: astore          17
        //   706: goto            425
        //   709: astore          24
        //   711: aload           24
        //   713: astore          19
        //   715: aload           21
        //   717: astore          4
        //   719: aconst_null    
        //   720: astore          5
        //   722: aconst_null    
        //   723: astore          6
        //   725: goto            629
        //   728: astore          38
        //   730: aload           38
        //   732: astore          19
        //   734: aload           28
        //   736: astore          6
        //   738: aload           21
        //   740: astore          4
        //   742: aconst_null    
        //   743: astore          5
        //   745: goto            629
        //   748: astore          30
        //   750: aload           30
        //   752: astore          19
        //   754: aload           28
        //   756: astore          6
        //   758: aload           29
        //   760: astore          5
        //   762: aload           21
        //   764: astore          4
        //   766: goto            629
        //   769: astore          8
        //   771: aload           8
        //   773: astore          9
        //   775: aconst_null    
        //   776: astore          4
        //   778: aconst_null    
        //   779: astore          5
        //   781: aconst_null    
        //   782: astore          6
        //   784: goto            366
        //   787: astore          23
        //   789: aload           23
        //   791: astore          9
        //   793: aload           21
        //   795: astore          4
        //   797: aconst_null    
        //   798: astore          5
        //   800: aconst_null    
        //   801: astore          6
        //   803: goto            366
        //   806: astore          37
        //   808: aload           37
        //   810: astore          9
        //   812: aload           28
        //   814: astore          6
        //   816: aload           21
        //   818: astore          4
        //   820: aconst_null    
        //   821: astore          5
        //   823: goto            366
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  37     89     769    787    Ljava/net/SocketTimeoutException;
        //  37     89     623    629    Ljava/lang/Exception;
        //  89     258    787    806    Ljava/net/SocketTimeoutException;
        //  89     258    709    728    Ljava/lang/Exception;
        //  258    273    787    806    Ljava/net/SocketTimeoutException;
        //  258    273    709    728    Ljava/lang/Exception;
        //  273    284    806    826    Ljava/net/SocketTimeoutException;
        //  273    284    728    748    Ljava/lang/Exception;
        //  284    320    348    366    Ljava/net/SocketTimeoutException;
        //  284    320    748    769    Ljava/lang/Exception;
        //  320    329    348    366    Ljava/net/SocketTimeoutException;
        //  320    329    748    769    Ljava/lang/Exception;
        //  335    345    348    366    Ljava/net/SocketTimeoutException;
        //  335    345    748    769    Ljava/lang/Exception;
        //  415    425    704    709    Ljava/lang/Exception;
        //  435    541    667    699    Ljava/lang/Exception;
        //  542    588    348    366    Ljava/net/SocketTimeoutException;
        //  542    588    748    769    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 373, Size: 373
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
    
    public static TapjoyVideo getInstance() {
        return TapjoyVideo.tapjoyVideo;
    }
    
    public static Bitmap getWatermarkImage() {
        return TapjoyVideo.watermarkImage;
    }
    
    private boolean handleGetVideosResponse(final String s) {
        DocumentBuilderFactory instance;
        Document parse;
        NodeList elementsByTagName;
        NodeList childNodes;
        NamedNodeMap attributes;
        int n = 0;
        Node item;
        TapjoyVideoObject value = null;
        Element element;
        String nodeTrimValue;
        String nodeTrimValue2;
        String nodeTrimValue3;
        String nodeTrimValue4;
        String nodeTrimValue5;
        String nodeTrimValue6;
        String nodeTrimValue7;
        NodeList childNodes2;
        int n2 = 0;
        NodeList childNodes3;
        String nodeValue;
        String nodeValue2;
        int n3 = 0;
        String tagName;
        Label_0854_Outer:Label_0899_Outer:
        while (true) {
            instance = DocumentBuilderFactory.newInstance();
            TapjoyLog.i("TapjoyVideo", "========================================");
            while (true) {
                Label_1200: {
                Label_1184:
                    while (true) {
                    Label_1178:
                        while (true) {
                            Label_1162: {
                                Label_1135: {
                                    try {
                                        parse = instance.newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8")));
                                        parse.getDocumentElement().normalize();
                                        elementsByTagName = parse.getElementsByTagName("TapjoyVideos");
                                        childNodes = elementsByTagName.item(0).getChildNodes();
                                        attributes = elementsByTagName.item(0).getAttributes();
                                        if (attributes.getNamedItem("cache_auto") != null && attributes.getNamedItem("cache_auto").getNodeValue() != null) {
                                            this.cacheAuto = Boolean.valueOf(attributes.getNamedItem("cache_auto").getNodeValue());
                                        }
                                        if (attributes.getNamedItem("cache_wifi") != null && attributes.getNamedItem("cache_wifi").getNodeValue() != null) {
                                            this.cacheWifi = Boolean.valueOf(attributes.getNamedItem("cache_wifi").getNodeValue());
                                        }
                                        if (attributes.getNamedItem("cache_mobile") != null && attributes.getNamedItem("cache_mobile").getNodeValue() != null) {
                                            this.cache3g = Boolean.valueOf(attributes.getNamedItem("cache_mobile").getNodeValue());
                                        }
                                        TapjoyLog.i("TapjoyVideo", "cacheAuto: " + this.cacheAuto);
                                        TapjoyLog.i("TapjoyVideo", "cacheWifi: " + this.cacheWifi);
                                        TapjoyLog.i("TapjoyVideo", "cache3g: " + this.cache3g);
                                        TapjoyLog.i("TapjoyVideo", "nodelistParent length: " + elementsByTagName.getLength());
                                        TapjoyLog.i("TapjoyVideo", "nodelist length: " + childNodes.getLength());
                                        n = 0;
                                        if (n >= childNodes.getLength()) {
                                            break;
                                        }
                                        item = childNodes.item(n);
                                        value = new TapjoyVideoObject();
                                        if (item == null || item.getNodeType() != 1) {
                                            break Label_1162;
                                        }
                                        element = (Element)item;
                                        nodeTrimValue = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("ClickURL"));
                                        if (nodeTrimValue != null && !nodeTrimValue.equals("")) {
                                            value.clickURL = nodeTrimValue;
                                        }
                                        nodeTrimValue2 = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("OfferID"));
                                        if (nodeTrimValue2 != null && !nodeTrimValue2.equals("")) {
                                            value.offerID = nodeTrimValue2;
                                        }
                                        nodeTrimValue3 = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("Name"));
                                        if (nodeTrimValue3 != null && !nodeTrimValue3.equals("")) {
                                            value.videoAdName = nodeTrimValue3;
                                        }
                                        nodeTrimValue4 = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("Amount"));
                                        if (nodeTrimValue4 != null && !nodeTrimValue4.equals("")) {
                                            value.currencyAmount = nodeTrimValue4;
                                        }
                                        nodeTrimValue5 = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("CurrencyName"));
                                        if (nodeTrimValue5 != null && !nodeTrimValue5.equals("")) {
                                            value.currencyName = nodeTrimValue5;
                                        }
                                        nodeTrimValue6 = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("VideoURL"));
                                        if (nodeTrimValue6 != null && !nodeTrimValue6.equals("")) {
                                            value.videoURL = nodeTrimValue6;
                                        }
                                        nodeTrimValue7 = TapjoyUtil.getNodeTrimValue(element.getElementsByTagName("IconURL"));
                                        if (nodeTrimValue7 != null && !nodeTrimValue7.equals("")) {
                                            value.iconURL = nodeTrimValue7;
                                        }
                                        TapjoyLog.i("TapjoyVideo", "-----");
                                        TapjoyLog.i("TapjoyVideo", "videoObject.offerID: " + value.offerID);
                                        TapjoyLog.i("TapjoyVideo", "videoObject.videoAdName: " + value.videoAdName);
                                        TapjoyLog.i("TapjoyVideo", "videoObject.videoURL: " + value.videoURL);
                                        childNodes2 = element.getElementsByTagName("Buttons").item(0).getChildNodes();
                                        n2 = 0;
                                        if (n2 >= childNodes2.getLength()) {
                                            break Label_1135;
                                        }
                                        childNodes3 = childNodes2.item(n2).getChildNodes();
                                        if (childNodes3.getLength() == 0) {
                                            break Label_1178;
                                        }
                                        break Label_1184;
                                        Label_1053: {
                                            TapjoyLog.i("TapjoyVideo", "name: " + nodeValue + ", url: " + nodeValue2);
                                        }
                                        value.addButton(nodeValue, nodeValue2);
                                        break Label_1178;
                                        while (true) {
                                            tagName = ((Element)childNodes3.item(n3)).getTagName();
                                            Block_28: {
                                                Block_31: {
                                                    break Block_31;
                                                    break Block_28;
                                                }
                                                nodeValue = childNodes3.item(n3).getFirstChild().getNodeValue();
                                                break Label_1200;
                                                Label_1001:
                                                nodeValue2 = childNodes3.item(n3).getFirstChild().getNodeValue();
                                                break Label_1200;
                                            }
                                            continue Label_0899_Outer;
                                        }
                                    }
                                    // iftrue(Label_1001:, !tagName.equals((Object)"Name") || childNodes3.item(n3).getFirstChild() == null)
                                    // iftrue(Label_1053:, n3 >= childNodes3.getLength())
                                    // iftrue(Label_1200:, !tagName.equals((Object)"URL") || childNodes3.item(n3).getFirstChild() == null)
                                    // iftrue(Label_1200:, (Element)childNodes3.item(n3) == null)
                                    catch (Exception ex) {
                                        TapjoyLog.e("TapjoyVideo", "Error parsing XML: " + ex.toString());
                                        return false;
                                    }
                                }
                                this.videoQueue.addElement(value.offerID);
                                this.uncachedVideos.put(value.offerID, value);
                            }
                            ++n;
                            continue Label_0854_Outer;
                        }
                        ++n2;
                        continue Label_0899_Outer;
                    }
                    nodeValue = "";
                    nodeValue2 = "";
                    n3 = 0;
                    continue;
                }
                ++n3;
                continue;
            }
        }
        TapjoyLog.i("TapjoyVideo", "========================================");
        return true;
    }
    
    private void printCachedVideos() {
        TapjoyLog.i("TapjoyVideo", "cachedVideos size: " + this.cachedVideos.size());
        for (final Map.Entry<String, TapjoyVideoObject> entry : this.cachedVideos.entrySet()) {
            TapjoyLog.i("TapjoyVideo", "key: " + entry.getKey() + ", name: " + entry.getValue().videoAdName);
        }
    }
    
    private void setVideoIDs() {
        String s = "";
        if (this.cachedVideos != null && this.cachedVideos.size() > 0) {
            final Enumeration<String> keys = this.cachedVideos.keys();
            while (keys.hasMoreElements()) {
                s += keys.nextElement();
                if (keys.hasMoreElements()) {
                    s += ",";
                }
            }
            TapjoyLog.i("TapjoyVideo", "cachedVideos size: " + this.cachedVideos.size());
        }
        TapjoyLog.i("TapjoyVideo", "videoIDs: [" + s + "]");
        TapjoyConnectCore.setVideoIDs(s);
    }
    
    private boolean validateCachedVideos() {
        boolean b = true;
        final File[] listFiles = new File(this.videoCacheDir).listFiles();
        if (this.uncachedVideos == null) {
            TapjoyLog.e("TapjoyVideo", "Error: uncachedVideos is null");
            b = false;
        }
        if (this.cachedVideos == null) {
            TapjoyLog.e("TapjoyVideo", "Error: cachedVideos is null");
            b = false;
        }
        if (this.videoQueue == null) {
            TapjoyLog.e("TapjoyVideo", "Error: videoQueue is null");
            b = false;
        }
        boolean b2 = false;
        if (b) {
            b2 = false;
            if (listFiles != null) {
                for (int i = 0; i < listFiles.length; ++i) {
                    final String name = listFiles[i].getName();
                    TapjoyLog.i("TapjoyVideo", "-----");
                    TapjoyLog.i("TapjoyVideo", "Examining cached file[" + i + "]: " + listFiles[i].getAbsolutePath() + " --- " + listFiles[i].getName());
                    if (this.uncachedVideos.containsKey(name)) {
                        TapjoyLog.i("TapjoyVideo", "Local file found");
                        final TapjoyVideoObject value = this.uncachedVideos.get(name);
                        if (value != null) {
                            final String contentLength = new TapjoyURLConnection().getContentLength(value.videoURL);
                            TapjoyLog.i("TapjoyVideo", "local file size: " + listFiles[i].length() + " vs. target: " + contentLength);
                            if (contentLength != null && Integer.parseInt(contentLength) == listFiles[i].length()) {
                                value.dataLocation = listFiles[i].getAbsolutePath();
                                this.cachedVideos.put(name, value);
                                this.uncachedVideos.remove(name);
                                this.videoQueue.remove(name);
                                TapjoyLog.i("TapjoyVideo", "VIDEO PREVIOUSLY CACHED -- " + name + ", location: " + value.dataLocation);
                            }
                            else {
                                TapjoyLog.i("TapjoyVideo", "file size mismatch --- deleting video: " + listFiles[i].getAbsolutePath());
                                TapjoyUtil.deleteFileOrDirectory(listFiles[i]);
                            }
                        }
                    }
                    else {
                        TapjoyLog.i("TapjoyVideo", "VIDEO EXPIRED? removing video from cache: " + name + " --- " + listFiles[i].getAbsolutePath());
                        TapjoyUtil.deleteFileOrDirectory(listFiles[i]);
                    }
                }
                b2 = true;
            }
        }
        return b2;
    }
    
    public static void videoNotifierComplete() {
        if (TapjoyVideo.tapjoyVideoNotifier != null) {
            TapjoyVideo.tapjoyVideoNotifier.videoComplete();
        }
    }
    
    public static void videoNotifierError(final int n) {
        if (TapjoyVideo.tapjoyVideoNotifier != null) {
            TapjoyVideo.tapjoyVideoNotifier.videoError(n);
        }
    }
    
    public static void videoNotifierStart() {
        if (TapjoyVideo.tapjoyVideoNotifier != null) {
            TapjoyVideo.tapjoyVideoNotifier.videoStart();
        }
    }
    
    public void cacheVideos() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                TapjoyLog.i("TapjoyVideo", "--- cacheAllVideos called ---");
                int n = 0;
                while (!TapjoyVideo.this.initialized) {
                    try {
                        Thread.sleep(500L);
                        n += (int)500L;
                        if (n > 10000L) {
                            TapjoyLog.e("TapjoyVideo", "Error during cacheVideos.  Timeout while waiting for initVideos to finish.");
                            return;
                        }
                        continue;
                    }
                    catch (Exception ex) {
                        TapjoyLog.e("TapjoyVideo", "Exception in cacheAllVideos: " + ex.toString());
                        continue;
                    }
                    break;
                }
                TapjoyLog.i("TapjoyVideo", "cacheVideos connection_type: " + TapjoyConnectCore.getConnectionType());
                TapjoyLog.i("TapjoyVideo", "cache3g: " + TapjoyVideo.this.cache3g);
                TapjoyLog.i("TapjoyVideo", "cacheWifi: " + TapjoyVideo.this.cacheWifi);
                if ((TapjoyVideo.this.cache3g && TapjoyConnectCore.getConnectionType().equals("mobile")) || (TapjoyVideo.this.cacheWifi && TapjoyConnectCore.getConnectionType().equals("wifi"))) {
                    if (!"mounted".equals(Environment.getExternalStorageState())) {
                        TapjoyLog.i("TapjoyVideo", "Media storage unavailable.  Aborting caching videos.");
                        TapjoyVideo.videoNotifierError(1);
                        return;
                    }
                    while (TapjoyVideo.this.cachedVideos.size() < TapjoyVideo.this.videoCacheLimit && TapjoyVideo.this.videoQueue.size() > 0) {
                        TapjoyVideo.this.cacheVideoFromURL(TapjoyVideo.this.uncachedVideos.get(TapjoyVideo.this.videoQueue.elementAt(0)).videoURL);
                    }
                }
                else {
                    TapjoyLog.i("TapjoyVideo", " * Skipping caching videos because of video flags and connection_type...");
                }
                TapjoyVideo.this.printCachedVideos();
            }
        }).start();
    }
    
    public void enableVideoCache(final boolean b) {
    }
    
    public TapjoyVideoObject getCurrentVideoData() {
        return this.videoToPlay;
    }
    
    public void init() {
        TapjoyLog.i("TapjoyVideo", "initVideoAd");
        if (TapjoyConnectCore.getConnectFlagValue("disable_videos") != null && TapjoyConnectCore.getConnectFlagValue("disable_videos").equals("true")) {
            TapjoyLog.i("TapjoyVideo", "disable_videos: " + TapjoyConnectCore.getConnectFlagValue("disable_videos") + ". Aborting video initializing... ");
            TapjoyConnectCore.setVideoEnabled(false);
            return;
        }
        this.setVideoIDs();
        new Thread(new Runnable() {
            @Override
            public void run() {
                final TapjoyHttpURLResponse responseFromURL = new TapjoyURLConnection().getResponseFromURL(TapjoyConnectCore.getHostURL() + "videos?", TapjoyConnectCore.getURLParams());
                final String response = responseFromURL.response;
                boolean access$000 = false;
                if (response != null) {
                    final int length = responseFromURL.response.length();
                    access$000 = false;
                    if (length > 0) {
                        access$000 = TapjoyVideo.this.handleGetVideosResponse(responseFromURL.response);
                    }
                }
                if (access$000) {
                    TapjoyVideo.this.validateCachedVideos();
                    while (true) {
                        if ("https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png" == null || "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png".length() <= 0) {
                            break Label_0161;
                        }
                        try {
                            final URL url = new URL("https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png");
                            final URLConnection openConnection = url.openConnection();
                            openConnection.setConnectTimeout(15000);
                            openConnection.setReadTimeout(25000);
                            openConnection.connect();
                            TapjoyVideo.watermarkImage = BitmapFactory.decodeStream(url.openConnection().getInputStream());
                            openConnection.getInputStream().close();
                            TapjoyVideo.this.setVideoIDs();
                            TapjoyVideo.this.initialized = true;
                            if (TapjoyVideo.this.cacheAuto) {
                                TapjoyLog.i("TapjoyVideo", "trying to cache because of cache_auto flag...");
                                TapjoyVideo.this.cacheVideos();
                            }
                            TapjoyLog.i("TapjoyVideo", "------------------------------");
                            TapjoyLog.i("TapjoyVideo", "------------------------------");
                            TapjoyLog.i("TapjoyVideo", "INIT DONE!");
                            TapjoyLog.i("TapjoyVideo", "------------------------------");
                            return;
                        }
                        catch (Exception ex) {
                            TapjoyLog.e("TapjoyVideo", "e: " + ex.toString());
                            continue;
                        }
                        break;
                    }
                }
                TapjoyVideo.videoNotifierError(2);
            }
        }).start();
        TapjoyConnectCore.setVideoEnabled(true);
    }
    
    public void initVideoAd(final TapjoyVideoNotifier tapjoyVideoNotifier) {
        this.initVideoAd(tapjoyVideoNotifier, false);
    }
    
    public void initVideoAd(final TapjoyVideoNotifier tapjoyVideoNotifier, final boolean b) {
        TapjoyVideo.tapjoyVideoNotifier = tapjoyVideoNotifier;
        if (tapjoyVideoNotifier == null) {
            Log.e("TapjoyVideo", "Error during initVideoAd -- TapjoyVideoNotifier is null");
            return;
        }
        this.cacheVideos();
    }
    
    public void setVideoCacheCount(final int videoCacheLimit) {
        this.videoCacheLimit = videoCacheLimit;
    }
    
    public void setVideoNotifier(final TapjoyVideoNotifier tapjoyVideoNotifier) {
        TapjoyVideo.tapjoyVideoNotifier = tapjoyVideoNotifier;
    }
    
    public boolean startVideo(final String s, final String s2, final String s3, final String s4, final String s5, final String s6) {
        boolean b = true;
        TapjoyLog.i("TapjoyVideo", "Starting video activity with video: " + s);
        if (s == null || s4 == null || s5 == null || s.length() == 0 || s4.length() == 0 || s5.length() == 0) {
            TapjoyLog.i("TapjoyVideo", "aborting video playback... invalid or missing parameter");
            return false;
        }
        this.videoToPlay = this.cachedVideos.get(s);
        if (this.videoToPlay == null) {
            TapjoyLog.i("TapjoyVideo", "video not cached... checking uncached videos");
            this.videoToPlay = this.uncachedVideos.get(s);
            if (this.videoToPlay == null) {
                if (s6 == null || s6.length() <= 0) {
                    TapjoyLog.e("TapjoyVideo", "no video data and no video url - aborting playback...");
                    return false;
                }
                final TapjoyVideoObject value = new TapjoyVideoObject();
                value.offerID = s;
                value.currencyName = s2;
                value.currencyAmount = s3;
                value.clickURL = s4;
                value.webviewURL = s5;
                value.videoURL = s6;
                this.uncachedVideos.put(s, value);
                this.videoToPlay = this.uncachedVideos.get(s);
            }
            b = false;
        }
        this.videoToPlay.currencyName = s2;
        this.videoToPlay.currencyAmount = s3;
        this.videoToPlay.clickURL = s4;
        this.videoToPlay.webviewURL = s5;
        this.videoToPlay.videoURL = s6;
        TapjoyLog.i("TapjoyVideo", "videoToPlay: " + this.videoToPlay.offerID);
        TapjoyLog.i("TapjoyVideo", "amount: " + this.videoToPlay.currencyAmount);
        TapjoyLog.i("TapjoyVideo", "currency: " + this.videoToPlay.currencyName);
        TapjoyLog.i("TapjoyVideo", "clickURL: " + this.videoToPlay.clickURL);
        TapjoyLog.i("TapjoyVideo", "location: " + this.videoToPlay.dataLocation);
        TapjoyLog.i("TapjoyVideo", "webviewURL: " + this.videoToPlay.webviewURL);
        TapjoyLog.i("TapjoyVideo", "videoURL: " + this.videoToPlay.videoURL);
        if (b && this.videoToPlay.dataLocation != null) {
            final File file = new File(this.videoToPlay.dataLocation);
            if (file == null || !file.exists()) {
                TapjoyLog.e("TapjoyVideo", "video file does not exist.");
                return false;
            }
        }
        final Intent intent = new Intent(this.context, (Class)TapjoyVideoView.class);
        intent.setFlags(268435456);
        intent.putExtra("VIDEO_DATA", (Serializable)this.videoToPlay);
        this.context.startActivity(intent);
        return true;
    }
}
