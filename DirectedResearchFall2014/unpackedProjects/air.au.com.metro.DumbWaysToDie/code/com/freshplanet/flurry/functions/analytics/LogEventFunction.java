package com.freshplanet.flurry.functions.analytics;

import com.adobe.fre.*;

public class LogEventFunction implements FREFunction
{
    private static String TAG;
    
    static {
        LogEventFunction.TAG = "LogEventFunction";
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
        //     6: astore          32
        //     8: aload           32
        //    10: astore          4
        //    12: new             Ljava/util/HashMap;
        //    15: dup            
        //    16: invokespecial   java/util/HashMap.<init>:()V
        //    19: astore          5
        //    21: aload_2        
        //    22: iconst_1       
        //    23: aaload         
        //    24: ifnull          301
        //    27: aload_2        
        //    28: iconst_2       
        //    29: aaload         
        //    30: ifnull          301
        //    33: aload_2        
        //    34: iconst_1       
        //    35: aaload         
        //    36: checkcast       Lcom/adobe/fre/FREArray;
        //    39: astore          11
        //    41: aload_2        
        //    42: iconst_2       
        //    43: aaload         
        //    44: checkcast       Lcom/adobe/fre/FREArray;
        //    47: astore          12
        //    49: aload           11
        //    51: invokevirtual   com/adobe/fre/FREArray.getLength:()J
        //    54: lstore          18
        //    56: lconst_0       
        //    57: lstore          20
        //    59: lload           20
        //    61: lload           18
        //    63: lcmp           
        //    64: ifge            225
        //    67: aload           11
        //    69: lload           20
        //    71: invokevirtual   com/adobe/fre/FREArray.getObjectAt:(J)Lcom/adobe/fre/FREObject;
        //    74: astore          22
        //    76: aload           12
        //    78: lload           20
        //    80: invokevirtual   com/adobe/fre/FREArray.getObjectAt:(J)Lcom/adobe/fre/FREObject;
        //    83: astore          23
        //    85: aload           22
        //    87: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    90: astore          24
        //    92: aload           23
        //    94: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    97: astore          25
        //    99: getstatic       com/freshplanet/flurry/functions/analytics/LogEventFunction.TAG:Ljava/lang/String;
        //   102: new             Ljava/lang/StringBuilder;
        //   105: dup            
        //   106: invokespecial   java/lang/StringBuilder.<init>:()V
        //   109: ldc             "["
        //   111: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   114: aload           24
        //   116: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   119: ldc             "] -> "
        //   121: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   124: aload           25
        //   126: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   129: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   132: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   135: pop            
        //   136: aload           5
        //   138: aload           24
        //   140: aload           25
        //   142: invokevirtual   java/util/HashMap.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   145: pop            
        //   146: lload           20
        //   148: lconst_1       
        //   149: ladd           
        //   150: lstore          20
        //   152: goto            59
        //   155: astore          31
        //   157: aload           31
        //   159: invokevirtual   java/lang/IllegalStateException.printStackTrace:()V
        //   162: aconst_null    
        //   163: astore          4
        //   165: goto            12
        //   168: astore          30
        //   170: aload           30
        //   172: invokevirtual   com/adobe/fre/FRETypeMismatchException.printStackTrace:()V
        //   175: aconst_null    
        //   176: astore          4
        //   178: goto            12
        //   181: astore          29
        //   183: aload           29
        //   185: invokevirtual   com/adobe/fre/FREInvalidObjectException.printStackTrace:()V
        //   188: aconst_null    
        //   189: astore          4
        //   191: goto            12
        //   194: astore          28
        //   196: aload           28
        //   198: invokevirtual   com/adobe/fre/FREWrongThreadException.printStackTrace:()V
        //   201: aconst_null    
        //   202: astore          4
        //   204: goto            12
        //   207: astore_3       
        //   208: aload_3        
        //   209: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   212: aconst_null    
        //   213: astore          4
        //   215: goto            12
        //   218: astore          17
        //   220: aload           17
        //   222: invokevirtual   com/adobe/fre/FREInvalidObjectException.printStackTrace:()V
        //   225: aload           4
        //   227: ifnull          353
        //   230: aload           5
        //   232: ifnull          337
        //   235: aload           5
        //   237: invokevirtual   java/util/HashMap.size:()I
        //   240: ifle            337
        //   243: getstatic       com/freshplanet/flurry/functions/analytics/LogEventFunction.TAG:Ljava/lang/String;
        //   246: ldc             "log event with params"
        //   248: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   251: pop            
        //   252: aload           4
        //   254: aload           5
        //   256: invokestatic    com/flurry/android/FlurryAgent.logEvent:(Ljava/lang/String;Ljava/util/Map;)V
        //   259: aconst_null    
        //   260: areturn        
        //   261: astore          16
        //   263: aload           16
        //   265: invokevirtual   com/adobe/fre/FREWrongThreadException.printStackTrace:()V
        //   268: goto            225
        //   271: astore          15
        //   273: aload           15
        //   275: invokevirtual   java/lang/IllegalStateException.printStackTrace:()V
        //   278: goto            225
        //   281: astore          14
        //   283: aload           14
        //   285: invokevirtual   com/adobe/fre/FRETypeMismatchException.printStackTrace:()V
        //   288: goto            225
        //   291: astore          13
        //   293: aload           13
        //   295: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   298: goto            225
        //   301: aload_2        
        //   302: iconst_1       
        //   303: aaload         
        //   304: ifnull          319
        //   307: getstatic       com/freshplanet/flurry/functions/analytics/LogEventFunction.TAG:Ljava/lang/String;
        //   310: ldc             "parameterValues is null while parameterKeys is not"
        //   312: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   315: pop            
        //   316: goto            225
        //   319: aload_2        
        //   320: iconst_2       
        //   321: aaload         
        //   322: ifnull          225
        //   325: getstatic       com/freshplanet/flurry/functions/analytics/LogEventFunction.TAG:Ljava/lang/String;
        //   328: ldc             "parameterKeys is null while parameterValues is not"
        //   330: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   333: pop            
        //   334: goto            225
        //   337: getstatic       com/freshplanet/flurry/functions/analytics/LogEventFunction.TAG:Ljava/lang/String;
        //   340: ldc             "log event without params"
        //   342: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   345: pop            
        //   346: aload           4
        //   348: invokestatic    com/flurry/android/FlurryAgent.logEvent:(Ljava/lang/String;)V
        //   351: aconst_null    
        //   352: areturn        
        //   353: getstatic       com/freshplanet/flurry/Extension.TAG:Ljava/lang/String;
        //   356: ldc             "null event name"
        //   358: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   361: pop            
        //   362: aconst_null    
        //   363: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  0      8      155    168    Ljava/lang/IllegalStateException;
        //  0      8      168    181    Lcom/adobe/fre/FRETypeMismatchException;
        //  0      8      181    194    Lcom/adobe/fre/FREInvalidObjectException;
        //  0      8      194    207    Lcom/adobe/fre/FREWrongThreadException;
        //  0      8      207    218    Ljava/lang/Exception;
        //  49     56     218    225    Lcom/adobe/fre/FREInvalidObjectException;
        //  49     56     261    271    Lcom/adobe/fre/FREWrongThreadException;
        //  49     56     271    281    Ljava/lang/IllegalStateException;
        //  49     56     281    291    Lcom/adobe/fre/FRETypeMismatchException;
        //  49     56     291    301    Ljava/lang/Exception;
        //  67     146    218    225    Lcom/adobe/fre/FREInvalidObjectException;
        //  67     146    261    271    Lcom/adobe/fre/FREWrongThreadException;
        //  67     146    271    281    Ljava/lang/IllegalStateException;
        //  67     146    281    291    Lcom/adobe/fre/FRETypeMismatchException;
        //  67     146    291    301    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0059:
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
