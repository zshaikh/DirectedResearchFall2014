package com.vungle.sdk;

import java.io.*;
import android.util.*;
import java.util.*;
import android.os.*;

public class VungleCache
{
    public b a;
    private ArrayList<b> b;
    private long c;
    private Boolean d;
    private String e;
    private long f;
    
    public VungleCache() throws d {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_0       
        //     1: istore_1       
        //     2: aload_0        
        //     3: invokespecial   java/lang/Object.<init>:()V
        //     6: aload_0        
        //     7: new             Ljava/util/ArrayList;
        //    10: dup            
        //    11: invokespecial   java/util/ArrayList.<init>:()V
        //    14: putfield        com/vungle/sdk/VungleCache.b:Ljava/util/ArrayList;
        //    17: aload_0        
        //    18: ldc2_w          -9223372036854775808
        //    21: putfield        com/vungle/sdk/VungleCache.c:J
        //    24: aload_0        
        //    25: iconst_0       
        //    26: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //    29: putfield        com/vungle/sdk/VungleCache.d:Ljava/lang/Boolean;
        //    32: aload_0        
        //    33: aconst_null    
        //    34: putfield        com/vungle/sdk/VungleCache.e:Ljava/lang/String;
        //    37: aload_0        
        //    38: ldc2_w          -9223372036854775808
        //    41: putfield        com/vungle/sdk/VungleCache.f:J
        //    44: invokestatic    com/vungle/sdk/VungleCache.b:()Ljava/lang/String;
        //    47: astore_2       
        //    48: aload_2        
        //    49: ifnonnull       60
        //    52: new             Lcom/vungle/sdk/VungleCache$d;
        //    55: dup            
        //    56: invokespecial   com/vungle/sdk/VungleCache$d.<init>:()V
        //    59: athrow         
        //    60: new             Ljava/io/File;
        //    63: dup            
        //    64: aload_2        
        //    65: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //    68: astore_3       
        //    69: aload_3        
        //    70: invokevirtual   java/io/File.mkdirs:()Z
        //    73: pop            
        //    74: aload_3        
        //    75: invokevirtual   java/io/File.isDirectory:()Z
        //    78: ifne            90
        //    81: ldc             "Cache"
        //    83: ldc             "Failed to create cache directory structure."
        //    85: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    88: pop            
        //    89: return         
        //    90: aload_3        
        //    91: invokevirtual   java/io/File.list:()[Ljava/lang/String;
        //    94: astore          5
        //    96: aload           5
        //    98: ifnull          390
        //   101: aload           5
        //   103: arraylength    
        //   104: istore          6
        //   106: iload_1        
        //   107: iload           6
        //   109: if_icmpge       390
        //   112: aload           5
        //   114: iload_1        
        //   115: aaload         
        //   116: astore          7
        //   118: new             Ljava/io/File;
        //   121: dup            
        //   122: aload_2        
        //   123: aload           7
        //   125: invokespecial   java/io/File.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   128: astore          8
        //   130: aload           8
        //   132: invokevirtual   java/io/File.isDirectory:()Z
        //   135: ifeq            170
        //   138: aload_0        
        //   139: aload           8
        //   141: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //   144: invokespecial   com/vungle/sdk/VungleCache.d:(Ljava/lang/String;)Lcom/vungle/sdk/VungleCache$b;
        //   147: astore          27
        //   149: aload           27
        //   151: ifnull          164
        //   154: aload_0        
        //   155: getfield        com/vungle/sdk/VungleCache.b:Ljava/util/ArrayList;
        //   158: aload           27
        //   160: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //   163: pop            
        //   164: iinc            1, 1
        //   167: goto            106
        //   170: aload           8
        //   172: invokevirtual   java/io/File.isFile:()Z
        //   175: ifeq            164
        //   178: aload           7
        //   180: ldc             "last_request"
        //   182: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   185: ifeq            164
        //   188: new             Ljava/io/BufferedReader;
        //   191: dup            
        //   192: new             Ljava/io/FileReader;
        //   195: dup            
        //   196: aload           8
        //   198: invokespecial   java/io/FileReader.<init>:(Ljava/io/File;)V
        //   201: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;)V
        //   204: astore          9
        //   206: aload           9
        //   208: invokevirtual   java/io/BufferedReader.readLine:()Ljava/lang/String;
        //   211: astore          19
        //   213: new             Ljava/lang/StringBuilder;
        //   216: dup            
        //   217: invokespecial   java/lang/StringBuilder.<init>:()V
        //   220: astore          20
        //   222: aload           9
        //   224: invokevirtual   java/io/BufferedReader.readLine:()Ljava/lang/String;
        //   227: astore          21
        //   229: aload           21
        //   231: ifnull          283
        //   234: aload           20
        //   236: aload           21
        //   238: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   241: pop            
        //   242: goto            222
        //   245: astore          16
        //   247: aload           8
        //   249: invokevirtual   java/io/File.delete:()Z
        //   252: pop            
        //   253: aload_0        
        //   254: aconst_null    
        //   255: putfield        com/vungle/sdk/VungleCache.e:Ljava/lang/String;
        //   258: aload_0        
        //   259: ldc2_w          -9223372036854775808
        //   262: putfield        com/vungle/sdk/VungleCache.f:J
        //   265: aload           9
        //   267: ifnull          164
        //   270: aload           9
        //   272: invokevirtual   java/io/BufferedReader.close:()V
        //   275: goto            164
        //   278: astore          18
        //   280: goto            164
        //   283: aload_0        
        //   284: aload           19
        //   286: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //   289: putfield        com/vungle/sdk/VungleCache.f:J
        //   292: aload_0        
        //   293: aload           20
        //   295: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   298: putfield        com/vungle/sdk/VungleCache.e:Ljava/lang/String;
        //   301: new             Ljava/lang/StringBuilder;
        //   304: dup            
        //   305: ldc             "lastRequest = "
        //   307: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   310: aload_0        
        //   311: getfield        com/vungle/sdk/VungleCache.e:Ljava/lang/String;
        //   314: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   317: pop            
        //   318: aload           9
        //   320: invokevirtual   java/io/BufferedReader.close:()V
        //   323: goto            164
        //   326: astore          24
        //   328: goto            164
        //   331: astore          26
        //   333: aconst_null    
        //   334: astore          9
        //   336: aload           8
        //   338: invokevirtual   java/io/File.delete:()Z
        //   341: pop            
        //   342: aload_0        
        //   343: aconst_null    
        //   344: putfield        com/vungle/sdk/VungleCache.e:Ljava/lang/String;
        //   347: aload_0        
        //   348: ldc2_w          -9223372036854775808
        //   351: putfield        com/vungle/sdk/VungleCache.f:J
        //   354: aload           9
        //   356: ifnull          164
        //   359: aload           9
        //   361: invokevirtual   java/io/BufferedReader.close:()V
        //   364: goto            164
        //   367: astore          15
        //   369: goto            164
        //   372: astore          11
        //   374: aconst_null    
        //   375: astore          12
        //   377: aload           12
        //   379: ifnull          387
        //   382: aload           12
        //   384: invokevirtual   java/io/BufferedReader.close:()V
        //   387: aload           11
        //   389: athrow         
        //   390: aload_0        
        //   391: invokespecial   com/vungle/sdk/VungleCache.f:()V
        //   394: return         
        //   395: astore          13
        //   397: goto            387
        //   400: astore          11
        //   402: aload           9
        //   404: astore          12
        //   406: goto            377
        //   409: astore          10
        //   411: goto            336
        //   414: astore          25
        //   416: aconst_null    
        //   417: astore          9
        //   419: goto            247
        //    Exceptions:
        //  throws com.vungle.sdk.VungleCache.d
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  188    206    414    422    Ljava/io/IOException;
        //  188    206    331    336    Ljava/lang/NumberFormatException;
        //  188    206    372    377    Any
        //  206    222    245    247    Ljava/io/IOException;
        //  206    222    409    414    Ljava/lang/NumberFormatException;
        //  206    222    400    409    Any
        //  222    229    245    247    Ljava/io/IOException;
        //  222    229    409    414    Ljava/lang/NumberFormatException;
        //  222    229    400    409    Any
        //  234    242    245    247    Ljava/io/IOException;
        //  234    242    409    414    Ljava/lang/NumberFormatException;
        //  234    242    400    409    Any
        //  247    265    400    409    Any
        //  270    275    278    283    Ljava/io/IOException;
        //  283    318    245    247    Ljava/io/IOException;
        //  283    318    409    414    Ljava/lang/NumberFormatException;
        //  283    318    400    409    Any
        //  318    323    326    331    Ljava/io/IOException;
        //  336    354    400    409    Any
        //  359    364    367    372    Ljava/io/IOException;
        //  382    387    395    400    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 197, Size: 197
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3419)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
    
    public static boolean a() {
        return "mounted".equals(Environment.getExternalStorageState());
    }
    
    public static boolean a(final File file) {
        int n = 0;
        if (file != null && file.isDirectory()) {
            final File[] listFiles = file.listFiles();
            if (listFiles != null) {
                while (n < listFiles.length && a(listFiles[n])) {
                    ++n;
                }
            }
            return file.delete();
        }
        return false;
    }
    
    public static String b() {
        if (n.e() == null) {
            Log.e("Cache", "Cache being initialized before context is set.");
        }
        final File externalCacheDir = n.e().getExternalCacheDir();
        if (externalCacheDir == null) {
            return null;
        }
        return externalCacheDir.getAbsolutePath() + File.separator + ".VungleCacheDir";
    }
    
    private static void b(final b b) {
        a(new File(b.a()));
    }
    
    private static boolean b(final String s) {
        final String lowerCase = s.toLowerCase();
        final String[] array = { ".mp4", ".avi", ".3gp", ".webm" };
        for (int length = array.length, i = 0; i < length; ++i) {
            if (lowerCase.endsWith(array[i])) {
                return true;
            }
        }
        return false;
    }
    
    private static String c(final String pathname) {
        final File file = new File(pathname);
        final String[] array = { ".htm", ".html" };
        if (!file.isDirectory()) {
            return null;
        }
        final String[] list = file.list();
        for (int length = list.length, i = 0; i < length; ++i) {
            final String lowerCase = list[i].toLowerCase();
            for (int length2 = array.length, j = 0; j < length2; ++j) {
                if (lowerCase.endsWith(array[j])) {
                    return lowerCase;
                }
            }
        }
        return null;
    }
    
    private static void c(final b b) {
        new StringBuilder(" -- Directory:  ").append(String.valueOf(b.a()));
        new StringBuilder(" -- PreRoll:    ").append(String.valueOf(b.c()));
        new StringBuilder(" -- PostRoll:   ").append(String.valueOf(b.d()));
        new StringBuilder(" -- Video:      ").append(String.valueOf(b.b()));
        new StringBuilder(" -- Expiration: ").append(String.valueOf(b.b));
        n.j = true;
        n.k = false;
    }
    
    private b d(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/io/File;
        //     3: dup            
        //     4: aload_1        
        //     5: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //     8: astore_2       
        //     9: aload_2        
        //    10: invokevirtual   java/io/File.isDirectory:()Z
        //    13: ifne            23
        //    16: aload_2        
        //    17: invokestatic    com/vungle/sdk/VungleCache.a:(Ljava/io/File;)Z
        //    20: pop            
        //    21: aconst_null    
        //    22: areturn        
        //    23: aload_1        
        //    24: getstatic       java/io/File.separator:Ljava/lang/String;
        //    27: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
        //    30: astore_3       
        //    31: aload_3        
        //    32: aload_3        
        //    33: arraylength    
        //    34: iconst_1       
        //    35: isub           
        //    36: aaload         
        //    37: astore          4
        //    39: aload_2        
        //    40: invokevirtual   java/io/File.list:()[Ljava/lang/String;
        //    43: astore          5
        //    45: aload           5
        //    47: ifnull          488
        //    50: aload           5
        //    52: arraylength    
        //    53: istore          14
        //    55: aconst_null    
        //    56: astore          15
        //    58: iconst_0       
        //    59: istore          16
        //    61: aconst_null    
        //    62: astore          17
        //    64: ldc2_w          -9223372036854775808
        //    67: lstore          18
        //    69: aconst_null    
        //    70: astore          10
        //    72: iload           16
        //    74: iload           14
        //    76: if_icmpge       296
        //    79: aload           5
        //    81: iload           16
        //    83: aaload         
        //    84: astore          20
        //    86: aload           20
        //    88: ldc             "pre"
        //    90: invokevirtual   java/lang/String.equalsIgnoreCase:(Ljava/lang/String;)Z
        //    93: ifeq            132
        //    96: new             Ljava/lang/StringBuilder;
        //    99: dup            
        //   100: invokespecial   java/lang/StringBuilder.<init>:()V
        //   103: aload_1        
        //   104: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   107: getstatic       java/io/File.separator:Ljava/lang/String;
        //   110: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   113: ldc             "pre"
        //   115: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   118: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   121: invokestatic    com/vungle/sdk/VungleCache.c:(Ljava/lang/String;)Ljava/lang/String;
        //   124: astore          15
        //   126: iinc            16, 1
        //   129: goto            72
        //   132: aload           20
        //   134: ldc             "post"
        //   136: invokevirtual   java/lang/String.equalsIgnoreCase:(Ljava/lang/String;)Z
        //   139: ifeq            175
        //   142: new             Ljava/lang/StringBuilder;
        //   145: dup            
        //   146: invokespecial   java/lang/StringBuilder.<init>:()V
        //   149: aload_1        
        //   150: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   153: getstatic       java/io/File.separator:Ljava/lang/String;
        //   156: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   159: ldc             "post"
        //   161: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   164: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   167: invokestatic    com/vungle/sdk/VungleCache.c:(Ljava/lang/String;)Ljava/lang/String;
        //   170: astore          10
        //   172: goto            126
        //   175: aload           20
        //   177: ldc             "expire"
        //   179: invokevirtual   java/lang/String.equalsIgnoreCase:(Ljava/lang/String;)Z
        //   182: ifeq            281
        //   185: aconst_null    
        //   186: astore          21
        //   188: new             Ljava/io/File;
        //   191: dup            
        //   192: aload_1        
        //   193: aload           20
        //   195: invokespecial   java/io/File.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   198: astore          22
        //   200: new             Ljava/util/Scanner;
        //   203: dup            
        //   204: aload           22
        //   206: invokespecial   java/util/Scanner.<init>:(Ljava/io/File;)V
        //   209: astore          23
        //   211: aload           23
        //   213: invokevirtual   java/util/Scanner.hasNextLong:()Z
        //   216: ifeq            230
        //   219: aload           23
        //   221: invokevirtual   java/util/Scanner.nextLong:()J
        //   224: lstore          27
        //   226: lload           27
        //   228: lstore          18
        //   230: aload           23
        //   232: invokevirtual   java/util/Scanner.close:()V
        //   235: goto            126
        //   238: astore          24
        //   240: ldc             "Cache"
        //   242: ldc_w           "Failed to read expiration value, due to missing value. :/"
        //   245: aload           24
        //   247: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   250: aload           21
        //   252: ifnull          126
        //   255: aload           21
        //   257: invokevirtual   java/util/Scanner.close:()V
        //   260: goto            126
        //   263: astore          25
        //   265: aconst_null    
        //   266: astore          26
        //   268: aload           26
        //   270: ifnull          278
        //   273: aload           26
        //   275: invokevirtual   java/util/Scanner.close:()V
        //   278: aload           25
        //   280: athrow         
        //   281: aload           20
        //   283: invokestatic    com/vungle/sdk/VungleCache.b:(Ljava/lang/String;)Z
        //   286: ifeq            126
        //   289: aload           20
        //   291: astore          17
        //   293: goto            126
        //   296: lload           18
        //   298: lstore          6
        //   300: aload           17
        //   302: astore          8
        //   304: aload           15
        //   306: astore          9
        //   308: aload           4
        //   310: ifnull          382
        //   313: lload           6
        //   315: ldc2_w          -9223372036854775808
        //   318: lcmp           
        //   319: ifeq            382
        //   322: aload           9
        //   324: ifnull          337
        //   327: aload           10
        //   329: ifnull          337
        //   332: aload           8
        //   334: ifnonnull       442
        //   337: aload           9
        //   339: ifnonnull       352
        //   342: aload           10
        //   344: ifnull          352
        //   347: aload           8
        //   349: ifnonnull       442
        //   352: aload           9
        //   354: ifnull          367
        //   357: aload           10
        //   359: ifnonnull       367
        //   362: aload           8
        //   364: ifnull          442
        //   367: aload           9
        //   369: ifnonnull       382
        //   372: aload           10
        //   374: ifnull          382
        //   377: aload           8
        //   379: ifnull          442
        //   382: new             Ljava/lang/StringBuilder;
        //   385: dup            
        //   386: ldc_w           "PRE "
        //   389: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   392: aload           9
        //   394: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   397: ldc_w           "|POST "
        //   400: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   403: aload           10
        //   405: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   408: ldc_w           "|VID "
        //   411: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   414: aload           8
        //   416: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   419: pop            
        //   420: new             Ljava/lang/StringBuilder;
        //   423: dup            
        //   424: ldc_w           "Malformed cache directory detected. Removing: "
        //   427: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   430: aload_2        
        //   431: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   434: pop            
        //   435: aload_2        
        //   436: invokestatic    com/vungle/sdk/VungleCache.a:(Ljava/io/File;)Z
        //   439: pop            
        //   440: aconst_null    
        //   441: areturn        
        //   442: new             Lcom/vungle/sdk/VungleCache$b;
        //   445: dup            
        //   446: aload_0        
        //   447: aload           4
        //   449: aload           8
        //   451: aload           9
        //   453: aload           10
        //   455: lload           6
        //   457: invokespecial   com/vungle/sdk/VungleCache$b.<init>:(Lcom/vungle/sdk/VungleCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
        //   460: areturn        
        //   461: astore          25
        //   463: aload           23
        //   465: astore          26
        //   467: goto            268
        //   470: astore          25
        //   472: aload           21
        //   474: astore          26
        //   476: goto            268
        //   479: astore          24
        //   481: aload           23
        //   483: astore          21
        //   485: goto            240
        //   488: ldc2_w          -9223372036854775808
        //   491: lstore          6
        //   493: aconst_null    
        //   494: astore          8
        //   496: aconst_null    
        //   497: astore          9
        //   499: aconst_null    
        //   500: astore          10
        //   502: goto            308
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  188    211    238    240    Ljava/io/FileNotFoundException;
        //  188    211    263    268    Any
        //  211    226    479    488    Ljava/io/FileNotFoundException;
        //  211    226    461    470    Any
        //  240    250    470    479    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 231, Size: 231
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
    
    private void f() {
        final long n = System.currentTimeMillis() / 1000L;
        final Iterator<b> iterator = this.b.iterator();
        while (iterator.hasNext()) {
            final b b = iterator.next();
            if ((this.a == null || !this.a.a.equals(b.a)) && b.b < n) {
                new StringBuilder("Removing expired campaign: ").append(b.a);
                b(b);
                iterator.remove();
            }
        }
        final int n2 = this.b.size() - 10;
        if (n2 > 0) {
            for (int i = 0; i < n2; ++i) {
                long n3 = Long.MAX_VALUE;
                int n4 = -1;
                int n6;
                long n7;
                for (int j = 0; j < this.b.size(); ++j, n3 = n7, n4 = n6) {
                    final long n5 = n - this.b.get(j).b;
                    if (this.a != null) {
                        this.a.a.equals(this.b.get(j).a);
                    }
                    if (n5 < n3) {
                        n6 = j;
                        n7 = n5;
                    }
                    else {
                        n6 = n4;
                        n7 = n3;
                    }
                }
                if (n4 < 0) {
                    break;
                }
                final b b2 = this.b.get(n4);
                new StringBuilder("Removing extra campaign: ").append(b2.a);
                b(b2);
                this.b.remove(n4);
            }
        }
    }
    
    private static void g() {
        Log.e("RequestAd", "Failed to acquire advert.");
        n.j = false;
        n.k = false;
    }
    
    public final void a(final z p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_0       
        //     1: putstatic       com/vungle/sdk/n.j:Z
        //     4: iconst_1       
        //     5: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //     8: putstatic       com/vungle/sdk/n.k:Ljava/lang/Boolean;
        //    11: aload_1        
        //    12: getfield        com/vungle/sdk/z.h:Ljava/lang/String;
        //    15: astore_3       
        //    16: aload_0        
        //    17: getfield        com/vungle/sdk/VungleCache.b:Ljava/util/ArrayList;
        //    20: invokevirtual   java/util/ArrayList.iterator:()Ljava/util/Iterator;
        //    23: astore          4
        //    25: aload           4
        //    27: invokeinterface java/util/Iterator.hasNext:()Z
        //    32: ifeq            211
        //    35: aload           4
        //    37: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //    42: checkcast       Lcom/vungle/sdk/VungleCache$b;
        //    45: astore          30
        //    47: aload           30
        //    49: getfield        com/vungle/sdk/VungleCache$b.a:Ljava/lang/String;
        //    52: aload_3        
        //    53: invokevirtual   java/lang/String.equalsIgnoreCase:(Ljava/lang/String;)Z
        //    56: ifeq            25
        //    59: aload           30
        //    61: invokevirtual   com/vungle/sdk/VungleCache$b.b:()Ljava/lang/String;
        //    64: astore          31
        //    66: aload_1        
        //    67: getfield        com/vungle/sdk/z.c:Ljava/lang/String;
        //    70: astore          32
        //    72: aload           32
        //    74: ifnull          903
        //    77: aload           32
        //    79: invokevirtual   java/lang/String.length:()I
        //    82: ifne            317
        //    85: goto            903
        //    88: aload           31
        //    90: ifnull          909
        //    93: aload           31
        //    95: invokevirtual   java/lang/String.length:()I
        //    98: ifne            323
        //   101: goto            909
        //   104: aload           30
        //   106: invokevirtual   com/vungle/sdk/VungleCache$b.c:()Ljava/lang/String;
        //   109: astore          36
        //   111: aload_1        
        //   112: getfield        com/vungle/sdk/z.i:Ljava/lang/String;
        //   115: astore          37
        //   117: aload           36
        //   119: ifnull          925
        //   122: aload           36
        //   124: invokevirtual   java/lang/String.length:()I
        //   127: ifne            329
        //   130: goto            925
        //   133: aload           37
        //   135: ifnull          931
        //   138: aload           37
        //   140: invokevirtual   java/lang/String.length:()I
        //   143: ifne            335
        //   146: goto            931
        //   149: aload           30
        //   151: invokevirtual   com/vungle/sdk/VungleCache$b.d:()Ljava/lang/String;
        //   154: astore          40
        //   156: aload_1        
        //   157: getfield        com/vungle/sdk/z.j:Ljava/lang/String;
        //   160: astore          41
        //   162: aload           40
        //   164: ifnull          947
        //   167: aload           40
        //   169: invokevirtual   java/lang/String.length:()I
        //   172: ifne            341
        //   175: goto            947
        //   178: aload           41
        //   180: ifnull          953
        //   183: aload           41
        //   185: invokevirtual   java/lang/String.length:()I
        //   188: ifne            347
        //   191: goto            953
        //   194: iload           35
        //   196: ifne            353
        //   199: aload           30
        //   201: invokestatic    com/vungle/sdk/VungleCache.b:(Lcom/vungle/sdk/VungleCache$b;)V
        //   204: aload           4
        //   206: invokeinterface java/util/Iterator.remove:()V
        //   211: aload_1        
        //   212: getfield        com/vungle/sdk/z.i:Ljava/lang/String;
        //   215: astore          5
        //   217: aload_1        
        //   218: getfield        com/vungle/sdk/z.j:Ljava/lang/String;
        //   221: astore          6
        //   223: aload_1        
        //   224: getfield        com/vungle/sdk/z.h:Ljava/lang/String;
        //   227: astore          7
        //   229: aload_1        
        //   230: getfield        com/vungle/sdk/z.c:Ljava/lang/String;
        //   233: astore          8
        //   235: aload_1        
        //   236: getfield        com/vungle/sdk/z.g:Ljava/lang/String;
        //   239: astore          9
        //   241: aload_0        
        //   242: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //   245: putfield        com/vungle/sdk/VungleCache.c:J
        //   248: aload_0        
        //   249: getfield        com/vungle/sdk/VungleCache.d:Ljava/lang/Boolean;
        //   252: astore          10
        //   254: aload           10
        //   256: monitorenter   
        //   257: aload_0        
        //   258: iconst_1       
        //   259: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   262: putfield        com/vungle/sdk/VungleCache.d:Ljava/lang/Boolean;
        //   265: aload           10
        //   267: monitorexit    
        //   268: new             Ljava/io/File;
        //   271: dup            
        //   272: invokestatic    com/vungle/sdk/VungleCache.b:()Ljava/lang/String;
        //   275: aload           7
        //   277: invokespecial   java/io/File.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   280: astore          12
        //   282: aload           12
        //   284: invokevirtual   java/io/File.mkdirs:()Z
        //   287: pop            
        //   288: aload           12
        //   290: invokevirtual   java/io/File.isDirectory:()Z
        //   293: ifne            500
        //   296: aload_0        
        //   297: getfield        com/vungle/sdk/VungleCache.d:Ljava/lang/Boolean;
        //   300: astore          28
        //   302: aload           28
        //   304: monitorenter   
        //   305: aload_0        
        //   306: iconst_0       
        //   307: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   310: putfield        com/vungle/sdk/VungleCache.d:Ljava/lang/Boolean;
        //   313: aload           28
        //   315: monitorexit    
        //   316: return         
        //   317: iconst_0       
        //   318: istore          33
        //   320: goto            88
        //   323: iconst_0       
        //   324: istore          34
        //   326: goto            912
        //   329: iconst_0       
        //   330: istore          38
        //   332: goto            133
        //   335: iconst_0       
        //   336: istore          39
        //   338: goto            934
        //   341: iconst_0       
        //   342: istore          42
        //   344: goto            178
        //   347: iconst_0       
        //   348: istore          43
        //   350: goto            956
        //   353: new             Ljava/io/File;
        //   356: dup            
        //   357: aload           30
        //   359: invokevirtual   com/vungle/sdk/VungleCache$b.a:()Ljava/lang/String;
        //   362: ldc             "expire"
        //   364: invokespecial   java/io/File.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   367: astore          44
        //   369: aload           44
        //   371: invokevirtual   java/io/File.delete:()Z
        //   374: pop            
        //   375: new             Ljava/io/BufferedWriter;
        //   378: dup            
        //   379: new             Ljava/io/FileWriter;
        //   382: dup            
        //   383: aload           44
        //   385: invokespecial   java/io/FileWriter.<init>:(Ljava/io/File;)V
        //   388: invokespecial   java/io/BufferedWriter.<init>:(Ljava/io/Writer;)V
        //   391: astore          46
        //   393: aload           46
        //   395: aload_1        
        //   396: getfield        com/vungle/sdk/z.o:J
        //   399: invokestatic    java/lang/String.valueOf:(J)Ljava/lang/String;
        //   402: invokevirtual   java/io/BufferedWriter.write:(Ljava/lang/String;)V
        //   405: aload           46
        //   407: invokevirtual   java/io/BufferedWriter.close:()V
        //   410: aload_0        
        //   411: aload           30
        //   413: putfield        com/vungle/sdk/VungleCache.a:Lcom/vungle/sdk/VungleCache$b;
        //   416: aload           30
        //   418: invokestatic    com/vungle/sdk/VungleCache.c:(Lcom/vungle/sdk/VungleCache$b;)V
        //   421: return         
        //   422: astore_2       
        //   423: ldc             "Cache"
        //   425: aload_2        
        //   426: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   429: invokestatic    com/vungle/sdk/VungleCache.g:()V
        //   432: return         
        //   433: astore          47
        //   435: aconst_null    
        //   436: astore          46
        //   438: ldc             "Cache"
        //   440: ldc_w           "Error writing expiration file"
        //   443: aload           47
        //   445: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   448: aload           46
        //   450: ifnull          410
        //   453: aload           46
        //   455: invokevirtual   java/io/BufferedWriter.close:()V
        //   458: goto            410
        //   461: astore          51
        //   463: goto            410
        //   466: astore          48
        //   468: aconst_null    
        //   469: astore          49
        //   471: aload           49
        //   473: ifnull          481
        //   476: aload           49
        //   478: invokevirtual   java/io/BufferedWriter.close:()V
        //   481: aload           48
        //   483: athrow         
        //   484: astore          11
        //   486: aload           10
        //   488: monitorexit    
        //   489: aload           11
        //   491: athrow         
        //   492: astore          29
        //   494: aload           28
        //   496: monitorexit    
        //   497: aload           29
        //   499: athrow         
        //   500: new             Ljava/io/File;
        //   503: dup            
        //   504: aload           12
        //   506: invokevirtual   java/io/File.getAbsoluteFile:()Ljava/io/File;
        //   509: ldc             "expire"
        //   511: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //   514: astore          14
        //   516: aload           14
        //   518: invokevirtual   java/io/File.exists:()Z
        //   521: ifeq            530
        //   524: aload           14
        //   526: invokevirtual   java/io/File.delete:()Z
        //   529: pop            
        //   530: new             Ljava/io/BufferedWriter;
        //   533: dup            
        //   534: new             Ljava/io/FileWriter;
        //   537: dup            
        //   538: aload           14
        //   540: invokespecial   java/io/FileWriter.<init>:(Ljava/io/File;)V
        //   543: invokespecial   java/io/BufferedWriter.<init>:(Ljava/io/Writer;)V
        //   546: astore          15
        //   548: aload           15
        //   550: aload_1        
        //   551: getfield        com/vungle/sdk/z.o:J
        //   554: invokestatic    java/lang/String.valueOf:(J)Ljava/lang/String;
        //   557: invokevirtual   java/io/BufferedWriter.write:(Ljava/lang/String;)V
        //   560: aload           15
        //   562: invokevirtual   java/io/BufferedWriter.close:()V
        //   565: new             Lcom/vungle/sdk/VungleCache$a;
        //   568: dup            
        //   569: aload_0        
        //   570: iconst_0       
        //   571: invokespecial   com/vungle/sdk/VungleCache$a.<init>:(Lcom/vungle/sdk/VungleCache;B)V
        //   574: astore          22
        //   576: new             Lcom/vungle/sdk/VungleCache$c;
        //   579: dup            
        //   580: aload_0        
        //   581: aload           12
        //   583: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //   586: aload           22
        //   588: invokespecial   com/vungle/sdk/VungleCache$c.<init>:(Lcom/vungle/sdk/VungleCache;Ljava/lang/String;Lcom/vungle/sdk/VungleCache$a;)V
        //   591: astore          23
        //   593: aload           22
        //   595: aload           23
        //   597: putfield        com/vungle/sdk/VungleCache$a.a:Lcom/vungle/sdk/VungleCache$c;
        //   600: aload           5
        //   602: ifnull          818
        //   605: aload           5
        //   607: invokevirtual   java/lang/String.length:()I
        //   610: ifle            818
        //   613: new             Lcom/vungle/sdk/o;
        //   616: dup            
        //   617: aload           5
        //   619: aload           12
        //   621: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //   624: invokespecial   com/vungle/sdk/o.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   627: astore          24
        //   629: aload           24
        //   631: aload           22
        //   633: invokevirtual   com/vungle/sdk/o.a:(Lcom/vungle/sdk/o$b;)V
        //   636: aload           24
        //   638: ldc_w           "pre_"
        //   641: invokevirtual   com/vungle/sdk/o.a:(Ljava/lang/String;)V
        //   644: aload           23
        //   646: aload           24
        //   648: putfield        com/vungle/sdk/VungleCache$c.a:Lcom/vungle/sdk/o;
        //   651: aload           24
        //   653: invokevirtual   com/vungle/sdk/o.a:()V
        //   656: aload           8
        //   658: ifnull          826
        //   661: aload           8
        //   663: invokevirtual   java/lang/String.length:()I
        //   666: ifle            826
        //   669: new             Lcom/vungle/sdk/o;
        //   672: dup            
        //   673: aload           8
        //   675: aload           12
        //   677: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //   680: aload           9
        //   682: invokespecial   com/vungle/sdk/o.<init>:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
        //   685: astore          25
        //   687: aload           25
        //   689: aload           22
        //   691: invokevirtual   com/vungle/sdk/o.a:(Lcom/vungle/sdk/o$b;)V
        //   694: aload           23
        //   696: aload           25
        //   698: putfield        com/vungle/sdk/VungleCache$c.b:Lcom/vungle/sdk/o;
        //   701: aload           25
        //   703: invokevirtual   com/vungle/sdk/o.a:()V
        //   706: aload           6
        //   708: ifnull          834
        //   711: aload           6
        //   713: invokevirtual   java/lang/String.length:()I
        //   716: ifle            834
        //   719: new             Lcom/vungle/sdk/o;
        //   722: dup            
        //   723: aload           6
        //   725: aload           12
        //   727: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //   730: invokespecial   com/vungle/sdk/o.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   733: astore          26
        //   735: aload           26
        //   737: aload           22
        //   739: invokevirtual   com/vungle/sdk/o.a:(Lcom/vungle/sdk/o$b;)V
        //   742: aload           26
        //   744: ldc_w           "post_"
        //   747: invokevirtual   com/vungle/sdk/o.a:(Ljava/lang/String;)V
        //   750: aload           23
        //   752: aload           26
        //   754: putfield        com/vungle/sdk/VungleCache$c.c:Lcom/vungle/sdk/o;
        //   757: aload           26
        //   759: invokevirtual   com/vungle/sdk/o.a:()V
        //   762: return         
        //   763: astore          16
        //   765: aconst_null    
        //   766: astore          17
        //   768: ldc             "Cache"
        //   770: ldc_w           "Error writing expiration file"
        //   773: aload           16
        //   775: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   778: aload_0        
        //   779: iconst_0       
        //   780: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   783: putfield        com/vungle/sdk/VungleCache.d:Ljava/lang/Boolean;
        //   786: aload           17
        //   788: ifnull          316
        //   791: aload           17
        //   793: invokevirtual   java/io/BufferedWriter.close:()V
        //   796: return         
        //   797: astore          20
        //   799: return         
        //   800: astore          18
        //   802: aconst_null    
        //   803: astore          17
        //   805: aload           17
        //   807: ifnull          815
        //   810: aload           17
        //   812: invokevirtual   java/io/BufferedWriter.close:()V
        //   815: aload           18
        //   817: athrow         
        //   818: aload           22
        //   820: invokevirtual   com/vungle/sdk/VungleCache$a.a:()V
        //   823: goto            656
        //   826: aload           22
        //   828: invokevirtual   com/vungle/sdk/VungleCache$a.a:()V
        //   831: goto            706
        //   834: aload           22
        //   836: invokevirtual   com/vungle/sdk/VungleCache$a.a:()V
        //   839: return         
        //   840: astore          52
        //   842: goto            410
        //   845: astore          50
        //   847: goto            481
        //   850: astore          21
        //   852: goto            565
        //   855: astore          19
        //   857: goto            815
        //   860: astore          18
        //   862: aload           15
        //   864: astore          17
        //   866: goto            805
        //   869: astore          18
        //   871: goto            805
        //   874: astore          16
        //   876: aload           15
        //   878: astore          17
        //   880: goto            768
        //   883: astore          48
        //   885: aload           46
        //   887: astore          49
        //   889: goto            471
        //   892: astore          47
        //   894: goto            438
        //   897: iconst_1       
        //   898: istore          35
        //   900: goto            104
        //   903: iconst_1       
        //   904: istore          33
        //   906: goto            88
        //   909: iconst_1       
        //   910: istore          34
        //   912: iload           33
        //   914: iload           34
        //   916: if_icmpeq       897
        //   919: iconst_0       
        //   920: istore          35
        //   922: goto            104
        //   925: iconst_1       
        //   926: istore          38
        //   928: goto            133
        //   931: iconst_1       
        //   932: istore          39
        //   934: iload           38
        //   936: iload           39
        //   938: if_icmpeq       149
        //   941: iconst_0       
        //   942: istore          35
        //   944: goto            149
        //   947: iconst_1       
        //   948: istore          42
        //   950: goto            178
        //   953: iconst_1       
        //   954: istore          43
        //   956: iload           42
        //   958: iload           43
        //   960: if_icmpeq       194
        //   963: iconst_0       
        //   964: istore          35
        //   966: goto            194
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      25     422    433    Ljava/lang/Exception;
        //  25     72     422    433    Ljava/lang/Exception;
        //  77     85     422    433    Ljava/lang/Exception;
        //  93     101    422    433    Ljava/lang/Exception;
        //  104    117    422    433    Ljava/lang/Exception;
        //  122    130    422    433    Ljava/lang/Exception;
        //  138    146    422    433    Ljava/lang/Exception;
        //  149    162    422    433    Ljava/lang/Exception;
        //  167    175    422    433    Ljava/lang/Exception;
        //  183    191    422    433    Ljava/lang/Exception;
        //  199    211    422    433    Ljava/lang/Exception;
        //  211    257    422    433    Ljava/lang/Exception;
        //  257    268    484    492    Any
        //  268    305    422    433    Ljava/lang/Exception;
        //  305    316    492    500    Any
        //  353    375    422    433    Ljava/lang/Exception;
        //  375    393    433    438    Ljava/io/IOException;
        //  375    393    466    471    Any
        //  393    405    892    897    Ljava/io/IOException;
        //  393    405    883    892    Any
        //  405    410    840    845    Ljava/io/IOException;
        //  405    410    422    433    Ljava/lang/Exception;
        //  410    421    422    433    Ljava/lang/Exception;
        //  438    448    883    892    Any
        //  453    458    461    466    Ljava/io/IOException;
        //  453    458    422    433    Ljava/lang/Exception;
        //  476    481    845    850    Ljava/io/IOException;
        //  476    481    422    433    Ljava/lang/Exception;
        //  481    484    422    433    Ljava/lang/Exception;
        //  486    492    422    433    Ljava/lang/Exception;
        //  494    500    422    433    Ljava/lang/Exception;
        //  500    530    422    433    Ljava/lang/Exception;
        //  530    548    763    768    Ljava/io/IOException;
        //  530    548    800    805    Any
        //  548    560    874    883    Ljava/io/IOException;
        //  548    560    860    869    Any
        //  560    565    850    855    Ljava/io/IOException;
        //  560    565    422    433    Ljava/lang/Exception;
        //  565    600    422    433    Ljava/lang/Exception;
        //  605    656    422    433    Ljava/lang/Exception;
        //  661    706    422    433    Ljava/lang/Exception;
        //  711    762    422    433    Ljava/lang/Exception;
        //  768    786    869    874    Any
        //  791    796    797    800    Ljava/io/IOException;
        //  791    796    422    433    Ljava/lang/Exception;
        //  810    815    855    860    Ljava/io/IOException;
        //  810    815    422    433    Ljava/lang/Exception;
        //  815    818    422    433    Ljava/lang/Exception;
        //  818    823    422    433    Ljava/lang/Exception;
        //  826    831    422    433    Ljava/lang/Exception;
        //  834    839    422    433    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 434, Size: 434
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
    
    public final void a(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aconst_null    
        //     3: astore_2       
        //     4: new             Ljava/io/BufferedWriter;
        //     7: dup            
        //     8: new             Ljava/io/FileWriter;
        //    11: dup            
        //    12: new             Ljava/io/File;
        //    15: dup            
        //    16: invokestatic    com/vungle/sdk/VungleCache.b:()Ljava/lang/String;
        //    19: ldc             "last_request"
        //    21: invokespecial   java/io/File.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //    24: invokespecial   java/io/FileWriter.<init>:(Ljava/io/File;)V
        //    27: invokespecial   java/io/BufferedWriter.<init>:(Ljava/io/Writer;)V
        //    30: astore_3       
        //    31: aload_3        
        //    32: new             Ljava/lang/StringBuilder;
        //    35: dup            
        //    36: invokespecial   java/lang/StringBuilder.<init>:()V
        //    39: invokestatic    java/lang/System.currentTimeMillis:()J
        //    42: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //    45: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    48: ldc_w           "\n"
        //    51: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    54: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    57: invokevirtual   java/io/BufferedWriter.write:(Ljava/lang/String;)V
        //    60: aload_3        
        //    61: aload_1        
        //    62: invokevirtual   java/io/BufferedWriter.write:(Ljava/lang/String;)V
        //    65: aload_3        
        //    66: invokevirtual   java/io/BufferedWriter.close:()V
        //    69: aload_0        
        //    70: monitorexit    
        //    71: return         
        //    72: astore          12
        //    74: aload_0        
        //    75: invokevirtual   com/vungle/sdk/VungleCache.c:()V
        //    78: aload_2        
        //    79: ifnull          69
        //    82: aload_2        
        //    83: invokevirtual   java/io/BufferedWriter.close:()V
        //    86: goto            69
        //    89: astore          9
        //    91: goto            69
        //    94: astore          11
        //    96: aconst_null    
        //    97: astore_3       
        //    98: aload           11
        //   100: astore          6
        //   102: aload_3        
        //   103: ifnull          110
        //   106: aload_3        
        //   107: invokevirtual   java/io/BufferedWriter.close:()V
        //   110: aload           6
        //   112: athrow         
        //   113: astore          7
        //   115: aload_0        
        //   116: monitorexit    
        //   117: aload           7
        //   119: athrow         
        //   120: astore          10
        //   122: goto            69
        //   125: astore          8
        //   127: goto            110
        //   130: astore          6
        //   132: goto            102
        //   135: astore          5
        //   137: aload_2        
        //   138: astore_3       
        //   139: aload           5
        //   141: astore          6
        //   143: goto            102
        //   146: astore          4
        //   148: aload_3        
        //   149: astore_2       
        //   150: goto            74
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  4      31     72     74     Ljava/io/IOException;
        //  4      31     94     102    Any
        //  31     65     146    153    Ljava/io/IOException;
        //  31     65     130    135    Any
        //  65     69     120    125    Ljava/io/IOException;
        //  65     69     113    120    Any
        //  74     78     135    146    Any
        //  82     86     89     94     Ljava/io/IOException;
        //  82     86     113    120    Any
        //  106    110    125    130    Ljava/io/IOException;
        //  106    110    113    120    Any
        //  110    113    113    120    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 77, Size: 77
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
    
    public final void c() {
        synchronized (this) {
            new File(b(), "last_request").delete();
            this.e = null;
            this.f = Long.MIN_VALUE;
        }
    }
    
    public final String d() {
        synchronized (this) {
            final long currentTimeMillis = System.currentTimeMillis();
            String e;
            if (this.e != null && currentTimeMillis - this.f < 86400000L) {
                e = this.e;
            }
            else {
                this.c();
                e = null;
            }
            return e;
        }
    }
    
    final class a implements o.b
    {
        c a;
        private Integer c;
        private boolean d;
        
        private a() {
            super();
            this.c = 0;
            this.d = true;
            this.a = null;
        }
        
        private void d() {
            synchronized (this.c) {
                final Integer c = this.c;
                --this.c;
            }
        }
        
        public final void a() {
            Integer value;
            c a = null;
            File file;
            File file2;
            String string;
            int n;
            int n2;
            String string2;
            VungleCache.b a2;
            VungleCache f;
            VungleCache f2;
            int n3;
            Label_0567_Outer:Label_0573_Outer:
            while (true) {
            Label_0573:
                while (true) {
                Label_0567:
                    while (true) {
                    Label_0340:
                        while (true) {
                        Label_0248:
                            while (true) {
                                while (true) {
                                    Label_0561: {
                                        while (true) {
                                            Label_0555: {
                                                Label_0546: {
                                                    Label_0529: {
                                                        Label_0400: {
                                                            synchronized (this.c) {
                                                                value = 1 + this.c;
                                                                this.c = value;
                                                                if (value == 3) {
                                                                    if (!this.d) {
                                                                        break Label_0529;
                                                                    }
                                                                    a = this.a;
                                                                    if (a.a == null || !a.a.c()) {
                                                                        break Label_0561;
                                                                    }
                                                                    file = new File(a.a.d());
                                                                    if (a.b != null && a.b.c()) {
                                                                        new File(a.b.d());
                                                                    }
                                                                    if (a.c == null || !a.c.c()) {
                                                                        break Label_0555;
                                                                    }
                                                                    file2 = new File(a.c.d());
                                                                    if (file == null) {
                                                                        break Label_0546;
                                                                    }
                                                                    string = file.getParent() + File.separator + "pre";
                                                                    if (p.a(file.getAbsolutePath(), string)) {
                                                                        break Label_0546;
                                                                    }
                                                                    Log.e("Cache", "Unzip of pre-roll failed.");
                                                                    VungleCache.a(new File(string));
                                                                    if (a.a.b()) {
                                                                        a.d.d();
                                                                        n = 0;
                                                                        break Label_0567;
                                                                    }
                                                                    break Label_0340;
                                                                }
                                                                else {
                                                                    return;
                                                                    synchronized (a.f.d) {
                                                                        a.f.d = Boolean.valueOf(false);
                                                                        // monitorexit(VungleCache.a(a.f))
                                                                        if (n2 == 0) {
                                                                            if (n != 0) {
                                                                                a.a();
                                                                            }
                                                                            return;
                                                                        }
                                                                        break Label_0400;
                                                                    }
                                                                }
                                                                // iftrue(Label_0539:, file2 == null)
                                                                // iftrue(Label_0585:, !a.c.b())
                                                                while (true) {
                                                                    Block_15: {
                                                                        break Block_15;
                                                                        while (true) {
                                                                            a.d.d();
                                                                            break Label_0573;
                                                                            Log.e("Cache", "Unzip of post-roll failed.");
                                                                            VungleCache.a(new File(string2));
                                                                            continue Label_0573_Outer;
                                                                        }
                                                                    }
                                                                    string2 = file2.getParent() + File.separator + "post";
                                                                    continue;
                                                                }
                                                            }
                                                            // iftrue(Label_0539:, p.a(file2.getAbsolutePath(), string2))
                                                        }
                                                        ab.c().c = SystemClock.elapsedRealtime() - a.f.c;
                                                        a2 = a.f.d(a.e);
                                                        if (a2 != null) {
                                                            new StringBuilder("New campaign (").append(a2.a).append(") successfully added.");
                                                            a.f.a = a2;
                                                            a.f.b.add(a2);
                                                            a.f.f();
                                                            f = a.f;
                                                            c(a.f.a);
                                                            return;
                                                        }
                                                        f2 = a.f;
                                                        g();
                                                        return;
                                                    }
                                                    this.a.a();
                                                    return;
                                                    Label_0539: {
                                                        n2 = n3;
                                                    }
                                                    continue Label_0340;
                                                }
                                                n3 = 1;
                                                n = 0;
                                                continue Label_0248;
                                            }
                                            file2 = null;
                                            continue Label_0567_Outer;
                                        }
                                    }
                                    file = null;
                                    continue Label_0567_Outer;
                                }
                                n3 = 0;
                                continue Label_0248;
                            }
                            n2 = 0;
                            continue Label_0340;
                        }
                        n = 1;
                        continue Label_0567;
                    }
                    Label_0585: {
                        n = 1;
                    }
                    continue Label_0573;
                }
            }
        }
        
        @Override
        public final void b() {
            this.a();
        }
        
        @Override
        public final void c() {
            synchronized (this.c) {
                this.d = false;
                this.a();
            }
        }
    }
    
    public final class b
    {
        String a;
        long b;
        private String d;
        private String e;
        private String f;
        
        public b(final String a, final String d, final String e, final String f, final long b) {
            super();
            this.a = a;
            this.d = d;
            this.e = e;
            this.f = f;
            this.b = b;
        }
        
        public final String a() {
            return VungleCache.b() + File.separator + this.a;
        }
        
        public final String b() {
            if (this.d == null) {
                return null;
            }
            return this.a() + File.separator + this.d;
        }
        
        public final String c() {
            if (this.e == null) {
                return null;
            }
            return this.a() + File.separator + "pre" + File.separator + this.e;
        }
        
        public final String d() {
            if (this.f == null) {
                return null;
            }
            return this.a() + File.separator + "post" + File.separator + this.f;
        }
    }
    
    final class c
    {
        o a;
        o b;
        o c;
        a d;
        String e;
        final /* synthetic */ VungleCache f;
        
        public c(final String e, final a d) {
            super();
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = d;
            this.e = e;
        }
        
        public final void a() {
            final String[] split = this.e.split(File.separator);
            Log.e("Cache", "Failed to acquire campaign: " + split[split.length - 1]);
            VungleCache.a(new File(this.e));
            synchronized (VungleCache.this.d) {
                VungleCache.this.d = Boolean.valueOf(false);
                // monitorexit(VungleCache.a(this.f))
                final VungleCache f = VungleCache.this;
                g();
            }
        }
    }
    
    public static final class d extends RuntimeException
    {
    }
}
