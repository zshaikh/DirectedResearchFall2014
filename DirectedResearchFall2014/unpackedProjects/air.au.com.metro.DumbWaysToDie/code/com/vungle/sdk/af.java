package com.vungle.sdk;

import android.content.*;

public final class af
{
    final Context a;
    private VungleCache b;
    private Object c;
    
    af(final Context context) {
        super();
        this.c = new Object();
        this.a = context.getApplicationContext();
    }
    
    final VungleCache a() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/vungle/sdk/af.c:Ljava/lang/Object;
        //     4: astore_1       
        //     5: aload_1        
        //     6: monitorenter   
        //     7: aload_0        
        //     8: getfield        com/vungle/sdk/af.b:Lcom/vungle/sdk/VungleCache;
        //    11: astore_3       
        //    12: aload_3        
        //    13: ifnonnull       27
        //    16: aload_0        
        //    17: new             Lcom/vungle/sdk/VungleCache;
        //    20: dup            
        //    21: invokespecial   com/vungle/sdk/VungleCache.<init>:()V
        //    24: putfield        com/vungle/sdk/af.b:Lcom/vungle/sdk/VungleCache;
        //    27: aload_0        
        //    28: getfield        com/vungle/sdk/af.b:Lcom/vungle/sdk/VungleCache;
        //    31: astore          4
        //    33: aload_1        
        //    34: monitorexit    
        //    35: aload           4
        //    37: areturn        
        //    38: astore_2       
        //    39: aload_1        
        //    40: monitorexit    
        //    41: aload_2        
        //    42: athrow         
        //    43: astore          5
        //    45: goto            27
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                          
        //  -----  -----  -----  -----  ------------------------------
        //  7      12     38     43     Any
        //  16     27     43     48     Lcom/vungle/sdk/VungleCache$d;
        //  16     27     38     43     Any
        //  27     35     38     43     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0027:
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
