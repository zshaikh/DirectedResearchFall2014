package com.chartboost.sdk.impl;

import com.chartboost.sdk.*;
import android.content.*;
import org.json.*;
import android.webkit.*;
import android.widget.*;
import android.view.*;

public class v extends com.chartboost.sdk.b
{
    private String h;
    
    public v(final com.chartboost.sdk.impl.a a) {
        super(a);
        this.h = null;
    }
    
    @Override
    protected com.chartboost.sdk.b.b a(final Context context) {
        return new a(context, this.h);
    }
    
    @Override
    public void a(final JSONObject jsonObject) {
        final String optString = jsonObject.optString("html");
        if (optString == null) {
            return;
        }
        this.h = optString;
        this.a();
    }
    
    public class a extends b
    {
        public WebView c;
        
        public a(final Context context, final String s) {
            super(context);
            this.setFocusable(false);
            (this.c = new v.b(context)).setWebViewClient((WebViewClient)new v.c(v.this));
            this.addView((View)this.c);
            this.c.loadDataWithBaseURL("file:///android_asset/", s, "text/html", "utf-8", (String)null);
        }
        
        @Override
        protected void a(final int n, final int n2) {
        }
    }
    
    private class b extends WebView
    {
        public b(final Context context) {
            super(context);
            this.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
            this.setBackgroundColor(0);
            this.getSettings().setJavaScriptEnabled(true);
        }
        
        public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
            if ((n == 4 || n == 3) && v.this.a != null) {
                v.this.a.a();
            }
            return super.onKeyDown(n, keyEvent);
        }
    }
    
    private class c extends WebViewClient
    {
        private v b;
        
        public c(final v b) {
            super();
            this.b = b;
        }
        
        public void onPageFinished(final WebView webView, final String s) {
            super.onPageFinished(webView, s);
            if (this.b != null && this.b.c != null) {
                this.b.c.a();
            }
        }
        
        public void onReceivedError(final WebView webView, final int n, final String s, final String s2) {
            if (this.b.d != null) {
                this.b.d.a();
            }
        }
        
        public boolean shouldOverrideUrlLoading(final WebView p0, final String p1) {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     0: new             Ljava/net/URI;
            //     3: dup            
            //     4: aload_2        
            //     5: invokespecial   java/net/URI.<init>:(Ljava/lang/String;)V
            //     8: invokevirtual   java/net/URI.getScheme:()Ljava/lang/String;
            //    11: astore          4
            //    13: aload           4
            //    15: ldc             "chartboost"
            //    17: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
            //    20: ifeq            135
            //    23: aload_2        
            //    24: ldc             "/"
            //    26: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
            //    29: astore          5
            //    31: aload           5
            //    33: arraylength    
            //    34: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
            //    37: astore          6
            //    39: aload           6
            //    41: invokevirtual   java/lang/Integer.intValue:()I
            //    44: iconst_3       
            //    45: if_icmpge       97
            //    48: aload_0        
            //    49: getfield        com/chartboost/sdk/impl/v$c.b:Lcom/chartboost/sdk/impl/v;
            //    52: getfield        com/chartboost/sdk/impl/v.a:Lcom/chartboost/sdk/b$a;
            //    55: ifnull          70
            //    58: aload_0        
            //    59: getfield        com/chartboost/sdk/impl/v$c.b:Lcom/chartboost/sdk/impl/v;
            //    62: getfield        com/chartboost/sdk/impl/v.a:Lcom/chartboost/sdk/b$a;
            //    65: invokeinterface com/chartboost/sdk/b$a.a:()V
            //    70: iconst_0       
            //    71: ireturn        
            //    72: astore_3       
            //    73: aload_0        
            //    74: getfield        com/chartboost/sdk/impl/v$c.b:Lcom/chartboost/sdk/impl/v;
            //    77: getfield        com/chartboost/sdk/impl/v.a:Lcom/chartboost/sdk/b$a;
            //    80: ifnull          95
            //    83: aload_0        
            //    84: getfield        com/chartboost/sdk/impl/v$c.b:Lcom/chartboost/sdk/impl/v;
            //    87: getfield        com/chartboost/sdk/impl/v.a:Lcom/chartboost/sdk/b$a;
            //    90: invokeinterface com/chartboost/sdk/b$a.a:()V
            //    95: iconst_0       
            //    96: ireturn        
            //    97: aload           5
            //    99: iconst_2       
            //   100: aaload         
            //   101: astore          7
            //   103: aload           7
            //   105: ldc             "close"
            //   107: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
            //   110: ifeq            137
            //   113: aload_0        
            //   114: getfield        com/chartboost/sdk/impl/v$c.b:Lcom/chartboost/sdk/impl/v;
            //   117: getfield        com/chartboost/sdk/impl/v.a:Lcom/chartboost/sdk/b$a;
            //   120: ifnull          135
            //   123: aload_0        
            //   124: getfield        com/chartboost/sdk/impl/v$c.b:Lcom/chartboost/sdk/impl/v;
            //   127: getfield        com/chartboost/sdk/impl/v.a:Lcom/chartboost/sdk/b$a;
            //   130: invokeinterface com/chartboost/sdk/b$a.a:()V
            //   135: iconst_1       
            //   136: ireturn        
            //   137: aload           7
            //   139: ldc             "link"
            //   141: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
            //   144: ifeq            135
            //   147: aload           6
            //   149: invokevirtual   java/lang/Integer.intValue:()I
            //   152: iconst_4       
            //   153: if_icmpge       180
            //   156: aload_0        
            //   157: getfield        com/chartboost/sdk/impl/v$c.b:Lcom/chartboost/sdk/impl/v;
            //   160: getfield        com/chartboost/sdk/impl/v.a:Lcom/chartboost/sdk/b$a;
            //   163: ifnull          178
            //   166: aload_0        
            //   167: getfield        com/chartboost/sdk/impl/v$c.b:Lcom/chartboost/sdk/impl/v;
            //   170: getfield        com/chartboost/sdk/impl/v.a:Lcom/chartboost/sdk/b$a;
            //   173: invokeinterface com/chartboost/sdk/b$a.a:()V
            //   178: iconst_0       
            //   179: ireturn        
            //   180: aload           5
            //   182: iconst_3       
            //   183: aaload         
            //   184: ldc             "UTF-8"
            //   186: invokestatic    java/net/URLDecoder.decode:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
            //   189: astore          12
            //   191: aload           6
            //   193: invokevirtual   java/lang/Integer.intValue:()I
            //   196: iconst_4       
            //   197: if_icmpge       291
            //   200: new             Lorg/json/JSONObject;
            //   203: dup            
            //   204: new             Lorg/json/JSONTokener;
            //   207: dup            
            //   208: aload           5
            //   210: iconst_4       
            //   211: aaload         
            //   212: ldc             "UTF-8"
            //   214: invokestatic    java/net/URLDecoder.decode:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
            //   217: invokespecial   org/json/JSONTokener.<init>:(Ljava/lang/String;)V
            //   220: invokespecial   org/json/JSONObject.<init>:(Lorg/json/JSONTokener;)V
            //   223: astore          13
            //   225: aload           13
            //   227: astore          11
            //   229: aload           12
            //   231: astore          10
            //   233: aload_0        
            //   234: getfield        com/chartboost/sdk/impl/v$c.b:Lcom/chartboost/sdk/impl/v;
            //   237: getfield        com/chartboost/sdk/impl/v.b:Lcom/chartboost/sdk/b$c;
            //   240: ifnull          135
            //   243: aload_0        
            //   244: getfield        com/chartboost/sdk/impl/v$c.b:Lcom/chartboost/sdk/impl/v;
            //   247: getfield        com/chartboost/sdk/impl/v.b:Lcom/chartboost/sdk/b$c;
            //   250: aload           10
            //   252: aload           11
            //   254: invokeinterface com/chartboost/sdk/b$c.a:(Ljava/lang/String;Lorg/json/JSONObject;)V
            //   259: goto            135
            //   262: astore          8
            //   264: aconst_null    
            //   265: astore          9
            //   267: aload           8
            //   269: invokevirtual   java/lang/Exception.printStackTrace:()V
            //   272: aload           9
            //   274: astore          10
            //   276: aconst_null    
            //   277: astore          11
            //   279: goto            233
            //   282: astore          8
            //   284: aload           12
            //   286: astore          9
            //   288: goto            267
            //   291: aload           12
            //   293: astore          10
            //   295: aconst_null    
            //   296: astore          11
            //   298: goto            233
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                 
            //  -----  -----  -----  -----  ---------------------
            //  0      13     72     97     Ljava/lang/Exception;
            //  180    191    262    267    Ljava/lang/Exception;
            //  191    225    282    291    Ljava/lang/Exception;
            // 
            // The error that occurred was:
            // 
            // java.lang.IllegalStateException: Expression is linked from several locations: Label_0233:
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
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:556)
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
}
