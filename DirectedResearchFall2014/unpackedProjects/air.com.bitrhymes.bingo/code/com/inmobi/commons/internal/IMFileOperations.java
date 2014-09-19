package com.inmobi.commons.internal;

import android.content.*;

public class IMFileOperations
{
    public static boolean getBooleanPreferences(final Context context, final String s, final String s2) {
        if (context == null || s == null || s2 == null || "".equals(s.trim()) || "".equals(s2.trim())) {
            IMLog.debug("IMCOMMONS_3.6.1", "Failed to get preferences..App context NULL");
            return false;
        }
        return context.getSharedPreferences(s, 0).getBoolean(s2, false);
    }
    
    public static int getIntPreferences(final Context context, final String s, final String s2) {
        if (context == null || s == null || s2 == null || "".equals(s.trim()) || "".equals(s2.trim())) {
            IMLog.debug("IMCOMMONS_3.6.1", "Failed to get preferences..App context NULL");
            return 0;
        }
        return context.getSharedPreferences(s, 0).getInt(s2, 0);
    }
    
    public static String getPreferences(final Context context, final String s, final String s2) {
        if (context == null || s == null || s2 == null || "".equals(s.trim()) || "".equals(s2.trim())) {
            IMLog.debug("IMCOMMONS_3.6.1", "Failed to get preferences..App context NULL");
            return null;
        }
        return context.getSharedPreferences(s, 0).getString(s2, (String)null);
    }
    
    public static Object readFromFile(final Context p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: ifnull          20
        //     4: aload_1        
        //     5: ifnull          20
        //     8: ldc             ""
        //    10: aload_1        
        //    11: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //    14: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    17: ifeq            29
        //    20: ldc             "IMCOMMONS_3.6.1"
        //    22: ldc             "Cannot read map application context or Filename NULL"
        //    24: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;)V
        //    27: aconst_null    
        //    28: areturn        
        //    29: new             Ljava/io/File;
        //    32: dup            
        //    33: aload_0        
        //    34: ldc             "data"
        //    36: iconst_0       
        //    37: invokevirtual   android/content/Context.getDir:(Ljava/lang/String;I)Ljava/io/File;
        //    40: aload_1        
        //    41: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //    44: astore_2       
        //    45: new             Ljava/io/FileInputStream;
        //    48: dup            
        //    49: aload_2        
        //    50: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //    53: astore_3       
        //    54: new             Ljava/io/ObjectInputStream;
        //    57: dup            
        //    58: aload_3        
        //    59: invokespecial   java/io/ObjectInputStream.<init>:(Ljava/io/InputStream;)V
        //    62: astore          4
        //    64: aload           4
        //    66: invokevirtual   java/io/ObjectInputStream.readObject:()Ljava/lang/Object;
        //    69: astore          7
        //    71: aload           4
        //    73: invokevirtual   java/io/ObjectInputStream.close:()V
        //    76: aload           7
        //    78: areturn        
        //    79: astore          11
        //    81: ldc             "IMCOMMONS_3.6.1"
        //    83: ldc             "Event log File doesnot exist"
        //    85: aload           11
        //    87: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //    90: aconst_null    
        //    91: areturn        
        //    92: astore          10
        //    94: ldc             "IMCOMMONS_3.6.1"
        //    96: ldc             "Event log File corrupted"
        //    98: aload           10
        //   100: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   103: aconst_null    
        //   104: areturn        
        //   105: astore          9
        //   107: ldc             "IMCOMMONS_3.6.1"
        //   109: ldc             "Event log File IO Exception"
        //   111: aload           9
        //   113: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   116: aconst_null    
        //   117: areturn        
        //   118: astore          6
        //   120: ldc             "IMCOMMONS_3.6.1"
        //   122: ldc             "End of file"
        //   124: aload           6
        //   126: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   129: aconst_null    
        //   130: areturn        
        //   131: astore          5
        //   133: ldc             "IMCOMMONS_3.6.1"
        //   135: ldc             "Error reading Event log file"
        //   137: aload           5
        //   139: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   142: aconst_null    
        //   143: areturn        
        //   144: astore          8
        //   146: ldc             "IMCOMMONS_3.6.1"
        //   148: ldc             "Log File Close Exception"
        //   150: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;)V
        //   153: iconst_0       
        //   154: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   157: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                              
        //  -----  -----  -----  -----  ----------------------------------
        //  45     54     79     92     Ljava/io/FileNotFoundException;
        //  54     64     92     105    Ljava/io/StreamCorruptedException;
        //  54     64     105    118    Ljava/io/IOException;
        //  64     71     118    131    Ljava/io/EOFException;
        //  64     71     131    144    Ljava/lang/Exception;
        //  71     76     144    158    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 82, Size: 82
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
    
    public static boolean saveToFile(final Context p0, final String p1, final Object p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: ifnull          24
        //     4: aload_1        
        //     5: ifnull          24
        //     8: ldc             ""
        //    10: aload_1        
        //    11: invokevirtual   java/lang/String.trim:()Ljava/lang/String;
        //    14: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    17: ifne            24
        //    20: aload_2        
        //    21: ifnonnull       33
        //    24: ldc             "IMCOMMONS_3.6.1"
        //    26: ldc             "Cannot read map application context of Filename NULL"
        //    28: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;)V
        //    31: iconst_0       
        //    32: ireturn        
        //    33: new             Ljava/io/File;
        //    36: dup            
        //    37: aload_0        
        //    38: ldc             "data"
        //    40: iconst_0       
        //    41: invokevirtual   android/content/Context.getDir:(Ljava/lang/String;I)Ljava/io/File;
        //    44: aload_1        
        //    45: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //    48: astore_3       
        //    49: new             Ljava/io/ObjectOutputStream;
        //    52: dup            
        //    53: new             Ljava/io/FileOutputStream;
        //    56: dup            
        //    57: aload_3        
        //    58: iconst_0       
        //    59: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;Z)V
        //    62: invokespecial   java/io/ObjectOutputStream.<init>:(Ljava/io/OutputStream;)V
        //    65: astore          4
        //    67: aload           4
        //    69: aload_2        
        //    70: invokevirtual   java/io/ObjectOutputStream.writeObject:(Ljava/lang/Object;)V
        //    73: aload           4
        //    75: invokevirtual   java/io/ObjectOutputStream.flush:()V
        //    78: aload           4
        //    80: invokevirtual   java/io/ObjectOutputStream.close:()V
        //    83: iconst_1       
        //    84: ireturn        
        //    85: astore          9
        //    87: ldc             "IMCOMMONS_3.6.1"
        //    89: ldc             "Log File Not found"
        //    91: aload           9
        //    93: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //    96: iconst_0       
        //    97: ireturn        
        //    98: astore          8
        //   100: ldc             "IMCOMMONS_3.6.1"
        //   102: ldc             "Log File IO Exception"
        //   104: aload           8
        //   106: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   109: iconst_0       
        //   110: ireturn        
        //   111: astore          5
        //   113: ldc             "IMCOMMONS_3.6.1"
        //   115: ldc             "Log File IO Exception write ERROR"
        //   117: aload           5
        //   119: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   122: iconst_0       
        //   123: ireturn        
        //   124: astore          6
        //   126: ldc             "IMCOMMONS_3.6.1"
        //   128: ldc             "Log File IO Exception"
        //   130: aload           6
        //   132: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   135: iconst_0       
        //   136: ireturn        
        //   137: astore          7
        //   139: ldc             "IMCOMMONS_3.6.1"
        //   141: ldc             "Log File Close Exception"
        //   143: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;)V
        //   146: iconst_0       
        //   147: ireturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  49     67     85     98     Ljava/io/FileNotFoundException;
        //  49     67     98     111    Ljava/io/IOException;
        //  67     73     111    124    Ljava/io/IOException;
        //  73     78     124    137    Ljava/io/IOException;
        //  78     83     137    148    Ljava/io/IOException;
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
    
    public static void setPreferences(final Context context, final String s, final String s2, final float n) {
        if (context == null || s == null || s2 == null || "".equals(s.trim()) || "".equals(s2.trim())) {
            IMLog.debug("IMCOMMONS_3.6.1", "Failed to set preferences..App context NULL");
            return;
        }
        final SharedPreferences$Editor edit = context.getSharedPreferences(s, 0).edit();
        edit.putFloat(s2, n);
        edit.commit();
    }
    
    public static void setPreferences(final Context context, final String s, final String s2, final int n) {
        if (context == null || s == null || s2 == null || "".equals(s.trim()) || "".equals(s2.trim())) {
            IMLog.debug("IMCOMMONS_3.6.1", "Failed to set preferences..App context NULL");
            return;
        }
        final SharedPreferences$Editor edit = context.getSharedPreferences(s, 0).edit();
        edit.putInt(s2, n);
        edit.commit();
    }
    
    public static void setPreferences(final Context context, final String s, final String s2, final long n) {
        if (context == null || s == null || s2 == null || "".equals(s.trim()) || "".equals(s2.trim())) {
            IMLog.debug("IMCOMMONS_3.6.1", "Failed to set preferences..App context NULL");
            return;
        }
        final SharedPreferences$Editor edit = context.getSharedPreferences(s, 0).edit();
        edit.putLong(s2, n);
        edit.commit();
    }
    
    public static void setPreferences(final Context context, final String s, final String s2, final boolean b) {
        if (context == null || s == null || s2 == null || "".equals(s.trim()) || "".equals(s2.trim())) {
            IMLog.debug("IMCOMMONS_3.6.1", "Failed to set preferences..App context NULL");
            return;
        }
        final SharedPreferences$Editor edit = context.getSharedPreferences(s, 0).edit();
        edit.putBoolean(s2, b);
        edit.commit();
    }
    
    public static boolean setPreferences(final Context context, final String s, final String s2, final String s3) {
        if (context == null || s == null || s2 == null || "".equals(s.trim()) || "".equals(s2.trim())) {
            IMLog.internal("IMCOMMONS_3.6.1", "Failed to set preferences..App context NULL");
            return false;
        }
        final SharedPreferences$Editor edit = context.getSharedPreferences(s, 0).edit();
        edit.putString(s2, s3);
        edit.commit();
        return true;
    }
}
