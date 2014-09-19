package com.fusepowered.m1.android;

import java.util.*;
import android.os.*;
import android.text.*;
import java.util.concurrent.*;
import android.content.*;
import java.io.*;

final class AdCache
{
    private static final String CACHED_AD_FILE = "ad.dat";
    private static final String CACHE_INCOMPLETE_PREFIX = "incompleteDownload_";
    private static final String CACHE_PREFIX = "nextCachedAd_";
    private static final String CACHE_PREFIX_APID = "nextCachedAd_apids";
    private static final String LOCK_FILE = "ad.lock";
    static final int PRIORITY_FETCH = 3;
    static final int PRIORITY_PRECACHE = 1;
    static final int PRIORITY_REFRESH = 2;
    static final String PRIVATE_CACHE_DIR = ".mmsyscache";
    private static Set<String> apidListSet;
    private static String cachedVideoList;
    private static boolean cachedVideoListLoaded;
    private static Set<String> cachedVideoSet;
    private static Map<String, String> incompleteDownloadHashMap;
    private static boolean incompleteDownloadHashMapLoaded;
    static boolean isExternalEnabled;
    private static Map<String, String> nextCachedAdHashMap;
    private static boolean nextCachedAdHashMapLoaded;
    
    static {
        AdCache.isExternalEnabled = true;
    }
    
    static void cachedVideoWasAdded(final Context context, final String s) {
        // monitorenter(AdCache.class)
        if (s == null) {
            return;
        }
        try {
            if (!AdCache.cachedVideoListLoaded) {
                getCachedVideoList(context);
            }
            if (AdCache.cachedVideoSet == null) {
                AdCache.cachedVideoSet = new HashSet<String>();
            }
            AdCache.cachedVideoSet.add(s);
            AdCache.cachedVideoList = null;
        }
        finally {
        }
        // monitorexit(AdCache.class)
    }
    
    static void cachedVideoWasRemoved(final Context context, final String s) {
        // monitorenter(AdCache.class)
        if (s == null) {
            return;
        }
        try {
            if (!AdCache.cachedVideoListLoaded) {
                getCachedVideoList(context);
            }
            if (AdCache.cachedVideoSet != null) {
                AdCache.cachedVideoSet.remove(s);
                AdCache.cachedVideoList = null;
            }
        }
        finally {
        }
        // monitorexit(AdCache.class)
    }
    
    static void cleanCache(final Context context) {
        Utils.ThreadUtils.execute(new Runnable() {
            @Override
            public void run() {
                MMSDK.Log.d("AdCache");
                AdCache.cleanUpExpiredAds(context);
                AdCache.cleanupCache(context);
            }
        });
    }
    
    static void cleanUpExpiredAds(final Context context) {
        iterateCachedAds(context, 1, (Iterator)new Iterator() {
            @Override
            boolean callback(final String s, final int n, final Date date, final String s2, final long n2, final ObjectInputStream objectInputStream) {
                if (date == null || date.getTime() > System.currentTimeMillis()) {
                    return true;
                }
                try {
                    final CachedAd cachedAd = (CachedAd)objectInputStream.readObject();
                    MMSDK.Log.d("Deleting expired ad %s.", cachedAd.getId());
                    cachedAd.delete(context);
                    return true;
                }
                catch (Exception ex) {
                    MMSDK.Log.d("There was a problem reading the cached ad %s.", s);
                    MMSDK.Log.d(ex);
                    return true;
                }
            }
        });
    }
    
    static void cleanupCache(final Context context) {
        cleanupInternalCache(context);
        if (isExternalStorageAvailable(context)) {
            cleanupExternalCache(context);
        }
    }
    
    static void cleanupDirectory(final File file, final long n) {
        for (final File file2 : file.listFiles()) {
            if (file2.isFile()) {
                if (System.currentTimeMillis() - file2.lastModified() > n) {
                    file2.delete();
                }
            }
            else if (file2.isDirectory()) {
                try {
                    cleanupDirectory(file2, n);
                    if (file2.list().length == 0) {
                        file2.delete();
                    }
                }
                catch (SecurityException ex) {}
            }
        }
    }
    
    private static void cleanupExternalCache(final Context context) {
        final File externalCacheDirectory = getExternalCacheDirectory(context);
        if (externalCacheDirectory != null && externalCacheDirectory.exists() && externalCacheDirectory.isDirectory()) {
            cleanupDirectory(externalCacheDirectory, HandShake.sharedHandShake(context).creativeCacheTimeout);
        }
    }
    
    private static void cleanupInternalCache(final Context context) {
        final File internalCacheDirectory = getInternalCacheDirectory(context);
        if (internalCacheDirectory != null && internalCacheDirectory.exists() && internalCacheDirectory.isDirectory()) {
            cleanupDirectory(internalCacheDirectory, HandShake.sharedHandShake(context).creativeCacheTimeout);
        }
    }
    
    static boolean deleteFile(final Context context, final String s) {
        final File cachedAdFile = getCachedAdFile(context, s);
        return cachedAdFile != null && cachedAdFile.delete();
    }
    
    static boolean downloadComponent(final String p0, final String p1, final File p2, final Context p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //     4: ifeq            18
        //     7: ldc             "No Url ..."
        //     9: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;)V
        //    12: iconst_0       
        //    13: istore          42
        //    15: iload           42
        //    17: ireturn        
        //    18: new             Ljava/io/File;
        //    21: dup            
        //    22: aload_2        
        //    23: aload_1        
        //    24: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //    27: astore          4
        //    29: ldc             "Downloading Component: %s from %s"
        //    31: iconst_2       
        //    32: anewarray       Ljava/lang/Object;
        //    35: dup            
        //    36: iconst_0       
        //    37: aload_1        
        //    38: aastore        
        //    39: dup            
        //    40: iconst_1       
        //    41: aload_0        
        //    42: aastore        
        //    43: invokestatic    com/fusepowered/m1/android/MMSDK$Log.v:(Ljava/lang/String;[Ljava/lang/Object;)V
        //    46: aload           4
        //    48: invokevirtual   java/io/File.exists:()Z
        //    51: ifeq            88
        //    54: aload           4
        //    56: invokevirtual   java/io/File.length:()J
        //    59: lconst_0       
        //    60: lcmp           
        //    61: ifle            88
        //    64: new             Ljava/lang/StringBuilder;
        //    67: dup            
        //    68: invokespecial   java/lang/StringBuilder.<init>:()V
        //    71: aload_1        
        //    72: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    75: ldc             " already exists, skipping..."
        //    77: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    80: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    83: invokestatic    com/fusepowered/m1/android/MMSDK$Log.v:(Ljava/lang/String;)V
        //    86: iconst_1       
        //    87: ireturn        
        //    88: ldc2_w          -1
        //    91: lstore          5
        //    93: new             Ljava/net/URL;
        //    96: dup            
        //    97: aload_0        
        //    98: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
        //   101: astore          7
        //   103: iconst_1       
        //   104: invokestatic    java/net/HttpURLConnection.setFollowRedirects:(Z)V
        //   107: aload           7
        //   109: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
        //   112: checkcast       Ljava/net/HttpURLConnection;
        //   115: astore          34
        //   117: aload           34
        //   119: sipush          30000
        //   122: invokevirtual   java/net/HttpURLConnection.setConnectTimeout:(I)V
        //   125: aload           34
        //   127: ldc             "GET"
        //   129: invokevirtual   java/net/HttpURLConnection.setRequestMethod:(Ljava/lang/String;)V
        //   132: aload           34
        //   134: invokevirtual   java/net/HttpURLConnection.connect:()V
        //   137: aload           34
        //   139: invokevirtual   java/net/HttpURLConnection.getInputStream:()Ljava/io/InputStream;
        //   142: astore          35
        //   144: aload           35
        //   146: astore          17
        //   148: aload           34
        //   150: ldc             "Content-Length"
        //   152: invokevirtual   java/net/HttpURLConnection.getHeaderField:(Ljava/lang/String;)Ljava/lang/String;
        //   155: astore          41
        //   157: aload           41
        //   159: ifnull          169
        //   162: aload           41
        //   164: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //   167: lstore          5
        //   169: aload           17
        //   171: ifnonnull       249
        //   174: ldc_w           "Connection stream is null downloading %s."
        //   177: iconst_1       
        //   178: anewarray       Ljava/lang/Object;
        //   181: dup            
        //   182: iconst_0       
        //   183: aload_1        
        //   184: aastore        
        //   185: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   188: aload           17
        //   190: ifnull          198
        //   193: aload           17
        //   195: invokevirtual   java/io/InputStream.close:()V
        //   198: iconst_0       
        //   199: istore          42
        //   201: iconst_0       
        //   202: ifeq            15
        //   205: aconst_null    
        //   206: invokevirtual   java/io/FileOutputStream.close:()V
        //   209: iconst_0       
        //   210: ireturn        
        //   211: astore          43
        //   213: iconst_1       
        //   214: anewarray       Ljava/lang/Object;
        //   217: astore          44
        //   219: aload           44
        //   221: iconst_0       
        //   222: aload           43
        //   224: invokevirtual   java/io/IOException.getMessage:()Ljava/lang/String;
        //   227: aastore        
        //   228: ldc_w           "Content caching error: %s"
        //   231: aload           44
        //   233: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   236: aload           4
        //   238: ifnull          247
        //   241: aload           4
        //   243: invokevirtual   java/io/File.delete:()Z
        //   246: pop            
        //   247: iconst_0       
        //   248: ireturn        
        //   249: aload_3        
        //   250: aload_3        
        //   251: invokestatic    com/fusepowered/m1/android/AdCache.getCacheDirectory:(Landroid/content/Context;)Ljava/io/File;
        //   254: invokestatic    com/fusepowered/m1/android/AdCache.isInternalDir:(Landroid/content/Context;Ljava/io/File;)Z
        //   257: ifeq            398
        //   260: aload_3        
        //   261: aload           4
        //   263: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //   266: iconst_1       
        //   267: invokevirtual   android/content/Context.openFileOutput:(Ljava/lang/String;I)Ljava/io/FileOutputStream;
        //   270: astore          68
        //   272: aload           68
        //   274: astore          47
        //   276: sipush          4096
        //   279: newarray        B
        //   281: astore          53
        //   283: aload           17
        //   285: aload           53
        //   287: invokevirtual   java/io/InputStream.read:([B)I
        //   290: istore          54
        //   292: iload           54
        //   294: ifle            416
        //   297: aload           47
        //   299: aload           53
        //   301: iconst_0       
        //   302: iload           54
        //   304: invokevirtual   java/io/FileOutputStream.write:([BII)V
        //   307: goto            283
        //   310: astore          8
        //   312: lload           5
        //   314: lstore          51
        //   316: aload           47
        //   318: astore          12
        //   320: aload           17
        //   322: astore          11
        //   324: lload           51
        //   326: lstore          9
        //   328: iconst_2       
        //   329: anewarray       Ljava/lang/Object;
        //   332: astore          22
        //   334: aload           22
        //   336: iconst_0       
        //   337: aload_1        
        //   338: aastore        
        //   339: aload           22
        //   341: iconst_1       
        //   342: aload           8
        //   344: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   347: aastore        
        //   348: ldc_w           "Exception downloading component %s: %s"
        //   351: aload           22
        //   353: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   356: aload           11
        //   358: ifnull          366
        //   361: aload           11
        //   363: invokevirtual   java/io/InputStream.close:()V
        //   366: aload           12
        //   368: ifnull          376
        //   371: aload           12
        //   373: invokevirtual   java/io/FileOutputStream.close:()V
        //   376: lload           9
        //   378: pop2           
        //   379: aload           12
        //   381: pop            
        //   382: aload           11
        //   384: pop            
        //   385: aload           4
        //   387: ifnull          396
        //   390: aload           4
        //   392: invokevirtual   java/io/File.delete:()Z
        //   395: pop            
        //   396: iconst_0       
        //   397: ireturn        
        //   398: new             Ljava/io/FileOutputStream;
        //   401: dup            
        //   402: aload           4
        //   404: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //   407: astore          46
        //   409: aload           46
        //   411: astore          47
        //   413: goto            276
        //   416: aload           4
        //   418: ifnull          515
        //   421: aload           4
        //   423: invokevirtual   java/io/File.length:()J
        //   426: lstore          63
        //   428: lload           63
        //   430: lload           5
        //   432: lcmp           
        //   433: ifeq            445
        //   436: lload           5
        //   438: ldc2_w          -1
        //   441: lcmp           
        //   442: ifne            509
        //   445: iconst_1       
        //   446: istore          42
        //   448: aload           17
        //   450: ifnull          458
        //   453: aload           17
        //   455: invokevirtual   java/io/InputStream.close:()V
        //   458: aload           47
        //   460: ifnull          15
        //   463: aload           47
        //   465: invokevirtual   java/io/FileOutputStream.close:()V
        //   468: iload           42
        //   470: ireturn        
        //   471: astore          65
        //   473: iconst_1       
        //   474: anewarray       Ljava/lang/Object;
        //   477: astore          66
        //   479: aload           66
        //   481: iconst_0       
        //   482: aload           65
        //   484: invokevirtual   java/io/IOException.getMessage:()Ljava/lang/String;
        //   487: aastore        
        //   488: ldc_w           "Content caching error: %s"
        //   491: aload           66
        //   493: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   496: aload           4
        //   498: ifnull          507
        //   501: aload           4
        //   503: invokevirtual   java/io/File.delete:()Z
        //   506: pop            
        //   507: iconst_0       
        //   508: ireturn        
        //   509: ldc_w           "Content-Length does not match actual length."
        //   512: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;)V
        //   515: aload           17
        //   517: ifnull          525
        //   520: aload           17
        //   522: invokevirtual   java/io/InputStream.close:()V
        //   525: aload           47
        //   527: ifnull          535
        //   530: aload           47
        //   532: invokevirtual   java/io/FileOutputStream.close:()V
        //   535: lload           5
        //   537: pop2           
        //   538: aload           47
        //   540: pop            
        //   541: goto            385
        //   544: astore          61
        //   546: iconst_2       
        //   547: anewarray       Ljava/lang/Object;
        //   550: astore          62
        //   552: aload           62
        //   554: iconst_0       
        //   555: aload_1        
        //   556: aastore        
        //   557: aload           62
        //   559: iconst_1       
        //   560: aload           61
        //   562: invokevirtual   java/lang/SecurityException.getMessage:()Ljava/lang/String;
        //   565: aastore        
        //   566: ldc_w           "Exception downloading component %s: %s"
        //   569: aload           62
        //   571: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   574: goto            515
        //   577: astore          48
        //   579: aload           47
        //   581: astore          16
        //   583: lload           5
        //   585: pop2           
        //   586: aload           48
        //   588: astore          18
        //   590: aload           17
        //   592: ifnull          600
        //   595: aload           17
        //   597: invokevirtual   java/io/InputStream.close:()V
        //   600: aload           16
        //   602: ifnull          610
        //   605: aload           16
        //   607: invokevirtual   java/io/FileOutputStream.close:()V
        //   610: aload           18
        //   612: athrow         
        //   613: astore          55
        //   615: iconst_1       
        //   616: anewarray       Ljava/lang/Object;
        //   619: astore          56
        //   621: aload           56
        //   623: iconst_0       
        //   624: aload           55
        //   626: invokevirtual   java/io/IOException.getMessage:()Ljava/lang/String;
        //   629: aastore        
        //   630: ldc_w           "Content caching error: %s"
        //   633: aload           56
        //   635: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   638: aload           4
        //   640: ifnull          649
        //   643: aload           4
        //   645: invokevirtual   java/io/File.delete:()Z
        //   648: pop            
        //   649: iconst_0       
        //   650: ireturn        
        //   651: astore          23
        //   653: iconst_1       
        //   654: anewarray       Ljava/lang/Object;
        //   657: astore          24
        //   659: aload           24
        //   661: iconst_0       
        //   662: aload           23
        //   664: invokevirtual   java/io/IOException.getMessage:()Ljava/lang/String;
        //   667: aastore        
        //   668: ldc_w           "Content caching error: %s"
        //   671: aload           24
        //   673: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   676: aload           4
        //   678: ifnull          687
        //   681: aload           4
        //   683: invokevirtual   java/io/File.delete:()Z
        //   686: pop            
        //   687: iconst_0       
        //   688: ireturn        
        //   689: astore          19
        //   691: iconst_1       
        //   692: anewarray       Ljava/lang/Object;
        //   695: astore          20
        //   697: aload           20
        //   699: iconst_0       
        //   700: aload           19
        //   702: invokevirtual   java/io/IOException.getMessage:()Ljava/lang/String;
        //   705: aastore        
        //   706: ldc_w           "Content caching error: %s"
        //   709: aload           20
        //   711: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   714: aload           4
        //   716: ifnull          725
        //   719: aload           4
        //   721: invokevirtual   java/io/File.delete:()Z
        //   724: pop            
        //   725: iconst_0       
        //   726: ireturn        
        //   727: astore          31
        //   729: lload           5
        //   731: pop2           
        //   732: aload           31
        //   734: astore          18
        //   736: aconst_null    
        //   737: astore          17
        //   739: aconst_null    
        //   740: astore          16
        //   742: goto            590
        //   745: astore          38
        //   747: lload           5
        //   749: pop2           
        //   750: aload           38
        //   752: astore          18
        //   754: aconst_null    
        //   755: astore          16
        //   757: goto            590
        //   760: astore          13
        //   762: lload           9
        //   764: pop2           
        //   765: aload           12
        //   767: astore          16
        //   769: aload           11
        //   771: astore          17
        //   773: aload           13
        //   775: astore          18
        //   777: goto            590
        //   780: astore          8
        //   782: lload           5
        //   784: lstore          9
        //   786: aconst_null    
        //   787: astore          11
        //   789: aconst_null    
        //   790: astore          12
        //   792: goto            328
        //   795: astore          8
        //   797: lload           5
        //   799: lstore          36
        //   801: aload           17
        //   803: astore          11
        //   805: lload           36
        //   807: lstore          9
        //   809: aconst_null    
        //   810: astore          12
        //   812: goto            328
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                         
        //  -----  -----  -----  -----  -----------------------------
        //  93     144    780    795    Ljava/lang/Exception;
        //  93     144    727    745    Any
        //  148    157    795    815    Ljava/lang/Exception;
        //  148    157    745    760    Any
        //  162    169    795    815    Ljava/lang/Exception;
        //  162    169    745    760    Any
        //  174    188    795    815    Ljava/lang/Exception;
        //  174    188    745    760    Any
        //  193    198    211    249    Ljava/io/IOException;
        //  205    209    211    249    Ljava/io/IOException;
        //  249    272    795    815    Ljava/lang/Exception;
        //  249    272    745    760    Any
        //  276    283    310    328    Ljava/lang/Exception;
        //  276    283    577    590    Any
        //  283    292    310    328    Ljava/lang/Exception;
        //  283    292    577    590    Any
        //  297    307    310    328    Ljava/lang/Exception;
        //  297    307    577    590    Any
        //  328    356    760    780    Any
        //  361    366    651    689    Ljava/io/IOException;
        //  371    376    651    689    Ljava/io/IOException;
        //  398    409    795    815    Ljava/lang/Exception;
        //  398    409    745    760    Any
        //  421    428    544    577    Ljava/lang/SecurityException;
        //  421    428    310    328    Ljava/lang/Exception;
        //  421    428    577    590    Any
        //  453    458    471    509    Ljava/io/IOException;
        //  463    468    471    509    Ljava/io/IOException;
        //  509    515    544    577    Ljava/lang/SecurityException;
        //  509    515    310    328    Ljava/lang/Exception;
        //  509    515    577    590    Any
        //  520    525    613    651    Ljava/io/IOException;
        //  530    535    613    651    Ljava/io/IOException;
        //  546    574    310    328    Ljava/lang/Exception;
        //  546    574    577    590    Any
        //  595    600    689    727    Ljava/io/IOException;
        //  605    610    689    727    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 399, Size: 399
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
    
    static boolean downloadComponentToCache(final String s, final String s2, final Context context) {
        return downloadComponent(s, s2, getCacheDirectory(context), context);
    }
    
    static File getCacheDirectory(final Context context) {
        if (isExternalStorageAvailable(context)) {
            return getExternalCacheDirectory(context);
        }
        return getInternalCacheDirectory(context);
    }
    
    private static File getCachedAdFile(final Context context, final String str) {
        final String string = str + "ad.dat";
        final boolean externalStorageAvailable = isExternalStorageAvailable(context);
        final File cacheDirectory = getCacheDirectory(context);
        File file = null;
        while (true) {
            if (cacheDirectory != null) {
                try {
                    final boolean directory = cacheDirectory.isDirectory();
                    file = null;
                    if (directory) {
                        file = new File(cacheDirectory, string);
                    }
                    if ((file == null || !file.exists()) && !externalStorageAvailable) {
                        final File filesDir = context.getFilesDir();
                        if (filesDir != null) {
                            final File file2 = new File(filesDir, ".mmsyscache" + File.separator + string);
                            if (file2.exists() && file2.isFile()) {
                                return file2;
                            }
                        }
                    }
                }
                catch (Exception ex) {
                    MMSDK.Log.e(ex);
                    return null;
                }
                return file;
            }
            continue;
        }
    }
    
    static String getCachedVideoList(final Context context) {
        while (true) {
            StringBuilder sb = null;
        Label_0164:
            while (true) {
                String s = null;
                Label_0150: {
                    synchronized (AdCache.class) {
                        if (AdCache.cachedVideoList != null) {
                            break;
                        }
                        if (!AdCache.cachedVideoListLoaded) {
                            final HashSet<String> cachedVideoSet = new HashSet<String>();
                            iterateCachedAds(context, 2, (Iterator)new Iterator() {
                                @Override
                                boolean callback(final CachedAd cachedAd) {
                                    if (cachedAd.acid != null && cachedAd.getType() == 1 && cachedAd.isOnDisk(context)) {
                                        cachedVideoSet.add(cachedAd.acid);
                                    }
                                    return true;
                                }
                            });
                            AdCache.cachedVideoSet = cachedVideoSet;
                            AdCache.cachedVideoListLoaded = true;
                        }
                        if (AdCache.cachedVideoSet != null && AdCache.cachedVideoSet.size() > 0) {
                            sb = new StringBuilder();
                            final java.util.Iterator<String> iterator = AdCache.cachedVideoSet.iterator();
                            while (iterator.hasNext()) {
                                s = iterator.next();
                                if (sb.length() <= 0) {
                                    break Label_0150;
                                }
                                sb.append("," + s);
                            }
                            break Label_0164;
                        }
                        break;
                    }
                }
                sb.append(s);
                continue;
            }
            AdCache.cachedVideoList = sb.toString();
            break;
        }
        // monitorexit(AdCache.class)
        return AdCache.cachedVideoList;
    }
    
    static File getDownloadFile(final Context context, final String child) {
        final File cacheDirectory = getCacheDirectory(context);
        File file = null;
        if (cacheDirectory != null) {
            file = new File(cacheDirectory, child);
        }
        return file;
    }
    
    private static File getExternalCacheDirectory(final Context context) {
        final File externalStorageDirectory = Environment.getExternalStorageDirectory();
        File file = null;
        if (externalStorageDirectory != null) {
            file = new File(externalStorageDirectory, ".mmsyscache");
            if (!file.exists() && !file.mkdirs()) {
                file = null;
            }
        }
        return file;
    }
    
    static String getIncompleteDownload(final Context context, final String s) {
        synchronized (AdCache.class) {
            if (!AdCache.incompleteDownloadHashMapLoaded) {
                loadIncompleteDownloadHashMap(context);
            }
            String s2;
            if (s == null) {
                s2 = null;
            }
            else {
                s2 = AdCache.incompleteDownloadHashMap.get(s);
            }
            return s2;
        }
    }
    
    static File getInternalCacheDirectory(final Context context) {
        if (context == null) {
            return null;
        }
        File file = new File(context.getFilesDir(), ".mmsyscache");
        if (file != null && !file.exists() && !file.mkdirs()) {
            file = null;
        }
        return file;
    }
    
    static String getNextCachedAd(final Context context, final String s) {
        synchronized (AdCache.class) {
            if (!AdCache.nextCachedAdHashMapLoaded) {
                loadNextCachedAdHashMap(context);
            }
            String s2;
            if (s == null) {
                s2 = null;
            }
            else {
                s2 = AdCache.nextCachedAdHashMap.get(s);
            }
            return s2;
        }
    }
    
    static boolean hasDownloadFile(final Context context, final String s) {
        final File downloadFile = getDownloadFile(context, s);
        return downloadFile != null && downloadFile.exists();
    }
    
    static boolean isExternalMounted() {
        return Environment.getExternalStorageState().equals("mounted");
    }
    
    static boolean isExternalStorageAvailable(final Context context) {
        if (context == null) {
            return false;
        }
        final String externalStorageState = Environment.getExternalStorageState();
        return context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0 && !TextUtils.isEmpty((CharSequence)externalStorageState) && externalStorageState.equals("mounted") && AdCache.isExternalEnabled;
    }
    
    static boolean isInternalDir(final Context context, final File obj) {
        final File internalCacheDirectory = getInternalCacheDirectory(context);
        return internalCacheDirectory != null && internalCacheDirectory.equals(obj);
    }
    
    static void iterateCachedAds(final Context p0, final int p1, final Iterator p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokestatic    com/fusepowered/m1/android/AdCache.getCacheDirectory:(Landroid/content/Context;)Ljava/io/File;
        //     4: astore_3       
        //     5: aload_3        
        //     6: ifnull          131
        //     9: aload_3        
        //    10: new             Lcom/fusepowered/m1/android/AdCache$2;
        //    13: dup            
        //    14: invokespecial   com/fusepowered/m1/android/AdCache$2.<init>:()V
        //    17: invokevirtual   java/io/File.listFiles:(Ljava/io/FileFilter;)[Ljava/io/File;
        //    20: astore          4
        //    22: aload           4
        //    24: ifnull          131
        //    27: aload           4
        //    29: arraylength    
        //    30: istore          5
        //    32: iconst_0       
        //    33: istore          6
        //    35: aconst_null    
        //    36: astore          7
        //    38: iload           6
        //    40: iload           5
        //    42: if_icmpge       426
        //    45: aload           4
        //    47: iload           6
        //    49: aaload         
        //    50: astore          9
        //    52: aload           9
        //    54: ifnull          69
        //    57: aload           9
        //    59: invokevirtual   java/io/File.exists:()Z
        //    62: istore          18
        //    64: iload           18
        //    66: ifne            101
        //    69: aload           7
        //    71: ifnull          419
        //    74: aload           7
        //    76: invokevirtual   java/io/ObjectInputStream.close:()V
        //    79: aconst_null    
        //    80: astore          10
        //    82: iinc            6, 1
        //    85: aload           10
        //    87: astore          7
        //    89: goto            38
        //    92: astore          11
        //    94: aload           7
        //    96: astore          10
        //    98: goto            82
        //   101: iload_1        
        //   102: ifne            169
        //   105: aload_2        
        //   106: aload           9
        //   108: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //   111: invokevirtual   com/fusepowered/m1/android/AdCache$Iterator.callback:(Ljava/lang/String;)Z
        //   114: istore          27
        //   116: iload           27
        //   118: ifne            144
        //   121: aload           7
        //   123: ifnull          426
        //   126: aload           7
        //   128: invokevirtual   java/io/ObjectInputStream.close:()V
        //   131: aload_2        
        //   132: invokevirtual   com/fusepowered/m1/android/AdCache$Iterator.done:()V
        //   135: return         
        //   136: astore          29
        //   138: aload           7
        //   140: pop            
        //   141: goto            131
        //   144: aload           7
        //   146: ifnull          419
        //   149: aload           7
        //   151: invokevirtual   java/io/ObjectInputStream.close:()V
        //   154: aconst_null    
        //   155: astore          10
        //   157: goto            82
        //   160: astore          28
        //   162: aload           7
        //   164: astore          10
        //   166: goto            82
        //   169: new             Ljava/io/ObjectInputStream;
        //   172: dup            
        //   173: new             Ljava/io/FileInputStream;
        //   176: dup            
        //   177: aload           9
        //   179: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //   182: invokespecial   java/io/ObjectInputStream.<init>:(Ljava/io/InputStream;)V
        //   185: astore          10
        //   187: aload           10
        //   189: invokevirtual   java/io/ObjectInputStream.readInt:()I
        //   192: istore          19
        //   194: aload           10
        //   196: invokevirtual   java/io/ObjectInputStream.readObject:()Ljava/lang/Object;
        //   199: checkcast       Ljava/util/Date;
        //   202: astore          20
        //   204: aload           10
        //   206: invokevirtual   java/io/ObjectInputStream.readObject:()Ljava/lang/Object;
        //   209: checkcast       Ljava/lang/String;
        //   212: astore          21
        //   214: aload           10
        //   216: invokevirtual   java/io/ObjectInputStream.readLong:()J
        //   219: lstore          22
        //   221: iload_1        
        //   222: iconst_1       
        //   223: if_icmpne       264
        //   226: aload_2        
        //   227: aload           9
        //   229: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //   232: iload           19
        //   234: aload           20
        //   236: aload           21
        //   238: lload           22
        //   240: aload           10
        //   242: invokevirtual   com/fusepowered/m1/android/AdCache$Iterator.callback:(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;JLjava/io/ObjectInputStream;)Z
        //   245: ifne            295
        //   248: aload           10
        //   250: invokevirtual   java/io/ObjectInputStream.close:()V
        //   253: iconst_0       
        //   254: ifeq            131
        //   257: aconst_null    
        //   258: invokevirtual   java/io/ObjectInputStream.close:()V
        //   261: goto            131
        //   264: aload_2        
        //   265: aload           10
        //   267: invokevirtual   java/io/ObjectInputStream.readObject:()Ljava/lang/Object;
        //   270: checkcast       Lcom/fusepowered/m1/android/CachedAd;
        //   273: invokevirtual   com/fusepowered/m1/android/AdCache$Iterator.callback:(Lcom/fusepowered/m1/android/CachedAd;)Z
        //   276: ifne            295
        //   279: aload           10
        //   281: invokevirtual   java/io/ObjectInputStream.close:()V
        //   284: iconst_0       
        //   285: ifeq            131
        //   288: aconst_null    
        //   289: invokevirtual   java/io/ObjectInputStream.close:()V
        //   292: goto            131
        //   295: aload           10
        //   297: ifnull          82
        //   300: aload           10
        //   302: invokevirtual   java/io/ObjectInputStream.close:()V
        //   305: aconst_null    
        //   306: astore          10
        //   308: goto            82
        //   311: astore          14
        //   313: aload           7
        //   315: astore          10
        //   317: aload           14
        //   319: astore          15
        //   321: iconst_1       
        //   322: anewarray       Ljava/lang/Object;
        //   325: astore          16
        //   327: aload           16
        //   329: iconst_0       
        //   330: aload           9
        //   332: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //   335: aastore        
        //   336: ldc_w           "There was a problem reading the cached ad %s."
        //   339: aload           16
        //   341: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   344: aload           15
        //   346: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/Throwable;)V
        //   349: aload           10
        //   351: ifnull          82
        //   354: aload           10
        //   356: invokevirtual   java/io/ObjectInputStream.close:()V
        //   359: aconst_null    
        //   360: astore          10
        //   362: goto            82
        //   365: astore          12
        //   367: aload           7
        //   369: astore          10
        //   371: aload           10
        //   373: ifnull          381
        //   376: aload           10
        //   378: invokevirtual   java/io/ObjectInputStream.close:()V
        //   381: aload           12
        //   383: athrow         
        //   384: astore          25
        //   386: goto            131
        //   389: astore          26
        //   391: goto            131
        //   394: astore          24
        //   396: goto            82
        //   399: astore          17
        //   401: goto            82
        //   404: astore          13
        //   406: goto            381
        //   409: astore          12
        //   411: goto            371
        //   414: astore          15
        //   416: goto            321
        //   419: aload           7
        //   421: astore          10
        //   423: goto            82
        //   426: aload           7
        //   428: pop            
        //   429: goto            131
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  57     64     311    321    Ljava/lang/Exception;
        //  57     64     365    371    Any
        //  74     79     92     101    Ljava/io/IOException;
        //  105    116    311    321    Ljava/lang/Exception;
        //  105    116    365    371    Any
        //  126    131    136    144    Ljava/io/IOException;
        //  149    154    160    169    Ljava/io/IOException;
        //  169    187    311    321    Ljava/lang/Exception;
        //  169    187    365    371    Any
        //  187    221    414    419    Ljava/lang/Exception;
        //  187    221    409    414    Any
        //  226    253    414    419    Ljava/lang/Exception;
        //  226    253    409    414    Any
        //  257    261    384    389    Ljava/io/IOException;
        //  264    284    414    419    Ljava/lang/Exception;
        //  264    284    409    414    Any
        //  288    292    389    394    Ljava/io/IOException;
        //  300    305    394    399    Ljava/io/IOException;
        //  321    349    409    414    Any
        //  354    359    399    404    Ljava/io/IOException;
        //  376    381    404    409    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 195, Size: 195
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3419)
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
    
    static CachedAd load(final Context p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: ifnull          14
        //     4: aload_1        
        //     5: ldc_w           ""
        //     8: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    11: ifeq            16
        //    14: aconst_null    
        //    15: areturn        
        //    16: aconst_null    
        //    17: astore_2       
        //    18: aload_0        
        //    19: aload_1        
        //    20: invokestatic    com/fusepowered/m1/android/AdCache.getCachedAdFile:(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
        //    23: astore_3       
        //    24: aload_3        
        //    25: ifnonnull       30
        //    28: aconst_null    
        //    29: areturn        
        //    30: new             Ljava/io/ObjectInputStream;
        //    33: dup            
        //    34: new             Ljava/io/FileInputStream;
        //    37: dup            
        //    38: aload_3        
        //    39: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //    42: invokespecial   java/io/ObjectInputStream.<init>:(Ljava/io/InputStream;)V
        //    45: astore          4
        //    47: aload           4
        //    49: invokevirtual   java/io/ObjectInputStream.readInt:()I
        //    52: pop            
        //    53: aload           4
        //    55: invokevirtual   java/io/ObjectInputStream.readObject:()Ljava/lang/Object;
        //    58: checkcast       Ljava/util/Date;
        //    61: pop            
        //    62: aload           4
        //    64: invokevirtual   java/io/ObjectInputStream.readObject:()Ljava/lang/Object;
        //    67: pop            
        //    68: aload           4
        //    70: invokevirtual   java/io/ObjectInputStream.readLong:()J
        //    73: pop2           
        //    74: aload           4
        //    76: invokevirtual   java/io/ObjectInputStream.readObject:()Ljava/lang/Object;
        //    79: checkcast       Lcom/fusepowered/m1/android/CachedAd;
        //    82: astore          8
        //    84: aload           4
        //    86: ifnull          94
        //    89: aload           4
        //    91: invokevirtual   java/io/ObjectInputStream.close:()V
        //    94: aload           8
        //    96: areturn        
        //    97: astore          18
        //    99: goto            94
        //   102: astore          20
        //   104: ldc_w           "There was a problem loading up the cached ad %s. Ad is not on disk."
        //   107: iconst_1       
        //   108: anewarray       Ljava/lang/Object;
        //   111: dup            
        //   112: iconst_0       
        //   113: aload_1        
        //   114: aastore        
        //   115: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   118: aconst_null    
        //   119: astore          8
        //   121: aload_2        
        //   122: ifnull          94
        //   125: aload_2        
        //   126: invokevirtual   java/io/ObjectInputStream.close:()V
        //   129: aconst_null    
        //   130: astore          8
        //   132: goto            94
        //   135: astore          9
        //   137: aconst_null    
        //   138: astore          8
        //   140: goto            94
        //   143: astore          19
        //   145: aload           19
        //   147: astore          11
        //   149: ldc_w           "There was a problem loading up the cached ad %s."
        //   152: iconst_1       
        //   153: anewarray       Ljava/lang/Object;
        //   156: dup            
        //   157: iconst_0       
        //   158: aload_1        
        //   159: aastore        
        //   160: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   163: aload           11
        //   165: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   168: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;)V
        //   171: aload           11
        //   173: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/Throwable;)V
        //   176: aconst_null    
        //   177: astore          8
        //   179: aload_2        
        //   180: ifnull          94
        //   183: aload_2        
        //   184: invokevirtual   java/io/ObjectInputStream.close:()V
        //   187: aconst_null    
        //   188: astore          8
        //   190: goto            94
        //   193: astore          12
        //   195: aconst_null    
        //   196: astore          8
        //   198: goto            94
        //   201: astore          6
        //   203: aload_2        
        //   204: ifnull          211
        //   207: aload_2        
        //   208: invokevirtual   java/io/ObjectInputStream.close:()V
        //   211: aload           6
        //   213: athrow         
        //   214: astore          7
        //   216: goto            211
        //   219: astore          6
        //   221: aload           4
        //   223: astore_2       
        //   224: goto            203
        //   227: astore          10
        //   229: aload           10
        //   231: astore          11
        //   233: aload           4
        //   235: astore_2       
        //   236: goto            149
        //   239: astore          5
        //   241: aload           4
        //   243: astore_2       
        //   244: goto            104
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  30     47     102    104    Ljava/io/FileNotFoundException;
        //  30     47     143    149    Ljava/lang/Exception;
        //  30     47     201    203    Any
        //  47     84     239    247    Ljava/io/FileNotFoundException;
        //  47     84     227    239    Ljava/lang/Exception;
        //  47     84     219    227    Any
        //  89     94     97     102    Ljava/io/IOException;
        //  104    118    201    203    Any
        //  125    129    135    143    Ljava/io/IOException;
        //  149    176    201    203    Any
        //  183    187    193    201    Ljava/io/IOException;
        //  207    211    214    219    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0094:
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
    
    private static void loadApidListSet(final SharedPreferences sharedPreferences) {
        AdCache.apidListSet = new HashSet<String>();
        final String string = sharedPreferences.getString("nextCachedAd_apids", (String)null);
        if (string != null) {
            final String[] split = string.split(MMSDK.COMMA);
            if (split != null && split.length > 0) {
                for (int length = split.length, i = 0; i < length; ++i) {
                    AdCache.apidListSet.add(split[i]);
                }
            }
        }
    }
    
    static CachedAd loadIncompleteDownload(final Context context, final String s) {
        final String incompleteDownload = getIncompleteDownload(context, s);
        if (incompleteDownload == null) {
            return null;
        }
        return load(context, incompleteDownload);
    }
    
    private static void loadIncompleteDownloadHashMap(final Context context) {
        final SharedPreferences sharedPreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
        AdCache.incompleteDownloadHashMap = new ConcurrentHashMap<String, String>();
        if (AdCache.apidListSet == null) {
            loadApidListSet(sharedPreferences);
        }
        for (final String s : AdCache.apidListSet) {
            for (final String s2 : MMAdImpl.getAdTypes()) {
                final String string = sharedPreferences.getString("incompleteDownload_" + s2 + '_' + s, (String)null);
                if (string != null) {
                    AdCache.incompleteDownloadHashMap.put(s2 + '_' + s, string);
                }
            }
        }
        AdCache.incompleteDownloadHashMapLoaded = true;
    }
    
    static CachedAd loadNextCachedAd(final Context context, final String s) {
        final String nextCachedAd = getNextCachedAd(context, s);
        if (nextCachedAd == null || nextCachedAd.equals("")) {
            return null;
        }
        return load(context, nextCachedAd);
    }
    
    private static void loadNextCachedAdHashMap(final Context context) {
        final SharedPreferences sharedPreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
        AdCache.nextCachedAdHashMap = new ConcurrentHashMap<String, String>();
        if (AdCache.apidListSet == null) {
            loadApidListSet(sharedPreferences);
        }
        for (final String s : AdCache.apidListSet) {
            for (final String s2 : MMAdImpl.getAdTypes()) {
                final String string = sharedPreferences.getString("nextCachedAd_" + s2 + '_' + s, (String)null);
                if (string != null) {
                    AdCache.nextCachedAdHashMap.put(s2 + '_' + s, string);
                }
            }
        }
        AdCache.nextCachedAdHashMapLoaded = true;
    }
    
    static void resetCache(final Context context) {
        iterateCachedAds(context, 2, (Iterator)new Iterator() {
            @Override
            boolean callback(final CachedAd cachedAd) {
                MMSDK.Log.d("Deleting ad %s.", cachedAd.getId());
                cachedAd.delete(context);
                return true;
            }
        });
        AdCache.cachedVideoSet = null;
        AdCache.cachedVideoList = null;
        AdCache.cachedVideoListLoaded = false;
        if (AdCache.nextCachedAdHashMap != null) {
            final java.util.Iterator<String> iterator = AdCache.nextCachedAdHashMap.keySet().iterator();
            while (iterator.hasNext()) {
                setNextCachedAd(context, iterator.next(), null);
            }
        }
        if (AdCache.incompleteDownloadHashMap != null) {
            final java.util.Iterator<String> iterator2 = AdCache.incompleteDownloadHashMap.keySet().iterator();
            while (iterator2.hasNext()) {
                setIncompleteDownload(context, iterator2.next(), null);
            }
        }
    }
    
    static boolean save(final Context p0, final CachedAd p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_2       
        //     2: aconst_null    
        //     3: astore_3       
        //     4: aload_1        
        //     5: ifnonnull       10
        //     8: iconst_0       
        //     9: ireturn        
        //    10: aload_0        
        //    11: aload_1        
        //    12: invokevirtual   com/fusepowered/m1/android/CachedAd.getId:()Ljava/lang/String;
        //    15: invokestatic    com/fusepowered/m1/android/AdCache.getCachedAdFile:(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
        //    18: astore          4
        //    20: aload           4
        //    22: ifnonnull       27
        //    25: iconst_0       
        //    26: ireturn        
        //    27: iconst_2       
        //    28: anewarray       Ljava/lang/Object;
        //    31: astore          5
        //    33: aload           5
        //    35: iconst_0       
        //    36: aload_1        
        //    37: invokevirtual   com/fusepowered/m1/android/CachedAd.getId:()Ljava/lang/String;
        //    40: aastore        
        //    41: aload           5
        //    43: iconst_1       
        //    44: aload           4
        //    46: aastore        
        //    47: ldc_w           "Saving CachedAd %s to %s"
        //    50: aload           5
        //    52: invokestatic    com/fusepowered/m1/android/MMSDK$Log.v:(Ljava/lang/String;[Ljava/lang/Object;)V
        //    55: new             Ljava/io/File;
        //    58: dup            
        //    59: aload           4
        //    61: invokevirtual   java/io/File.getParent:()Ljava/lang/String;
        //    64: new             Ljava/lang/StringBuilder;
        //    67: dup            
        //    68: invokespecial   java/lang/StringBuilder.<init>:()V
        //    71: aload_1        
        //    72: invokevirtual   com/fusepowered/m1/android/CachedAd.getId:()Ljava/lang/String;
        //    75: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    78: ldc             "ad.lock"
        //    80: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    83: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    86: invokespecial   java/io/File.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //    89: astore          6
        //    91: aload           6
        //    93: invokevirtual   java/io/File.createNewFile:()Z
        //    96: ifne            137
        //    99: iconst_1       
        //   100: anewarray       Ljava/lang/Object;
        //   103: astore          19
        //   105: aload           19
        //   107: iconst_0       
        //   108: aload_1        
        //   109: invokevirtual   com/fusepowered/m1/android/CachedAd.getId:()Ljava/lang/String;
        //   112: aastore        
        //   113: ldc_w           "Could not save the cached ad %s. Ad was locked."
        //   116: aload           19
        //   118: invokestatic    com/fusepowered/m1/android/MMSDK$Log.v:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   121: aload           6
        //   123: invokevirtual   java/io/File.delete:()Z
        //   126: pop            
        //   127: iconst_0       
        //   128: ifeq            135
        //   131: aconst_null    
        //   132: invokevirtual   java/io/ObjectOutputStream.close:()V
        //   135: iconst_0       
        //   136: ireturn        
        //   137: new             Ljava/io/ObjectOutputStream;
        //   140: dup            
        //   141: new             Ljava/io/FileOutputStream;
        //   144: dup            
        //   145: aload           4
        //   147: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //   150: invokespecial   java/io/ObjectOutputStream.<init>:(Ljava/io/OutputStream;)V
        //   153: astore          15
        //   155: aload           15
        //   157: aload_1        
        //   158: invokevirtual   com/fusepowered/m1/android/CachedAd.getType:()I
        //   161: invokevirtual   java/io/ObjectOutputStream.writeInt:(I)V
        //   164: aload           15
        //   166: aload_1        
        //   167: getfield        com/fusepowered/m1/android/CachedAd.expiration:Ljava/util/Date;
        //   170: invokevirtual   java/io/ObjectOutputStream.writeObject:(Ljava/lang/Object;)V
        //   173: aload           15
        //   175: aload_1        
        //   176: getfield        com/fusepowered/m1/android/CachedAd.acid:Ljava/lang/String;
        //   179: invokevirtual   java/io/ObjectOutputStream.writeObject:(Ljava/lang/Object;)V
        //   182: aload           15
        //   184: aload_1        
        //   185: getfield        com/fusepowered/m1/android/CachedAd.deferredViewStart:J
        //   188: invokevirtual   java/io/ObjectOutputStream.writeLong:(J)V
        //   191: aload           15
        //   193: aload_1        
        //   194: invokevirtual   java/io/ObjectOutputStream.writeObject:(Ljava/lang/Object;)V
        //   197: aload           6
        //   199: invokevirtual   java/io/File.delete:()Z
        //   202: pop            
        //   203: aload           15
        //   205: ifnull          213
        //   208: aload           15
        //   210: invokevirtual   java/io/ObjectOutputStream.close:()V
        //   213: aload_1        
        //   214: aload_0        
        //   215: invokevirtual   com/fusepowered/m1/android/CachedAd.saveAssets:(Landroid/content/Context;)Z
        //   218: ifne            302
        //   221: aload_1        
        //   222: aload_0        
        //   223: invokevirtual   com/fusepowered/m1/android/CachedAd.delete:(Landroid/content/Context;)V
        //   226: iconst_0       
        //   227: ireturn        
        //   228: astore          22
        //   230: aload           22
        //   232: astore          8
        //   234: iconst_1       
        //   235: anewarray       Ljava/lang/Object;
        //   238: astore          12
        //   240: aload           12
        //   242: iconst_0       
        //   243: aload_1        
        //   244: invokevirtual   com/fusepowered/m1/android/CachedAd.getId:()Ljava/lang/String;
        //   247: aastore        
        //   248: ldc_w           "There was a problem saving the cached ad %s."
        //   251: aload           12
        //   253: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;[Ljava/lang/Object;)V
        //   256: aload           8
        //   258: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   261: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/String;)V
        //   264: aload           8
        //   266: invokestatic    com/fusepowered/m1/android/MMSDK$Log.d:(Ljava/lang/Throwable;)V
        //   269: aload_2        
        //   270: invokevirtual   java/io/File.delete:()Z
        //   273: pop            
        //   274: aload_3        
        //   275: ifnull          282
        //   278: aload_3        
        //   279: invokevirtual   java/io/ObjectOutputStream.close:()V
        //   282: iconst_0       
        //   283: ireturn        
        //   284: astore          9
        //   286: aload_2        
        //   287: invokevirtual   java/io/File.delete:()Z
        //   290: pop            
        //   291: aload_3        
        //   292: ifnull          299
        //   295: aload_3        
        //   296: invokevirtual   java/io/ObjectOutputStream.close:()V
        //   299: aload           9
        //   301: athrow         
        //   302: iconst_1       
        //   303: ireturn        
        //   304: astore          10
        //   306: goto            299
        //   309: astore          9
        //   311: aload           6
        //   313: astore_2       
        //   314: aconst_null    
        //   315: astore_3       
        //   316: goto            286
        //   319: astore          9
        //   321: aload           15
        //   323: astore_3       
        //   324: aload           6
        //   326: astore_2       
        //   327: goto            286
        //   330: astore          13
        //   332: goto            282
        //   335: astore          7
        //   337: aload           7
        //   339: astore          8
        //   341: aload           6
        //   343: astore_2       
        //   344: aconst_null    
        //   345: astore_3       
        //   346: goto            234
        //   349: astore          16
        //   351: aload           16
        //   353: astore          8
        //   355: aload           15
        //   357: astore_3       
        //   358: aload           6
        //   360: astore_2       
        //   361: goto            234
        //   364: astore          17
        //   366: goto            213
        //   369: astore          20
        //   371: goto            135
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  55     91     228    234    Ljava/lang/Exception;
        //  55     91     284    286    Any
        //  91     121    335    349    Ljava/lang/Exception;
        //  91     121    309    319    Any
        //  121    127    369    374    Ljava/io/IOException;
        //  131    135    369    374    Ljava/io/IOException;
        //  137    155    335    349    Ljava/lang/Exception;
        //  137    155    309    319    Any
        //  155    197    349    364    Ljava/lang/Exception;
        //  155    197    319    330    Any
        //  197    203    364    369    Ljava/io/IOException;
        //  208    213    364    369    Ljava/io/IOException;
        //  234    269    284    286    Any
        //  269    274    330    335    Ljava/io/IOException;
        //  278    282    330    335    Ljava/io/IOException;
        //  286    291    304    309    Ljava/io/IOException;
        //  295    299    304    309    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 189, Size: 189
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
    
    private static void saveApidListSet(final SharedPreferences$Editor sharedPreferences$Editor, final String s) {
        final int index = s.indexOf(95);
        if (index >= 0 && index < s.length()) {
            final String substring = s.substring(index + 1);
            if (substring != null && !AdCache.apidListSet.contains(substring)) {
                final boolean empty = AdCache.apidListSet.isEmpty();
                StringBuilder sb = null;
                if (!empty) {
                    final java.util.Iterator<String> iterator = AdCache.apidListSet.iterator();
                    sb = new StringBuilder();
                    while (iterator.hasNext()) {
                        sb.append(iterator.next() + MMSDK.COMMA);
                    }
                }
                final StringBuilder sb2 = new StringBuilder();
                String string;
                if (sb == null) {
                    string = "";
                }
                else {
                    string = sb.toString();
                }
                sharedPreferences$Editor.putString("nextCachedAd_apids", sb2.append(string).append(substring).toString());
                AdCache.apidListSet.add(substring);
            }
        }
    }
    
    private static void saveIncompleteDownloadHashMap(final Context context, final String str) {
        if (str != null) {
            final SharedPreferences$Editor edit = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
            saveApidListSet(edit, str);
            edit.putString("incompleteDownload_" + str, (String)AdCache.incompleteDownloadHashMap.get(str));
            edit.commit();
        }
    }
    
    private static void saveNextCachedAdHashMapValue(final Context context, final String str) {
        if (str != null) {
            final SharedPreferences$Editor edit = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
            saveApidListSet(edit, str);
            edit.putString("nextCachedAd_" + str, (String)AdCache.nextCachedAdHashMap.get(str));
            edit.commit();
        }
    }
    
    static void setEnableExternalStorage(final boolean isExternalEnabled) {
        AdCache.isExternalEnabled = isExternalEnabled;
    }
    
    static void setIncompleteDownload(final Context context, final String s, final String s2) {
        synchronized (AdCache.class) {
            if (!AdCache.incompleteDownloadHashMapLoaded) {
                loadIncompleteDownloadHashMap(context);
            }
            if (s != null) {
                final Map<String, String> incompleteDownloadHashMap = AdCache.incompleteDownloadHashMap;
                String s3;
                if (s2 == null) {
                    s3 = "";
                }
                else {
                    s3 = s2;
                }
                incompleteDownloadHashMap.put(s, s3);
                saveIncompleteDownloadHashMap(context, s);
            }
        }
    }
    
    static void setNextCachedAd(final Context context, final String s, final String s2) {
        synchronized (AdCache.class) {
            if (!AdCache.nextCachedAdHashMapLoaded) {
                loadNextCachedAdHashMap(context);
            }
            if (s != null) {
                final Map<String, String> nextCachedAdHashMap = AdCache.nextCachedAdHashMap;
                String s3;
                if (s2 == null) {
                    s3 = "";
                }
                else {
                    s3 = s2;
                }
                nextCachedAdHashMap.put(s, s3);
                saveNextCachedAdHashMapValue(context, s);
            }
        }
    }
    
    static boolean startDownloadTask(final Context context, final String s, final CachedAd cachedAd, final AdCacheTaskListener adCacheTaskListener) {
        return AdCacheThreadPool.sharedThreadPool().startDownloadTask(context, s, cachedAd, adCacheTaskListener);
    }
    
    interface AdCacheTaskListener
    {
        void downloadCompleted(CachedAd p0, boolean p1);
        
        void downloadStart(CachedAd p0);
    }
    
    static class Iterator
    {
        static final int ITERATE_ID = 0;
        static final int ITERATE_INFO = 1;
        static final int ITERATE_OBJECT = 2;
        
        boolean callback(final CachedAd cachedAd) {
            return false;
        }
        
        boolean callback(final String s) {
            return false;
        }
        
        boolean callback(final String s, final int n, final Date date, final String s2, final long n2, final ObjectInputStream objectInputStream) {
            return false;
        }
        
        void done() {
        }
    }
}
