package com.bitrhymes.flurry;

import com.adobe.fre.*;

public class EndTimedEvent2 implements FREFunction
{
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
        //     6: astore          11
        //     8: aload_2        
        //     9: iconst_1       
        //    10: aaload         
        //    11: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    14: ldc             ","
        //    16: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
        //    19: astore          12
        //    21: new             Ljava/util/HashMap;
        //    24: dup            
        //    25: invokespecial   java/util/HashMap.<init>:()V
        //    28: astore          13
        //    30: iconst_0       
        //    31: istore          14
        //    33: iload           14
        //    35: aload           12
        //    37: arraylength    
        //    38: if_icmplt       64
        //    41: aload           11
        //    43: aload           13
        //    45: invokestatic    com/flurry/android/FlurryAgent.endTimedEvent:(Ljava/lang/String;Ljava/util/Map;)V
        //    48: aload_0        
        //    49: invokevirtual   java/lang/Object.getClass:()Ljava/lang/Class;
        //    52: invokevirtual   java/lang/Class.getSimpleName:()Ljava/lang/String;
        //    55: ldc             "end of flurry request"
        //    57: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //    60: pop            
        //    61: goto            430
        //    64: aload           13
        //    66: aload           12
        //    68: iload           14
        //    70: aaload         
        //    71: aload           12
        //    73: iload           14
        //    75: iconst_1       
        //    76: iadd           
        //    77: aaload         
        //    78: invokevirtual   java/util/HashMap.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //    81: pop            
        //    82: iinc            14, 2
        //    85: goto            33
        //    88: astore          9
        //    90: aload           9
        //    92: astore          10
        //    94: aload           10
        //    96: invokevirtual   java/lang/IllegalStateException.printStackTrace:()V
        //    99: aload_1        
        //   100: ldc             "ERROR_EVENT"
        //   102: new             Ljava/lang/StringBuilder;
        //   105: dup            
        //   106: aload           10
        //   108: invokevirtual   java/lang/IllegalStateException.toString:()Ljava/lang/String;
        //   111: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   114: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   117: ldc             ","
        //   119: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   122: aload           10
        //   124: invokevirtual   java/lang/IllegalStateException.getMessage:()Ljava/lang/String;
        //   127: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   130: ldc             ","
        //   132: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   135: aload           10
        //   137: invokevirtual   java/lang/IllegalStateException.getLocalizedMessage:()Ljava/lang/String;
        //   140: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   143: ldc             ","
        //   145: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   148: aload           10
        //   150: invokestatic    com/bitrhymes/flurry/Utils.getExceptionStackTraceAsString:(Ljava/lang/Exception;)Ljava/lang/String;
        //   153: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   156: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   159: invokevirtual   com/adobe/fre/FREContext.dispatchStatusEventAsync:(Ljava/lang/String;Ljava/lang/String;)V
        //   162: goto            430
        //   165: astore          7
        //   167: aload           7
        //   169: astore          8
        //   171: aload           8
        //   173: invokevirtual   com/adobe/fre/FRETypeMismatchException.printStackTrace:()V
        //   176: aload_1        
        //   177: ldc             "ERROR_EVENT"
        //   179: new             Ljava/lang/StringBuilder;
        //   182: dup            
        //   183: aload           8
        //   185: invokevirtual   com/adobe/fre/FRETypeMismatchException.toString:()Ljava/lang/String;
        //   188: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   191: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   194: ldc             ","
        //   196: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   199: aload           8
        //   201: invokevirtual   com/adobe/fre/FRETypeMismatchException.getMessage:()Ljava/lang/String;
        //   204: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   207: ldc             ","
        //   209: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   212: aload           8
        //   214: invokevirtual   com/adobe/fre/FRETypeMismatchException.getLocalizedMessage:()Ljava/lang/String;
        //   217: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   220: ldc             ","
        //   222: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   225: aload           8
        //   227: invokestatic    com/bitrhymes/flurry/Utils.getExceptionStackTraceAsString:(Ljava/lang/Exception;)Ljava/lang/String;
        //   230: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   233: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   236: invokevirtual   com/adobe/fre/FREContext.dispatchStatusEventAsync:(Ljava/lang/String;Ljava/lang/String;)V
        //   239: goto            430
        //   242: astore          5
        //   244: aload           5
        //   246: astore          6
        //   248: aload           6
        //   250: invokevirtual   com/adobe/fre/FREInvalidObjectException.printStackTrace:()V
        //   253: aload_1        
        //   254: ldc             "ERROR_EVENT"
        //   256: new             Ljava/lang/StringBuilder;
        //   259: dup            
        //   260: aload           6
        //   262: invokevirtual   com/adobe/fre/FREInvalidObjectException.toString:()Ljava/lang/String;
        //   265: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   268: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   271: ldc             ","
        //   273: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   276: aload           6
        //   278: invokevirtual   com/adobe/fre/FREInvalidObjectException.getMessage:()Ljava/lang/String;
        //   281: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   284: ldc             ","
        //   286: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   289: aload           6
        //   291: invokevirtual   com/adobe/fre/FREInvalidObjectException.getLocalizedMessage:()Ljava/lang/String;
        //   294: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   297: ldc             ","
        //   299: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   302: aload           6
        //   304: invokestatic    com/bitrhymes/flurry/Utils.getExceptionStackTraceAsString:(Ljava/lang/Exception;)Ljava/lang/String;
        //   307: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   310: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   313: invokevirtual   com/adobe/fre/FREContext.dispatchStatusEventAsync:(Ljava/lang/String;Ljava/lang/String;)V
        //   316: goto            430
        //   319: astore_3       
        //   320: aload_3        
        //   321: astore          4
        //   323: aload           4
        //   325: invokevirtual   com/adobe/fre/FREWrongThreadException.printStackTrace:()V
        //   328: aload_1        
        //   329: ldc             "ERROR_EVENT"
        //   331: new             Ljava/lang/StringBuilder;
        //   334: dup            
        //   335: aload           4
        //   337: invokevirtual   com/adobe/fre/FREWrongThreadException.toString:()Ljava/lang/String;
        //   340: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   343: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   346: ldc             ","
        //   348: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   351: aload           4
        //   353: invokevirtual   com/adobe/fre/FREWrongThreadException.getMessage:()Ljava/lang/String;
        //   356: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   359: ldc             ","
        //   361: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   364: aload           4
        //   366: invokevirtual   com/adobe/fre/FREWrongThreadException.getLocalizedMessage:()Ljava/lang/String;
        //   369: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   372: ldc             ","
        //   374: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   377: aload           4
        //   379: invokestatic    com/bitrhymes/flurry/Utils.getExceptionStackTraceAsString:(Ljava/lang/Exception;)Ljava/lang/String;
        //   382: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   385: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   388: invokevirtual   com/adobe/fre/FREContext.dispatchStatusEventAsync:(Ljava/lang/String;Ljava/lang/String;)V
        //   391: goto            430
        //   394: astore          18
        //   396: aload           18
        //   398: astore          4
        //   400: goto            323
        //   403: astore          17
        //   405: aload           17
        //   407: astore          6
        //   409: goto            248
        //   412: astore          16
        //   414: aload           16
        //   416: astore          8
        //   418: goto            171
        //   421: astore          15
        //   423: aload           15
        //   425: astore          10
        //   427: goto            94
        //   430: aconst_null    
        //   431: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  0      30     88     94     Ljava/lang/IllegalStateException;
        //  0      30     165    171    Lcom/adobe/fre/FRETypeMismatchException;
        //  0      30     242    248    Lcom/adobe/fre/FREInvalidObjectException;
        //  0      30     319    323    Lcom/adobe/fre/FREWrongThreadException;
        //  33     61     421    430    Ljava/lang/IllegalStateException;
        //  33     61     412    421    Lcom/adobe/fre/FRETypeMismatchException;
        //  33     61     403    412    Lcom/adobe/fre/FREInvalidObjectException;
        //  33     61     394    403    Lcom/adobe/fre/FREWrongThreadException;
        //  64     82     421    430    Ljava/lang/IllegalStateException;
        //  64     82     412    421    Lcom/adobe/fre/FRETypeMismatchException;
        //  64     82     403    412    Lcom/adobe/fre/FREInvalidObjectException;
        //  64     82     394    403    Lcom/adobe/fre/FREWrongThreadException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0033:
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
