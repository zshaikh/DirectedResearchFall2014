package com.inmobi.androidsdk.ai.controller;

import com.inmobi.androidsdk.ai.container.*;
import android.content.*;
import java.security.*;
import org.apache.http.*;
import org.apache.http.impl.client.*;
import org.apache.http.client.methods.*;
import com.inmobi.commons.internal.*;
import android.os.*;
import java.io.*;

public class JSAssetController extends JSController
{
    private static final char[] a;
    
    static {
        a = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
    }
    
    public JSAssetController(final IMWebView imWebView, final Context context) {
        super(imWebView, context);
    }
    
    private String a() {
        return this.mContext.getFilesDir().getPath();
    }
    
    private String a(final String str, final String obj, final String str2) {
        final File file = new File(String.valueOf(obj) + File.separator + str);
        new File(String.valueOf(obj) + File.separator + "ad").mkdir();
        final File parent = new File(String.valueOf(obj) + File.separator + "ad" + File.separator + str2);
        parent.mkdir();
        file.renameTo(new File(parent, file.getName()));
        return String.valueOf(parent.getPath()) + File.separator;
    }
    
    private String a(final MessageDigest messageDigest) {
        int n = 0;
        final byte[] digest = messageDigest.digest();
        final char[] value = new char[2 * digest.length];
        for (int i = 0; i < digest.length; ++i) {
            final int n2 = n + 1;
            value[n] = JSAssetController.a[0xF & digest[i] >>> 4];
            n = n2 + 1;
            value[n2] = JSAssetController.a[0xF & digest[i]];
        }
        return new String(value);
    }
    
    private HttpEntity a(final String s) {
        try {
            return new DefaultHttpClient().execute((HttpUriRequest)new HttpGet(s)).getEntity();
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    private FileOutputStream b(final String s) throws FileNotFoundException {
        final File c = this.c(this.d(s));
        c.mkdirs();
        return new FileOutputStream(new File(c, this.e(s)));
    }
    
    private File c(final String str) {
        final File filesDir = this.mContext.getFilesDir();
        IMLog.debug("InMobiAndroidSDK_3.6.2", "Tmp File dir: " + filesDir);
        return new File(String.valueOf(filesDir.getPath()) + File.separator + str);
    }
    
    private String d(final String s) {
        if (s.lastIndexOf(File.separatorChar) >= 0) {
            return s.substring(0, s.lastIndexOf(File.separatorChar));
        }
        return "/";
    }
    
    public static boolean deleteDirectory(final File file) {
        if (file.exists()) {
            final File[] listFiles = file.listFiles();
            for (int i = 0; i < listFiles.length; ++i) {
                if (listFiles[i].isDirectory()) {
                    deleteDirectory(listFiles[i]);
                }
                else {
                    listFiles[i].delete();
                }
            }
        }
        return file.delete();
    }
    
    public static boolean deleteDirectory(final String pathname) {
        return pathname != null && deleteDirectory(new File(pathname));
    }
    
    private String e(final String s) {
        if (s.lastIndexOf(File.separatorChar) >= 0) {
            return s.substring(1 + s.lastIndexOf(File.separatorChar));
        }
        return s;
    }
    
    public void addAsset(final String p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: aload_2        
        //     2: invokespecial   com/inmobi/androidsdk/ai/controller/JSAssetController.a:(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
        //     5: astore_3       
        //     6: aconst_null    
        //     7: astore          4
        //     9: aload_3        
        //    10: invokeinterface org/apache/http/HttpEntity.getContent:()Ljava/io/InputStream;
        //    15: astore          12
        //    17: aload           12
        //    19: astore          4
        //    21: aload_0        
        //    22: aload           4
        //    24: aload_1        
        //    25: iconst_0       
        //    26: invokevirtual   com/inmobi/androidsdk/ai/controller/JSAssetController.writeToDisk:(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
        //    29: pop            
        //    30: new             Ljava/lang/StringBuilder;
        //    33: dup            
        //    34: ldc             "mraidAdController.addedAsset('"
        //    36: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    39: aload_1        
        //    40: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    43: ldc             "' )"
        //    45: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    48: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    51: astore          15
        //    53: aload_0        
        //    54: getfield        com/inmobi/androidsdk/ai/controller/JSAssetController.imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //    57: aload           15
        //    59: invokevirtual   com/inmobi/androidsdk/ai/container/IMWebView.injectJavaScript:(Ljava/lang/String;)V
        //    62: aload           4
        //    64: ifnull          72
        //    67: aload           4
        //    69: invokevirtual   java/io/InputStream.close:()V
        //    72: aload_3        
        //    73: invokeinterface org/apache/http/HttpEntity.consumeContent:()V
        //    78: return         
        //    79: astore          7
        //    81: aconst_null    
        //    82: astore          8
        //    84: aload           7
        //    86: astore          9
        //    88: aload           9
        //    90: invokevirtual   java/lang/Exception.printStackTrace:()V
        //    93: aload           8
        //    95: ifnull          72
        //    98: aload           8
        //   100: invokevirtual   java/io/InputStream.close:()V
        //   103: goto            72
        //   106: astore          10
        //   108: goto            72
        //   111: astore          5
        //   113: aload           4
        //   115: ifnull          123
        //   118: aload           4
        //   120: invokevirtual   java/io/InputStream.close:()V
        //   123: aload           5
        //   125: athrow         
        //   126: astore          11
        //   128: aload           11
        //   130: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   133: return         
        //   134: astore          6
        //   136: goto            123
        //   139: astore          16
        //   141: goto            72
        //   144: astore          5
        //   146: aload           8
        //   148: astore          4
        //   150: goto            113
        //   153: astore          13
        //   155: aload           4
        //   157: astore          8
        //   159: aload           13
        //   161: astore          9
        //   163: goto            88
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  9      17     79     88     Ljava/lang/Exception;
        //  9      17     111    113    Any
        //  21     62     153    166    Ljava/lang/Exception;
        //  21     62     111    113    Any
        //  67     72     139    144    Ljava/lang/Exception;
        //  72     78     126    134    Ljava/lang/Exception;
        //  88     93     144    153    Any
        //  98     103    106    111    Ljava/lang/Exception;
        //  118    123    134    139    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0072:
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
    
    public int cacheRemaining() {
        final StatFs statFs = new StatFs(this.mContext.getFilesDir().getPath());
        return statFs.getFreeBlocks() * statFs.getBlockSize();
    }
    
    public String copyTextFromJarIntoAssetDir(final String p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             Lcom/inmobi/androidsdk/ai/controller/JSAssetController;.class
        //     2: invokevirtual   java/lang/Class.getClassLoader:()Ljava/lang/ClassLoader;
        //     5: aload_2        
        //     6: invokevirtual   java/lang/ClassLoader.getResource:(Ljava/lang/String;)Ljava/net/URL;
        //     9: invokevirtual   java/net/URL.getFile:()Ljava/lang/String;
        //    12: astore          8
        //    14: aload           8
        //    16: ldc             "file:"
        //    18: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //    21: ifeq            32
        //    24: aload           8
        //    26: iconst_5       
        //    27: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //    30: astore          8
        //    32: aload           8
        //    34: ldc_w           "!"
        //    37: invokevirtual   java/lang/String.indexOf:(Ljava/lang/String;)I
        //    40: istore          9
        //    42: iload           9
        //    44: ifle            57
        //    47: aload           8
        //    49: iconst_0       
        //    50: iload           9
        //    52: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //    55: astore          8
        //    57: new             Ljava/util/jar/JarFile;
        //    60: dup            
        //    61: aload           8
        //    63: invokespecial   java/util/jar/JarFile.<init>:(Ljava/lang/String;)V
        //    66: astore          10
        //    68: aload           10
        //    70: aload           10
        //    72: aload_2        
        //    73: invokevirtual   java/util/jar/JarFile.getJarEntry:(Ljava/lang/String;)Ljava/util/jar/JarEntry;
        //    76: invokevirtual   java/util/jar/JarFile.getInputStream:(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
        //    79: astore          11
        //    81: aload_0        
        //    82: aload           11
        //    84: aload_1        
        //    85: iconst_0       
        //    86: invokevirtual   com/inmobi/androidsdk/ai/controller/JSAssetController.writeToDisk:(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
        //    89: astore          14
        //    91: aload           11
        //    93: ifnull          101
        //    96: aload           11
        //    98: invokevirtual   java/io/InputStream.close:()V
        //   101: aload           14
        //   103: areturn        
        //   104: astore          6
        //   106: aconst_null    
        //   107: astore          4
        //   109: aload           6
        //   111: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   114: aload           4
        //   116: ifnull          124
        //   119: aload           4
        //   121: invokevirtual   java/io/InputStream.close:()V
        //   124: aconst_null    
        //   125: areturn        
        //   126: astore_3       
        //   127: aconst_null    
        //   128: astore          4
        //   130: aload           4
        //   132: ifnull          140
        //   135: aload           4
        //   137: invokevirtual   java/io/InputStream.close:()V
        //   140: aload_3        
        //   141: athrow         
        //   142: astore          15
        //   144: goto            101
        //   147: astore          7
        //   149: goto            124
        //   152: astore          5
        //   154: goto            140
        //   157: astore          13
        //   159: aload           11
        //   161: astore          4
        //   163: aload           13
        //   165: astore_3       
        //   166: goto            130
        //   169: astore_3       
        //   170: goto            130
        //   173: astore          12
        //   175: aload           11
        //   177: astore          4
        //   179: aload           12
        //   181: astore          6
        //   183: goto            109
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      32     104    109    Ljava/lang/Exception;
        //  0      32     126    130    Any
        //  32     42     104    109    Ljava/lang/Exception;
        //  32     42     126    130    Any
        //  47     57     104    109    Ljava/lang/Exception;
        //  47     57     126    130    Any
        //  57     81     104    109    Ljava/lang/Exception;
        //  57     81     126    130    Any
        //  81     91     173    186    Ljava/lang/Exception;
        //  81     91     157    169    Any
        //  96     101    142    147    Ljava/lang/Exception;
        //  109    114    169    173    Any
        //  119    124    147    152    Ljava/lang/Exception;
        //  135    140    152    157    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 88, Size: 88
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
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
    
    public void deleteOldAds() {
        deleteDirectory(new File(String.valueOf(this.a()) + File.separator + "ad"));
    }
    
    public String getAssetPath() {
        return "file://" + this.mContext.getFilesDir() + "/";
    }
    
    public void removeAsset(final String str) {
        final File c = this.c(this.d(str));
        c.mkdirs();
        new File(c, this.e(str)).delete();
        this.imWebView.injectJavaScript("mraidAdController.assetRemoved('" + str + "' )");
    }
    
    @Override
    public void stopAllListeners() {
    }
    
    public String writeToDisk(final InputStream p0, final String p1, final boolean p2) throws IllegalStateException, IOException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: sipush          1024
        //     3: newarray        B
        //     5: astore          4
        //     7: iload_3        
        //     8: ifeq            115
        //    11: ldc_w           "MD5"
        //    14: invokestatic    java/security/MessageDigest.getInstance:(Ljava/lang/String;)Ljava/security/MessageDigest;
        //    17: astore          14
        //    19: aload           14
        //    21: astore          5
        //    23: aload_0        
        //    24: aload_2        
        //    25: invokespecial   com/inmobi/androidsdk/ai/controller/JSAssetController.b:(Ljava/lang/String;)Ljava/io/FileOutputStream;
        //    28: astore          9
        //    30: aload_1        
        //    31: aload           4
        //    33: invokevirtual   java/io/InputStream.read:([B)I
        //    36: istore          10
        //    38: iload           10
        //    40: ifgt            121
        //    43: aload           9
        //    45: invokevirtual   java/io/FileOutputStream.flush:()V
        //    48: aload           9
        //    50: ifnull          58
        //    53: aload           9
        //    55: invokevirtual   java/io/FileOutputStream.close:()V
        //    58: aload_0        
        //    59: invokespecial   com/inmobi/androidsdk/ai/controller/JSAssetController.a:()Ljava/lang/String;
        //    62: astore          11
        //    64: iload_3        
        //    65: ifeq            88
        //    68: aload           5
        //    70: ifnull          88
        //    73: aload_0        
        //    74: aload_2        
        //    75: aload           11
        //    77: aload_0        
        //    78: aload           5
        //    80: invokespecial   com/inmobi/androidsdk/ai/controller/JSAssetController.a:(Ljava/security/MessageDigest;)Ljava/lang/String;
        //    83: invokespecial   com/inmobi/androidsdk/ai/controller/JSAssetController.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    86: astore          11
        //    88: new             Ljava/lang/StringBuilder;
        //    91: dup            
        //    92: aload           11
        //    94: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //    97: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   100: aload_2        
        //   101: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   104: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   107: areturn        
        //   108: astore          13
        //   110: aload           13
        //   112: invokevirtual   java/security/NoSuchAlgorithmException.printStackTrace:()V
        //   115: aconst_null    
        //   116: astore          5
        //   118: goto            23
        //   121: iload_3        
        //   122: ifeq            137
        //   125: aload           5
        //   127: ifnull          137
        //   130: aload           5
        //   132: aload           4
        //   134: invokevirtual   java/security/MessageDigest.update:([B)V
        //   137: aload           9
        //   139: aload           4
        //   141: iconst_0       
        //   142: iload           10
        //   144: invokevirtual   java/io/FileOutputStream.write:([BII)V
        //   147: goto            30
        //   150: astore          6
        //   152: aload           9
        //   154: astore          7
        //   156: aload           7
        //   158: ifnull          166
        //   161: aload           7
        //   163: invokevirtual   java/io/FileOutputStream.close:()V
        //   166: aload           6
        //   168: athrow         
        //   169: astore          8
        //   171: goto            166
        //   174: astore          12
        //   176: goto            58
        //   179: astore          6
        //   181: aconst_null    
        //   182: astore          7
        //   184: goto            156
        //    Exceptions:
        //  throws java.lang.IllegalStateException
        //  throws java.io.IOException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                    
        //  -----  -----  -----  -----  ----------------------------------------
        //  11     19     108    115    Ljava/security/NoSuchAlgorithmException;
        //  23     30     179    187    Any
        //  30     38     150    156    Any
        //  43     48     150    156    Any
        //  53     58     174    179    Ljava/lang/Exception;
        //  130    137    150    156    Any
        //  137    147    150    156    Any
        //  161    166    169    174    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0023:
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
    
    public String writeToDiskWrap(final InputStream p0, final String p1, final boolean p2, final String p3, final String p4, final String p5) throws IllegalStateException, IOException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: sipush          1024
        //     3: newarray        B
        //     5: astore          7
        //     7: iload_3        
        //     8: ifeq            484
        //    11: ldc_w           "MD5"
        //    14: invokestatic    java/security/MessageDigest.getInstance:(Ljava/lang/String;)Ljava/security/MessageDigest;
        //    17: astore          28
        //    19: aload           28
        //    21: astore          8
        //    23: new             Ljava/io/ByteArrayOutputStream;
        //    26: dup            
        //    27: invokespecial   java/io/ByteArrayOutputStream.<init>:()V
        //    30: astore          9
        //    32: aload_1        
        //    33: aload           7
        //    35: invokevirtual   java/io/InputStream.read:([B)I
        //    38: istore          14
        //    40: iload           14
        //    42: ifgt            490
        //    45: aload           9
        //    47: invokevirtual   java/io/ByteArrayOutputStream.toString:()Ljava/lang/String;
        //    50: astore          15
        //    52: aload           15
        //    54: ldc_w           "<html"
        //    57: invokevirtual   java/lang/String.indexOf:(Ljava/lang/String;)I
        //    60: iflt            547
        //    63: iconst_1       
        //    64: istore          16
        //    66: iload           16
        //    68: ifeq            598
        //    71: new             Ljava/lang/StringBuffer;
        //    74: dup            
        //    75: aload           15
        //    77: invokespecial   java/lang/StringBuffer.<init>:(Ljava/lang/String;)V
        //    80: astore          17
        //    82: aload           17
        //    84: ldc_w           "/mraid_bridge.js"
        //    87: invokevirtual   java/lang/StringBuffer.indexOf:(Ljava/lang/String;)I
        //    90: istore          18
        //    92: aload           17
        //    94: iload           18
        //    96: iload           18
        //    98: ldc_w           "/mraid_bridge.js"
        //   101: invokevirtual   java/lang/String.length:()I
        //   104: iadd           
        //   105: new             Ljava/lang/StringBuilder;
        //   108: dup            
        //   109: ldc_w           "file:/"
        //   112: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   115: aload           5
        //   117: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   120: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   123: invokevirtual   java/lang/StringBuffer.replace:(IILjava/lang/String;)Ljava/lang/StringBuffer;
        //   126: pop            
        //   127: aload           17
        //   129: ldc_w           "/mraid.js"
        //   132: invokevirtual   java/lang/StringBuffer.indexOf:(Ljava/lang/String;)I
        //   135: istore          20
        //   137: aload           17
        //   139: iload           20
        //   141: iload           20
        //   143: ldc_w           "/mraid.js"
        //   146: invokevirtual   java/lang/String.length:()I
        //   149: iadd           
        //   150: new             Ljava/lang/StringBuilder;
        //   153: dup            
        //   154: ldc_w           "file:/"
        //   157: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   160: aload           6
        //   162: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   165: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   168: invokevirtual   java/lang/StringBuffer.replace:(IILjava/lang/String;)Ljava/lang/StringBuffer;
        //   171: pop            
        //   172: aload           17
        //   174: astore          22
        //   176: aload_0        
        //   177: aload_2        
        //   178: invokespecial   com/inmobi/androidsdk/ai/controller/JSAssetController.b:(Ljava/lang/String;)Ljava/io/FileOutputStream;
        //   181: astore          23
        //   183: iload           16
        //   185: ifne            366
        //   188: aload           23
        //   190: ldc_w           "<html>"
        //   193: invokevirtual   java/lang/String.getBytes:()[B
        //   196: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   199: aload           23
        //   201: ldc_w           "<head>"
        //   204: invokevirtual   java/lang/String.getBytes:()[B
        //   207: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   210: aload           23
        //   212: ldc_w           "<meta name='viewport' content='user-scalable=no initial-scale=1.0' />"
        //   215: invokevirtual   java/lang/String.getBytes:()[B
        //   218: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   221: aload           23
        //   223: ldc_w           "<title>Advertisement</title> "
        //   226: invokevirtual   java/lang/String.getBytes:()[B
        //   229: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   232: aload           23
        //   234: new             Ljava/lang/StringBuilder;
        //   237: dup            
        //   238: ldc_w           "<script src=\"file:/"
        //   241: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   244: aload           5
        //   246: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   249: ldc_w           "\" type=\"text/javascript\"></script>"
        //   252: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   255: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   258: invokevirtual   java/lang/String.getBytes:()[B
        //   261: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   264: aload           23
        //   266: new             Ljava/lang/StringBuilder;
        //   269: dup            
        //   270: ldc_w           "<script src=\"file:/"
        //   273: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   276: aload           6
        //   278: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   281: ldc_w           "\" type=\"text/javascript\"></script>"
        //   284: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   287: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   290: invokevirtual   java/lang/String.getBytes:()[B
        //   293: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   296: aload           4
        //   298: ifnull          333
        //   301: aload           23
        //   303: ldc_w           "<script type=\"text/javascript\">"
        //   306: invokevirtual   java/lang/String.getBytes:()[B
        //   309: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   312: aload           23
        //   314: aload           4
        //   316: invokevirtual   java/lang/String.getBytes:()[B
        //   319: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   322: aload           23
        //   324: ldc_w           "</script>"
        //   327: invokevirtual   java/lang/String.getBytes:()[B
        //   330: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   333: aload           23
        //   335: ldc_w           "</head>"
        //   338: invokevirtual   java/lang/String.getBytes:()[B
        //   341: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   344: aload           23
        //   346: ldc_w           "<body style=\"margin:0; padding:0; overflow:hidden; background-color:transparent;\">"
        //   349: invokevirtual   java/lang/String.getBytes:()[B
        //   352: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   355: aload           23
        //   357: ldc_w           "<div align=\"center\"> "
        //   360: invokevirtual   java/lang/String.getBytes:()[B
        //   363: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   366: iload           16
        //   368: ifne            553
        //   371: aload           23
        //   373: aload           9
        //   375: invokevirtual   java/io/ByteArrayOutputStream.toByteArray:()[B
        //   378: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   381: iload           16
        //   383: ifne            419
        //   386: aload           23
        //   388: ldc_w           "</div> "
        //   391: invokevirtual   java/lang/String.getBytes:()[B
        //   394: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   397: aload           23
        //   399: ldc_w           "</body> "
        //   402: invokevirtual   java/lang/String.getBytes:()[B
        //   405: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   408: aload           23
        //   410: ldc_w           "</html> "
        //   413: invokevirtual   java/lang/String.getBytes:()[B
        //   416: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   419: aload           23
        //   421: invokevirtual   java/io/FileOutputStream.flush:()V
        //   424: aload           9
        //   426: ifnull          434
        //   429: aload           9
        //   431: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   434: aload           23
        //   436: ifnull          444
        //   439: aload           23
        //   441: invokevirtual   java/io/FileOutputStream.close:()V
        //   444: aload_0        
        //   445: invokespecial   com/inmobi/androidsdk/ai/controller/JSAssetController.a:()Ljava/lang/String;
        //   448: astore          24
        //   450: iload_3        
        //   451: ifeq            474
        //   454: aload           8
        //   456: ifnull          474
        //   459: aload_0        
        //   460: aload_2        
        //   461: aload           24
        //   463: aload_0        
        //   464: aload           8
        //   466: invokespecial   com/inmobi/androidsdk/ai/controller/JSAssetController.a:(Ljava/security/MessageDigest;)Ljava/lang/String;
        //   469: invokespecial   com/inmobi/androidsdk/ai/controller/JSAssetController.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   472: astore          24
        //   474: aload           24
        //   476: areturn        
        //   477: astore          27
        //   479: aload           27
        //   481: invokevirtual   java/security/NoSuchAlgorithmException.printStackTrace:()V
        //   484: aconst_null    
        //   485: astore          8
        //   487: goto            23
        //   490: iload_3        
        //   491: ifeq            506
        //   494: aload           8
        //   496: ifnull          506
        //   499: aload           8
        //   501: aload           7
        //   503: invokevirtual   java/security/MessageDigest.update:([B)V
        //   506: aload           9
        //   508: aload           7
        //   510: iconst_0       
        //   511: iload           14
        //   513: invokevirtual   java/io/ByteArrayOutputStream.write:([BII)V
        //   516: goto            32
        //   519: astore          10
        //   521: aconst_null    
        //   522: astore          11
        //   524: aload           9
        //   526: ifnull          534
        //   529: aload           9
        //   531: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   534: aload           11
        //   536: ifnull          544
        //   539: aload           11
        //   541: invokevirtual   java/io/FileOutputStream.close:()V
        //   544: aload           10
        //   546: athrow         
        //   547: iconst_0       
        //   548: istore          16
        //   550: goto            66
        //   553: aload           23
        //   555: aload           22
        //   557: invokevirtual   java/lang/StringBuffer.toString:()Ljava/lang/String;
        //   560: invokevirtual   java/lang/String.getBytes:()[B
        //   563: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   566: goto            381
        //   569: astore          10
        //   571: aload           23
        //   573: astore          11
        //   575: goto            524
        //   578: astore          13
        //   580: goto            534
        //   583: astore          12
        //   585: goto            544
        //   588: astore          26
        //   590: goto            434
        //   593: astore          25
        //   595: goto            444
        //   598: aconst_null    
        //   599: astore          22
        //   601: goto            176
        //    Exceptions:
        //  throws java.lang.IllegalStateException
        //  throws java.io.IOException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                    
        //  -----  -----  -----  -----  ----------------------------------------
        //  11     19     477    484    Ljava/security/NoSuchAlgorithmException;
        //  32     40     519    524    Any
        //  45     63     519    524    Any
        //  71     172    519    524    Any
        //  176    183    519    524    Any
        //  188    296    569    578    Any
        //  301    333    569    578    Any
        //  333    366    569    578    Any
        //  371    381    569    578    Any
        //  386    419    569    578    Any
        //  419    424    569    578    Any
        //  429    434    588    593    Ljava/lang/Exception;
        //  439    444    593    598    Ljava/lang/Exception;
        //  499    506    519    524    Any
        //  506    516    519    524    Any
        //  529    534    578    583    Ljava/lang/Exception;
        //  539    544    583    588    Ljava/lang/Exception;
        //  553    566    569    578    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 251, Size: 251
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
}
