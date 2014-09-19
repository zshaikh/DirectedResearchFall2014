package com.flurry.android;

final class cj extends bk
{
    private /* synthetic */ String eE;
    private /* synthetic */ InstallReceiver eF;
    
    cj(final InstallReceiver ef, final String ee) {
        this.eF = ef;
        this.eE = ee;
        super();
    }
    
    @Override
    public final void a() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/flurry/android/cj.eF:Lcom/flurry/android/InstallReceiver;
        //     4: invokestatic    com/flurry/android/InstallReceiver.a:(Lcom/flurry/android/InstallReceiver;)Ljava/io/File;
        //     7: invokevirtual   java/io/File.getParentFile:()Ljava/io/File;
        //    10: astore          4
        //    12: new             Ljava/lang/StringBuilder;
        //    15: dup            
        //    16: invokespecial   java/lang/StringBuilder.<init>:()V
        //    19: ldc             "dir is..."
        //    21: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    24: aload           4
        //    26: invokevirtual   java/io/File.toString:()Ljava/lang/String;
        //    29: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    32: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    35: pop            
        //    36: aload           4
        //    38: invokevirtual   java/io/File.mkdirs:()Z
        //    41: ifne            82
        //    44: aload           4
        //    46: invokevirtual   java/io/File.exists:()Z
        //    49: ifne            82
        //    52: ldc             "InstallReceiver"
        //    54: new             Ljava/lang/StringBuilder;
        //    57: dup            
        //    58: invokespecial   java/lang/StringBuilder.<init>:()V
        //    61: ldc             "Unable to create persistent dir: "
        //    63: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    66: aload           4
        //    68: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    71: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    74: invokestatic    com/flurry/android/db.d:(Ljava/lang/String;Ljava/lang/String;)V
        //    77: aconst_null    
        //    78: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    81: return         
        //    82: new             Ljava/io/FileOutputStream;
        //    85: dup            
        //    86: aload_0        
        //    87: getfield        com/flurry/android/cj.eF:Lcom/flurry/android/InstallReceiver;
        //    90: invokestatic    com/flurry/android/InstallReceiver.a:(Lcom/flurry/android/InstallReceiver;)Ljava/io/File;
        //    93: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //    96: astore_2       
        //    97: aload_2        
        //    98: aload_0        
        //    99: getfield        com/flurry/android/cj.eE:Ljava/lang/String;
        //   102: invokevirtual   java/lang/String.getBytes:()[B
        //   105: invokevirtual   java/io/FileOutputStream.write:([B)V
        //   108: aload_0        
        //   109: getfield        com/flurry/android/cj.eF:Lcom/flurry/android/InstallReceiver;
        //   112: invokestatic    com/flurry/android/InstallReceiver.a:(Lcom/flurry/android/InstallReceiver;)Ljava/io/File;
        //   115: invokestatic    com/flurry/android/InstallReceiver.c:(Ljava/io/File;)Ljava/lang/String;
        //   118: invokestatic    com/flurry/android/InstallReceiver.e:(Ljava/lang/String;)Ljava/util/Map;
        //   121: invokeinterface java/util/Map.entrySet:()Ljava/util/Set;
        //   126: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //   131: astore          6
        //   133: aload           6
        //   135: invokeinterface java/util/Iterator.hasNext:()Z
        //   140: ifeq            216
        //   143: aload           6
        //   145: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   150: checkcast       Ljava/util/Map$Entry;
        //   153: astore          7
        //   155: new             Ljava/lang/StringBuilder;
        //   158: dup            
        //   159: invokespecial   java/lang/StringBuilder.<init>:()V
        //   162: ldc             "entry: "
        //   164: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   167: aload           7
        //   169: invokeinterface java/util/Map$Entry.getKey:()Ljava/lang/Object;
        //   174: checkcast       Ljava/lang/String;
        //   177: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   180: ldc             "="
        //   182: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   185: aload           7
        //   187: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
        //   192: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   195: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   198: pop            
        //   199: goto            133
        //   202: astore_1       
        //   203: ldc             "InstallReceiver"
        //   205: ldc             ""
        //   207: aload_1        
        //   208: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   211: aload_2        
        //   212: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   215: return         
        //   216: aload_2        
        //   217: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   220: return         
        //   221: astore_3       
        //   222: aconst_null    
        //   223: astore_2       
        //   224: aload_2        
        //   225: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   228: aload_3        
        //   229: athrow         
        //   230: astore_3       
        //   231: goto            224
        //   234: astore_1       
        //   235: aconst_null    
        //   236: astore_2       
        //   237: goto            203
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      77     234    240    Ljava/lang/Throwable;
        //  0      77     221    224    Any
        //  82     97     234    240    Ljava/lang/Throwable;
        //  82     97     221    224    Any
        //  97     133    202    203    Ljava/lang/Throwable;
        //  97     133    230    234    Any
        //  133    199    202    203    Ljava/lang/Throwable;
        //  133    199    230    234    Any
        //  203    211    230    234    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0133:
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
