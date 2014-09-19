package com.fusepowered.m1.android;

import android.content.*;

final class MMConversionTracker
{
    private static final String KEY_REFERRER = "installReferrer";
    
    protected static void trackConversion(final Context p0, final String p1, final MMRequest p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             Lcom/fusepowered/m1/android/MMConversionTracker;.class
        //     2: monitorenter   
        //     3: aload_0        
        //     4: ifnull          22
        //     7: aload_1        
        //     8: ifnull          22
        //    11: aload_1        
        //    12: invokevirtual   java/lang/String.length:()I
        //    15: istore          5
        //    17: iload           5
        //    19: ifne            26
        //    22: ldc             Lcom/fusepowered/m1/android/MMConversionTracker;.class
        //    24: monitorexit    
        //    25: return         
        //    26: aload_0        
        //    27: ldc             "MillennialMediaSettings"
        //    29: iconst_0       
        //    30: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
        //    33: astore          6
        //    35: aload           6
        //    37: new             Ljava/lang/StringBuilder;
        //    40: dup            
        //    41: invokespecial   java/lang/StringBuilder.<init>:()V
        //    44: ldc             "firstLaunch_"
        //    46: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    49: aload_1        
        //    50: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    53: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    56: iconst_1       
        //    57: invokeinterface android/content/SharedPreferences.getBoolean:(Ljava/lang/String;Z)Z
        //    62: istore          7
        //    64: aload           6
        //    66: ldc             "installReferrer"
        //    68: aconst_null    
        //    69: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    74: astore          8
        //    76: new             Ljava/util/TreeMap;
        //    79: dup            
        //    80: invokespecial   java/util/TreeMap.<init>:()V
        //    83: astore          9
        //    85: aload_2        
        //    86: ifnull          100
        //    89: aload_2        
        //    90: aload           9
        //    92: invokevirtual   com/fusepowered/m1/android/MMRequest.getUrlParams:(Ljava/util/Map;)V
        //    95: aload           9
        //    97: invokestatic    com/fusepowered/m1/android/MMRequest.insertLocation:(Ljava/util/Map;)V
        //   100: aload           8
        //   102: ifnull          165
        //   105: aload           8
        //   107: ldc             "&"
        //   109: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
        //   112: astore          10
        //   114: aload           10
        //   116: arraylength    
        //   117: istore          11
        //   119: iconst_0       
        //   120: istore          12
        //   122: iload           12
        //   124: iload           11
        //   126: if_icmpge       165
        //   129: aload           10
        //   131: iload           12
        //   133: aaload         
        //   134: ldc             "="
        //   136: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
        //   139: astore          13
        //   141: aload           13
        //   143: arraylength    
        //   144: iconst_2       
        //   145: if_icmplt       420
        //   148: aload           9
        //   150: aload           13
        //   152: iconst_0       
        //   153: aaload         
        //   154: aload           13
        //   156: iconst_1       
        //   157: aaload         
        //   158: invokevirtual   java/util/TreeMap.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   161: pop            
        //   162: goto            420
        //   165: iload           7
        //   167: ifeq            215
        //   170: aload           6
        //   172: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //   177: astore          15
        //   179: aload           15
        //   181: new             Ljava/lang/StringBuilder;
        //   184: dup            
        //   185: invokespecial   java/lang/StringBuilder.<init>:()V
        //   188: ldc             "firstLaunch_"
        //   190: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   193: aload_1        
        //   194: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   197: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   200: iconst_0       
        //   201: invokeinterface android/content/SharedPreferences$Editor.putBoolean:(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
        //   206: pop            
        //   207: aload           15
        //   209: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
        //   214: pop            
        //   215: aload_0        
        //   216: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //   219: aload_0        
        //   220: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //   223: iconst_0       
        //   224: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
        //   227: astore          38
        //   229: aload           38
        //   231: invokevirtual   java/lang/Object.getClass:()Ljava/lang/Class;
        //   234: ldc             "firstInstallTime"
        //   236: invokevirtual   java/lang/Class.getField:(Ljava/lang/String;)Ljava/lang/reflect/Field;
        //   239: aload           38
        //   241: invokevirtual   java/lang/reflect/Field.getLong:(Ljava/lang/Object;)J
        //   244: lstore          40
        //   246: lload           40
        //   248: lstore          19
        //   250: lload           19
        //   252: lconst_0       
        //   253: lcmp           
        //   254: ifle            413
        //   257: new             Ljava/util/GregorianCalendar;
        //   260: dup            
        //   261: invokespecial   java/util/GregorianCalendar.<init>:()V
        //   264: astore          32
        //   266: aload           32
        //   268: lload           19
        //   270: invokevirtual   java/util/GregorianCalendar.setTimeInMillis:(J)V
        //   273: aload           32
        //   275: ldc             "GMT"
        //   277: invokestatic    java/util/TimeZone.getTimeZone:(Ljava/lang/String;)Ljava/util/TimeZone;
        //   280: invokevirtual   java/util/GregorianCalendar.setTimeZone:(Ljava/util/TimeZone;)V
        //   283: aload           32
        //   285: invokevirtual   java/util/GregorianCalendar.getTimeInMillis:()J
        //   288: lstore          36
        //   290: lload           36
        //   292: lstore          21
        //   294: lload           21
        //   296: lstore          23
        //   298: aload_0        
        //   299: invokestatic    com/fusepowered/m1/android/MMSDK.isConnected:(Landroid/content/Context;)Z
        //   302: ifeq            371
        //   305: aload           9
        //   307: ldc             "ua"
        //   309: new             Ljava/lang/StringBuilder;
        //   312: dup            
        //   313: invokespecial   java/lang/StringBuilder.<init>:()V
        //   316: ldc             "Android:"
        //   318: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   321: getstatic       android/os/Build.MODEL:Ljava/lang/String;
        //   324: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   327: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   330: invokevirtual   java/util/TreeMap.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   333: pop            
        //   334: aload           9
        //   336: ldc             "apid"
        //   338: getstatic       com/fusepowered/m1/android/HandShake.apid:Ljava/lang/String;
        //   341: invokevirtual   java/util/TreeMap.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   344: pop            
        //   345: aload_0        
        //   346: aload           9
        //   348: invokestatic    com/fusepowered/m1/android/MMSDK.insertUrlCommonValues:(Landroid/content/Context;Ljava/util/Map;)V
        //   351: new             Lcom/fusepowered/m1/android/MMConversionTracker$1;
        //   354: dup            
        //   355: aload_1        
        //   356: iload           7
        //   358: lload           23
        //   360: aload           9
        //   362: invokespecial   com/fusepowered/m1/android/MMConversionTracker$1.<init>:(Ljava/lang/String;ZJLjava/util/TreeMap;)V
        //   365: invokestatic    com/fusepowered/m1/android/Utils$ThreadUtils.execute:(Ljava/lang/Runnable;)V
        //   368: goto            426
        //   371: ldc             "No network available for conversion tracking."
        //   373: invokestatic    com/fusepowered/m1/android/MMSDK$Log.w:(Ljava/lang/String;)V
        //   376: goto            426
        //   379: astore          25
        //   381: aload           25
        //   383: astore          4
        //   385: lload           21
        //   387: pop2           
        //   388: ldc             Lcom/fusepowered/m1/android/MMConversionTracker;.class
        //   390: monitorexit    
        //   391: aload           4
        //   393: athrow         
        //   394: astore_3       
        //   395: aload_3        
        //   396: astore          4
        //   398: goto            388
        //   401: astore          33
        //   403: aload           33
        //   405: astore          4
        //   407: lload           19
        //   409: pop2           
        //   410: goto            388
        //   413: lload           19
        //   415: lstore          21
        //   417: goto            294
        //   420: iinc            12, 1
        //   423: goto            122
        //   426: lload           21
        //   428: pop2           
        //   429: goto            22
        //   432: astore          39
        //   434: lconst_0       
        //   435: lstore          19
        //   437: goto            250
        //   440: astore          18
        //   442: lconst_0       
        //   443: lstore          19
        //   445: goto            250
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                     
        //  -----  -----  -----  -----  ---------------------------------------------------------
        //  11     17     394    401    Any
        //  26     85     394    401    Any
        //  89     100    394    401    Any
        //  105    119    394    401    Any
        //  129    162    394    401    Any
        //  170    215    394    401    Any
        //  215    229    440    448    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  215    229    394    401    Any
        //  229    246    432    440    Ljava/lang/Exception;
        //  229    246    440    448    Landroid/content/pm/PackageManager$NameNotFoundException;
        //  229    246    394    401    Any
        //  257    290    401    413    Any
        //  298    368    379    388    Any
        //  371    376    379    388    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0215:
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
