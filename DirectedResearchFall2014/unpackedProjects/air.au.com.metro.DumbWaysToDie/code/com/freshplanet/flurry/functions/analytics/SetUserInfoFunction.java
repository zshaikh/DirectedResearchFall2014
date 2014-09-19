package com.freshplanet.flurry.functions.analytics;

import com.adobe.fre.*;

public class SetUserInfoFunction implements FREFunction
{
    private static String TAG;
    
    static {
        SetUserInfoFunction.TAG = "SetUserInfoFunction";
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
        //     3: invokevirtual   com/adobe/fre/FREObject.getAsInt:()I
        //     6: istore          25
        //     8: iload           25
        //    10: istore          4
        //    12: iload           4
        //    14: ifle            203
        //    17: getstatic       com/freshplanet/flurry/functions/analytics/SetUserInfoFunction.TAG:Ljava/lang/String;
        //    20: new             Ljava/lang/StringBuilder;
        //    23: dup            
        //    24: invokespecial   java/lang/StringBuilder.<init>:()V
        //    27: ldc             "age: "
        //    29: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    32: iload           4
        //    34: invokestatic    java/lang/Integer.toString:(I)Ljava/lang/String;
        //    37: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    40: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    43: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    46: pop            
        //    47: iload           4
        //    49: invokestatic    com/flurry/android/FlurryAgent.setAge:(I)V
        //    52: iconst_0       
        //    53: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //    56: astore          6
        //    58: aload_2        
        //    59: iconst_1       
        //    60: aaload         
        //    61: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    64: astore          14
        //    66: getstatic       com/freshplanet/flurry/functions/analytics/SetUserInfoFunction.TAG:Ljava/lang/String;
        //    69: new             Ljava/lang/StringBuilder;
        //    72: dup            
        //    73: invokespecial   java/lang/StringBuilder.<init>:()V
        //    76: ldc             "gender: "
        //    78: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    81: aload           14
        //    83: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    86: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    89: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    92: pop            
        //    93: aload           14
        //    95: ldc             "m"
        //    97: invokevirtual   java/lang/String.compareTo:(Ljava/lang/String;)I
        //   100: ifne            215
        //   103: getstatic       com/freshplanet/flurry/functions/analytics/SetUserInfoFunction.TAG:Ljava/lang/String;
        //   106: ldc             "gender Male"
        //   108: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   111: pop            
        //   112: iconst_1       
        //   113: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   116: astore          19
        //   118: aload           19
        //   120: astore          6
        //   122: iconst_1       
        //   123: istore          8
        //   125: aload           6
        //   127: invokevirtual   java/lang/Boolean.booleanValue:()Z
        //   130: ifeq            315
        //   133: iload           8
        //   135: invokestatic    com/flurry/android/FlurryAgent.setGender:(B)V
        //   138: aconst_null    
        //   139: areturn        
        //   140: astore          24
        //   142: aload           24
        //   144: invokevirtual   java/lang/IllegalStateException.printStackTrace:()V
        //   147: iconst_0       
        //   148: istore          4
        //   150: goto            12
        //   153: astore          23
        //   155: aload           23
        //   157: invokevirtual   com/adobe/fre/FRETypeMismatchException.printStackTrace:()V
        //   160: iconst_0       
        //   161: istore          4
        //   163: goto            12
        //   166: astore          22
        //   168: aload           22
        //   170: invokevirtual   com/adobe/fre/FREInvalidObjectException.printStackTrace:()V
        //   173: iconst_0       
        //   174: istore          4
        //   176: goto            12
        //   179: astore          21
        //   181: aload           21
        //   183: invokevirtual   com/adobe/fre/FREWrongThreadException.printStackTrace:()V
        //   186: iconst_0       
        //   187: istore          4
        //   189: goto            12
        //   192: astore_3       
        //   193: aload_3        
        //   194: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   197: iconst_0       
        //   198: istore          4
        //   200: goto            12
        //   203: getstatic       com/freshplanet/flurry/functions/analytics/SetUserInfoFunction.TAG:Ljava/lang/String;
        //   206: ldc             "age is null"
        //   208: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   211: pop            
        //   212: goto            52
        //   215: aload           14
        //   217: ldc             "f"
        //   219: invokevirtual   java/lang/String.compareTo:(Ljava/lang/String;)I
        //   222: ifne            309
        //   225: getstatic       com/freshplanet/flurry/functions/analytics/SetUserInfoFunction.TAG:Ljava/lang/String;
        //   228: ldc             "gender Female"
        //   230: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   233: pop            
        //   234: iconst_1       
        //   235: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   238: astore          17
        //   240: aload           17
        //   242: astore          6
        //   244: iconst_0       
        //   245: istore          8
        //   247: goto            125
        //   250: astore          13
        //   252: aload           13
        //   254: invokevirtual   java/lang/IllegalStateException.printStackTrace:()V
        //   257: iconst_0       
        //   258: istore          8
        //   260: goto            125
        //   263: astore          12
        //   265: aload           12
        //   267: invokevirtual   com/adobe/fre/FRETypeMismatchException.printStackTrace:()V
        //   270: iconst_0       
        //   271: istore          8
        //   273: goto            125
        //   276: astore          11
        //   278: aload           11
        //   280: invokevirtual   com/adobe/fre/FREInvalidObjectException.printStackTrace:()V
        //   283: iconst_0       
        //   284: istore          8
        //   286: goto            125
        //   289: astore          10
        //   291: aload           10
        //   293: invokevirtual   com/adobe/fre/FREWrongThreadException.printStackTrace:()V
        //   296: iconst_0       
        //   297: istore          8
        //   299: goto            125
        //   302: astore          7
        //   304: aload           7
        //   306: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   309: iconst_0       
        //   310: istore          8
        //   312: goto            125
        //   315: getstatic       com/freshplanet/flurry/functions/analytics/SetUserInfoFunction.TAG:Ljava/lang/String;
        //   318: ldc             "gender is null"
        //   320: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   323: pop            
        //   324: goto            138
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  0      8      140    153    Ljava/lang/IllegalStateException;
        //  0      8      153    166    Lcom/adobe/fre/FRETypeMismatchException;
        //  0      8      166    179    Lcom/adobe/fre/FREInvalidObjectException;
        //  0      8      179    192    Lcom/adobe/fre/FREWrongThreadException;
        //  0      8      192    203    Ljava/lang/Exception;
        //  58     118    250    263    Ljava/lang/IllegalStateException;
        //  58     118    263    276    Lcom/adobe/fre/FRETypeMismatchException;
        //  58     118    276    289    Lcom/adobe/fre/FREInvalidObjectException;
        //  58     118    289    302    Lcom/adobe/fre/FREWrongThreadException;
        //  58     118    302    309    Ljava/lang/Exception;
        //  215    240    250    263    Ljava/lang/IllegalStateException;
        //  215    240    263    276    Lcom/adobe/fre/FRETypeMismatchException;
        //  215    240    276    289    Lcom/adobe/fre/FREInvalidObjectException;
        //  215    240    289    302    Lcom/adobe/fre/FREWrongThreadException;
        //  215    240    302    309    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0125:
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
