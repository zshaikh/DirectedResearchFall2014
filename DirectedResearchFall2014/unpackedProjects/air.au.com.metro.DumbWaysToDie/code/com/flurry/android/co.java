package com.flurry.android;

import android.os.*;

final class co extends AsyncTask<Void, Void, Void>
{
    private /* synthetic */ FlurryAds ee;
    
    co(final FlurryAds ee) {
        this.ee = ee;
        super();
    }
    
    private Void ar() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/flurry/android/co.ee:Lcom/flurry/android/FlurryAds;
        //     4: invokestatic    com/flurry/android/FlurryAds.c:(Lcom/flurry/android/FlurryAds;)Ljava/io/File;
        //     7: invokevirtual   java/io/File.exists:()Z
        //    10: istore_2       
        //    11: iload_2        
        //    12: ifeq            76
        //    15: new             Ljava/io/DataInputStream;
        //    18: dup            
        //    19: new             Ljava/io/FileInputStream;
        //    22: dup            
        //    23: aload_0        
        //    24: getfield        com/flurry/android/co.ee:Lcom/flurry/android/FlurryAds;
        //    27: invokestatic    com/flurry/android/FlurryAds.c:(Lcom/flurry/android/FlurryAds;)Ljava/io/File;
        //    30: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //    33: invokespecial   java/io/DataInputStream.<init>:(Ljava/io/InputStream;)V
        //    36: astore_3       
        //    37: aload_0        
        //    38: getfield        com/flurry/android/co.ee:Lcom/flurry/android/FlurryAds;
        //    41: aload_3        
        //    42: invokevirtual   com/flurry/android/FlurryAds.c:(Ljava/io/DataInputStream;)V
        //    45: aload_3        
        //    46: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    49: aload_0        
        //    50: getfield        com/flurry/android/co.ee:Lcom/flurry/android/FlurryAds;
        //    53: invokestatic    com/flurry/android/FlurryAds.d:(Lcom/flurry/android/FlurryAds;)Z
        //    56: ifne            117
        //    59: aload_0        
        //    60: getfield        com/flurry/android/co.ee:Lcom/flurry/android/FlurryAds;
        //    63: invokestatic    com/flurry/android/FlurryAds.c:(Lcom/flurry/android/FlurryAds;)Ljava/io/File;
        //    66: invokevirtual   java/io/File.delete:()Z
        //    69: istore          7
        //    71: iload           7
        //    73: ifne            76
        //    76: aconst_null    
        //    77: areturn        
        //    78: astore          4
        //    80: aconst_null    
        //    81: astore_3       
        //    82: getstatic       com/flurry/android/FlurryAds.d:Ljava/lang/String;
        //    85: ldc             "Error when loading persistent freqCap file"
        //    87: aload           4
        //    89: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //    92: aload_3        
        //    93: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    96: goto            49
        //    99: astore_1       
        //   100: aload_1        
        //   101: invokevirtual   java/lang/Throwable.printStackTrace:()V
        //   104: aconst_null    
        //   105: areturn        
        //   106: astore          5
        //   108: aconst_null    
        //   109: astore_3       
        //   110: aload_3        
        //   111: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   114: aload           5
        //   116: athrow         
        //   117: aload_0        
        //   118: getfield        com/flurry/android/co.ee:Lcom/flurry/android/FlurryAds;
        //   121: getfield        com/flurry/android/FlurryAds.cM:Lcom/flurry/android/FlurryFreqCapManager;
        //   124: invokevirtual   com/flurry/android/FlurryFreqCapManager.ap:()V
        //   127: goto            76
        //   130: astore          6
        //   132: getstatic       com/flurry/android/FlurryAds.d:Ljava/lang/String;
        //   135: ldc             ""
        //   137: aload           6
        //   139: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   142: goto            76
        //   145: astore          5
        //   147: goto            110
        //   150: astore          4
        //   152: goto            82
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      11     99     106    Ljava/lang/Throwable;
        //  15     37     78     82     Ljava/lang/Throwable;
        //  15     37     106    110    Any
        //  37     45     150    155    Ljava/lang/Throwable;
        //  37     45     145    150    Any
        //  45     49     99     106    Ljava/lang/Throwable;
        //  49     71     130    145    Ljava/lang/Throwable;
        //  82     92     145    150    Any
        //  92     96     99     106    Ljava/lang/Throwable;
        //  110    117    99     106    Ljava/lang/Throwable;
        //  117    127    130    145    Ljava/lang/Throwable;
        //  132    142    99     106    Ljava/lang/Throwable;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0049:
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
}
