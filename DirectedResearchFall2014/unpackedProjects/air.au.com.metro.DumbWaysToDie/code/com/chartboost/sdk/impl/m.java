package com.chartboost.sdk.impl;

import com.chartboost.sdk.*;
import android.content.*;
import android.app.*;
import android.net.*;
import android.os.*;
import java.net.*;

public class m
{
    public a a;
    
    public m(final a a) {
        super();
        this.a = a;
    }
    
    private void b(final String s, final Context context) {
        if (this.a != null) {
            this.a.a(s);
        }
        while (true) {
            Label_0157: {
                if (context != null) {
                    break Label_0157;
                }
                final Context context2 = Chartboost.sharedChartboost().getContext();
                if (context2 != null) {
                    try {
                        final Intent intent = new Intent("android.intent.action.VIEW");
                        if (!(context2 instanceof Activity)) {
                            intent.addFlags(268435456);
                        }
                        intent.setData(Uri.parse(s));
                        context2.startActivity(intent);
                        return;
                    }
                    catch (Exception ex) {
                        try {
                            if (s.startsWith("market://")) {
                                final String string = "http://market.android.com/" + s.substring(9);
                                final Intent intent2 = new Intent("android.intent.action.VIEW");
                                if (!(context2 instanceof Activity)) {
                                    intent2.addFlags(268435456);
                                }
                                intent2.setData(Uri.parse(string));
                                context2.startActivity(intent2);
                            }
                            return;
                        }
                        catch (Exception ex2) {
                            return;
                        }
                    }
                    break Label_0157;
                }
                return;
            }
            final Context context2 = context;
            continue;
        }
    }
    
    public void a(final String str, final Context context) {
        try {
            final String scheme = new URI(str).getScheme();
            if (scheme == null) {
                return;
            }
            if (!scheme.equals("http") && !scheme.equals("https")) {
                this.b(str, context);
                return;
            }
            new AsyncTask<Void, Void, String>() {
                public String a(final Void... p0) {
                    // 
                    // This method could not be decompiled.
                    // 
                    // Original Bytecode:
                    // 
                    //     0: new             Ljava/net/URL;
                    //     3: dup            
                    //     4: aload_0        
                    //     5: getfield        com/chartboost/sdk/impl/m$1.b:Ljava/lang/String;
                    //     8: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
                    //    11: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
                    //    14: checkcast       Ljava/net/HttpURLConnection;
                    //    17: astore          5
                    //    19: aload           5
                    //    21: iconst_0       
                    //    22: invokevirtual   java/net/HttpURLConnection.setInstanceFollowRedirects:(Z)V
                    //    25: aload           5
                    //    27: ldc             "Location"
                    //    29: invokevirtual   java/net/HttpURLConnection.getHeaderField:(Ljava/lang/String;)Ljava/lang/String;
                    //    32: astore          8
                    //    34: aload           8
                    //    36: ifnonnull       45
                    //    39: aload_0        
                    //    40: getfield        com/chartboost/sdk/impl/m$1.b:Ljava/lang/String;
                    //    43: astore          8
                    //    45: aload           5
                    //    47: ifnull          55
                    //    50: aload           5
                    //    52: invokevirtual   java/net/HttpURLConnection.disconnect:()V
                    //    55: aload           8
                    //    57: areturn        
                    //    58: astore          4
                    //    60: aconst_null    
                    //    61: astore          5
                    //    63: aload           5
                    //    65: ifnull          73
                    //    68: aload           5
                    //    70: invokevirtual   java/net/HttpURLConnection.disconnect:()V
                    //    73: aconst_null    
                    //    74: areturn        
                    //    75: astore_2       
                    //    76: aconst_null    
                    //    77: astore_3       
                    //    78: aload_3        
                    //    79: ifnull          86
                    //    82: aload_3        
                    //    83: invokevirtual   java/net/HttpURLConnection.disconnect:()V
                    //    86: aload_2        
                    //    87: athrow         
                    //    88: astore          7
                    //    90: aload           5
                    //    92: astore_3       
                    //    93: aload           7
                    //    95: astore_2       
                    //    96: goto            78
                    //    99: astore          6
                    //   101: goto            63
                    //    Exceptions:
                    //  Try           Handler
                    //  Start  End    Start  End    Type                 
                    //  -----  -----  -----  -----  ---------------------
                    //  0      19     58     63     Ljava/lang/Exception;
                    //  0      19     75     78     Any
                    //  19     34     99     104    Ljava/lang/Exception;
                    //  19     34     88     99     Any
                    //  39     45     99     104    Ljava/lang/Exception;
                    //  39     45     88     99     Any
                    // 
                    // The error that occurred was:
                    // 
                    // java.lang.IllegalStateException: Expression is linked from several locations: Label_0045:
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
                    //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformCall(AstMethodBodyBuilder.java:1163)
                    //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformByteCode(AstMethodBodyBuilder.java:1010)
                    //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformExpression(AstMethodBodyBuilder.java:540)
                    //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformByteCode(AstMethodBodyBuilder.java:554)
                    //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformExpression(AstMethodBodyBuilder.java:540)
                    //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformNode(AstMethodBodyBuilder.java:392)
                    //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformBlock(AstMethodBodyBuilder.java:333)
                    //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformNode(AstMethodBodyBuilder.java:494)
                    //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformBlock(AstMethodBodyBuilder.java:333)
                    //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:294)
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
                
                public void a(final String s) {
                    m.this.b(s, context);
                }
            }.execute((Object[])new Void[0]);
        }
        catch (URISyntaxException ex) {}
    }
    
    public interface a
    {
        void a(String p0);
    }
}
