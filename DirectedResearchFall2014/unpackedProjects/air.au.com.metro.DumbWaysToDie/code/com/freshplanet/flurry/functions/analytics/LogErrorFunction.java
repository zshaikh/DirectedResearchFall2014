package com.freshplanet.flurry.functions.analytics;

import com.adobe.fre.*;

public class LogErrorFunction implements FREFunction
{
    private static String TAG;
    
    static {
        LogErrorFunction.TAG = "LogErrorFunction";
    }
    
    @Override
    public FREObject call(final FREContext p0, final FREObject[] p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_2        
        //     1: iconst_0       
        //     2: aaload         
        //     3: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //     6: astore          17
        //     8: aload           17
        //    10: astore          4
        //    12: aload_2        
        //    13: iconst_1       
        //    14: aaload         
        //    15: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    18: astore          12
        //    20: aload           12
        //    22: astore          6
        //    24: aload           4
        //    26: ifnull          173
        //    29: aload           4
        //    31: aload           6
        //    33: ldc             ""
        //    35: invokestatic    com/flurry/android/FlurryAgent.onError:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
        //    38: aconst_null    
        //    39: areturn        
        //    40: astore          16
        //    42: aload           16
        //    44: invokevirtual   java/lang/IllegalStateException.printStackTrace:()V
        //    47: aconst_null    
        //    48: astore          4
        //    50: goto            12
        //    53: astore          15
        //    55: aload           15
        //    57: invokevirtual   com/adobe/fre/FRETypeMismatchException.printStackTrace:()V
        //    60: aconst_null    
        //    61: astore          4
        //    63: goto            12
        //    66: astore          14
        //    68: aload           14
        //    70: invokevirtual   com/adobe/fre/FREInvalidObjectException.printStackTrace:()V
        //    73: aconst_null    
        //    74: astore          4
        //    76: goto            12
        //    79: astore          13
        //    81: aload           13
        //    83: invokevirtual   com/adobe/fre/FREWrongThreadException.printStackTrace:()V
        //    86: aconst_null    
        //    87: astore          4
        //    89: goto            12
        //    92: astore_3       
        //    93: aload_3        
        //    94: invokevirtual   java/lang/Exception.printStackTrace:()V
        //    97: aconst_null    
        //    98: astore          4
        //   100: goto            12
        //   103: astore          11
        //   105: aload           11
        //   107: invokevirtual   java/lang/IllegalStateException.printStackTrace:()V
        //   110: ldc             ""
        //   112: astore          6
        //   114: goto            24
        //   117: astore          10
        //   119: aload           10
        //   121: invokevirtual   com/adobe/fre/FRETypeMismatchException.printStackTrace:()V
        //   124: ldc             ""
        //   126: astore          6
        //   128: goto            24
        //   131: astore          9
        //   133: aload           9
        //   135: invokevirtual   com/adobe/fre/FREInvalidObjectException.printStackTrace:()V
        //   138: ldc             ""
        //   140: astore          6
        //   142: goto            24
        //   145: astore          8
        //   147: aload           8
        //   149: invokevirtual   com/adobe/fre/FREWrongThreadException.printStackTrace:()V
        //   152: ldc             ""
        //   154: astore          6
        //   156: goto            24
        //   159: astore          5
        //   161: aload           5
        //   163: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   166: ldc             ""
        //   168: astore          6
        //   170: goto            24
        //   173: getstatic       com/freshplanet/flurry/functions/analytics/LogErrorFunction.TAG:Ljava/lang/String;
        //   176: ldc             "errorId is null"
        //   178: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   181: pop            
        //   182: aconst_null    
        //   183: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  0      8      40     53     Ljava/lang/IllegalStateException;
        //  0      8      53     66     Lcom/adobe/fre/FRETypeMismatchException;
        //  0      8      66     79     Lcom/adobe/fre/FREInvalidObjectException;
        //  0      8      79     92     Lcom/adobe/fre/FREWrongThreadException;
        //  0      8      92     103    Ljava/lang/Exception;
        //  12     20     103    117    Ljava/lang/IllegalStateException;
        //  12     20     117    131    Lcom/adobe/fre/FRETypeMismatchException;
        //  12     20     131    145    Lcom/adobe/fre/FREInvalidObjectException;
        //  12     20     145    159    Lcom/adobe/fre/FREWrongThreadException;
        //  12     20     159    173    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0012:
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
