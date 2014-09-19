package com.applovin.impl.sdk;

import java.util.*;
import android.content.*;

class a
{
    private static final Map a;
    
    static {
        a = new HashMap();
    }
    
    static Map a(final AppLovinSdkImpl appLovinSdkImpl) {
        return a("ad_data_cache", appLovinSdkImpl);
    }
    
    private static Map a(final String p0, final AppLovinSdkImpl p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/applovin/impl/sdk/a.a:Ljava/util/Map;
        //     3: astore_2       
        //     4: aload_2        
        //     5: monitorenter   
        //     6: getstatic       com/applovin/impl/sdk/a.a:Ljava/util/Map;
        //     9: aload_0        
        //    10: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    15: checkcast       Ljava/util/Map;
        //    18: astore          4
        //    20: aload_2        
        //    21: monitorexit    
        //    22: aload           4
        //    24: ifnonnull       187
        //    27: aload_1        
        //    28: invokevirtual   com/applovin/impl/sdk/AppLovinSdkImpl.getSettingsManager:()Lcom/applovin/impl/sdk/y;
        //    31: invokevirtual   com/applovin/impl/sdk/y.a:()Landroid/content/SharedPreferences;
        //    34: astore          5
        //    36: aload           5
        //    38: aload_0        
        //    39: ldc             ""
        //    41: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    46: astore          6
        //    48: aload           6
        //    50: ifnull          187
        //    53: aload           6
        //    55: invokevirtual   java/lang/String.length:()I
        //    58: ifle            187
        //    61: new             Ljava/util/HashMap;
        //    64: dup            
        //    65: invokespecial   java/util/HashMap.<init>:()V
        //    68: astore          7
        //    70: aload           6
        //    72: ldc             "&"
        //    74: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
        //    77: astore          13
        //    79: aload           13
        //    81: arraylength    
        //    82: istore          14
        //    84: iconst_0       
        //    85: istore          15
        //    87: iload           15
        //    89: iload           14
        //    91: if_icmpge       115
        //    94: aload           13
        //    96: iload           15
        //    98: aaload         
        //    99: aload           7
        //   101: invokestatic    com/applovin/impl/sdk/a.a:(Ljava/lang/String;Ljava/util/Map;)V
        //   104: iinc            15, 1
        //   107: goto            87
        //   110: astore_3       
        //   111: aload_2        
        //   112: monitorexit    
        //   113: aload_3        
        //   114: athrow         
        //   115: getstatic       com/applovin/impl/sdk/a.a:Ljava/util/Map;
        //   118: astore          16
        //   120: aload           16
        //   122: monitorenter   
        //   123: getstatic       com/applovin/impl/sdk/a.a:Ljava/util/Map;
        //   126: aload_0        
        //   127: aload           7
        //   129: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   134: pop            
        //   135: aload           16
        //   137: monitorexit    
        //   138: aload_1        
        //   139: invokevirtual   com/applovin/impl/sdk/AppLovinSdkImpl.getLogger:()Lcom/applovin/sdk/AppLovinLogger;
        //   142: ldc             "AdDataCache"
        //   144: new             Ljava/lang/StringBuilder;
        //   147: dup            
        //   148: invokespecial   java/lang/StringBuilder.<init>:()V
        //   151: aload           7
        //   153: invokeinterface java/util/Map.size:()I
        //   158: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   161: ldc             " "
        //   163: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   166: aload_0        
        //   167: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   170: ldc             " entries loaded from cache"
        //   172: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   175: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   178: invokeinterface com/applovin/sdk/AppLovinLogger.d:(Ljava/lang/String;Ljava/lang/String;)V
        //   183: aload           7
        //   185: astore          4
        //   187: aload           4
        //   189: ifnull          266
        //   192: new             Ljava/util/HashMap;
        //   195: dup            
        //   196: aload           4
        //   198: invokespecial   java/util/HashMap.<init>:(Ljava/util/Map;)V
        //   201: areturn        
        //   202: astore          17
        //   204: aload           16
        //   206: monitorexit    
        //   207: aload           17
        //   209: athrow         
        //   210: astore          8
        //   212: aload           7
        //   214: astore          9
        //   216: aload_1        
        //   217: invokevirtual   com/applovin/impl/sdk/AppLovinSdkImpl.getLogger:()Lcom/applovin/sdk/AppLovinLogger;
        //   220: ldc             "AdDataCache"
        //   222: ldc             "Unable to load ad data"
        //   224: aload           8
        //   226: invokeinterface com/applovin/sdk/AppLovinLogger.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   231: aload           5
        //   233: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //   238: astore          10
        //   240: aload           10
        //   242: aload_0        
        //   243: ldc             ""
        //   245: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //   250: pop            
        //   251: aload           10
        //   253: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
        //   258: pop            
        //   259: aload           9
        //   261: astore          4
        //   263: goto            187
        //   266: new             Ljava/util/HashMap;
        //   269: dup            
        //   270: invokespecial   java/util/HashMap.<init>:()V
        //   273: areturn        
        //   274: astore          19
        //   276: aload           4
        //   278: astore          9
        //   280: aload           19
        //   282: astore          8
        //   284: goto            216
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  6      22     110    115    Any
        //  61     70     274    287    Ljava/lang/Exception;
        //  70     84     210    216    Ljava/lang/Exception;
        //  94     104    210    216    Ljava/lang/Exception;
        //  111    113    110    115    Any
        //  115    123    210    216    Ljava/lang/Exception;
        //  123    138    202    210    Any
        //  138    183    210    216    Ljava/lang/Exception;
        //  204    207    202    210    Any
        //  207    210    210    216    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0087:
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
    
    private static void a(final String s, final Map map) {
        final String[] split = s.split("=");
        if (split.length == 2) {
            map.put(split[0], split[1]);
        }
    }
    
    static void a(final Map map, final AppLovinSdkImpl appLovinSdkImpl) {
        a(map, "ad_data_cache", appLovinSdkImpl);
    }
    
    private static void a(final Map map, final String str, final AppLovinSdkImpl appLovinSdkImpl) {
        if (map == null) {
            throw new IllegalArgumentException("No ad aata specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        try {
            synchronized (com.applovin.impl.sdk.a.a) {
                Map map2 = com.applovin.impl.sdk.a.a.get(str);
                if (map2 == null) {
                    map2 = new HashMap();
                }
                map2.clear();
                map2.putAll(map);
                com.applovin.impl.sdk.a.a.put(str, map2);
                // monitorexit(a.a)
                final SharedPreferences$Editor edit = appLovinSdkImpl.getSettingsManager().a().edit();
                edit.putString(str, bc.a(map));
                edit.commit();
                appLovinSdkImpl.getLogger().d("AdDataCache", map.size() + " " + str + " entries saved in cache");
            }
        }
        catch (Exception ex) {
            appLovinSdkImpl.getLogger().e("AdDataCache", "Unable to save ad data entries", ex);
        }
    }
}
