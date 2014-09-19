package com.chartboost.sdk.Libraries;

import javax.security.auth.x500.*;
import android.content.*;
import com.chartboost.sdk.*;
import java.net.*;
import org.json.*;
import java.util.*;
import org.apache.http.*;
import android.view.*;
import android.os.*;
import java.io.*;

public class d
{
    private static String a;
    private static final X500Principal b;
    
    static {
        d.a = null;
        b = new X500Principal("CN=Android Debug,O=Android,C=US");
    }
    
    public static int a(final int n, final Context context) {
        return Math.round(n * b(context));
    }
    
    public static SharedPreferences a() {
        final Chartboost sharedChartboost = Chartboost.sharedChartboost();
        if (sharedChartboost.getContext() == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before modifying or accessing preferences.");
        }
        return sharedChartboost.getContext().getSharedPreferences("cbPrefs", 0);
    }
    
    public static String a(final Map<String, Object> map) {
        if (map == null) {
            return "";
        }
        final StringBuilder sb = new StringBuilder();
        if (!map.keySet().isEmpty()) {
            sb.append("?");
        }
    Label_0048:
        for (final String s : map.keySet()) {
            if (sb.length() > 1) {
                sb.append("&");
            }
            final String string = map.get(s).toString();
            while (true) {
                Label_0163: {
                    if (s == null) {
                        break Label_0163;
                    }
                    while (true) {
                        while (true) {
                            Label_0170: {
                                try {
                                    final String encode = URLEncoder.encode(s, "UTF-8");
                                    sb.append(encode);
                                    sb.append("=");
                                    if (string != null) {
                                        final String encode2 = URLEncoder.encode(string, "UTF-8");
                                        sb.append(encode2);
                                        continue Label_0048;
                                    }
                                    break Label_0170;
                                }
                                catch (UnsupportedEncodingException cause) {
                                    throw new RuntimeException("This method requires UTF-8 encoding support", cause);
                                }
                                break;
                            }
                            final String encode2 = "";
                            continue;
                        }
                    }
                }
                final String encode = "";
                continue;
            }
        }
        return sb.toString();
    }
    
    public static List<?> a(final JSONArray jsonArray) {
        if (jsonArray == null) {
            return null;
        }
        final ArrayList<Object> list = new ArrayList<Object>();
        for (int i = 0; i < jsonArray.length(); ++i) {
            try {
                Object o = jsonArray.get(i);
                if (o instanceof JSONObject) {
                    o = a((JSONObject)o);
                }
                else if (o instanceof JSONArray) {
                    o = a((JSONArray)o);
                }
                else if (o.equals(JSONObject.NULL)) {
                    o = null;
                }
                list.add(o);
            }
            catch (Exception ex) {}
        }
        return list;
    }
    
    public static Map<String, Object> a(final JSONObject jsonObject) {
        if (jsonObject == null) {
            return null;
        }
        final HashMap<String, JSONObject> hashMap = (HashMap<String, JSONObject>)new HashMap<String, Object>();
        final Iterator keys = jsonObject.keys();
        while (keys.hasNext()) {
            try {
                final String s = keys.next();
                Object o = jsonObject.get(s);
                if (o instanceof JSONObject) {
                    o = a((JSONObject)o);
                }
                else if (o instanceof JSONArray) {
                    o = a((JSONArray)o);
                }
                else if (o.equals(JSONObject.NULL)) {
                    o = null;
                }
                hashMap.put(s, (JSONObject)o);
            }
            catch (Exception ex) {}
        }
        return (Map<String, Object>)hashMap;
    }
    
    public static JSONArray a(final List<?> list) {
        if (list == null) {
            return null;
        }
        final JSONArray jsonArray = new JSONArray();
        for (int i = 0; i < list.size(); ++i) {
            try {
                Object o = list.get(i);
                if (o instanceof Map) {
                    o = b((Map<?, ?>)o);
                }
                else if (o instanceof List) {
                    o = a((List<?>)o);
                }
                else if (o == null) {
                    o = JSONObject.NULL;
                }
                jsonArray.put(o);
            }
            catch (Exception ex) {}
        }
        return jsonArray;
    }
    
    public static JSONObject a(final Object o) {
        if (o == null) {
            return null;
        }
        if (o instanceof JSONObject) {
            return (JSONObject)o;
        }
        if (!(o instanceof Map)) {
            throw new IllegalArgumentException("The given argument must be either a JSONObject or a Map that can be converted to a JSONObject.");
        }
        if (!e.a(new e.g[0]).a(o)) {
            throw new IllegalArgumentException("The given Map must have all String keys in order to be converted to JSON.");
        }
        return new JSONObject((Map)o);
    }
    
    public static void a(final HttpEntity httpEntity) {
        try {
            httpEntity.consumeContent();
        }
        catch (Exception ex) {}
    }
    
    public static void a(final HttpResponse httpResponse) {
        if (httpResponse == null) {
            return;
        }
        try {
            if (httpResponse.getEntity() != null) {
                a(httpResponse.getEntity());
            }
        }
        catch (Exception ex) {}
    }
    
    public static boolean a(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   android/content/Context.getPackageManager:()Landroid/content/pm/PackageManager;
        //     4: aload_0        
        //     5: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //     8: bipush          64
        //    10: invokevirtual   android/content/pm/PackageManager.getPackageInfo:(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
        //    13: getfield        android/content/pm/PackageInfo.signatures:[Landroid/content/pm/Signature;
        //    16: astore          4
        //    18: iconst_0       
        //    19: istore          5
        //    21: iconst_0       
        //    22: istore          6
        //    24: aload           4
        //    26: arraylength    
        //    27: istore          8
        //    29: iload           5
        //    31: iload           8
        //    33: if_icmplt       57
        //    36: iload           6
        //    38: istore_2       
        //    39: iconst_2       
        //    40: aload_0        
        //    41: invokevirtual   android/content/Context.getApplicationInfo:()Landroid/content/pm/ApplicationInfo;
        //    44: getfield        android/content/pm/ApplicationInfo.flags:I
        //    47: iand           
        //    48: ifeq            111
        //    51: iconst_1       
        //    52: istore_3       
        //    53: iload_2        
        //    54: iload_3        
        //    55: ior            
        //    56: ireturn        
        //    57: ldc_w           "X.509"
        //    60: invokestatic    java/security/cert/CertificateFactory.getInstance:(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
        //    63: new             Ljava/io/ByteArrayInputStream;
        //    66: dup            
        //    67: aload           4
        //    69: iload           5
        //    71: aaload         
        //    72: invokevirtual   android/content/pm/Signature.toByteArray:()[B
        //    75: invokespecial   java/io/ByteArrayInputStream.<init>:([B)V
        //    78: invokevirtual   java/security/cert/CertificateFactory.generateCertificate:(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
        //    81: checkcast       Ljava/security/cert/X509Certificate;
        //    84: invokevirtual   java/security/cert/X509Certificate.getSubjectX500Principal:()Ljavax/security/auth/x500/X500Principal;
        //    87: getstatic       com/chartboost/sdk/Libraries/d.b:Ljavax/security/auth/x500/X500Principal;
        //    90: invokevirtual   javax/security/auth/x500/X500Principal.equals:(Ljava/lang/Object;)Z
        //    93: istore          9
        //    95: iload           9
        //    97: istore_2       
        //    98: iload_2        
        //    99: ifne            39
        //   102: iinc            5, 1
        //   105: iload_2        
        //   106: istore          6
        //   108: goto            24
        //   111: iconst_0       
        //   112: istore_3       
        //   113: goto            53
        //   116: astore_1       
        //   117: iconst_0       
        //   118: istore_2       
        //   119: goto            39
        //   122: astore          7
        //   124: iload           6
        //   126: istore_2       
        //   127: goto            39
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      18     116    122    Ljava/lang/Exception;
        //  24     29     122    130    Ljava/lang/Exception;
        //  57     95     122    130    Ljava/lang/Exception;
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
    
    public static float b(final int n, final Context context) {
        return n * b(context);
    }
    
    public static float b(final Context context) {
        return context.getResources().getDisplayMetrics().density;
    }
    
    public static String b() {
        if (c()) {
            return null;
        }
        if (d.a != null) {
            return d.a;
        }
        return d.a = c.a();
    }
    
    public static JSONObject b(final Map<?, ?> map) {
        JSONObject jsonObject;
        if (map == null) {
            jsonObject = null;
        }
        else {
            jsonObject = new JSONObject();
            for (final Map.Entry<Object, V> entry : map.entrySet()) {
                final String string = entry.getKey().toString();
                final V value = entry.getValue();
                try {
                    Object o;
                    if (value instanceof Map) {
                        o = b((Map<?, ?>)value);
                    }
                    else if (value instanceof List) {
                        o = a((List<?>)value);
                    }
                    else if (value == null) {
                        o = JSONObject.NULL;
                    }
                    else {
                        o = value;
                    }
                    jsonObject.put(string, o);
                }
                catch (Exception ex) {}
            }
        }
        return jsonObject;
    }
    
    public static CBOrientation c(final Context context) {
        final Display defaultDisplay = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        final int orientation = context.getResources().getConfiguration().orientation;
        final int rotation = defaultDisplay.getRotation();
        int n;
        if (defaultDisplay.getWidth() == defaultDisplay.getHeight()) {
            n = 3;
        }
        else if (defaultDisplay.getWidth() < defaultDisplay.getHeight()) {
            n = 1;
        }
        else {
            n = 2;
        }
        int n2 = 0;
        Label_0055: {
            if (n == 1) {
                n2 = 1;
            }
            else if (n == 2) {
                n2 = 0;
            }
            else {
                if (n == 3) {
                    if (orientation == 1) {
                        n2 = 1;
                        break Label_0055;
                    }
                    if (orientation == 2) {
                        n2 = 0;
                        break Label_0055;
                    }
                }
                n2 = 1;
            }
        }
        if (rotation != 0 && rotation != 2) {
            if (n2 != 0) {
                n2 = 0;
            }
            else {
                n2 = 1;
            }
        }
        if (n2 != 0) {
            switch (rotation) {
                default: {
                    return CBOrientation.PORTRAIT;
                }
                case 1: {
                    return CBOrientation.LANDSCAPE_LEFT;
                }
                case 2: {
                    return CBOrientation.PORTRAIT_REVERSE;
                }
                case 3: {
                    return CBOrientation.LANDSCAPE_RIGHT;
                }
            }
        }
        else {
            switch (rotation) {
                default: {
                    return CBOrientation.LANDSCAPE;
                }
                case 1: {
                    return CBOrientation.PORTRAIT_LEFT;
                }
                case 2: {
                    return CBOrientation.LANDSCAPE_REVERSE;
                }
                case 3: {
                    return CBOrientation.PORTRAIT_RIGHT;
                }
            }
        }
    }
    
    public static boolean c() {
        return a().getBoolean("cbIdentityTrackingDisabled", false);
    }
    
    public static boolean d() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
