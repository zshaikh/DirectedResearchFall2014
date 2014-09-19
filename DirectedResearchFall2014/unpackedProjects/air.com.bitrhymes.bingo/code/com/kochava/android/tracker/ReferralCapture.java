package com.kochava.android.tracker;

import android.content.*;
import android.annotation.*;

public class ReferralCapture extends BroadcastReceiver
{
    private static final String LOGTAG = "KochavaReferralCapture";
    public static String params;
    
    static {
        ReferralCapture.params = "";
    }
    
    @SuppressLint({ "NewApi" })
    public void onReceive(final Context p0, final Intent p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //     3: ifeq            14
        //     6: ldc             "KochavaReferralCapture"
        //     8: ldc             "Referral Capture received an intent:"
        //    10: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    13: pop            
        //    14: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //    17: ifeq            57
        //    20: ldc             "KochavaReferralCapture"
        //    22: new             Ljava/lang/StringBuilder;
        //    25: dup            
        //    26: ldc             "package:"
        //    28: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    31: aload_2        
        //    32: invokevirtual   android/content/Intent.getPackage:()Ljava/lang/String;
        //    35: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    38: ldc             ", action:"
        //    40: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    43: aload_2        
        //    44: invokevirtual   android/content/Intent.getAction:()Ljava/lang/String;
        //    47: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    50: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    53: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    56: pop            
        //    57: aload_2        
        //    58: invokevirtual   android/content/Intent.getExtras:()Landroid/os/Bundle;
        //    61: astore          4
        //    63: aload           4
        //    65: ifnull          75
        //    68: aload           4
        //    70: aconst_null    
        //    71: invokevirtual   android/os/Bundle.containsKey:(Ljava/lang/String;)Z
        //    74: pop            
        //    75: new             Ljava/util/HashMap;
        //    78: dup            
        //    79: invokespecial   java/util/HashMap.<init>:()V
        //    82: astore          6
        //    84: aload_2        
        //    85: invokevirtual   android/content/Intent.getAction:()Ljava/lang/String;
        //    88: ldc             "com.android.vending.INSTALL_REFERRER"
        //    90: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    93: ifne            113
        //    96: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //    99: ifeq            110
        //   102: ldc             "KochavaReferralCapture"
        //   104: ldc             "intent not a referral"
        //   106: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   109: pop            
        //   110: return         
        //   111: astore_3       
        //   112: return         
        //   113: aload_2        
        //   114: ldc             "referrer"
        //   116: invokevirtual   android/content/Intent.getStringExtra:(Ljava/lang/String;)Ljava/lang/String;
        //   119: astore          7
        //   121: aload           7
        //   123: ifnull          134
        //   126: aload           7
        //   128: invokevirtual   java/lang/String.length:()I
        //   131: ifne            149
        //   134: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //   137: ifeq            110
        //   140: ldc             "KochavaReferralCapture"
        //   142: ldc             "referral intent empty"
        //   144: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   147: pop            
        //   148: return         
        //   149: aload           7
        //   151: ldc             "UTF-8"
        //   153: invokestatic    java/net/URLDecoder.decode:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   156: astore          11
        //   158: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //   161: ifeq            187
        //   164: ldc             "KochavaReferralCapture"
        //   166: new             Ljava/lang/StringBuilder;
        //   169: dup            
        //   170: ldc             "referral string: "
        //   172: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   175: aload           11
        //   177: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   180: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   183: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   186: pop            
        //   187: aload           11
        //   189: ldc             "&"
        //   191: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
        //   194: astore          18
        //   196: aload           18
        //   198: arraylength    
        //   199: istore          19
        //   201: iconst_0       
        //   202: istore          20
        //   204: iload           20
        //   206: iload           19
        //   208: if_icmplt       339
        //   211: aload           6
        //   213: invokevirtual   java/lang/Object.toString:()Ljava/lang/String;
        //   216: astore          14
        //   218: aload           14
        //   220: iconst_1       
        //   221: aload           14
        //   223: invokevirtual   java/lang/String.length:()I
        //   226: iconst_1       
        //   227: isub           
        //   228: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //   231: ldc             ", "
        //   233: ldc             "&"
        //   235: invokevirtual   java/lang/String.replace:(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
        //   238: ldc             "="
        //   240: ldc             ":"
        //   242: invokevirtual   java/lang/String.replace:(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
        //   245: astore          15
        //   247: aload_1        
        //   248: ldc             "initPrefs"
        //   250: iconst_0       
        //   251: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
        //   254: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //   259: ldc             "initData"
        //   261: aload           15
        //   263: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //   268: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
        //   273: pop            
        //   274: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //   277: ifeq            110
        //   280: ldc             "KochavaReferralCapture"
        //   282: new             Ljava/lang/StringBuilder;
        //   285: dup            
        //   286: ldc             "Setting referral global string: "
        //   288: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   291: aload           15
        //   293: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   296: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   299: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   302: pop            
        //   303: return         
        //   304: astore          9
        //   306: getstatic       com/kochava/android/tracker/Global.DEBUGERROR:Z
        //   309: ifeq            110
        //   312: ldc             "KochavaReferralCapture"
        //   314: new             Ljava/lang/StringBuilder;
        //   317: dup            
        //   318: ldc             "Error within ReferralCapture: "
        //   320: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   323: aload           9
        //   325: invokevirtual   java/io/UnsupportedEncodingException.getMessage:()Ljava/lang/String;
        //   328: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   331: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   334: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   337: pop            
        //   338: return         
        //   339: aload           18
        //   341: iload           20
        //   343: aaload         
        //   344: ldc             "="
        //   346: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
        //   349: astore          21
        //   351: aload           21
        //   353: arraylength    
        //   354: iconst_1       
        //   355: if_icmpne       375
        //   358: aload           6
        //   360: aload           21
        //   362: iconst_0       
        //   363: aaload         
        //   364: ldc             ""
        //   366: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   371: pop            
        //   372: goto            431
        //   375: aload           6
        //   377: aload           21
        //   379: iconst_0       
        //   380: aaload         
        //   381: aload           21
        //   383: iconst_1       
        //   384: aaload         
        //   385: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   390: pop            
        //   391: goto            431
        //   394: astore          12
        //   396: getstatic       com/kochava/android/tracker/Global.DEBUG:Z
        //   399: ifeq            211
        //   402: ldc             "KochavaReferralCapture"
        //   404: new             Ljava/lang/StringBuilder;
        //   407: dup            
        //   408: ldc             "Error within ReferralCapture: "
        //   410: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   413: aload           12
        //   415: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
        //   418: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   421: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   424: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   427: pop            
        //   428: goto            211
        //   431: iinc            20, 1
        //   434: goto            204
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                  
        //  -----  -----  -----  -----  --------------------------------------
        //  57     63     111    113    Ljava/lang/Exception;
        //  68     75     111    113    Ljava/lang/Exception;
        //  149    158    304    339    Ljava/io/UnsupportedEncodingException;
        //  187    201    394    431    Ljava/lang/Exception;
        //  339    372    394    431    Ljava/lang/Exception;
        //  375    391    394    431    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0187:
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
