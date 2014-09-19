package com.chartboost.sdk.impl;

import android.content.*;
import android.app.*;
import java.net.*;
import com.chartboost.sdk.*;

public class n
{
    public a a;
    
    public n(final a a) {
        super();
        this.a = a;
    }
    
    private void a(final String p0, final Context p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_2        
        //     1: ifnonnull       241
        //     4: invokestatic    com/chartboost/sdk/Chartboost.sharedChartboost:()Lcom/chartboost/sdk/Chartboost;
        //     7: invokevirtual   com/chartboost/sdk/Chartboost.getContext:()Landroid/content/Context;
        //    10: astore_3       
        //    11: aload_3        
        //    12: ifnonnull       34
        //    15: aload_0        
        //    16: getfield        com/chartboost/sdk/impl/n.a:Lcom/chartboost/sdk/impl/n$a;
        //    19: ifnull          33
        //    22: aload_0        
        //    23: getfield        com/chartboost/sdk/impl/n.a:Lcom/chartboost/sdk/impl/n$a;
        //    26: iconst_0       
        //    27: aload_1        
        //    28: invokeinterface com/chartboost/sdk/impl/n$a.a:(ZLjava/lang/String;)V
        //    33: return         
        //    34: new             Landroid/content/Intent;
        //    37: dup            
        //    38: ldc             "android.intent.action.VIEW"
        //    40: invokespecial   android/content/Intent.<init>:(Ljava/lang/String;)V
        //    43: astore          4
        //    45: aload_3        
        //    46: instanceof      Landroid/app/Activity;
        //    49: ifne            60
        //    52: aload           4
        //    54: ldc             268435456
        //    56: invokevirtual   android/content/Intent.addFlags:(I)Landroid/content/Intent;
        //    59: pop            
        //    60: aload           4
        //    62: aload_1        
        //    63: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //    66: invokevirtual   android/content/Intent.setData:(Landroid/net/Uri;)Landroid/content/Intent;
        //    69: pop            
        //    70: aload_3        
        //    71: aload           4
        //    73: invokevirtual   android/content/Context.startActivity:(Landroid/content/Intent;)V
        //    76: aload_1        
        //    77: astore          6
        //    79: aload_0        
        //    80: getfield        com/chartboost/sdk/impl/n.a:Lcom/chartboost/sdk/impl/n$a;
        //    83: ifnull          33
        //    86: aload_0        
        //    87: getfield        com/chartboost/sdk/impl/n.a:Lcom/chartboost/sdk/impl/n$a;
        //    90: iconst_1       
        //    91: aload           6
        //    93: invokeinterface com/chartboost/sdk/impl/n$a.a:(ZLjava/lang/String;)V
        //    98: return         
        //    99: astore          5
        //   101: aload_1        
        //   102: ldc             "market://"
        //   104: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //   107: ifeq            208
        //   110: new             Ljava/lang/StringBuilder;
        //   113: dup            
        //   114: ldc             "http://market.android.com/"
        //   116: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   119: aload_1        
        //   120: bipush          9
        //   122: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //   125: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   128: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   131: astore          9
        //   133: new             Landroid/content/Intent;
        //   136: dup            
        //   137: ldc             "android.intent.action.VIEW"
        //   139: invokespecial   android/content/Intent.<init>:(Ljava/lang/String;)V
        //   142: astore          10
        //   144: aload_3        
        //   145: instanceof      Landroid/app/Activity;
        //   148: ifne            159
        //   151: aload           10
        //   153: ldc             268435456
        //   155: invokevirtual   android/content/Intent.addFlags:(I)Landroid/content/Intent;
        //   158: pop            
        //   159: aload           10
        //   161: aload           9
        //   163: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   166: invokevirtual   android/content/Intent.setData:(Landroid/net/Uri;)Landroid/content/Intent;
        //   169: pop            
        //   170: aload_3        
        //   171: aload           10
        //   173: invokevirtual   android/content/Context.startActivity:(Landroid/content/Intent;)V
        //   176: aload           9
        //   178: astore          6
        //   180: goto            79
        //   183: astore          7
        //   185: aload_1        
        //   186: astore          8
        //   188: aload_0        
        //   189: getfield        com/chartboost/sdk/impl/n.a:Lcom/chartboost/sdk/impl/n$a;
        //   192: ifnull          33
        //   195: aload_0        
        //   196: getfield        com/chartboost/sdk/impl/n.a:Lcom/chartboost/sdk/impl/n$a;
        //   199: iconst_0       
        //   200: aload           8
        //   202: invokeinterface com/chartboost/sdk/impl/n$a.a:(ZLjava/lang/String;)V
        //   207: return         
        //   208: aload_0        
        //   209: getfield        com/chartboost/sdk/impl/n.a:Lcom/chartboost/sdk/impl/n$a;
        //   212: ifnull          226
        //   215: aload_0        
        //   216: getfield        com/chartboost/sdk/impl/n.a:Lcom/chartboost/sdk/impl/n$a;
        //   219: iconst_0       
        //   220: aload_1        
        //   221: invokeinterface com/chartboost/sdk/impl/n$a.a:(ZLjava/lang/String;)V
        //   226: aload_1        
        //   227: astore          6
        //   229: goto            79
        //   232: astore          11
        //   234: aload           9
        //   236: astore          8
        //   238: goto            188
        //   241: aload_2        
        //   242: astore_3       
        //   243: goto            11
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  34     60     99     241    Ljava/lang/Exception;
        //  60     76     99     241    Ljava/lang/Exception;
        //  110    133    183    188    Ljava/lang/Exception;
        //  133    159    232    241    Ljava/lang/Exception;
        //  159    176    232    241    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0159:
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
    
    public void a(final String str, final Activity activity) {
        String scheme;
        try {
            scheme = new URI(str).getScheme();
            if (scheme == null) {
                if (this.a != null) {
                    this.a.a(false, str);
                }
                return;
            }
        }
        catch (URISyntaxException ex) {
            if (this.a != null) {
                this.a.a(false, str);
            }
            return;
        }
        if (!scheme.equals("http") && !scheme.equals("https")) {
            this.a(str, (Context)activity);
            return;
        }
        l.a().execute(new Runnable() {
            public void a(final String s) {
                final Runnable runnable = new Runnable() {
                    @Override
                    public void run() {
                        n.this.a(s, (Context)activity);
                    }
                };
                if (activity != null) {
                    activity.runOnUiThread((Runnable)runnable);
                    return;
                }
                Chartboost.sharedChartboost().getHandler().post((Runnable)runnable);
            }
            
            @Override
            public void run() {
                // 
                // This method could not be decompiled.
                // 
                // Original Bytecode:
                // 
                //     0: aload_0        
                //     1: getfield        com/chartboost/sdk/impl/n$1.b:Ljava/lang/String;
                //     4: astore_1       
                //     5: invokestatic    com/chartboost/sdk/impl/m.a:()Z
                //     8: ifeq            88
                //    11: invokestatic    com/chartboost/sdk/Chartboost.sharedChartboost:()Lcom/chartboost/sdk/Chartboost;
                //    14: astore          7
                //    16: new             Ljava/net/URL;
                //    19: dup            
                //    20: aload_0        
                //    21: getfield        com/chartboost/sdk/impl/n$1.b:Ljava/lang/String;
                //    24: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
                //    27: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
                //    30: checkcast       Ljava/net/HttpURLConnection;
                //    33: astore          6
                //    35: aload           6
                //    37: iconst_0       
                //    38: invokevirtual   java/net/HttpURLConnection.setInstanceFollowRedirects:(Z)V
                //    41: aload           6
                //    43: aload           7
                //    45: invokevirtual   com/chartboost/sdk/Chartboost.getTimeout:()I
                //    48: invokevirtual   java/net/HttpURLConnection.setConnectTimeout:(I)V
                //    51: aload           6
                //    53: aload           7
                //    55: invokevirtual   com/chartboost/sdk/Chartboost.getTimeout:()I
                //    58: invokevirtual   java/net/HttpURLConnection.setReadTimeout:(I)V
                //    61: aload           6
                //    63: ldc             "Location"
                //    65: invokevirtual   java/net/HttpURLConnection.getHeaderField:(Ljava/lang/String;)Ljava/lang/String;
                //    68: astore          10
                //    70: aload           10
                //    72: ifnull          78
                //    75: aload           10
                //    77: astore_1       
                //    78: aload           6
                //    80: ifnull          88
                //    83: aload           6
                //    85: invokevirtual   java/net/HttpURLConnection.disconnect:()V
                //    88: aload_1        
                //    89: astore_2       
                //    90: aload_0        
                //    91: aload_2        
                //    92: invokevirtual   com/chartboost/sdk/impl/n$1.a:(Ljava/lang/String;)V
                //    95: return         
                //    96: astore          5
                //    98: aconst_null    
                //    99: astore          6
                //   101: aload           6
                //   103: ifnull          88
                //   106: aload           6
                //   108: invokevirtual   java/net/HttpURLConnection.disconnect:()V
                //   111: aload_1        
                //   112: astore_2       
                //   113: goto            90
                //   116: astore_3       
                //   117: aconst_null    
                //   118: astore          4
                //   120: aload           4
                //   122: ifnull          130
                //   125: aload           4
                //   127: invokevirtual   java/net/HttpURLConnection.disconnect:()V
                //   130: aload_3        
                //   131: athrow         
                //   132: astore          9
                //   134: aload           6
                //   136: astore          4
                //   138: aload           9
                //   140: astore_3       
                //   141: goto            120
                //   144: astore          8
                //   146: goto            101
                //    Exceptions:
                //  Try           Handler
                //  Start  End    Start  End    Type                 
                //  -----  -----  -----  -----  ---------------------
                //  11     35     96     101    Ljava/lang/Exception;
                //  11     35     116    120    Any
                //  35     70     144    149    Ljava/lang/Exception;
                //  35     70     132    144    Any
                // 
                // The error that occurred was:
                // 
                // java.lang.IllegalStateException: Expression is linked from several locations: Label_0078:
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
        });
    }
    
    public interface a
    {
        void a(boolean p0, String p1);
    }
}
