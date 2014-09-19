package com.chartboost.sdk.impl;

import android.content.*;
import com.chartboost.sdk.*;
import android.os.*;
import org.json.*;
import java.util.*;
import com.chartboost.sdk.Libraries.*;

public class k
{
    private String a;
    private JSONObject b;
    private Map<String, Object> c;
    private Map<String, Object> d;
    private String e;
    private boolean f;
    private e.a g;
    
    public k(final String a) {
        super();
        this.g = null;
        this.a = a;
        this.e = "POST";
    }
    
    public static k a(final JSONObject jsonObject) {
        try {
            final k k = new k(jsonObject.getString("path"));
            k.e = jsonObject.getString("method");
            k.c = d.a(jsonObject.optJSONObject("query"));
            k.b = jsonObject.optJSONObject("body");
            k.d = d.a(jsonObject.optJSONObject("headers"));
            k.f = jsonObject.getBoolean("ensureDelivery");
            return k;
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    private void b(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: instanceof      Landroid/app/Activity;
        //     4: ifeq            183
        //     7: aload_1        
        //     8: checkcast       Landroid/app/Activity;
        //    11: astore          8
        //    13: new             Landroid/graphics/Rect;
        //    16: dup            
        //    17: invokespecial   android/graphics/Rect.<init>:()V
        //    20: astore          9
        //    22: aload           8
        //    24: invokevirtual   android/app/Activity.getWindow:()Landroid/view/Window;
        //    27: invokevirtual   android/view/Window.getDecorView:()Landroid/view/View;
        //    30: aload           9
        //    32: invokevirtual   android/view/View.getWindowVisibleDisplayFrame:(Landroid/graphics/Rect;)V
        //    35: getstatic       android/os/Build$VERSION.SDK_INT:I
        //    38: bipush          9
        //    40: if_icmpge       49
        //    43: aload           9
        //    45: iconst_0       
        //    46: putfield        android/graphics/Rect.top:I
        //    49: aload           9
        //    51: invokevirtual   android/graphics/Rect.width:()I
        //    54: istore          10
        //    56: iload           10
        //    58: istore_3       
        //    59: aload           9
        //    61: invokevirtual   android/graphics/Rect.height:()I
        //    64: istore          12
        //    66: iload           12
        //    68: istore          5
        //    70: iload_3        
        //    71: istore          4
        //    73: aload_1        
        //    74: ldc             "window"
        //    76: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
        //    79: checkcast       Landroid/view/WindowManager;
        //    82: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
        //    87: astore          6
        //    89: iload           4
        //    91: ifle            158
        //    94: iload           5
        //    96: ifle            168
        //    99: iload           5
        //   101: istore          7
        //   103: aload_0        
        //   104: ldc             "w"
        //   106: new             Ljava/lang/StringBuilder;
        //   109: dup            
        //   110: invokespecial   java/lang/StringBuilder.<init>:()V
        //   113: iload           4
        //   115: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   118: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   121: invokevirtual   com/chartboost/sdk/impl/k.a:(Ljava/lang/String;Ljava/lang/Object;)V
        //   124: aload_0        
        //   125: ldc             "h"
        //   127: new             Ljava/lang/StringBuilder;
        //   130: dup            
        //   131: invokespecial   java/lang/StringBuilder.<init>:()V
        //   134: iload           7
        //   136: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   139: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   142: invokevirtual   com/chartboost/sdk/impl/k.a:(Ljava/lang/String;Ljava/lang/Object;)V
        //   145: return         
        //   146: astore_2       
        //   147: iconst_0       
        //   148: istore_3       
        //   149: iload_3        
        //   150: istore          4
        //   152: iconst_0       
        //   153: istore          5
        //   155: goto            73
        //   158: aload           6
        //   160: invokevirtual   android/view/Display.getWidth:()I
        //   163: istore          4
        //   165: goto            94
        //   168: aload           6
        //   170: invokevirtual   android/view/Display.getHeight:()I
        //   173: istore          7
        //   175: goto            103
        //   178: astore          11
        //   180: goto            149
        //   183: iconst_0       
        //   184: istore          5
        //   186: iconst_0       
        //   187: istore          4
        //   189: goto            73
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      49     146    149    Ljava/lang/Exception;
        //  49     56     146    149    Ljava/lang/Exception;
        //  59     66     178    183    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0073:
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
    
    public String a() {
        String obj;
        if (this.a.startsWith("/")) {
            obj = "";
        }
        else {
            obj = "/";
        }
        return String.valueOf(obj) + this.a + com.chartboost.sdk.Libraries.d.a(this.c);
    }
    
    public void a(final Context context) {
        final Chartboost sharedChartboost = Chartboost.sharedChartboost();
        this.a("app", (Object)Chartboost.sharedChartboost().getAppID());
        Label_0287: {
            if (!"sdk".equals(Build.PRODUCT)) {
                break Label_0287;
            }
            this.a("model", (Object)"Android Simulator");
            this.a("identity", (Object)com.chartboost.sdk.Libraries.d.b());
            while (true) {
                this.a("device_type", (Object)(String.valueOf(Build.MANUFACTURER) + " " + Build.MODEL));
                this.a("os", (Object)("Android " + Build$VERSION.RELEASE));
                this.a("country", (Object)Locale.getDefault().getCountry());
                this.a("language", (Object)Locale.getDefault().getLanguage());
                this.a("sdk", (Object)"3.3.0");
                this.a("framework", (Object)sharedChartboost.getFramework());
                this.a("timestamp", (Object)String.valueOf((int)(Object)Long.valueOf(new Date().getTime() / 1000L)));
                this.a("session", com.chartboost.sdk.Libraries.d.a().getInt("cbPrefSessionCount", 0));
                final int b = m.b();
                if (b != -1) {
                    this.a("reachability", b);
                }
                this.b(context);
                this.a("scale", (Object)new StringBuilder().append(context.getResources().getDisplayMetrics().density).toString());
                try {
                    final String packageName = context.getPackageName();
                    this.a("bundle", (Object)context.getPackageManager().getPackageInfo(packageName, 128).versionName);
                    this.a("bundle_id", (Object)packageName);
                    return;
                    this.a("model", (Object)Build.MODEL);
                    this.a("identity", (Object)com.chartboost.sdk.Libraries.d.b());
                    continue;
                }
                catch (Exception ex) {}
                break;
            }
        }
    }
    
    public void a(final String s, final Object o) {
        if (this.b == null) {
            this.b = new JSONObject();
        }
        try {
            this.b.put(s, o);
        }
        catch (JSONException ex) {
            ex.printStackTrace();
        }
    }
    
    public void a(final String s, final String s2) {
        if (this.d == null) {
            this.d = new HashMap<String, Object>();
        }
        this.d.put(s, s2);
    }
    
    public void a(final boolean f) {
        this.f = f;
    }
    
    public void a(final e.g... array) {
        this.g = com.chartboost.sdk.Libraries.e.a(array);
    }
    
    public String b() {
        return this.b.toString();
    }
    
    public void b(final String s, final String s2) {
        final String b = com.chartboost.sdk.Libraries.b.b(com.chartboost.sdk.Libraries.b.a(String.format(Locale.US, "%s %s\n%s\n%s", this.e, this.a(), s2, this.b()).getBytes()));
        this.a("X-Chartboost-App", s);
        this.a("X-Chartboost-Signature", b);
    }
    
    public String c() {
        return this.a;
    }
    
    public JSONObject d() {
        return this.b;
    }
    
    public Map<String, Object> e() {
        return this.d;
    }
    
    public boolean f() {
        return this.f;
    }
    
    public e.a g() {
        return this.g;
    }
    
    public JSONObject h() {
        try {
            final JSONObject jsonObject = new JSONObject();
            jsonObject.put("path", (Object)this.a);
            jsonObject.put("method", (Object)this.e);
            jsonObject.put("query", (Object)com.chartboost.sdk.Libraries.d.b(this.c));
            jsonObject.put("body", (Object)this.b);
            jsonObject.put("headers", (Object)com.chartboost.sdk.Libraries.d.b(this.d));
            jsonObject.put("ensureDelivery", this.f);
            return jsonObject;
        }
        catch (Exception ex) {
            return null;
        }
    }
}
