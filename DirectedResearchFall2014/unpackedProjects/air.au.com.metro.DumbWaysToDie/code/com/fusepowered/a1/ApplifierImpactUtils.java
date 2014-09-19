package com.fusepowered.a1;

import javax.security.auth.x500.*;
import com.fusepowered.a1.properties.*;
import android.util.*;
import java.security.*;
import android.annotation.*;
import android.os.*;
import android.content.*;
import java.security.cert.*;
import android.content.pm.*;
import com.fusepowered.a1.campaign.*;
import java.util.*;
import java.io.*;

public class ApplifierImpactUtils
{
    private static final X500Principal DEBUG_DN;
    
    static {
        DEBUG_DN = new X500Principal("CN=Android Debug,O=Android,C=US");
    }
    
    public static void Log(final String str, final Class clazz) {
        if (ApplifierImpactProperties.IMPACT_DEBUG_MODE) {
            Log.d("ApplifierImpact", String.valueOf(clazz.getName()) + " :: " + str);
        }
    }
    
    public static void Log(final String str, final Object o) {
        if (ApplifierImpactProperties.IMPACT_DEBUG_MODE) {
            Log.d("ApplifierImpact", String.valueOf(o.getClass().getName()) + " :: " + str);
        }
    }
    
    @SuppressLint({ "DefaultLocale" })
    public static String Md5(final String s) {
    Label_0040_Outer:
        while (true) {
            while (true) {
                byte[] digest;
                String s2;
                int n;
                while (true) {
                    try {
                        final MessageDigest instance = MessageDigest.getInstance("MD5");
                        instance.update(s.getBytes(), 0, s.length());
                        digest = instance.digest();
                        s2 = new String();
                        n = 0;
                        if (n >= digest.length) {
                            return s2.toUpperCase();
                        }
                    }
                    catch (NoSuchAlgorithmException ex) {
                        ex.printStackTrace();
                        final MessageDigest instance = null;
                        continue Label_0040_Outer;
                    }
                    break;
                }
                final int i = 0xFF & digest[n];
                if (i <= 15) {
                    s2 = String.valueOf(s2) + "0";
                }
                s2 = String.valueOf(s2) + Integer.toHexString(i);
                ++n;
                continue;
            }
        }
    }
    
    public static String SHA1(final String s) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        final MessageDigest instance = MessageDigest.getInstance("SHA-1");
        instance.update(s.getBytes("iso-8859-1"), 0, s.length());
        return convertToHex(instance.digest());
    }
    
    public static boolean canUseExternalStorage() {
        return Environment.getExternalStorageState().equals("mounted");
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
    
    public static File createCacheDir() {
        final File file = new File(getCacheDirectory());
        file.mkdirs();
        if (file != null) {
            writeFile(new File(String.valueOf(getCacheDirectory()) + "/.nomedia"), "");
        }
        return file;
    }
    
    public static String getCacheDirectory() {
        return String.valueOf(Environment.getExternalStorageDirectory().toString()) + "/" + "ApplifierVideoCache";
    }
    
    public static long getSizeForLocalFile(final String pathname) {
        final File file = new File(String.valueOf(getCacheDirectory()) + "/" + new File(pathname).getName());
        long length = -1L;
        if (file.exists()) {
            length = file.length();
        }
        return length;
    }
    
    public static boolean isDebuggable(final Context context) {
        int n = 0;
        final PackageManager packageManager = context.getPackageManager();
        while (true) {
            try {
                final ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
                final int flags = 0x2 & applicationInfo.flags;
                applicationInfo.flags = flags;
                boolean equals;
                if (flags != 0) {
                    equals = true;
                }
                else {
                    equals = false;
                    n = 0;
                }
                if (n != 0) {
                    try {
                        final Signature[] signatures = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
                        for (int i = 0; i < signatures.length; ++i) {
                            equals = ((X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatures[i].toByteArray()))).getSubjectX500Principal().equals(ApplifierImpactUtils.DEBUG_DN);
                            if (equals) {
                                return equals;
                            }
                        }
                        return equals;
                    }
                    catch (PackageManager$NameNotFoundException ex) {
                        return equals;
                    }
                    catch (CertificateException ex2) {}
                }
                return equals;
            }
            catch (PackageManager$NameNotFoundException ex3) {
                n = 1;
                final boolean equals = false;
                continue;
            }
            continue;
        }
    }
    
    public static boolean isFileInCache(final String pathname) {
        return new File(String.valueOf(getCacheDirectory()) + "/" + new File(pathname).getName()).exists();
    }
    
    public static boolean isFileRequiredByCampaigns(final String pathname, final ArrayList<ApplifierImpactCampaign> list) {
        if (pathname == null || list == null) {
            return false;
        }
        final File file = new File(pathname);
        if (file.getName().equals(".nomedia")) {
            return true;
        }
        final Iterator<ApplifierImpactCampaign> iterator = list.iterator();
        while (iterator.hasNext()) {
            if (file.getName().equals(new File(iterator.next().getVideoFilename()).getName())) {
                return true;
            }
        }
        return false;
    }
    
    public static String readFile(final File p0, final boolean p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             ""
        //     2: astore_2       
        //     3: aload_0        
        //     4: invokevirtual   java/io/File.exists:()Z
        //     7: ifeq            141
        //    10: aload_0        
        //    11: invokevirtual   java/io/File.canRead:()Z
        //    14: ifeq            141
        //    17: new             Ljava/io/BufferedReader;
        //    20: dup            
        //    21: new             Ljava/io/FileReader;
        //    24: dup            
        //    25: aload_0        
        //    26: invokespecial   java/io/FileReader.<init>:(Ljava/io/File;)V
        //    29: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;)V
        //    32: astore_3       
        //    33: aload_3        
        //    34: invokevirtual   java/io/BufferedReader.readLine:()Ljava/lang/String;
        //    37: astore          6
        //    39: aload           6
        //    41: ifnonnull       50
        //    44: aload_3        
        //    45: invokevirtual   java/io/BufferedReader.close:()V
        //    48: aload_2        
        //    49: areturn        
        //    50: aload_2        
        //    51: aload           6
        //    53: invokevirtual   java/lang/String.concat:(Ljava/lang/String;)Ljava/lang/String;
        //    56: astore_2       
        //    57: iload_1        
        //    58: ifeq            33
        //    61: aload_2        
        //    62: ldc_w           "\n"
        //    65: invokevirtual   java/lang/String.concat:(Ljava/lang/String;)Ljava/lang/String;
        //    68: astore          7
        //    70: aload           7
        //    72: astore_2       
        //    73: goto            33
        //    76: astore          9
        //    78: aload           9
        //    80: astore          5
        //    82: new             Ljava/lang/StringBuilder;
        //    85: dup            
        //    86: ldc_w           "Problem reading file: "
        //    89: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    92: aload           5
        //    94: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //    97: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   100: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   103: ldc             Lcom/fusepowered/a1/ApplifierImpactUtils;.class
        //   105: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Class;)V
        //   108: aconst_null    
        //   109: areturn        
        //   110: astore          8
        //   112: new             Ljava/lang/StringBuilder;
        //   115: dup            
        //   116: ldc_w           "Problem closing reader: "
        //   119: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   122: aload           8
        //   124: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   127: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   130: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   133: ldc             Lcom/fusepowered/a1/ApplifierImpactUtils;.class
        //   135: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Class;)V
        //   138: goto            48
        //   141: ldc_w           "File did not exist or couldn't be read"
        //   144: ldc             Lcom/fusepowered/a1/ApplifierImpactUtils;.class
        //   146: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Class;)V
        //   149: aconst_null    
        //   150: areturn        
        //   151: astore          4
        //   153: aload           4
        //   155: astore          5
        //   157: goto            82
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  17     33     76     82     Ljava/lang/Exception;
        //  33     39     151    160    Ljava/lang/Exception;
        //  44     48     110    141    Ljava/lang/Exception;
        //  50     57     151    160    Ljava/lang/Exception;
        //  61     70     151    160    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0033:
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
    
    public static void removeFile(final String pathname) {
        if (pathname != null) {
            final File file = new File(String.valueOf(getCacheDirectory()) + "/" + new File(pathname).getName());
            if (!file.exists()) {
                Log("File: " + file.getAbsolutePath() + " doesn't exist.", ApplifierImpactUtils.class);
                return;
            }
            if (file.delete()) {
                Log("Deleted: " + file.getAbsolutePath(), ApplifierImpactUtils.class);
                return;
            }
            Log("Could not delete: " + file.getAbsolutePath(), ApplifierImpactUtils.class);
        }
    }
    
    public static boolean writeFile(final File file, final String s) {
        FileOutputStream fileOutputStream = null;
        try {
            final FileOutputStream fileOutputStream2;
            fileOutputStream = (fileOutputStream2 = new FileOutputStream(file));
            final String s2 = s;
            final byte[] array = s2.getBytes();
            fileOutputStream2.write(array);
            final FileOutputStream fileOutputStream3 = fileOutputStream;
            fileOutputStream3.flush();
            final FileOutputStream fileOutputStream4 = fileOutputStream;
            fileOutputStream4.close();
            final String s3 = "Wrote file: ";
            final StringBuilder sb = new StringBuilder(s3);
            final File file2 = file;
            final String s4 = file2.getAbsolutePath();
            final StringBuilder sb2 = sb.append(s4);
            final String s5 = sb2.toString();
            final Class<ApplifierImpactUtils> clazz = ApplifierImpactUtils.class;
            Log(s5, clazz);
            return true;
        }
        catch (Exception ex) {}
        while (true) {
            try {
                final FileOutputStream fileOutputStream2 = fileOutputStream;
                final String s2 = s;
                final byte[] array = s2.getBytes();
                fileOutputStream2.write(array);
                final FileOutputStream fileOutputStream3 = fileOutputStream;
                fileOutputStream3.flush();
                final FileOutputStream fileOutputStream4 = fileOutputStream;
                fileOutputStream4.close();
                final String s3 = "Wrote file: ";
                final StringBuilder sb = new StringBuilder(s3);
                final File file2 = file;
                final String s4 = file2.getAbsolutePath();
                final StringBuilder sb2 = sb.append(s4);
                final String s5 = sb2.toString();
                final Class<ApplifierImpactUtils> clazz = ApplifierImpactUtils.class;
                Log(s5, clazz);
                return true;
                final Exception ex;
                Log("Could not write file: " + ex.getMessage(), ApplifierImpactUtils.class);
                return false;
            }
            catch (Exception ex2) {
                final Exception ex = ex2;
                continue;
            }
            break;
        }
    }
}
