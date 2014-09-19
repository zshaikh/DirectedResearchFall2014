package com.bitrhymes.flurry;

import com.adobe.fre.*;

public class LogEvent2 implements FREFunction
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
        //     6: astore          13
        //     8: aload_2        
        //     9: iconst_1       
        //    10: aaload         
        //    11: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    14: astore          14
        //    16: aload_2        
        //    17: iconst_3       
        //    18: aaload         
        //    19: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    22: astore          15
        //    24: aload           15
        //    26: ifnull          136
        //    29: aload           15
        //    31: invokevirtual   java/lang/String.length:()I
        //    34: ifle            136
        //    37: aload           15
        //    39: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //    42: istore          32
        //    44: iconst_0       
        //    45: istore          33
        //    47: iload           32
        //    49: iconst_1       
        //    50: if_icmpne       56
        //    53: iconst_1       
        //    54: istore          33
        //    56: aload           14
        //    58: ldc             ","
        //    60: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
        //    63: astore          34
        //    65: new             Ljava/util/HashMap;
        //    68: dup            
        //    69: invokespecial   java/util/HashMap.<init>:()V
        //    72: astore          17
        //    74: iconst_0       
        //    75: istore          35
        //    77: iload           35
        //    79: aload           34
        //    81: arraylength    
        //    82: if_icmplt       112
        //    85: aload           13
        //    87: aload           17
        //    89: iload           33
        //    91: invokestatic    com/flurry/android/FlurryAgent.logEvent:(Ljava/lang/String;Ljava/util/Map;Z)V
        //    94: aload           17
        //    96: pop            
        //    97: aload_0        
        //    98: invokevirtual   java/lang/Object.getClass:()Ljava/lang/Class;
        //   101: invokevirtual   java/lang/Class.getSimpleName:()Ljava/lang/String;
        //   104: ldc             "end of flurry request"
        //   106: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   109: pop            
        //   110: aconst_null    
        //   111: areturn        
        //   112: aload           17
        //   114: aload           34
        //   116: iload           35
        //   118: aaload         
        //   119: aload           34
        //   121: iload           35
        //   123: iconst_1       
        //   124: iadd           
        //   125: aaload         
        //   126: invokevirtual   java/util/HashMap.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   129: pop            
        //   130: iinc            35, 2
        //   133: goto            77
        //   136: aload           14
        //   138: ldc             ","
        //   140: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
        //   143: astore          16
        //   145: new             Ljava/util/HashMap;
        //   148: dup            
        //   149: invokespecial   java/util/HashMap.<init>:()V
        //   152: astore          17
        //   154: iconst_0       
        //   155: istore          18
        //   157: iload           18
        //   159: aload           16
        //   161: arraylength    
        //   162: if_icmplt       178
        //   165: aload           13
        //   167: aload           17
        //   169: invokestatic    com/flurry/android/FlurryAgent.logEvent:(Ljava/lang/String;Ljava/util/Map;)V
        //   172: aload           17
        //   174: pop            
        //   175: goto            97
        //   178: aload           17
        //   180: aload           16
        //   182: iload           18
        //   184: aaload         
        //   185: aload           16
        //   187: iload           18
        //   189: iconst_1       
        //   190: iadd           
        //   191: aaload         
        //   192: invokevirtual   java/util/HashMap.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   195: pop            
        //   196: iinc            18, 2
        //   199: goto            157
        //   202: astore          11
        //   204: aload           11
        //   206: astore          12
        //   208: aload           12
        //   210: invokevirtual   java/lang/IllegalStateException.printStackTrace:()V
        //   213: aload_1        
        //   214: ldc             "ERROR_EVENT"
        //   216: new             Ljava/lang/StringBuilder;
        //   219: dup            
        //   220: aload           12
        //   222: invokevirtual   java/lang/IllegalStateException.toString:()Ljava/lang/String;
        //   225: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   228: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   231: ldc             ","
        //   233: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   236: aload           12
        //   238: invokevirtual   java/lang/IllegalStateException.getMessage:()Ljava/lang/String;
        //   241: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   244: ldc             ","
        //   246: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   249: aload           12
        //   251: invokevirtual   java/lang/IllegalStateException.getLocalizedMessage:()Ljava/lang/String;
        //   254: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   257: ldc             ","
        //   259: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   262: aload           12
        //   264: invokestatic    com/bitrhymes/flurry/Utils.getExceptionStackTraceAsString:(Ljava/lang/Exception;)Ljava/lang/String;
        //   267: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   270: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   273: invokevirtual   com/adobe/fre/FREContext.dispatchStatusEventAsync:(Ljava/lang/String;Ljava/lang/String;)V
        //   276: goto            110
        //   279: astore          9
        //   281: aload           9
        //   283: astore          10
        //   285: aload           10
        //   287: invokevirtual   com/adobe/fre/FRETypeMismatchException.printStackTrace:()V
        //   290: aload_1        
        //   291: ldc             "ERROR_EVENT"
        //   293: new             Ljava/lang/StringBuilder;
        //   296: dup            
        //   297: aload           10
        //   299: invokevirtual   com/adobe/fre/FRETypeMismatchException.toString:()Ljava/lang/String;
        //   302: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   305: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   308: ldc             ","
        //   310: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   313: aload           10
        //   315: invokevirtual   com/adobe/fre/FRETypeMismatchException.getMessage:()Ljava/lang/String;
        //   318: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   321: ldc             ","
        //   323: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   326: aload           10
        //   328: invokevirtual   com/adobe/fre/FRETypeMismatchException.getLocalizedMessage:()Ljava/lang/String;
        //   331: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   334: ldc             ","
        //   336: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   339: aload           10
        //   341: invokestatic    com/bitrhymes/flurry/Utils.getExceptionStackTraceAsString:(Ljava/lang/Exception;)Ljava/lang/String;
        //   344: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   347: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   350: invokevirtual   com/adobe/fre/FREContext.dispatchStatusEventAsync:(Ljava/lang/String;Ljava/lang/String;)V
        //   353: goto            110
        //   356: astore          7
        //   358: aload           7
        //   360: astore          8
        //   362: aload           8
        //   364: invokevirtual   com/adobe/fre/FREInvalidObjectException.printStackTrace:()V
        //   367: aload_1        
        //   368: ldc             "ERROR_EVENT"
        //   370: new             Ljava/lang/StringBuilder;
        //   373: dup            
        //   374: aload           8
        //   376: invokevirtual   com/adobe/fre/FREInvalidObjectException.toString:()Ljava/lang/String;
        //   379: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   382: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   385: ldc             ","
        //   387: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   390: aload           8
        //   392: invokevirtual   com/adobe/fre/FREInvalidObjectException.getMessage:()Ljava/lang/String;
        //   395: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   398: ldc             ","
        //   400: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   403: aload           8
        //   405: invokevirtual   com/adobe/fre/FREInvalidObjectException.getLocalizedMessage:()Ljava/lang/String;
        //   408: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   411: ldc             ","
        //   413: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   416: aload           8
        //   418: invokestatic    com/bitrhymes/flurry/Utils.getExceptionStackTraceAsString:(Ljava/lang/Exception;)Ljava/lang/String;
        //   421: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   424: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   427: invokevirtual   com/adobe/fre/FREContext.dispatchStatusEventAsync:(Ljava/lang/String;Ljava/lang/String;)V
        //   430: goto            110
        //   433: astore          5
        //   435: aload           5
        //   437: astore          6
        //   439: aload           6
        //   441: invokevirtual   com/adobe/fre/FREWrongThreadException.printStackTrace:()V
        //   444: aload_1        
        //   445: ldc             "ERROR_EVENT"
        //   447: new             Ljava/lang/StringBuilder;
        //   450: dup            
        //   451: aload           6
        //   453: invokevirtual   com/adobe/fre/FREWrongThreadException.toString:()Ljava/lang/String;
        //   456: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   459: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   462: ldc             ","
        //   464: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   467: aload           6
        //   469: invokevirtual   com/adobe/fre/FREWrongThreadException.getMessage:()Ljava/lang/String;
        //   472: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   475: ldc             ","
        //   477: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   480: aload           6
        //   482: invokevirtual   com/adobe/fre/FREWrongThreadException.getLocalizedMessage:()Ljava/lang/String;
        //   485: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   488: ldc             ","
        //   490: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   493: aload           6
        //   495: invokestatic    com/bitrhymes/flurry/Utils.getExceptionStackTraceAsString:(Ljava/lang/Exception;)Ljava/lang/String;
        //   498: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   501: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   504: invokevirtual   com/adobe/fre/FREContext.dispatchStatusEventAsync:(Ljava/lang/String;Ljava/lang/String;)V
        //   507: goto            110
        //   510: astore_3       
        //   511: aload_3        
        //   512: astore          4
        //   514: aload           4
        //   516: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   519: aload_1        
        //   520: ldc             "ERROR_EVENT"
        //   522: new             Ljava/lang/StringBuilder;
        //   525: dup            
        //   526: aload           4
        //   528: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   531: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   534: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   537: ldc             ","
        //   539: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   542: aload           4
        //   544: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   547: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   550: ldc             ","
        //   552: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   555: aload           4
        //   557: invokevirtual   java/lang/Exception.getLocalizedMessage:()Ljava/lang/String;
        //   560: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   563: ldc             ","
        //   565: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   568: aload           4
        //   570: invokestatic    com/bitrhymes/flurry/Utils.getExceptionStackTraceAsString:(Ljava/lang/Exception;)Ljava/lang/String;
        //   573: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   576: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   579: invokevirtual   com/adobe/fre/FREContext.dispatchStatusEventAsync:(Ljava/lang/String;Ljava/lang/String;)V
        //   582: goto            110
        //   585: astore          27
        //   587: aload           27
        //   589: astore          4
        //   591: aload           17
        //   593: pop            
        //   594: goto            514
        //   597: astore          25
        //   599: aload           25
        //   601: astore          6
        //   603: aload           17
        //   605: pop            
        //   606: goto            439
        //   609: astore          23
        //   611: aload           23
        //   613: astore          8
        //   615: aload           17
        //   617: pop            
        //   618: goto            362
        //   621: astore          21
        //   623: aload           21
        //   625: astore          10
        //   627: aload           17
        //   629: pop            
        //   630: goto            285
        //   633: astore          19
        //   635: aload           19
        //   637: astore          12
        //   639: aload           17
        //   641: pop            
        //   642: goto            208
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  0      24     202    208    Ljava/lang/IllegalStateException;
        //  0      24     279    285    Lcom/adobe/fre/FRETypeMismatchException;
        //  0      24     356    362    Lcom/adobe/fre/FREInvalidObjectException;
        //  0      24     433    439    Lcom/adobe/fre/FREWrongThreadException;
        //  0      24     510    514    Ljava/lang/Exception;
        //  29     44     202    208    Ljava/lang/IllegalStateException;
        //  29     44     279    285    Lcom/adobe/fre/FRETypeMismatchException;
        //  29     44     356    362    Lcom/adobe/fre/FREInvalidObjectException;
        //  29     44     433    439    Lcom/adobe/fre/FREWrongThreadException;
        //  29     44     510    514    Ljava/lang/Exception;
        //  56     74     202    208    Ljava/lang/IllegalStateException;
        //  56     74     279    285    Lcom/adobe/fre/FRETypeMismatchException;
        //  56     74     356    362    Lcom/adobe/fre/FREInvalidObjectException;
        //  56     74     433    439    Lcom/adobe/fre/FREWrongThreadException;
        //  56     74     510    514    Ljava/lang/Exception;
        //  77     94     633    645    Ljava/lang/IllegalStateException;
        //  77     94     621    633    Lcom/adobe/fre/FRETypeMismatchException;
        //  77     94     609    621    Lcom/adobe/fre/FREInvalidObjectException;
        //  77     94     597    609    Lcom/adobe/fre/FREWrongThreadException;
        //  77     94     585    597    Ljava/lang/Exception;
        //  97     110    202    208    Ljava/lang/IllegalStateException;
        //  97     110    279    285    Lcom/adobe/fre/FRETypeMismatchException;
        //  97     110    356    362    Lcom/adobe/fre/FREInvalidObjectException;
        //  97     110    433    439    Lcom/adobe/fre/FREWrongThreadException;
        //  97     110    510    514    Ljava/lang/Exception;
        //  112    130    633    645    Ljava/lang/IllegalStateException;
        //  112    130    621    633    Lcom/adobe/fre/FRETypeMismatchException;
        //  112    130    609    621    Lcom/adobe/fre/FREInvalidObjectException;
        //  112    130    597    609    Lcom/adobe/fre/FREWrongThreadException;
        //  112    130    585    597    Ljava/lang/Exception;
        //  136    154    202    208    Ljava/lang/IllegalStateException;
        //  136    154    279    285    Lcom/adobe/fre/FRETypeMismatchException;
        //  136    154    356    362    Lcom/adobe/fre/FREInvalidObjectException;
        //  136    154    433    439    Lcom/adobe/fre/FREWrongThreadException;
        //  136    154    510    514    Ljava/lang/Exception;
        //  157    172    633    645    Ljava/lang/IllegalStateException;
        //  157    172    621    633    Lcom/adobe/fre/FRETypeMismatchException;
        //  157    172    609    621    Lcom/adobe/fre/FREInvalidObjectException;
        //  157    172    597    609    Lcom/adobe/fre/FREWrongThreadException;
        //  157    172    585    597    Ljava/lang/Exception;
        //  178    196    633    645    Ljava/lang/IllegalStateException;
        //  178    196    621    633    Lcom/adobe/fre/FRETypeMismatchException;
        //  178    196    609    621    Lcom/adobe/fre/FREInvalidObjectException;
        //  178    196    597    609    Lcom/adobe/fre/FREWrongThreadException;
        //  178    196    585    597    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0077:
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
