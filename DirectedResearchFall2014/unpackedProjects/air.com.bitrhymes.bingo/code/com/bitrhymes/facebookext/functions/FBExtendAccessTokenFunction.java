package com.bitrhymes.facebookext.functions;

import com.adobe.fre.*;

public class FBExtendAccessTokenFunction implements FREFunction
{
    public static String accessTokenStr;
    public static String appID;
    public static String expiresTime;
    
    @Override
    public FREObject call(final FREContext p0, final FREObject[] p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: putstatic       com/bitrhymes/facebookext/FacebookExt.context:Lcom/adobe/fre/FREContext;
        //     4: aload_2        
        //     5: iconst_0       
        //     6: aaload         
        //     7: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    10: putstatic       com/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction.appID:Ljava/lang/String;
        //    13: aload_2        
        //    14: iconst_1       
        //    15: aaload         
        //    16: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    19: putstatic       com/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction.accessTokenStr:Ljava/lang/String;
        //    22: aload_2        
        //    23: iconst_2       
        //    24: aaload         
        //    25: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    28: putstatic       com/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction.expiresTime:Ljava/lang/String;
        //    31: aload_1        
        //    32: invokevirtual   com/adobe/fre/FREContext.getActivity:()Landroid/app/Activity;
        //    35: invokevirtual   android/app/Activity.getApplicationContext:()Landroid/content/Context;
        //    38: astore          6
        //    40: getstatic       com/bitrhymes/facebookext/FacebookExtContext.session:Lcom/facebook/Session;
        //    43: ifnonnull       200
        //    46: new             Lcom/facebook/Session$Builder;
        //    49: dup            
        //    50: aload           6
        //    52: invokespecial   com/facebook/Session$Builder.<init>:(Landroid/content/Context;)V
        //    55: getstatic       com/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction.appID:Ljava/lang/String;
        //    58: invokevirtual   com/facebook/Session$Builder.setApplicationId:(Ljava/lang/String;)Lcom/facebook/Session$Builder;
        //    61: invokevirtual   com/facebook/Session$Builder.build:()Lcom/facebook/Session;
        //    64: astore          7
        //    66: aload           7
        //    68: putstatic       com/bitrhymes/facebookext/FacebookExtContext.session:Lcom/facebook/Session;
        //    71: getstatic       com/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction.accessTokenStr:Ljava/lang/String;
        //    74: ifnull          160
        //    77: getstatic       com/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction.accessTokenStr:Ljava/lang/String;
        //    80: invokevirtual   java/lang/String.length:()I
        //    83: ifle            160
        //    86: ldc             "FBAuthorize, existing accesstoken"
        //    88: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //    91: aload           6
        //    93: ldc             "facebook-session"
        //    95: iconst_0       
        //    96: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
        //    99: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //   104: astore          8
        //   106: aload           8
        //   108: ldc             "access_token"
        //   110: aconst_null    
        //   111: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //   116: pop            
        //   117: aload           8
        //   119: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
        //   124: pop            
        //   125: getstatic       com/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction.accessTokenStr:Ljava/lang/String;
        //   128: aconst_null    
        //   129: aconst_null    
        //   130: aconst_null    
        //   131: aconst_null    
        //   132: invokestatic    com/facebook/AccessToken.createFromExistingAccessToken:(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;
        //   135: astore          11
        //   137: aload           7
        //   139: invokevirtual   com/facebook/Session.isOpened:()Z
        //   142: ifne            208
        //   145: aload           7
        //   147: aload           11
        //   149: new             Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction$1;
        //   152: dup            
        //   153: aload_0        
        //   154: invokespecial   com/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction$1.<init>:(Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction;)V
        //   157: invokevirtual   com/facebook/Session.open:(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V
        //   160: aconst_null    
        //   161: areturn        
        //   162: astore          5
        //   164: new             Ljava/lang/StringBuilder;
        //   167: dup            
        //   168: ldc             "ERROR - "
        //   170: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   173: aload           5
        //   175: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   178: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   181: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   184: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //   187: goto            31
        //   190: astore          4
        //   192: aload           4
        //   194: invokevirtual   java/lang/IllegalStateException.printStackTrace:()V
        //   197: goto            160
        //   200: getstatic       com/bitrhymes/facebookext/FacebookExtContext.session:Lcom/facebook/Session;
        //   203: astore          7
        //   205: goto            66
        //   208: getstatic       com/bitrhymes/facebookext/FacebookExt.context:Lcom/adobe/fre/FREContext;
        //   211: ldc             "EXTEND_ACCESS_TOKEN_EVENT"
        //   213: new             Ljava/lang/StringBuilder;
        //   216: dup            
        //   217: ldc             "success,"
        //   219: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   222: aload           7
        //   224: invokevirtual   com/facebook/Session.getAccessToken:()Ljava/lang/String;
        //   227: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   230: ldc             ","
        //   232: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   235: aload           7
        //   237: invokevirtual   com/facebook/Session.getExpirationDate:()Ljava/util/Date;
        //   240: invokevirtual   java/util/Date.getTime:()J
        //   243: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   246: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   249: invokevirtual   com/adobe/fre/FREContext.dispatchStatusEventAsync:(Ljava/lang/String;Ljava/lang/String;)V
        //   252: goto            160
        //   255: astore          12
        //   257: aload           12
        //   259: ifnull          328
        //   262: aload           12
        //   264: invokevirtual   java/lang/UnsupportedOperationException.toString:()Ljava/lang/String;
        //   267: astore          13
        //   269: new             Ljava/lang/StringBuilder;
        //   272: dup            
        //   273: ldc             "FBAuthorize, Session migration failed with error: "
        //   275: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   278: aload           13
        //   280: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   283: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   286: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //   289: getstatic       com/bitrhymes/facebookext/FacebookExt.context:Lcom/adobe/fre/FREContext;
        //   292: ldc             "EXTEND_ACCESS_TOKEN_EVENT"
        //   294: new             Ljava/lang/StringBuilder;
        //   297: dup            
        //   298: ldc             "failed,"
        //   300: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   303: aload           12
        //   305: invokevirtual   java/lang/UnsupportedOperationException.toString:()Ljava/lang/String;
        //   308: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   311: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   314: invokevirtual   com/adobe/fre/FREContext.dispatchStatusEventAsync:(Ljava/lang/String;Ljava/lang/String;)V
        //   317: goto            160
        //   320: astore_3       
        //   321: aload_3        
        //   322: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   325: goto            160
        //   328: ldc             "null exception"
        //   330: astore          13
        //   332: goto            269
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  0      4      190    200    Ljava/lang/IllegalStateException;
        //  0      4      320    328    Ljava/lang/Exception;
        //  4      31     162    190    Ljava/lang/Exception;
        //  4      31     190    200    Ljava/lang/IllegalStateException;
        //  31     66     190    200    Ljava/lang/IllegalStateException;
        //  31     66     320    328    Ljava/lang/Exception;
        //  66     137    190    200    Ljava/lang/IllegalStateException;
        //  66     137    320    328    Ljava/lang/Exception;
        //  137    160    255    320    Ljava/lang/UnsupportedOperationException;
        //  137    160    190    200    Ljava/lang/IllegalStateException;
        //  137    160    320    328    Ljava/lang/Exception;
        //  164    187    190    200    Ljava/lang/IllegalStateException;
        //  164    187    320    328    Ljava/lang/Exception;
        //  200    205    190    200    Ljava/lang/IllegalStateException;
        //  200    205    320    328    Ljava/lang/Exception;
        //  208    252    255    320    Ljava/lang/UnsupportedOperationException;
        //  208    252    190    200    Ljava/lang/IllegalStateException;
        //  208    252    320    328    Ljava/lang/Exception;
        //  262    269    190    200    Ljava/lang/IllegalStateException;
        //  262    269    320    328    Ljava/lang/Exception;
        //  269    317    190    200    Ljava/lang/IllegalStateException;
        //  269    317    320    328    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0160:
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
