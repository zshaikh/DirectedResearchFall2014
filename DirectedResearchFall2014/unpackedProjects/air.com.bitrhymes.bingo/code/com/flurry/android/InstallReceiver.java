package com.flurry.android;

import android.os.*;
import java.net.*;
import java.util.*;
import android.util.*;
import android.content.*;
import java.io.*;

public final class InstallReceiver extends BroadcastReceiver
{
    private final Handler aG;
    private File eq;
    
    public InstallReceiver() {
        super();
        this.eq = null;
        final HandlerThread handlerThread = new HandlerThread("InstallReceiver");
        handlerThread.start();
        this.aG = new Handler(handlerThread.getLooper());
    }
    
    private static String a(final File p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/io/FileInputStream;
        //     3: dup            
        //     4: aload_0        
        //     5: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //     8: astore_1       
        //     9: new             Ljava/lang/StringBuffer;
        //    12: dup            
        //    13: invokespecial   java/lang/StringBuffer.<init>:()V
        //    16: astore_2       
        //    17: sipush          1024
        //    20: newarray        B
        //    22: astore          10
        //    24: aload_1        
        //    25: aload           10
        //    27: invokevirtual   java/io/FileInputStream.read:([B)I
        //    30: istore          11
        //    32: iload           11
        //    34: ifle            94
        //    37: aload_2        
        //    38: new             Ljava/lang/String;
        //    41: dup            
        //    42: aload           10
        //    44: iconst_0       
        //    45: iload           11
        //    47: invokespecial   java/lang/String.<init>:([BII)V
        //    50: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //    53: pop            
        //    54: goto            24
        //    57: astore          6
        //    59: aload_1        
        //    60: astore          7
        //    62: aload           6
        //    64: astore          8
        //    66: ldc             "InstallReceiver"
        //    68: ldc             "Error when loading persistent file"
        //    70: aload           8
        //    72: invokestatic    com/flurry/android/db.b:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //    75: aload           7
        //    77: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    80: aload_2        
        //    81: astore          9
        //    83: aload           9
        //    85: ifnull          117
        //    88: aload           9
        //    90: invokevirtual   java/lang/StringBuffer.toString:()Ljava/lang/String;
        //    93: areturn        
        //    94: aload_1        
        //    95: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //    98: aload_2        
        //    99: astore          9
        //   101: goto            83
        //   104: astore          5
        //   106: aconst_null    
        //   107: astore          4
        //   109: aload           4
        //   111: invokestatic    com/flurry/android/bd.a:(Ljava/io/Closeable;)V
        //   114: aload           5
        //   116: athrow         
        //   117: aconst_null    
        //   118: areturn        
        //   119: astore_3       
        //   120: aload_1        
        //   121: astore          4
        //   123: aload_3        
        //   124: astore          5
        //   126: goto            109
        //   129: astore          5
        //   131: aload           7
        //   133: astore          4
        //   135: goto            109
        //   138: astore          8
        //   140: aconst_null    
        //   141: astore_2       
        //   142: aconst_null    
        //   143: astore          7
        //   145: goto            66
        //   148: astore          13
        //   150: aload_1        
        //   151: astore          7
        //   153: aload           13
        //   155: astore          8
        //   157: aconst_null    
        //   158: astore_2       
        //   159: goto            66
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      9      138    148    Ljava/lang/Throwable;
        //  0      9      104    109    Any
        //  9      17     148    162    Ljava/lang/Throwable;
        //  9      17     119    129    Any
        //  17     24     57     66     Ljava/lang/Throwable;
        //  17     24     119    129    Any
        //  24     32     57     66     Ljava/lang/Throwable;
        //  24     32     119    129    Any
        //  37     54     57     66     Ljava/lang/Throwable;
        //  37     54     119    129    Any
        //  66     75     129    138    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0024:
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
    
    static Map<String, List<String>> e(final String str) {
        final HashMap<String, List<String>> hashMap = new HashMap<String, List<String>>();
        final String[] split = str.split("&");
        for (int length = split.length, i = 0; i < length; ++i) {
            final String[] split2 = split[i].split("=");
            if (split2.length != 2) {
                db.c("InstallReceiver", "Invalid referrer Element: " + split[i] + " in referrer tag " + str);
            }
            else {
                final String decode = URLDecoder.decode(split2[0]);
                final String decode2 = URLDecoder.decode(split2[1]);
                if (hashMap.get(decode) == null) {
                    hashMap.put(decode, new ArrayList<String>());
                }
                hashMap.get(decode).add(decode2);
            }
        }
        final StringBuilder sb = new StringBuilder();
        if (hashMap.get("utm_source") == null) {
            sb.append("Campaign Source is missing.\n");
        }
        if (hashMap.get("utm_medium") == null) {
            sb.append("Campaign Medium is missing.\n");
        }
        if (hashMap.get("utm_campaign") == null) {
            sb.append("Campaign Name is missing.\n");
        }
        if (sb.length() > 0) {
            Log.w("Detected missing referrer keys", sb.toString());
        }
        return hashMap;
    }
    
    private void x(final String s) {
        synchronized (this) {
            this.aG.post((Runnable)new cj(this, s));
        }
    }
    
    public final void onReceive(final Context context, final Intent intent) {
        db.e("InstallReceiver", "Received an Install nofication of " + intent.getAction());
        this.eq = context.getFileStreamPath(".flurryinstallreceiver.");
        db.e("InstallReceiver", "fInstallReceiverFile is " + this.eq);
        if (FlurryAgent.isCaptureUncaughtExceptions()) {
            Thread.setDefaultUncaughtExceptionHandler((Thread.UncaughtExceptionHandler)new FlurryAgent$FlurryDefaultExceptionHandler());
        }
        String s = intent.getExtras().getString("referrer");
        db.e("InstallReceiver", "Received an Install referrer of " + s);
        if (s == null || !"com.android.vending.INSTALL_REFERRER".equals(intent.getAction())) {
            db.e("InstallReceiver", "referrer is null");
            return;
        }
        if (!s.contains("=")) {
            db.e("InstallReceiver", "referrer is before decoding: " + s);
            s = URLDecoder.decode(s);
            db.e("InstallReceiver", "referrer is: " + s);
        }
        this.x(s);
    }
}
