package com.chartboost.sdk.impl;

import android.util.*;
import android.content.*;
import com.chartboost.sdk.*;
import android.os.*;
import org.json.*;
import java.util.*;
import com.chartboost.sdk.Libraries.*;

public class k
{
    public String a;
    public String b;
    public String c;
    public Map<String, String> d;
    public JSONObject e;
    public Map<String, String> f;
    public List<String> g;
    public a h;
    public boolean i;
    public JSONObject j;
    
    public k(final String a, final String b) {
        super();
        this.j = null;
        this.a = a;
        this.b = b;
        this.c = "GET";
    }
    
    public static k a(final JSONObject jsonObject) {
        try {
            final k k = new k(jsonObject.getString("controller"), jsonObject.getString("action"));
            k.g = d.a(jsonObject.optJSONArray("params"));
            k.f = d.a(jsonObject.optJSONObject("query"));
            k.e = jsonObject.optJSONObject("body");
            k.i = jsonObject.getBoolean("ensureDelivery");
            k.d = d.a(jsonObject.optJSONObject("headers"));
            return k;
        }
        catch (Exception ex) {
            Log.w("Chartboost", "Unable to deserialize failed request");
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
        //   121: invokevirtual   com/chartboost/sdk/impl/k.a:(Ljava/lang/String;Ljava/lang/String;)V
        //   124: aload_0        
        //   125: ldc             "h"
        //   127: new             Ljava/lang/StringBuilder;
        //   130: dup            
        //   131: invokespecial   java/lang/StringBuilder.<init>:()V
        //   134: iload           7
        //   136: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   139: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   142: invokevirtual   com/chartboost/sdk/impl/k.a:(Ljava/lang/String;Ljava/lang/String;)V
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
        return "/" + this.a + "/" + this.b + com.chartboost.sdk.Libraries.d.a(this.f);
    }
    
    public void a(final Context context) {
        this.a("app", Chartboost.sharedChartboost().getAppID());
        Label_0220: {
            if (!Build.PRODUCT.equals("sdk")) {
                break Label_0220;
            }
            this.a("model", "Android Simulator");
            this.a("identity", com.chartboost.sdk.Libraries.d.b());
            while (true) {
                this.a("device_type", String.valueOf(Build.MANUFACTURER) + " " + Build.MODEL);
                this.a("os", "Android " + Build$VERSION.RELEASE);
                this.a("country", Locale.getDefault().getCountry());
                this.a("language", Locale.getDefault().getLanguage());
                this.a("sdk", "3.1.5");
                this.a("timestamp", new StringBuilder(String.valueOf(new Date().getTime())).toString());
                this.b(context);
                this.a("scale", new StringBuilder().append(context.getResources().getDisplayMetrics().density).toString());
                try {
                    this.a("bundle", context.getPackageManager().getPackageInfo(context.getPackageName(), 128).versionName);
                    return;
                    this.a("model", Build.MODEL);
                    this.a("identity", com.chartboost.sdk.Libraries.d.b());
                }
                catch (Exception ex) {}
            }
        }
    }
    
    public void a(final String s, final String s2) {
        if (this.e == null) {
            this.e = new JSONObject();
            this.c = "POST";
        }
        try {
            this.e.put(s, (Object)s2);
        }
        catch (JSONException ex) {
            ex.printStackTrace();
        }
    }
    
    public String b() {
        return this.e.toString();
    }
    
    public void b(final String s, final String s2) {
        if (this.d == null) {
            this.d = new HashMap<String, String>();
        }
        this.d.put(s, s2);
    }
    
    public Map<String, String> c() {
        return this.d;
    }
    
    public void c(final String s, final String str) {
        final String b = com.chartboost.sdk.Libraries.b.b(com.chartboost.sdk.Libraries.b.a((String.valueOf(this.c) + " " + this.a() + "\n" + str + "\n" + this.b()).getBytes()));
        this.b("X-Chartboost-App", s);
        this.b("X-Chartboost-Signature", b);
    }
    
    public JSONObject d() {
        try {
            final JSONObject jsonObject = new JSONObject();
            jsonObject.put("controller", (Object)this.a);
            jsonObject.put("action", (Object)this.b);
            jsonObject.put("params", (Object)com.chartboost.sdk.Libraries.d.a(this.g));
            jsonObject.put("query", (Object)com.chartboost.sdk.Libraries.d.b(this.f));
            jsonObject.put("body", (Object)this.e);
            jsonObject.put("ensureDelivery", this.i);
            jsonObject.put("headers", (Object)com.chartboost.sdk.Libraries.d.b(this.d));
            return jsonObject;
        }
        catch (Exception ex) {
            Log.w("Chartboost", "Unable to serialize failed request");
            return null;
        }
    }
    
    public interface a
    {
        void a(JSONObject p0);
    }
}
