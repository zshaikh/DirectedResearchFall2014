package com.flurry.android;

import android.os.*;

final class cm extends AsyncTask<Void, Void, Void>
{
    private /* synthetic */ FlurryAds ee;
    
    cm(final FlurryAds ee) {
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
        //     1: getfield        com/flurry/android/cm.ee:Lcom/flurry/android/FlurryAds;
        //     4: invokestatic    com/flurry/android/FlurryAds.a:(Lcom/flurry/android/FlurryAds;)Ljava/io/File;
        //     7: invokevirtual   java/io/File.exists:()Z
        //    10: istore_2       
        //    11: iload_2        
        //    12: ifeq            85
        //    15: new             Ljava/io/DataInputStream;
        //    18: dup            
        //    19: new             Ljava/io/FileInputStream;
        //    22: dup            
        //    23: aload_0        
        //    24: getfield        com/flurry/android/cm.ee:Lcom/flurry/android/FlurryAds;
        //    27: invokestatic    com/flurry/android/FlurryAds.a:(Lcom/flurry/android/FlurryAds;)Ljava/io/File;
        //    30: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //    33: invokespecial   java/io/DataInputStream.<init>:(Ljava/io/InputStream;)V
        //    36: astore_3       
        //    37: aload_3        
        //    38: invokevirtual   java/io/DataInputStream.readUnsignedShort:()I
        //    41: ldc             46586
        //    43: if_icmpne       54
        //    46: aload_0        
        //    47: getfield        com/flurry/android/cm.ee:Lcom/flurry/android/FlurryAds;
        //    50: aload_3        
        //    51: invokevirtual   com/flurry/android/FlurryAds.b:(Ljava/io/DataInputStream;)V
        //    54: aload_3        
        //    55: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    58: aload_0        
        //    59: getfield        com/flurry/android/cm.ee:Lcom/flurry/android/FlurryAds;
        //    62: invokestatic    com/flurry/android/FlurryAds.b:(Lcom/flurry/android/FlurryAds;)Z
        //    65: ifne            85
        //    68: aload_0        
        //    69: getfield        com/flurry/android/cm.ee:Lcom/flurry/android/FlurryAds;
        //    72: invokestatic    com/flurry/android/FlurryAds.a:(Lcom/flurry/android/FlurryAds;)Ljava/io/File;
        //    75: invokevirtual   java/io/File.delete:()Z
        //    78: istore          7
        //    80: iload           7
        //    82: ifne            85
        //    85: aconst_null    
        //    86: areturn        
        //    87: astore          4
        //    89: aconst_null    
        //    90: astore_3       
        //    91: getstatic       com/flurry/android/FlurryAds.d:Ljava/lang/String;
        //    94: ldc             "Error when loading persistent file"
        //    96: aload           4
        //    98: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   101: aload_3        
        //   102: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   105: goto            58
        //   108: astore_1       
        //   109: aload_1        
        //   110: invokevirtual   java/lang/Throwable.printStackTrace:()V
        //   113: aconst_null    
        //   114: areturn        
        //   115: astore          5
        //   117: aconst_null    
        //   118: astore_3       
        //   119: aload_3        
        //   120: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   123: aload           5
        //   125: athrow         
        //   126: astore          6
        //   128: getstatic       com/flurry/android/FlurryAds.d:Ljava/lang/String;
        //   131: ldc             ""
        //   133: aload           6
        //   135: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   138: goto            85
        //   141: astore          5
        //   143: goto            119
        //   146: astore          4
        //   148: goto            91
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      11     108    115    Ljava/lang/Throwable;
        //  15     37     87     91     Ljava/lang/Throwable;
        //  15     37     115    119    Any
        //  37     54     146    151    Ljava/lang/Throwable;
        //  37     54     141    146    Any
        //  54     58     108    115    Ljava/lang/Throwable;
        //  58     80     126    141    Ljava/lang/Throwable;
        //  91     101    141    146    Any
        //  101    105    108    115    Ljava/lang/Throwable;
        //  119    126    108    115    Ljava/lang/Throwable;
        //  128    138    108    115    Ljava/lang/Throwable;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0054:
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
