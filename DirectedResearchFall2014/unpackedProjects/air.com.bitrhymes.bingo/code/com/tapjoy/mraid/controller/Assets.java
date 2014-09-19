package com.tapjoy.mraid.controller;

import com.tapjoy.mraid.view.*;
import java.security.*;
import com.tapjoy.*;
import org.apache.http.*;
import org.apache.http.impl.client.*;
import org.apache.http.client.methods.*;
import android.os.*;
import java.net.*;
import android.util.*;
import org.apache.http.util.*;
import android.app.*;
import android.content.*;
import android.webkit.*;
import java.io.*;

public class Assets extends Abstract
{
    private static final char[] HEX_CHARS;
    private static final String TAG = "MRAID Assets";
    private int imageNameCounter;
    
    static {
        HEX_CHARS = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
    }
    
    public Assets(final MraidView mraidView, final Context context) {
        super(mraidView, context);
        this.imageNameCounter = 0;
    }
    
    private String asHex(final MessageDigest messageDigest) {
        final byte[] digest = messageDigest.digest();
        final char[] value = new char[2 * digest.length];
        int i = 0;
        int n = 0;
        while (i < digest.length) {
            final int n2 = n + 1;
            value[n] = Assets.HEX_CHARS[0xF & digest[i] >>> 4];
            n = n2 + 1;
            value[n2] = Assets.HEX_CHARS[0xF & digest[i]];
            ++i;
        }
        return new String(value);
    }
    
    private boolean contains(final StringBuffer sb, final String s) {
        try {
            if (sb.indexOf(s) >= 0) {
                return true;
            }
        }
        catch (Exception ex) {
            TapjoyLog.d("contains", "html file does not contain " + s);
        }
        return false;
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
    
    private File getAssetDir(final String str) {
        return new File(this.mContext.getFilesDir().getPath() + File.separator + str);
    }
    
    private String getAssetName(final String s) {
        final int lastIndex = s.lastIndexOf(File.separatorChar);
        String substring = s;
        if (lastIndex >= 0) {
            substring = s.substring(1 + s.lastIndexOf(File.separatorChar));
        }
        return substring;
    }
    
    private String getAssetPath(final String s) {
        final int lastIndex = s.lastIndexOf(File.separatorChar);
        String substring = "/";
        if (lastIndex >= 0) {
            substring = s.substring(0, s.lastIndexOf(File.separatorChar));
        }
        return substring;
    }
    
    private String getFilesDir() {
        return this.mContext.getFilesDir().getPath();
    }
    
    private HttpEntity getHttpEntity(final String s) {
        try {
            return new DefaultHttpClient().execute((HttpUriRequest)new HttpGet(s)).getEntity();
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    private String moveToAdDirectory(final String str, final String str2, final String str3) {
        final File file = new File(str2 + File.separator + str);
        new File(str2 + File.separator + "ad").mkdir();
        final File parent = new File(str2 + File.separator + "ad" + File.separator + str3);
        parent.mkdir();
        file.renameTo(new File(parent, file.getName()));
        return parent.getPath() + File.separator;
    }
    
    private void replace(final StringBuffer sb, final String str, final String str2) {
        final int index = sb.indexOf(str);
        TapjoyLog.d("replace ", str2);
        sb.replace(index, index + str.length(), "file://" + str2);
    }
    
    public void addAsset(final String p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: aload_2        
        //     2: invokespecial   com/tapjoy/mraid/controller/Assets.getHttpEntity:(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
        //     5: astore_3       
        //     6: aconst_null    
        //     7: astore          4
        //     9: aload_3        
        //    10: invokeinterface org/apache/http/HttpEntity.getContent:()Ljava/io/InputStream;
        //    15: astore          4
        //    17: aload_0        
        //    18: aload           4
        //    20: aload_1        
        //    21: iconst_0       
        //    22: invokevirtual   com/tapjoy/mraid/controller/Assets.writeToDisk:(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
        //    25: pop            
        //    26: new             Ljava/lang/StringBuilder;
        //    29: dup            
        //    30: invokespecial   java/lang/StringBuilder.<init>:()V
        //    33: ldc             "MraidAdController.addedAsset('"
        //    35: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    38: aload_1        
        //    39: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    42: ldc             "' )"
        //    44: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    47: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    50: astore          11
        //    52: aload_0        
        //    53: getfield        com/tapjoy/mraid/controller/Assets.mMraidView:Lcom/tapjoy/mraid/view/MraidView;
        //    56: aload           11
        //    58: invokevirtual   com/tapjoy/mraid/view/MraidView.injectMraidJavaScript:(Ljava/lang/String;)V
        //    61: aload           4
        //    63: ifnull          71
        //    66: aload           4
        //    68: invokevirtual   java/io/InputStream.close:()V
        //    71: aload_3        
        //    72: invokeinterface org/apache/http/HttpEntity.consumeContent:()V
        //    77: return         
        //    78: astore          7
        //    80: aload           7
        //    82: invokevirtual   java/lang/Exception.printStackTrace:()V
        //    85: aload           4
        //    87: ifnull          71
        //    90: aload           4
        //    92: invokevirtual   java/io/InputStream.close:()V
        //    95: goto            71
        //    98: astore          5
        //   100: aload           4
        //   102: ifnull          110
        //   105: aload           4
        //   107: invokevirtual   java/io/InputStream.close:()V
        //   110: aload           5
        //   112: athrow         
        //   113: astore          9
        //   115: aload           9
        //   117: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   120: return         
        //   121: astore          12
        //   123: goto            71
        //   126: astore          8
        //   128: goto            95
        //   131: astore          6
        //   133: goto            110
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  9      61     78     98     Ljava/lang/Exception;
        //  9      61     98     113    Any
        //  66     71     121    126    Ljava/lang/Exception;
        //  71     77     113    121    Ljava/lang/Exception;
        //  80     85     98     113    Any
        //  90     95     126    131    Ljava/lang/Exception;
        //  105    110    131    136    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 62, Size: 62
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
        //     0: aconst_null    
        //     1: astore_3       
        //     2: ldc             Lcom/tapjoy/mraid/controller/Assets;.class
        //     4: invokevirtual   java/lang/Class.getClassLoader:()Ljava/lang/ClassLoader;
        //     7: aload_2        
        //     8: invokevirtual   java/lang/ClassLoader.getResource:(Ljava/lang/String;)Ljava/net/URL;
        //    11: astore          8
        //    13: aconst_null    
        //    14: astore_3       
        //    15: aload           8
        //    17: ifnonnull       52
        //    20: aload_0        
        //    21: getfield        com/tapjoy/mraid/controller/Assets.mContext:Landroid/content/Context;
        //    24: invokevirtual   android/content/Context.getAssets:()Landroid/content/res/AssetManager;
        //    27: aload_2        
        //    28: invokevirtual   android/content/res/AssetManager.open:(Ljava/lang/String;)Ljava/io/InputStream;
        //    31: astore_3       
        //    32: aload_0        
        //    33: aload_3        
        //    34: aload_1        
        //    35: iconst_0       
        //    36: invokevirtual   com/tapjoy/mraid/controller/Assets.writeToDisk:(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
        //    39: astore          9
        //    41: aload_3        
        //    42: ifnull          49
        //    45: aload_3        
        //    46: invokevirtual   java/io/InputStream.close:()V
        //    49: aload           9
        //    51: areturn        
        //    52: aload           8
        //    54: invokevirtual   java/net/URL.getFile:()Ljava/lang/String;
        //    57: astore          11
        //    59: aload           11
        //    61: ldc_w           "jar:"
        //    64: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //    67: ifeq            78
        //    70: aload           11
        //    72: iconst_4       
        //    73: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //    76: astore          11
        //    78: aload           11
        //    80: ldc_w           "file:"
        //    83: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //    86: ifeq            97
        //    89: aload           11
        //    91: iconst_5       
        //    92: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //    95: astore          11
        //    97: aload           11
        //    99: ldc_w           "!"
        //   102: invokevirtual   java/lang/String.indexOf:(Ljava/lang/String;)I
        //   105: istore          12
        //   107: iload           12
        //   109: ifle            122
        //   112: aload           11
        //   114: iconst_0       
        //   115: iload           12
        //   117: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //   120: astore          11
        //   122: new             Ljava/util/jar/JarFile;
        //   125: dup            
        //   126: aload           11
        //   128: invokespecial   java/util/jar/JarFile.<init>:(Ljava/lang/String;)V
        //   131: astore          13
        //   133: aload           13
        //   135: aload           13
        //   137: aload_2        
        //   138: invokevirtual   java/util/jar/JarFile.getJarEntry:(Ljava/lang/String;)Ljava/util/jar/JarEntry;
        //   141: invokevirtual   java/util/jar/JarFile.getInputStream:(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
        //   144: astore          14
        //   146: aload           14
        //   148: astore_3       
        //   149: goto            32
        //   152: astore          6
        //   154: ldc             "MRAID Assets"
        //   156: new             Ljava/lang/StringBuilder;
        //   159: dup            
        //   160: invokespecial   java/lang/StringBuilder.<init>:()V
        //   163: ldc_w           "copyTextFromJarIntoAssetDir: "
        //   166: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   169: aload           6
        //   171: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   174: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   177: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   180: invokestatic    com/tapjoy/TapjoyLog.e:(Ljava/lang/String;Ljava/lang/String;)V
        //   183: aload_3        
        //   184: ifnull          191
        //   187: aload_3        
        //   188: invokevirtual   java/io/InputStream.close:()V
        //   191: aconst_null    
        //   192: areturn        
        //   193: astore          4
        //   195: aload_3        
        //   196: ifnull          203
        //   199: aload_3        
        //   200: invokevirtual   java/io/InputStream.close:()V
        //   203: aload           4
        //   205: athrow         
        //   206: astore          10
        //   208: goto            49
        //   211: astore          7
        //   213: goto            191
        //   216: astore          5
        //   218: goto            203
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  2      13     152    193    Ljava/lang/Exception;
        //  2      13     193    206    Any
        //  20     32     152    193    Ljava/lang/Exception;
        //  20     32     193    206    Any
        //  32     41     152    193    Ljava/lang/Exception;
        //  32     41     193    206    Any
        //  45     49     206    211    Ljava/lang/Exception;
        //  52     78     152    193    Ljava/lang/Exception;
        //  52     78     193    206    Any
        //  78     97     152    193    Ljava/lang/Exception;
        //  78     97     193    206    Any
        //  97     107    152    193    Ljava/lang/Exception;
        //  97     107    193    206    Any
        //  112    122    152    193    Ljava/lang/Exception;
        //  112    122    193    206    Any
        //  122    146    152    193    Ljava/lang/Exception;
        //  122    146    193    206    Any
        //  154    183    193    206    Any
        //  187    191    211    216    Ljava/lang/Exception;
        //  199    203    216    221    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 104, Size: 104
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
    
    public String copyTextFromJarIntoString(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: sipush          1024
        //     3: newarray        B
        //     5: astore_2       
        //     6: new             Ljava/lang/StringBuffer;
        //     9: dup            
        //    10: invokespecial   java/lang/StringBuffer.<init>:()V
        //    13: astore_3       
        //    14: aconst_null    
        //    15: astore          4
        //    17: ldc             Lcom/tapjoy/mraid/controller/Assets;.class
        //    19: invokevirtual   java/lang/Class.getClassLoader:()Ljava/lang/ClassLoader;
        //    22: aload_1        
        //    23: invokevirtual   java/lang/ClassLoader.getResource:(Ljava/lang/String;)Ljava/net/URL;
        //    26: astore          9
        //    28: aload           9
        //    30: ifnonnull       78
        //    33: aload_0        
        //    34: getfield        com/tapjoy/mraid/controller/Assets.mContext:Landroid/content/Context;
        //    37: invokevirtual   android/content/Context.getAssets:()Landroid/content/res/AssetManager;
        //    40: aload_1        
        //    41: invokevirtual   android/content/res/AssetManager.open:(Ljava/lang/String;)Ljava/io/InputStream;
        //    44: astore          4
        //    46: aload           4
        //    48: aload_2        
        //    49: invokevirtual   java/io/InputStream.read:([B)I
        //    52: istore          10
        //    54: iload           10
        //    56: ifgt            175
        //    59: aload_3        
        //    60: invokevirtual   java/lang/StringBuffer.toString:()Ljava/lang/String;
        //    63: astore          11
        //    65: aload           4
        //    67: ifnull          75
        //    70: aload           4
        //    72: invokevirtual   java/io/InputStream.close:()V
        //    75: aload           11
        //    77: areturn        
        //    78: aload           9
        //    80: invokevirtual   java/net/URL.getFile:()Ljava/lang/String;
        //    83: astore          14
        //    85: aload           14
        //    87: ldc_w           "jar:"
        //    90: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //    93: ifeq            104
        //    96: aload           14
        //    98: iconst_4       
        //    99: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //   102: astore          14
        //   104: aload           14
        //   106: ldc_w           "file:"
        //   109: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //   112: ifeq            123
        //   115: aload           14
        //   117: iconst_5       
        //   118: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //   121: astore          14
        //   123: aload           14
        //   125: ldc_w           "!"
        //   128: invokevirtual   java/lang/String.indexOf:(Ljava/lang/String;)I
        //   131: istore          15
        //   133: iload           15
        //   135: ifle            148
        //   138: aload           14
        //   140: iconst_0       
        //   141: iload           15
        //   143: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //   146: astore          14
        //   148: new             Ljava/util/jar/JarFile;
        //   151: dup            
        //   152: aload           14
        //   154: invokespecial   java/util/jar/JarFile.<init>:(Ljava/lang/String;)V
        //   157: astore          16
        //   159: aload           16
        //   161: aload           16
        //   163: aload_1        
        //   164: invokevirtual   java/util/jar/JarFile.getJarEntry:(Ljava/lang/String;)Ljava/util/jar/JarEntry;
        //   167: invokevirtual   java/util/jar/JarFile.getInputStream:(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
        //   170: astore          4
        //   172: goto            46
        //   175: aload_3        
        //   176: new             Ljava/lang/String;
        //   179: dup            
        //   180: aload_2        
        //   181: invokespecial   java/lang/String.<init>:([B)V
        //   184: iconst_0       
        //   185: iload           10
        //   187: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //   190: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   193: pop            
        //   194: goto            46
        //   197: astore          7
        //   199: ldc             "MRAID Assets"
        //   201: new             Ljava/lang/StringBuilder;
        //   204: dup            
        //   205: invokespecial   java/lang/StringBuilder.<init>:()V
        //   208: ldc_w           "file exception: "
        //   211: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   214: aload           7
        //   216: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   219: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   222: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   225: invokestatic    com/tapjoy/TapjoyLog.d:(Ljava/lang/String;Ljava/lang/String;)V
        //   228: aload           7
        //   230: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   233: aload           4
        //   235: ifnull          243
        //   238: aload           4
        //   240: invokevirtual   java/io/InputStream.close:()V
        //   243: aconst_null    
        //   244: areturn        
        //   245: astore          5
        //   247: aload           4
        //   249: ifnull          257
        //   252: aload           4
        //   254: invokevirtual   java/io/InputStream.close:()V
        //   257: aload           5
        //   259: athrow         
        //   260: astore          12
        //   262: goto            75
        //   265: astore          8
        //   267: goto            243
        //   270: astore          6
        //   272: goto            257
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  17     28     197    245    Ljava/lang/Exception;
        //  17     28     245    260    Any
        //  33     46     197    245    Ljava/lang/Exception;
        //  33     46     245    260    Any
        //  46     54     197    245    Ljava/lang/Exception;
        //  46     54     245    260    Any
        //  59     65     197    245    Ljava/lang/Exception;
        //  59     65     245    260    Any
        //  70     75     260    265    Ljava/lang/Exception;
        //  78     104    197    245    Ljava/lang/Exception;
        //  78     104    245    260    Any
        //  104    123    197    245    Ljava/lang/Exception;
        //  104    123    245    260    Any
        //  123    133    197    245    Ljava/lang/Exception;
        //  123    133    245    260    Any
        //  138    148    197    245    Ljava/lang/Exception;
        //  138    148    245    260    Any
        //  148    172    197    245    Ljava/lang/Exception;
        //  148    172    245    260    Any
        //  175    194    197    245    Ljava/lang/Exception;
        //  175    194    245    260    Any
        //  199    233    245    260    Any
        //  238    243    265    270    Ljava/lang/Exception;
        //  252    257    270    275    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 123, Size: 123
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
    
    public void deleteOldAds() {
        deleteDirectory(new File(this.getFilesDir() + File.separator + "ad"));
    }
    
    public FileOutputStream getAssetOutputString(final String s) throws FileNotFoundException {
        final File assetDir = this.getAssetDir(this.getAssetPath(s));
        assetDir.mkdirs();
        return new FileOutputStream(new File(assetDir, this.getAssetName(s)));
    }
    
    public String getAssetPath() {
        return "file://" + this.mContext.getFilesDir() + "/";
    }
    
    public void removeAsset(final String str) {
        final File assetDir = this.getAssetDir(this.getAssetPath(str));
        assetDir.mkdirs();
        new File(assetDir, this.getAssetName(str)).delete();
        this.mMraidView.injectMraidJavaScript("MraidAdController.assetRemoved('" + str + "' )");
    }
    
    @Override
    public void stopAllListeners() {
    }
    
    public void storePicture(final String s) {
        TapjoyLog.d("MRAID Assets", "Storing media from " + s + " to device photo album.  Output directory: " + Environment.getExternalStorageDirectory() + " state: " + Environment.getExternalStorageState());
        ++this.imageNameCounter;
        File file;
        long currentTimeMillis;
        ByteArrayBuffer byteArrayBuffer;
        try {
            final URL obj = new URL(s);
            final String string = "MraidMedia" + this.imageNameCounter + ".jpg";
            file = new File(Environment.getExternalStorageDirectory().toString() + "/" + string);
            currentTimeMillis = System.currentTimeMillis();
            Log.d("MRAID Assets", "download beginning");
            Log.d("MRAID Assets", "download url:" + obj);
            Log.d("MRAID Assets", "downloaded file name:" + string);
            final BufferedInputStream bufferedInputStream = new BufferedInputStream(obj.openConnection().getInputStream());
            byteArrayBuffer = new ByteArrayBuffer(50);
            while (true) {
                final int read = bufferedInputStream.read();
                if (read == -1) {
                    break;
                }
                byteArrayBuffer.append((int)(byte)read);
            }
        }
        catch (IOException obj2) {
            Log.d("MRAID Assets", "Error: " + obj2);
            return;
        }
        final FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(byteArrayBuffer.toByteArray());
        fileOutputStream.close();
        Log.d("MRAID Assets", "download ready in" + (System.currentTimeMillis() - currentTimeMillis) / 1000L + " sec");
    }
    
    @JavascriptInterface
    public void storePictureInit(final String str) {
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this.mContext);
        alertDialog$Builder.setMessage((CharSequence)("Are you sure you want to save file from " + str + " to your SD card?"));
        alertDialog$Builder.setCancelable(false);
        alertDialog$Builder.setPositiveButton((CharSequence)"Yes", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                Assets.this.storePicture(str);
            }
        });
        alertDialog$Builder.setNegativeButton((CharSequence)"No", (DialogInterface$OnClickListener)null);
        alertDialog$Builder.show();
    }
    
    public String writeToDisk(final InputStream p0, final String p1, final boolean p2) throws IllegalStateException, IOException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_0       
        //     1: istore          4
        //     3: sipush          1024
        //     6: newarray        B
        //     8: astore          5
        //    10: aconst_null    
        //    11: astore          6
        //    13: iload_3        
        //    14: ifeq            29
        //    17: ldc_w           "MD5"
        //    20: invokestatic    java/security/MessageDigest.getInstance:(Ljava/lang/String;)Ljava/security/MessageDigest;
        //    23: astore          14
        //    25: aload           14
        //    27: astore          6
        //    29: aconst_null    
        //    30: astore          7
        //    32: aload_0        
        //    33: aload_2        
        //    34: invokevirtual   com/tapjoy/mraid/controller/Assets.getAssetOutputString:(Ljava/lang/String;)Ljava/io/FileOutputStream;
        //    37: astore          7
        //    39: aload_1        
        //    40: aload           5
        //    42: invokevirtual   java/io/InputStream.read:([B)I
        //    45: istore          10
        //    47: iload           10
        //    49: ifgt            130
        //    52: aload           7
        //    54: invokevirtual   java/io/FileOutputStream.flush:()V
        //    57: aload           7
        //    59: ifnull          67
        //    62: aload           7
        //    64: invokevirtual   java/io/FileOutputStream.close:()V
        //    67: aload_0        
        //    68: invokespecial   com/tapjoy/mraid/controller/Assets.getFilesDir:()Ljava/lang/String;
        //    71: astore          11
        //    73: iload_3        
        //    74: ifeq            97
        //    77: aload           6
        //    79: ifnull          97
        //    82: aload_0        
        //    83: aload_2        
        //    84: aload           11
        //    86: aload_0        
        //    87: aload           6
        //    89: invokespecial   com/tapjoy/mraid/controller/Assets.asHex:(Ljava/security/MessageDigest;)Ljava/lang/String;
        //    92: invokespecial   com/tapjoy/mraid/controller/Assets.moveToAdDirectory:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    95: astore          11
        //    97: new             Ljava/lang/StringBuilder;
        //   100: dup            
        //   101: invokespecial   java/lang/StringBuilder.<init>:()V
        //   104: aload           11
        //   106: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   109: aload_2        
        //   110: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   113: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   116: areturn        
        //   117: astore          13
        //   119: aload           13
        //   121: invokevirtual   java/security/NoSuchAlgorithmException.printStackTrace:()V
        //   124: aconst_null    
        //   125: astore          6
        //   127: goto            29
        //   130: iload_3        
        //   131: ifeq            146
        //   134: aload           6
        //   136: ifnull          146
        //   139: aload           6
        //   141: aload           5
        //   143: invokevirtual   java/security/MessageDigest.update:([B)V
        //   146: aload           7
        //   148: aload           5
        //   150: iconst_0       
        //   151: iload           10
        //   153: invokevirtual   java/io/FileOutputStream.write:([BII)V
        //   156: iinc            4, 1
        //   159: goto            39
        //   162: astore          8
        //   164: aload           7
        //   166: ifnull          174
        //   169: aload           7
        //   171: invokevirtual   java/io/FileOutputStream.close:()V
        //   174: aload           8
        //   176: athrow         
        //   177: astore          12
        //   179: goto            67
        //   182: astore          9
        //   184: goto            174
        //    Exceptions:
        //  throws java.lang.IllegalStateException
        //  throws java.io.IOException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                    
        //  -----  -----  -----  -----  ----------------------------------------
        //  17     25     117    130    Ljava/security/NoSuchAlgorithmException;
        //  32     39     162    177    Any
        //  39     47     162    177    Any
        //  52     57     162    177    Any
        //  62     67     177    182    Ljava/lang/Exception;
        //  139    146    162    177    Any
        //  146    156    162    177    Any
        //  169    174    182    187    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 87, Size: 87
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
    
    public String writeToDiskWrap(final InputStream p0, final String p1, final boolean p2, final String p3, final String p4) throws IllegalStateException, IOException {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: sipush          1024
        //     3: newarray        B
        //     5: astore          6
        //     7: aconst_null    
        //     8: astore          7
        //    10: iload_3        
        //    11: ifeq            26
        //    14: ldc_w           "MD5"
        //    17: invokestatic    java/security/MessageDigest.getInstance:(Ljava/lang/String;)Ljava/security/MessageDigest;
        //    20: astore          22
        //    22: aload           22
        //    24: astore          7
        //    26: new             Ljava/io/ByteArrayOutputStream;
        //    29: dup            
        //    30: invokespecial   java/io/ByteArrayOutputStream.<init>:()V
        //    33: astore          8
        //    35: aconst_null    
        //    36: astore          9
        //    38: aload_1        
        //    39: aload           6
        //    41: invokevirtual   java/io/InputStream.read:([B)I
        //    44: istore          13
        //    46: aconst_null    
        //    47: astore          9
        //    49: iload           13
        //    51: ifgt            403
        //    54: aload           8
        //    56: invokevirtual   java/io/ByteArrayOutputStream.toString:()Ljava/lang/String;
        //    59: astore          14
        //    61: aload           14
        //    63: ldc_w           "</html>"
        //    66: invokevirtual   java/lang/String.indexOf:(Ljava/lang/String;)I
        //    69: iflt            457
        //    72: iconst_1       
        //    73: istore          15
        //    75: new             Ljava/lang/StringBuffer;
        //    78: dup            
        //    79: aload           14
        //    81: invokespecial   java/lang/StringBuffer.<init>:(Ljava/lang/String;)V
        //    84: astore          16
        //    86: iload           15
        //    88: ifeq            114
        //    91: aload_0        
        //    92: aload           16
        //    94: ldc_w           "mraid.js"
        //    97: invokespecial   com/tapjoy/mraid/controller/Assets.contains:(Ljava/lang/StringBuffer;Ljava/lang/String;)Z
        //   100: ifeq            463
        //   103: aload_0        
        //   104: aload           16
        //   106: ldc_w           "mraid.js"
        //   109: aload           5
        //   111: invokespecial   com/tapjoy/mraid/controller/Assets.replace:(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
        //   114: aload_0        
        //   115: aload_2        
        //   116: invokevirtual   com/tapjoy/mraid/controller/Assets.getAssetOutputString:(Ljava/lang/String;)Ljava/io/FileOutputStream;
        //   119: astore          9
        //   121: iload           15
        //   123: ifne            275
        //   126: aload           9
        //   128: ldc_w           "<html>"
        //   131: invokevirtual   java/lang/String.getBytes:()[B
        //   134: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   137: aload           9
        //   139: ldc_w           "<head>"
        //   142: invokevirtual   java/lang/String.getBytes:()[B
        //   145: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   148: aload           9
        //   150: ldc_w           "<meta name='viewport' content='user-scalable=no initial-scale=1.0' />"
        //   153: invokevirtual   java/lang/String.getBytes:()[B
        //   156: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   159: aload           9
        //   161: ldc_w           "<title>Advertisement</title> "
        //   164: invokevirtual   java/lang/String.getBytes:()[B
        //   167: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   170: aload           9
        //   172: new             Ljava/lang/StringBuilder;
        //   175: dup            
        //   176: invokespecial   java/lang/StringBuilder.<init>:()V
        //   179: ldc_w           "<script src=\"file://"
        //   182: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   185: aload           5
        //   187: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   190: ldc_w           "\" type=\"text/javascript\"></script>"
        //   193: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   196: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   199: invokevirtual   java/lang/String.getBytes:()[B
        //   202: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   205: aload           4
        //   207: ifnull          242
        //   210: aload           9
        //   212: ldc_w           "<script type=\"text/javascript\">"
        //   215: invokevirtual   java/lang/String.getBytes:()[B
        //   218: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   221: aload           9
        //   223: aload           4
        //   225: invokevirtual   java/lang/String.getBytes:()[B
        //   228: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   231: aload           9
        //   233: ldc_w           "</script>"
        //   236: invokevirtual   java/lang/String.getBytes:()[B
        //   239: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   242: aload           9
        //   244: ldc_w           "</head>"
        //   247: invokevirtual   java/lang/String.getBytes:()[B
        //   250: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   253: aload           9
        //   255: ldc_w           "<body style=\"margin:0; padding:0; overflow:hidden; background-color:transparent;\">"
        //   258: invokevirtual   java/lang/String.getBytes:()[B
        //   261: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   264: aload           9
        //   266: ldc_w           "<div align=\"center\"> "
        //   269: invokevirtual   java/lang/String.getBytes:()[B
        //   272: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   275: iload           15
        //   277: ifne            515
        //   280: aload           9
        //   282: aload           8
        //   284: invokevirtual   java/io/ByteArrayOutputStream.toByteArray:()[B
        //   287: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   290: iload           15
        //   292: ifne            328
        //   295: aload           9
        //   297: ldc_w           "</div> "
        //   300: invokevirtual   java/lang/String.getBytes:()[B
        //   303: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   306: aload           9
        //   308: ldc_w           "</body> "
        //   311: invokevirtual   java/lang/String.getBytes:()[B
        //   314: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   317: aload           9
        //   319: ldc_w           "</html> "
        //   322: invokevirtual   java/lang/String.getBytes:()[B
        //   325: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   328: aload           9
        //   330: invokevirtual   java/io/FileOutputStream.flush:()V
        //   333: aload           8
        //   335: ifnull          343
        //   338: aload           8
        //   340: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   343: aload           9
        //   345: ifnull          353
        //   348: aload           9
        //   350: invokevirtual   java/io/FileOutputStream.close:()V
        //   353: aload_0        
        //   354: invokespecial   com/tapjoy/mraid/controller/Assets.getFilesDir:()Ljava/lang/String;
        //   357: astore          17
        //   359: iload_3        
        //   360: ifeq            387
        //   363: aload           7
        //   365: ifnull          387
        //   368: aload_0        
        //   369: aload           7
        //   371: invokespecial   com/tapjoy/mraid/controller/Assets.asHex:(Ljava/security/MessageDigest;)Ljava/lang/String;
        //   374: astore          18
        //   376: aload_0        
        //   377: aload_2        
        //   378: aload           17
        //   380: aload           18
        //   382: invokespecial   com/tapjoy/mraid/controller/Assets.moveToAdDirectory:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   385: astore          17
        //   387: aload           17
        //   389: areturn        
        //   390: astore          21
        //   392: aload           21
        //   394: invokevirtual   java/security/NoSuchAlgorithmException.printStackTrace:()V
        //   397: aconst_null    
        //   398: astore          7
        //   400: goto            26
        //   403: iload_3        
        //   404: ifeq            419
        //   407: aload           7
        //   409: ifnull          419
        //   412: aload           7
        //   414: aload           6
        //   416: invokevirtual   java/security/MessageDigest.update:([B)V
        //   419: aload           8
        //   421: aload           6
        //   423: iconst_0       
        //   424: iload           13
        //   426: invokevirtual   java/io/ByteArrayOutputStream.write:([BII)V
        //   429: goto            38
        //   432: astore          10
        //   434: aload           8
        //   436: ifnull          444
        //   439: aload           8
        //   441: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   444: aload           9
        //   446: ifnull          454
        //   449: aload           9
        //   451: invokevirtual   java/io/FileOutputStream.close:()V
        //   454: aload           10
        //   456: athrow         
        //   457: iconst_0       
        //   458: istore          15
        //   460: goto            75
        //   463: aload_0        
        //   464: aload           16
        //   466: ldc_w           "ormma.js"
        //   469: invokespecial   com/tapjoy/mraid/controller/Assets.contains:(Ljava/lang/StringBuffer;Ljava/lang/String;)Z
        //   472: ifeq            489
        //   475: aload_0        
        //   476: aload           16
        //   478: ldc_w           "ormma.js"
        //   481: aload           5
        //   483: invokespecial   com/tapjoy/mraid/controller/Assets.replace:(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
        //   486: goto            114
        //   489: aload_0        
        //   490: aload           16
        //   492: ldc_w           "ormma_bridge.js"
        //   495: invokespecial   com/tapjoy/mraid/controller/Assets.contains:(Ljava/lang/StringBuffer;Ljava/lang/String;)Z
        //   498: ifeq            114
        //   501: aload_0        
        //   502: aload           16
        //   504: ldc_w           "ormma_bridge.js"
        //   507: aload           5
        //   509: invokespecial   com/tapjoy/mraid/controller/Assets.replace:(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
        //   512: goto            114
        //   515: aload           9
        //   517: aload           16
        //   519: invokevirtual   java/lang/StringBuffer.toString:()Ljava/lang/String;
        //   522: invokevirtual   java/lang/String.getBytes:()[B
        //   525: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   528: goto            290
        //   531: astore          20
        //   533: goto            343
        //   536: astore          19
        //   538: goto            353
        //   541: astore          12
        //   543: goto            444
        //   546: astore          11
        //   548: goto            454
        //    Exceptions:
        //  throws java.lang.IllegalStateException
        //  throws java.io.IOException
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                    
        //  -----  -----  -----  -----  ----------------------------------------
        //  14     22     390    403    Ljava/security/NoSuchAlgorithmException;
        //  38     46     432    551    Any
        //  54     72     432    551    Any
        //  75     86     432    551    Any
        //  91     114    432    551    Any
        //  114    121    432    551    Any
        //  126    205    432    551    Any
        //  210    242    432    551    Any
        //  242    275    432    551    Any
        //  280    290    432    551    Any
        //  295    328    432    551    Any
        //  328    333    432    551    Any
        //  338    343    531    536    Ljava/lang/Exception;
        //  348    353    536    541    Ljava/lang/Exception;
        //  412    419    432    551    Any
        //  419    429    432    551    Any
        //  439    444    541    546    Ljava/lang/Exception;
        //  449    454    546    551    Ljava/lang/Exception;
        //  463    486    432    551    Any
        //  489    512    432    551    Any
        //  515    528    432    551    Any
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
}
