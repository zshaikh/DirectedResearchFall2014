package com.freshplanet.ane.AirChartboost.functions;

import com.adobe.fre.*;

public class HasCachedInterstitialFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext p0, final FREObject[] p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_2        
        //     1: arraylength    
        //     2: ifle            49
        //     5: aload_2        
        //     6: iconst_0       
        //     7: aaload         
        //     8: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    11: astore          7
        //    13: invokestatic    com/chartboost/sdk/Chartboost.sharedChartboost:()Lcom/chartboost/sdk/Chartboost;
        //    16: aload           7
        //    18: invokevirtual   com/chartboost/sdk/Chartboost.hasCachedInterstitial:(Ljava/lang/String;)Z
        //    21: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //    24: astore_3       
        //    25: aload_3        
        //    26: invokevirtual   java/lang/Boolean.booleanValue:()Z
        //    29: invokestatic    com/adobe/fre/FREObject.newObject:(Z)Lcom/adobe/fre/FREObject;
        //    32: astore          5
        //    34: aload           5
        //    36: areturn        
        //    37: astore          6
        //    39: aload           6
        //    41: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //    44: invokestatic    com/freshplanet/ane/AirChartboost/AirChartboostExtension.log:(Ljava/lang/String;)V
        //    47: aconst_null    
        //    48: areturn        
        //    49: invokestatic    com/chartboost/sdk/Chartboost.sharedChartboost:()Lcom/chartboost/sdk/Chartboost;
        //    52: invokevirtual   com/chartboost/sdk/Chartboost.hasCachedInterstitial:()Z
        //    55: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //    58: astore_3       
        //    59: goto            25
        //    62: astore          4
        //    64: aload           4
        //    66: invokevirtual   com/adobe/fre/FREWrongThreadException.getMessage:()Ljava/lang/String;
        //    69: invokestatic    com/freshplanet/ane/AirChartboost/AirChartboostExtension.log:(Ljava/lang/String;)V
        //    72: aconst_null    
        //    73: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                   
        //  -----  -----  -----  -----  ---------------------------------------
        //  5      13     37     49     Ljava/lang/Exception;
        //  25     34     62     74     Lcom/adobe/fre/FREWrongThreadException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0025:
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
