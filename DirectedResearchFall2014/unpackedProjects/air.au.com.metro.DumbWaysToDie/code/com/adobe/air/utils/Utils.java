package com.adobe.air.utils;

import android.content.res.*;
import android.view.*;
import android.content.*;
import android.content.pm.*;
import java.lang.reflect.*;
import android.os.*;
import java.util.*;
import java.io.*;

public class Utils
{
    private static String sRuntimePackageName;
    
    public static String GetExternalStorageDirectory() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }
    
    public static View GetLayoutViewFromRuntime(final String s, final Resources resources, final LayoutInflater layoutInflater) {
        final int identifier = resources.getIdentifier(s, "layout", Utils.sRuntimePackageName);
        if (identifier != 0) {
            return layoutInflater.inflate(identifier, (ViewGroup)null);
        }
        return null;
    }
    
    public static String GetLibCorePath(final Context context) {
        return GetNativeLibraryPath(context, "libCore.so");
    }
    
    public static String GetNativeExtensionPath(final Context context, final String str) {
        while (true) {
            while (true) {
                try {
                    final ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(Utils.sRuntimePackageName, 0);
                    final Field field = ApplicationInfo.class.getField("nativeLibraryDir");
                    final Field field2 = ApplicationInfo.class.getField("sourceDir");
                    if (field != null) {
                        String s;
                        if (((String)field2.get(applicationInfo)).startsWith("/system/app/")) {
                            s = new String("/system/lib/" + Utils.sRuntimePackageName + "/" + str);
                        }
                        else {
                            s = new String("/data/data/" + context.getPackageName() + "/lib/" + str);
                        }
                        if (s == null) {
                            s = new String("/data/data/" + Utils.sRuntimePackageName + "/lib/" + str);
                        }
                        return s;
                    }
                }
                catch (Exception ex) {
                    final String s = null;
                    continue;
                }
                String s = null;
                continue;
            }
        }
    }
    
    public static String GetNativeLibraryPath(final Context context, final String str) {
        while (true) {
            try {
                final ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(Utils.sRuntimePackageName, 0);
                final Field field = ApplicationInfo.class.getField("nativeLibraryDir");
                final Field field2 = ApplicationInfo.class.getField("sourceDir");
                String concat = null;
                if (field != null) {
                    if (((String)field2.get(applicationInfo)).startsWith("/system/app/")) {
                        concat = new String("/system/lib/" + Utils.sRuntimePackageName + "/" + str);
                    }
                    else {
                        concat = ((String)field.get(applicationInfo)).concat("/" + str);
                    }
                }
                if (concat == null) {
                    concat = new String("/data/data/" + Utils.sRuntimePackageName + "/lib/" + str);
                }
                return concat;
            }
            catch (Exception ex) {
                final String concat = null;
                continue;
            }
            break;
        }
    }
    
    public static String GetResourceStringFromRuntime(final String s, final Resources resources) {
        return resources.getString(resources.getIdentifier(s, "string", Utils.sRuntimePackageName));
    }
    
    public static String GetSharedDataDirectory() {
        return Environment.getDataDirectory().getAbsolutePath();
    }
    
    public static String GetTelemetrySettings(final Context p0, final String p1, final String p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //     4: invokevirtual   android/content/res/Resources.getAssets:()Landroid/content/res/AssetManager;
        //     7: aload_1        
        //     8: iconst_1       
        //     9: invokevirtual   android/content/res/AssetManager.open:(Ljava/lang/String;I)Ljava/io/InputStream;
        //    12: astore          14
        //    14: aload           14
        //    16: astore          8
        //    18: new             Ljava/io/ByteArrayOutputStream;
        //    21: dup            
        //    22: invokespecial   java/io/ByteArrayOutputStream.<init>:()V
        //    25: astore          9
        //    27: aload           8
        //    29: aload           9
        //    31: invokestatic    com/adobe/air/utils/Utils.copyTo:(Ljava/io/InputStream;Ljava/io/OutputStream;)V
        //    34: aload           9
        //    36: invokevirtual   java/io/ByteArrayOutputStream.toString:()Ljava/lang/String;
        //    39: astore          17
        //    41: aload           8
        //    43: ifnull          51
        //    46: aload           8
        //    48: invokevirtual   java/io/InputStream.close:()V
        //    51: aload           9
        //    53: ifnull          61
        //    56: aload           9
        //    58: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //    61: aload           17
        //    63: astore          11
        //    65: aload           11
        //    67: ifnonnull       97
        //    70: aload_0        
        //    71: aload_2        
        //    72: iconst_0       
        //    73: invokevirtual   android/content/Context.createPackageContext:(Ljava/lang/String;I)Landroid/content/Context;
        //    76: ldc             "telemetry"
        //    78: iconst_1       
        //    79: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
        //    82: ldc             "content"
        //    84: ldc             ""
        //    86: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    91: astore          13
        //    93: aload           13
        //    95: astore          11
        //    97: aload           11
        //    99: areturn        
        //   100: astore          18
        //   102: aload           17
        //   104: astore          11
        //   106: goto            65
        //   109: astore          7
        //   111: aconst_null    
        //   112: astore          8
        //   114: aconst_null    
        //   115: astore          9
        //   117: aload           8
        //   119: ifnull          127
        //   122: aload           8
        //   124: invokevirtual   java/io/InputStream.close:()V
        //   127: aload           9
        //   129: ifnull          137
        //   132: aload           9
        //   134: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   137: aconst_null    
        //   138: astore          11
        //   140: goto            65
        //   143: astore          10
        //   145: aconst_null    
        //   146: astore          11
        //   148: goto            65
        //   151: astore_3       
        //   152: aconst_null    
        //   153: astore          4
        //   155: aconst_null    
        //   156: astore          5
        //   158: aload           4
        //   160: ifnull          168
        //   163: aload           4
        //   165: invokevirtual   java/io/InputStream.close:()V
        //   168: aload           5
        //   170: ifnull          178
        //   173: aload           5
        //   175: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   178: aload_3        
        //   179: athrow         
        //   180: astore          12
        //   182: aload           11
        //   184: areturn        
        //   185: astore          6
        //   187: goto            178
        //   190: astore          20
        //   192: aload           8
        //   194: astore          21
        //   196: aload           20
        //   198: astore_3       
        //   199: aload           21
        //   201: astore          4
        //   203: aconst_null    
        //   204: astore          5
        //   206: goto            158
        //   209: astore          16
        //   211: aload           9
        //   213: astore          5
        //   215: aload           8
        //   217: astore          4
        //   219: aload           16
        //   221: astore_3       
        //   222: goto            158
        //   225: astore          19
        //   227: aconst_null    
        //   228: astore          9
        //   230: goto            117
        //   233: astore          15
        //   235: goto            117
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      14     109    117    Ljava/lang/Exception;
        //  0      14     151    158    Any
        //  18     27     225    233    Ljava/lang/Exception;
        //  18     27     190    209    Any
        //  27     41     233    238    Ljava/lang/Exception;
        //  27     41     209    225    Any
        //  46     51     100    109    Ljava/lang/Exception;
        //  56     61     100    109    Ljava/lang/Exception;
        //  70     93     180    185    Ljava/lang/Exception;
        //  122    127    143    151    Ljava/lang/Exception;
        //  132    137    143    151    Ljava/lang/Exception;
        //  163    168    185    190    Ljava/lang/Exception;
        //  173    178    185    190    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 114, Size: 114
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
    
    public static View GetWidgetInViewByName(final String s, final Resources resources, final View view) {
        return view.findViewById(resources.getIdentifier(s, "id", Utils.sRuntimePackageName));
    }
    
    static void KillProcess() {
        Process.killProcess(Process.myPid());
    }
    
    public static String ReplaceTextContentWithStars(final String s) {
        final int length = s.length();
        final char[] value = new char[length];
        for (int i = 0; i < length; ++i) {
            value[i] = '*';
        }
        return new String(value);
    }
    
    public static void copyTo(final File file, final File file2) throws IOException {
        if (file.isDirectory()) {
            file2.mkdirs();
            for (final File file3 : file.listFiles()) {
                copyTo(file3, new File(file2, file3.getName()));
            }
        }
        else {
            final FileInputStream fileInputStream = new FileInputStream(file);
            final FileOutputStream fileOutputStream = new FileOutputStream(file2);
            copyTo(fileInputStream, fileOutputStream);
            fileInputStream.close();
            fileOutputStream.close();
        }
    }
    
    public static void copyTo(final InputStream inputStream, final OutputStream outputStream) throws IOException {
        final byte[] array = new byte[1024];
        while (true) {
            final int read = inputStream.read(array);
            if (read <= 0) {
                break;
            }
            outputStream.write(array, 0, read);
        }
    }
    
    public static String getRuntimePackageName() {
        return Utils.sRuntimePackageName;
    }
    
    public static boolean hasCaptiveRuntime() {
        return !"com.adobe.air".equals(Utils.sRuntimePackageName);
    }
    
    public static native boolean nativeConnectDebuggerSocket(final String p0);
    
    public static HashMap<String, String> parseKeyValuePairFile(final File file, final String s) throws FileNotFoundException, IllegalStateException {
        return parseKeyValuePairFile(new FileInputStream(file), s);
    }
    
    public static HashMap<String, String> parseKeyValuePairFile(final InputStream source, final String pattern) throws IllegalStateException {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        final Scanner scanner = new Scanner(source);
        while (scanner.hasNextLine()) {
            final Scanner scanner2 = new Scanner(scanner.nextLine());
            scanner2.useDelimiter(pattern);
            if (scanner2.hasNext()) {
                hashMap.put(scanner2.next().trim(), scanner2.next().trim());
            }
            scanner2.close();
        }
        scanner.close();
        return hashMap;
    }
    
    public static void setRuntimePackageName(final String sRuntimePackageName) {
        Utils.sRuntimePackageName = sRuntimePackageName;
    }
    
    public static void writeBufferToFile(final StringBuffer sb, final File file) throws IOException {
        final FileWriter fileWriter = new FileWriter(file);
        fileWriter.write(sb.toString());
        fileWriter.close();
    }
    
    public static void writeOut(final InputStream inputStream, final File file) throws IOException {
        final FileOutputStream fileOutputStream = new FileOutputStream(file);
        writeThrough(inputStream, fileOutputStream);
        fileOutputStream.close();
    }
    
    public static void writeStringToFile(final String str, final File file) throws IOException {
        final FileWriter fileWriter = new FileWriter(file);
        fileWriter.write(str);
        fileWriter.close();
    }
    
    public static boolean writeStringToFile(final String s, final String pathname) {
        final File file = new File(pathname);
        byte[] bytes = null;
        Label_0021: {
            if (file.exists()) {
                break Label_0021;
            }
            try {
                file.createNewFile();
                bytes = s.getBytes();
                final File file2 = file;
                final FileOutputStream fileOutputStream = new FileOutputStream(file2);
                final FileOutputStream fileOutputStream3;
                final FileOutputStream fileOutputStream2 = fileOutputStream3 = fileOutputStream;
                final byte[] array = bytes;
                final boolean b = false;
                final byte[] array2 = bytes;
                final int n = array2.length;
                fileOutputStream3.write(array, b ? 1 : 0, n);
                final FileOutputStream fileOutputStream4 = fileOutputStream2;
                fileOutputStream4.close();
                return true;
            }
            catch (IOException ex) {
                return false;
            }
        }
        try {
            final File file2 = file;
            final FileOutputStream fileOutputStream = new FileOutputStream(file2);
            final FileOutputStream fileOutputStream3;
            final FileOutputStream fileOutputStream2 = fileOutputStream3 = fileOutputStream;
            final byte[] array = bytes;
            final boolean b = false;
            final byte[] array2 = bytes;
            final int n = array2.length;
            fileOutputStream3.write(array, b ? 1 : 0, n);
            final FileOutputStream fileOutputStream4 = fileOutputStream2;
            fileOutputStream4.close();
            return true;
        }
        catch (IOException ex2) {
            return false;
        }
    }
    
    public static void writeThrough(final InputStream inputStream, final OutputStream outputStream) throws IOException {
        final byte[] array = new byte[4096];
        while (true) {
            final int read = inputStream.read(array);
            if (read == -1) {
                break;
            }
            if (outputStream == null) {
                continue;
            }
            outputStream.write(array, 0, read);
            outputStream.flush();
        }
    }
}
