package com.bitrhymes.flurry;

import android.annotation.*;
import java.security.*;
import android.os.*;
import java.util.*;
import android.content.*;
import android.util.*;
import java.io.*;

@SuppressLint({ "ParserError" })
public class Utils
{
    public static final String TAG = "Utils";
    
    public static String SHA1(final String s) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        final MessageDigest instance = MessageDigest.getInstance("SHA-1");
        instance.update(s.getBytes("iso-8859-1"), 0, s.length());
        return convertToHex(instance.digest());
    }
    
    private static String convertToHex(final byte[] array) {
        final StringBuilder sb = new StringBuilder();
        for (final byte b : array) {
            int n = 0xF & b >>> 4;
            int n2 = 0;
            while (true) {
                char c;
                if (n >= 0 && n <= 9) {
                    c = (char)(n + 48);
                }
                else {
                    c = (char)(97 + (n - 10));
                }
                sb.append(c);
                n = (b & 0xF);
                final int n3 = n2 + 1;
                if (n2 >= 1) {
                    break;
                }
                n2 = n3;
            }
        }
        return sb.toString();
    }
    
    public static boolean externalMemoryAvailable() {
        return Environment.getExternalStorageState().equals("mounted");
    }
    
    public static String formatSize(long i) {
        final long n = lcmp(i, 1024L);
        String str = null;
        if (n >= 0) {
            str = "KB";
            i /= 1024L;
            if (i >= 1024L) {
                str = "MB";
                i /= 1024L;
            }
        }
        final StringBuilder sb = new StringBuilder(Long.toString(i));
        for (int j = sb.length() - 3; j > 0; j -= 3) {
            sb.insert(j, ',');
        }
        if (str != null) {
            sb.append(str);
        }
        return sb.toString();
    }
    
    public static String getExceptionStackTraceAsString(final Exception ex) {
        final StringWriter out = new StringWriter();
        ex.printStackTrace(new PrintWriter(out));
        return out.toString();
    }
    
    public static String[] getStringArray(final String str) {
        final StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        final String[] array = new String[stringTokenizer.countTokens()];
        for (int n = 0; n < array.length && stringTokenizer.hasMoreTokens(); ++n) {
            array[n] = stringTokenizer.nextToken();
        }
        return array;
    }
    
    public static String md5(final String s) throws Exception {
        final MessageDigest instance = MessageDigest.getInstance("MD5");
        instance.update(s.getBytes());
        final byte[] digest = instance.digest();
        final StringBuffer sb = new StringBuffer();
        for (int i = 0; i < digest.length; ++i) {
            sb.append(Integer.toHexString(0xFF & digest[i]));
        }
        return sb.toString();
    }
    
    public static String readFromFile(final String s, final Context context) {
        try {
            final FileInputStream openFileInput = context.openFileInput(s);
            if (openFileInput != null) {
                final BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openFileInput));
                final StringBuilder sb = new StringBuilder();
                while (true) {
                    final String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                }
                openFileInput.close();
                return sb.toString();
            }
        }
        catch (FileNotFoundException ex) {
            Log.e("Utils ", "File not found: " + ex.toString());
            return "";
        }
        catch (IOException ex2) {
            Log.e("Utils ", "Can not read file: " + ex2.toString());
        }
        return "";
    }
    
    public static String readFromSDFile(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             ""
        //     2: astore_1       
        //     3: invokestatic    com/bitrhymes/flurry/Utils.externalMemoryAvailable:()Z
        //     6: ifeq            113
        //     9: new             Ljava/io/File;
        //    12: dup            
        //    13: invokestatic    android/os/Environment.getExternalStorageDirectory:()Ljava/io/File;
        //    16: ldc             "Android"
        //    18: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //    21: astore          4
        //    23: aload           4
        //    25: invokevirtual   java/io/File.mkdirs:()Z
        //    28: ifne            54
        //    31: ldc             "Utils"
        //    33: ldc             "Directory not created"
        //    35: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    38: pop            
        //    39: aload           4
        //    41: invokevirtual   java/io/File.exists:()Z
        //    44: istore          14
        //    46: iload           14
        //    48: ifne            54
        //    51: ldc             ""
        //    53: areturn        
        //    54: new             Ljava/io/File;
        //    57: dup            
        //    58: aload           4
        //    60: aload_0        
        //    61: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //    64: astore          5
        //    66: new             Ljava/io/FileInputStream;
        //    69: dup            
        //    70: aload           5
        //    72: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //    75: astore          6
        //    77: aload           6
        //    79: invokevirtual   java/io/FileInputStream.available:()I
        //    82: newarray        B
        //    84: astore          9
        //    86: aload           6
        //    88: aload           9
        //    90: invokevirtual   java/io/FileInputStream.read:([B)I
        //    93: pop            
        //    94: new             Ljava/lang/String;
        //    97: dup            
        //    98: aload           9
        //   100: invokespecial   java/lang/String.<init>:([B)V
        //   103: astore          11
        //   105: aload           6
        //   107: invokevirtual   java/io/FileInputStream.close:()V
        //   110: aload           11
        //   112: astore_1       
        //   113: aload_1        
        //   114: areturn        
        //   115: astore          7
        //   117: aload           7
        //   119: astore          8
        //   121: aload           8
        //   123: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   126: goto            113
        //   129: astore_2       
        //   130: ldc             "Exception"
        //   132: new             Ljava/lang/StringBuilder;
        //   135: dup            
        //   136: ldc             "File write failed: "
        //   138: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   141: aload_2        
        //   142: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   145: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   148: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   151: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   154: pop            
        //   155: goto            113
        //   158: astore          12
        //   160: aload           12
        //   162: astore          8
        //   164: aload           11
        //   166: astore_1       
        //   167: goto            121
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  3      46     129    158    Ljava/lang/Exception;
        //  54     66     129    158    Ljava/lang/Exception;
        //  66     105    115    121    Ljava/lang/Exception;
        //  105    110    158    170    Ljava/lang/Exception;
        //  121    126    129    158    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0113:
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
    
    public static void writeToFile(final String str, final Context context, final String s) {
        try {
            context.deleteFile(s);
            final OutputStreamWriter outputStreamWriter = new OutputStreamWriter(context.openFileOutput(s, 0));
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        }
        catch (IOException ex) {
            Log.e("Exception", "File write failed: " + ex.toString());
        }
    }
    
    public static void writeToSDFile(final String s, final String child) {
        try {
            if (externalMemoryAvailable()) {
                final File parent = new File(Environment.getExternalStorageDirectory(), "Android");
                if (!parent.mkdirs()) {
                    Log.e("Utils", "Directory not created");
                    if (!parent.exists()) {
                        return;
                    }
                }
                final File file = new File(parent, child);
                if (file.exists()) {
                    file.delete();
                }
                try {
                    final FileOutputStream fileOutputStream = new FileOutputStream(file);
                    fileOutputStream.write(s.getBytes());
                    fileOutputStream.flush();
                    fileOutputStream.close();
                }
                catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }
        catch (Exception ex2) {
            Log.e("Exception", "File write failed: " + ex2.toString());
        }
    }
}
