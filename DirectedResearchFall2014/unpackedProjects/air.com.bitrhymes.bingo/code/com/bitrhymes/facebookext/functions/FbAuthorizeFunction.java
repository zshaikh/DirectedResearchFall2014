package com.bitrhymes.facebookext.functions;

import android.util.*;
import android.content.*;
import com.bitrhymes.facebookext.*;
import com.adobe.fre.*;

public class FbAuthorizeFunction implements FREFunction
{
    public String accessTokenStr;
    public String appID;
    public String expiresTime;
    public String permissions;
    
    public void authorize() {
        Log.i("FBAuthorization", this.permissions);
        final Intent intent = new Intent(FacebookExt.context.getActivity().getApplicationContext(), (Class)LoginActivity.class);
        intent.putExtra("permissions", Utilities.getStringArray(this.permissions));
        intent.putExtra("reauthorize", false);
        intent.putExtra("type", "read");
        FacebookExt.context.getActivity().startActivity(intent);
    }
    
    @Override
    public FREObject call(final FREContext p0, final FREObject[] p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: putstatic       com/bitrhymes/facebookext/FacebookExt.context:Lcom/adobe/fre/FREContext;
        //     4: aload_0        
        //     5: aload_2        
        //     6: iconst_0       
        //     7: aaload         
        //     8: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    11: putfield        com/bitrhymes/facebookext/functions/FbAuthorizeFunction.appID:Ljava/lang/String;
        //    14: aload_0        
        //    15: aload_2        
        //    16: iconst_1       
        //    17: aaload         
        //    18: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    21: putfield        com/bitrhymes/facebookext/functions/FbAuthorizeFunction.permissions:Ljava/lang/String;
        //    24: aload_0        
        //    25: aload_2        
        //    26: iconst_2       
        //    27: aaload         
        //    28: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    31: putfield        com/bitrhymes/facebookext/functions/FbAuthorizeFunction.accessTokenStr:Ljava/lang/String;
        //    34: aload_0        
        //    35: aload_2        
        //    36: iconst_3       
        //    37: aaload         
        //    38: invokevirtual   com/adobe/fre/FREObject.getAsString:()Ljava/lang/String;
        //    41: putfield        com/bitrhymes/facebookext/functions/FbAuthorizeFunction.expiresTime:Ljava/lang/String;
        //    44: new             Ljava/lang/StringBuilder;
        //    47: dup            
        //    48: ldc             "FBAuthorize appID : "
        //    50: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    53: aload_0        
        //    54: getfield        com/bitrhymes/facebookext/functions/FbAuthorizeFunction.appID:Ljava/lang/String;
        //    57: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    60: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    63: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //    66: new             Ljava/lang/StringBuilder;
        //    69: dup            
        //    70: ldc             "FBAuthorize permissions : "
        //    72: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    75: aload_0        
        //    76: getfield        com/bitrhymes/facebookext/functions/FbAuthorizeFunction.permissions:Ljava/lang/String;
        //    79: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    82: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    85: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //    88: new             Ljava/lang/StringBuilder;
        //    91: dup            
        //    92: ldc             "FBAuthorize accessTokenStr : "
        //    94: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    97: aload_0        
        //    98: getfield        com/bitrhymes/facebookext/functions/FbAuthorizeFunction.accessTokenStr:Ljava/lang/String;
        //   101: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   104: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   107: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //   110: new             Ljava/lang/StringBuilder;
        //   113: dup            
        //   114: ldc             "FBAuthorize expiresTime : "
        //   116: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   119: aload_0        
        //   120: getfield        com/bitrhymes/facebookext/functions/FbAuthorizeFunction.expiresTime:Ljava/lang/String;
        //   123: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   126: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   129: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //   132: aload_1        
        //   133: invokevirtual   com/adobe/fre/FREContext.getActivity:()Landroid/app/Activity;
        //   136: invokevirtual   android/app/Activity.getApplicationContext:()Landroid/content/Context;
        //   139: astore          4
        //   141: getstatic       com/bitrhymes/facebookext/FacebookExtContext.session:Lcom/facebook/Session;
        //   144: ifnonnull       421
        //   147: new             Lcom/facebook/Session$Builder;
        //   150: dup            
        //   151: aload           4
        //   153: invokespecial   com/facebook/Session$Builder.<init>:(Landroid/content/Context;)V
        //   156: aload_0        
        //   157: getfield        com/bitrhymes/facebookext/functions/FbAuthorizeFunction.appID:Ljava/lang/String;
        //   160: invokevirtual   com/facebook/Session$Builder.setApplicationId:(Ljava/lang/String;)Lcom/facebook/Session$Builder;
        //   163: invokevirtual   com/facebook/Session$Builder.build:()Lcom/facebook/Session;
        //   166: astore          5
        //   168: new             Ljava/lang/StringBuilder;
        //   171: dup            
        //   172: ldc             "FBAuthorize session : "
        //   174: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   177: aload           5
        //   179: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   182: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   185: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //   188: new             Ljava/lang/StringBuilder;
        //   191: dup            
        //   192: ldc             "FBAuthorize FacebookExtContext.session : "
        //   194: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   197: getstatic       com/bitrhymes/facebookext/FacebookExtContext.session:Lcom/facebook/Session;
        //   200: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   203: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   206: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //   209: aload           5
        //   211: putstatic       com/bitrhymes/facebookext/FacebookExtContext.session:Lcom/facebook/Session;
        //   214: aload_0        
        //   215: getfield        com/bitrhymes/facebookext/functions/FbAuthorizeFunction.accessTokenStr:Ljava/lang/String;
        //   218: ifnull          311
        //   221: aload_0        
        //   222: getfield        com/bitrhymes/facebookext/functions/FbAuthorizeFunction.accessTokenStr:Ljava/lang/String;
        //   225: invokevirtual   java/lang/String.length:()I
        //   228: ifle            311
        //   231: aload           5
        //   233: invokevirtual   com/facebook/Session.isOpened:()Z
        //   236: ifne            311
        //   239: ldc             "FBAuthorize, existing accesstoken"
        //   241: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //   244: aload           4
        //   246: ldc             "facebook-session"
        //   248: iconst_0       
        //   249: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
        //   252: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //   257: astore          6
        //   259: aload           6
        //   261: ldc             "access_token"
        //   263: aconst_null    
        //   264: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //   269: pop            
        //   270: aload           6
        //   272: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
        //   277: pop            
        //   278: aload_0        
        //   279: getfield        com/bitrhymes/facebookext/functions/FbAuthorizeFunction.accessTokenStr:Ljava/lang/String;
        //   282: aconst_null    
        //   283: aconst_null    
        //   284: aconst_null    
        //   285: aconst_null    
        //   286: invokestatic    com/facebook/AccessToken.createFromExistingAccessToken:(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;
        //   289: astore          9
        //   291: ldc             "FBAuthorize, try"
        //   293: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //   296: aload           5
        //   298: aload           9
        //   300: new             Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction$1;
        //   303: dup            
        //   304: aload_0        
        //   305: invokespecial   com/bitrhymes/facebookext/functions/FbAuthorizeFunction$1.<init>:(Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;)V
        //   308: invokevirtual   com/facebook/Session.open:(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V
        //   311: aload           5
        //   313: invokestatic    com/facebook/Session.setActiveSession:(Lcom/facebook/Session;)V
        //   316: new             Ljava/lang/StringBuilder;
        //   319: dup            
        //   320: ldc             "FBAuthorize - cachedAccessToken="
        //   322: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   325: getstatic       com/bitrhymes/facebookext/FacebookExtContext.session:Lcom/facebook/Session;
        //   328: invokevirtual   com/facebook/Session.getAccessToken:()Ljava/lang/String;
        //   331: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   334: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   337: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //   340: new             Ljava/lang/StringBuilder;
        //   343: dup            
        //   344: ldc             "FBAuthorize - cachedAccessToken="
        //   346: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   349: aload           5
        //   351: invokevirtual   com/facebook/Session.getAccessToken:()Ljava/lang/String;
        //   354: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   357: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   360: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //   363: aload           5
        //   365: putstatic       com/bitrhymes/facebookext/FacebookExtContext.session:Lcom/facebook/Session;
        //   368: new             Ljava/lang/StringBuilder;
        //   371: dup            
        //   372: ldc             "FBAuthorize, session="
        //   374: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   377: getstatic       com/bitrhymes/facebookext/FacebookExtContext.session:Lcom/facebook/Session;
        //   380: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   383: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   386: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //   389: aload_0        
        //   390: invokevirtual   com/bitrhymes/facebookext/functions/FbAuthorizeFunction.authorize:()V
        //   393: aconst_null    
        //   394: areturn        
        //   395: astore_3       
        //   396: new             Ljava/lang/StringBuilder;
        //   399: dup            
        //   400: ldc             "FBAuthorize ERROR - "
        //   402: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   405: aload_3        
        //   406: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   409: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   412: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   415: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //   418: goto            44
        //   421: getstatic       com/bitrhymes/facebookext/FacebookExtContext.session:Lcom/facebook/Session;
        //   424: astore          5
        //   426: goto            168
        //   429: astore          10
        //   431: aload           10
        //   433: ifnull          466
        //   436: aload           10
        //   438: invokevirtual   java/lang/UnsupportedOperationException.toString:()Ljava/lang/String;
        //   441: astore          11
        //   443: new             Ljava/lang/StringBuilder;
        //   446: dup            
        //   447: ldc             "FBAuthorize, Session migration failed with error: "
        //   449: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   452: aload           11
        //   454: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   457: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   460: invokestatic    com/bitrhymes/facebookext/FacebookExt.log:(Ljava/lang/String;)V
        //   463: goto            311
        //   466: ldc             "null exception"
        //   468: astore          11
        //   470: goto            443
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  4      44     395    421    Ljava/lang/Exception;
        //  291    311    429    473    Ljava/lang/UnsupportedOperationException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0311:
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
