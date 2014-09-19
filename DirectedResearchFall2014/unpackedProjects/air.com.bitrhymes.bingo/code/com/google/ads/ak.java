package com.google.ads;

import android.content.*;
import android.view.*;
import android.util.*;
import java.util.*;
import java.lang.reflect.*;
import java.nio.*;
import java.io.*;

public class ak extends aj
{
    static boolean c;
    private static Method d;
    private static Method e;
    private static Method f;
    private static Method g;
    private static Method h;
    private static String i;
    private static long j;
    
    static {
        ak.d = null;
        ak.e = null;
        ak.f = null;
        ak.g = null;
        ak.h = null;
        ak.i = null;
        ak.j = 0L;
        ak.c = false;
    }
    
    protected ak(final Context context) {
        super(context);
    }
    
    public static ak a(final String s, final Context context) {
        b(s, context);
        return new ak(context);
    }
    
    static String a() throws a {
        if (ak.i == null) {
            throw new a();
        }
        return ak.i;
    }
    
    static ArrayList<Long> a(final MotionEvent motionEvent, final DisplayMetrics displayMetrics) throws a {
        if (ak.g == null || motionEvent == null) {
            throw new a();
        }
        try {
            return (ArrayList<Long>)ak.g.invoke(null, motionEvent, displayMetrics);
        }
        catch (IllegalAccessException ex) {
            throw new a(ex);
        }
        catch (InvocationTargetException ex2) {
            throw new a(ex2);
        }
    }
    
    static Long b() throws a {
        if (ak.d == null) {
            throw new a();
        }
        try {
            return (Long)ak.d.invoke(null, new Object[0]);
        }
        catch (IllegalAccessException ex) {
            throw new a(ex);
        }
        catch (InvocationTargetException ex2) {
            throw new a(ex2);
        }
    }
    
    private static String b(final byte[] array, final String s) throws a {
        try {
            return new String(an.a(array, s), "UTF-8");
        }
        catch (an.a a) {
            throw new a(a);
        }
        catch (ap ap) {
            throw new a(ap);
        }
        catch (UnsupportedEncodingException ex) {
            throw new a(ex);
        }
    }
    
    protected static void b(final String p0, final Context p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             Lcom/google/ads/ak;.class
        //     2: monitorenter   
        //     3: getstatic       com/google/ads/ak.c:Z
        //     6: istore_3       
        //     7: iload_3        
        //     8: ifne            32
        //    11: aload_0        
        //    12: putstatic       com/google/ads/ak.i:Ljava/lang/String;
        //    15: aload_1        
        //    16: invokestatic    com/google/ads/ak.f:(Landroid/content/Context;)V
        //    19: invokestatic    com/google/ads/ak.b:()Ljava/lang/Long;
        //    22: invokevirtual   java/lang/Long.longValue:()J
        //    25: putstatic       com/google/ads/ak.j:J
        //    28: iconst_1       
        //    29: putstatic       com/google/ads/ak.c:Z
        //    32: ldc             Lcom/google/ads/ak;.class
        //    34: monitorexit    
        //    35: return         
        //    36: astore_2       
        //    37: ldc             Lcom/google/ads/ak;.class
        //    39: monitorexit    
        //    40: aload_2        
        //    41: athrow         
        //    42: astore          5
        //    44: goto            32
        //    47: astore          4
        //    49: goto            32
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  3      7      36     42     Any
        //  11     32     47     52     Lcom/google/ads/ak$a;
        //  11     32     42     47     Ljava/lang/UnsupportedOperationException;
        //  11     32     36     42     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0032:
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
    
    static String c() throws a {
        if (ak.e == null) {
            throw new a();
        }
        try {
            return (String)ak.e.invoke(null, new Object[0]);
        }
        catch (IllegalAccessException ex) {
            throw new a(ex);
        }
        catch (InvocationTargetException ex2) {
            throw new a(ex2);
        }
    }
    
    static String d(final Context context) throws a {
        if (ak.h == null) {
            throw new a();
        }
        String s;
        try {
            s = (String)ak.h.invoke(null, context);
            if (s == null) {
                throw new a();
            }
        }
        catch (IllegalAccessException ex) {
            throw new a(ex);
        }
        catch (InvocationTargetException ex2) {
            throw new a(ex2);
        }
        return s;
    }
    
    static String e(final Context context) throws a {
        if (ak.f == null) {
            throw new a();
        }
        try {
            if (ak.f.invoke(null, context) == null) {
                throw new a();
            }
            goto Label_0055;
        }
        catch (IllegalAccessException ex) {
            throw new a(ex);
        }
        catch (InvocationTargetException ex2) {
            throw new a(ex2);
        }
    }
    
    private static void f(final Context context) throws a {
        try {
            an.a(an.a(ao.a()), ao.b());
            File file = context.getCacheDir();
            if (file != null) {
                goto Label_0063;
            }
            file = context.getDir("dex", 0);
            if (file == null) {
                throw new a();
            }
            goto Label_0063;
        }
        catch (ap ap) {
            throw new a(ap);
        }
        catch (FileNotFoundException ex) {
            throw new a(ex);
        }
        catch (IOException ex2) {
            throw new a(ex2);
        }
        catch (ClassNotFoundException ex3) {
            throw new a(ex3);
        }
        catch (an.a a) {
            throw new a(a);
        }
        catch (NoSuchMethodException ex4) {
            throw new a(ex4);
        }
        catch (NullPointerException ex5) {
            throw new a(ex5);
        }
    }
    
    @Override
    protected void b(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: iconst_1       
        //     2: invokestatic    com/google/ads/ak.c:()Ljava/lang/String;
        //     5: invokevirtual   com/google/ads/ak.a:(ILjava/lang/String;)V
        //     8: aload_0        
        //     9: iconst_2       
        //    10: invokestatic    com/google/ads/ak.a:()Ljava/lang/String;
        //    13: invokevirtual   com/google/ads/ak.a:(ILjava/lang/String;)V
        //    16: aload_0        
        //    17: bipush          25
        //    19: invokestatic    com/google/ads/ak.b:()Ljava/lang/Long;
        //    22: invokevirtual   java/lang/Long.longValue:()J
        //    25: invokevirtual   com/google/ads/ak.a:(IJ)V
        //    28: aload_0        
        //    29: bipush          24
        //    31: aload_1        
        //    32: invokestatic    com/google/ads/ak.d:(Landroid/content/Context;)Ljava/lang/String;
        //    35: invokevirtual   com/google/ads/ak.a:(ILjava/lang/String;)V
        //    38: return         
        //    39: astore          6
        //    41: return         
        //    42: astore          5
        //    44: return         
        //    45: astore          4
        //    47: goto            28
        //    50: astore_3       
        //    51: goto            16
        //    54: astore_2       
        //    55: goto            8
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      8      54     58     Lcom/google/ads/ak$a;
        //  0      8      39     42     Ljava/io/IOException;
        //  8      16     50     54     Lcom/google/ads/ak$a;
        //  8      16     39     42     Ljava/io/IOException;
        //  16     28     45     50     Lcom/google/ads/ak$a;
        //  16     28     39     42     Ljava/io/IOException;
        //  28     38     42     45     Lcom/google/ads/ak$a;
        //  28     38     39     42     Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0008:
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
    
    @Override
    protected void c(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: iconst_2       
        //     2: invokestatic    com/google/ads/ak.a:()Ljava/lang/String;
        //     5: invokevirtual   com/google/ads/ak.a:(ILjava/lang/String;)V
        //     8: aload_0        
        //     9: iconst_1       
        //    10: invokestatic    com/google/ads/ak.c:()Ljava/lang/String;
        //    13: invokevirtual   com/google/ads/ak.a:(ILjava/lang/String;)V
        //    16: invokestatic    com/google/ads/ak.b:()Ljava/lang/Long;
        //    19: invokevirtual   java/lang/Long.longValue:()J
        //    22: lstore          9
        //    24: aload_0        
        //    25: bipush          25
        //    27: lload           9
        //    29: invokevirtual   com/google/ads/ak.a:(IJ)V
        //    32: getstatic       com/google/ads/ak.j:J
        //    35: lconst_0       
        //    36: lcmp           
        //    37: ifeq            61
        //    40: aload_0        
        //    41: bipush          17
        //    43: lload           9
        //    45: getstatic       com/google/ads/ak.j:J
        //    48: lsub           
        //    49: invokevirtual   com/google/ads/ak.a:(IJ)V
        //    52: aload_0        
        //    53: bipush          23
        //    55: getstatic       com/google/ads/ak.j:J
        //    58: invokevirtual   com/google/ads/ak.a:(IJ)V
        //    61: aload_0        
        //    62: getfield        com/google/ads/ak.a:Landroid/view/MotionEvent;
        //    65: aload_0        
        //    66: getfield        com/google/ads/ak.b:Landroid/util/DisplayMetrics;
        //    69: invokestatic    com/google/ads/ak.a:(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
        //    72: astore          8
        //    74: aload_0        
        //    75: bipush          14
        //    77: aload           8
        //    79: iconst_0       
        //    80: invokevirtual   java/util/ArrayList.get:(I)Ljava/lang/Object;
        //    83: checkcast       Ljava/lang/Long;
        //    86: invokevirtual   java/lang/Long.longValue:()J
        //    89: invokevirtual   com/google/ads/ak.a:(IJ)V
        //    92: aload_0        
        //    93: bipush          15
        //    95: aload           8
        //    97: iconst_1       
        //    98: invokevirtual   java/util/ArrayList.get:(I)Ljava/lang/Object;
        //   101: checkcast       Ljava/lang/Long;
        //   104: invokevirtual   java/lang/Long.longValue:()J
        //   107: invokevirtual   com/google/ads/ak.a:(IJ)V
        //   110: aload           8
        //   112: invokevirtual   java/util/ArrayList.size:()I
        //   115: iconst_3       
        //   116: if_icmplt       137
        //   119: aload_0        
        //   120: bipush          16
        //   122: aload           8
        //   124: iconst_2       
        //   125: invokevirtual   java/util/ArrayList.get:(I)Ljava/lang/Object;
        //   128: checkcast       Ljava/lang/Long;
        //   131: invokevirtual   java/lang/Long.longValue:()J
        //   134: invokevirtual   com/google/ads/ak.a:(IJ)V
        //   137: aload_0        
        //   138: bipush          27
        //   140: aload_1        
        //   141: invokestatic    com/google/ads/ak.e:(Landroid/content/Context;)Ljava/lang/String;
        //   144: invokevirtual   com/google/ads/ak.a:(ILjava/lang/String;)V
        //   147: return         
        //   148: astore          7
        //   150: return         
        //   151: astore          6
        //   153: return         
        //   154: astore          5
        //   156: goto            137
        //   159: astore          4
        //   161: goto            61
        //   164: astore_3       
        //   165: goto            16
        //   168: astore_2       
        //   169: goto            8
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      8      168    172    Lcom/google/ads/ak$a;
        //  0      8      148    151    Ljava/io/IOException;
        //  8      16     164    168    Lcom/google/ads/ak$a;
        //  8      16     148    151    Ljava/io/IOException;
        //  16     61     159    164    Lcom/google/ads/ak$a;
        //  16     61     148    151    Ljava/io/IOException;
        //  61     137    154    159    Lcom/google/ads/ak$a;
        //  61     137    148    151    Ljava/io/IOException;
        //  137    147    151    154    Lcom/google/ads/ak$a;
        //  137    147    148    151    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0008:
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
    
    static class a extends Exception
    {
        public a() {
            super();
        }
        
        public a(final Throwable cause) {
            super(cause);
        }
    }
}
