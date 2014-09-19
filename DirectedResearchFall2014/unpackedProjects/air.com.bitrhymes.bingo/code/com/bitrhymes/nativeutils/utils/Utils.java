package com.bitrhymes.nativeutils.utils;

import android.annotation.*;
import java.security.*;
import android.os.*;
import java.util.*;
import android.util.*;
import android.content.*;
import java.io.*;

@SuppressLint({ "ParserError" })
public class Utils
{
    public static boolean ENABLE_LOG;
    public static String ODID_STRING_PATH;
    public static String PUSH_SENDER_ID;
    public static String REFERRER_STRING_PATH;
    public static String TAG;
    public static int requestCode1;
    public static int requestCode2;
    public static int requestCode3;
    
    static {
        Utils.PUSH_SENDER_ID = "";
        Utils.ENABLE_LOG = true;
        Utils.TAG = "ANDROID_TEST";
        Utils.requestCode1 = 1000010;
        Utils.requestCode2 = 1000020;
        Utils.requestCode3 = 1000030;
        Utils.REFERRER_STRING_PATH = "inmobi_config.txt";
        Utils.ODID_STRING_PATH = "bgodid";
    }
    
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
        //     3: invokestatic    com/bitrhymes/nativeutils/utils/Utils.externalMemoryAvailable:()Z
        //     6: ifeq            114
        //     9: new             Ljava/io/File;
        //    12: dup            
        //    13: invokestatic    android/os/Environment.getExternalStorageDirectory:()Ljava/io/File;
        //    16: ldc             "Android"
        //    18: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //    21: astore          4
        //    23: aload           4
        //    25: invokevirtual   java/io/File.mkdirs:()Z
        //    28: ifne            55
        //    31: getstatic       com/bitrhymes/nativeutils/utils/Utils.TAG:Ljava/lang/String;
        //    34: ldc             "Directory not created"
        //    36: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    39: pop            
        //    40: aload           4
        //    42: invokevirtual   java/io/File.exists:()Z
        //    45: istore          14
        //    47: iload           14
        //    49: ifne            55
        //    52: ldc             ""
        //    54: areturn        
        //    55: new             Ljava/io/File;
        //    58: dup            
        //    59: aload           4
        //    61: aload_0        
        //    62: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //    65: astore          5
        //    67: new             Ljava/io/FileInputStream;
        //    70: dup            
        //    71: aload           5
        //    73: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //    76: astore          6
        //    78: aload           6
        //    80: invokevirtual   java/io/FileInputStream.available:()I
        //    83: newarray        B
        //    85: astore          9
        //    87: aload           6
        //    89: aload           9
        //    91: invokevirtual   java/io/FileInputStream.read:([B)I
        //    94: pop            
        //    95: new             Ljava/lang/String;
        //    98: dup            
        //    99: aload           9
        //   101: invokespecial   java/lang/String.<init>:([B)V
        //   104: astore          11
        //   106: aload           6
        //   108: invokevirtual   java/io/FileInputStream.close:()V
        //   111: aload           11
        //   113: astore_1       
        //   114: aload_1        
        //   115: areturn        
        //   116: astore          7
        //   118: aload           7
        //   120: astore          8
        //   122: aload           8
        //   124: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   127: goto            114
        //   130: astore_2       
        //   131: ldc_w           "Exception"
        //   134: new             Ljava/lang/StringBuilder;
        //   137: dup            
        //   138: ldc_w           "File write failed: "
        //   141: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   144: aload_2        
        //   145: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   148: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   151: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   154: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   157: pop            
        //   158: goto            114
        //   161: astore          12
        //   163: aload           12
        //   165: astore          8
        //   167: aload           11
        //   169: astore_1       
        //   170: goto            122
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  3      47     130    161    Ljava/lang/Exception;
        //  55     67     130    161    Ljava/lang/Exception;
        //  67     106    116    122    Ljava/lang/Exception;
        //  106    111    161    173    Ljava/lang/Exception;
        //  122    127    130    161    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0114:
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
    
    public static boolean validateODID(final String s, final Context context) {
        if (s == null || s.trim().length() == 0) {
            return false;
        }
        try {
            final String[] split = s.split("-");
            if (split.length < 2) {
                return false;
            }
            final String s2 = split[1];
            final String anotherString = split[0];
            final OpenUDID_manager openUDID_manager = new OpenUDID_manager(context);
            final String string = openUDID_manager.mPreferences.getString("openudid", (String)null);
            if (string == null) {
                final SharedPreferences$Editor edit = openUDID_manager.mPreferences.edit();
                edit.putString("openudid", s2);
                edit.commit();
                return true;
            }
            final String sha1 = SHA1(string);
            final boolean equalsIgnoreCase = s2.equalsIgnoreCase(string);
            boolean b = false;
            if (equalsIgnoreCase) {
                final boolean equalsIgnoreCase2 = sha1.equalsIgnoreCase(anotherString);
                b = false;
                if (equalsIgnoreCase2) {
                    b = true;
                }
            }
            return b;
        }
        catch (Exception ex) {
            Log.d("Utils", "Exception in validating ODID:" + ex.getMessage());
            return false;
        }
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
                    Log.e(Utils.TAG, "Directory not created");
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
