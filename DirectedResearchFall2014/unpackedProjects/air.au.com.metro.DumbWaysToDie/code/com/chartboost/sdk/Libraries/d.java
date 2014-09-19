package com.chartboost.sdk.Libraries;

import javax.security.auth.x500.*;
import android.content.*;
import com.chartboost.sdk.*;
import java.net.*;
import org.json.*;
import java.util.*;
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
        return Chartboost.sharedChartboost().getContext().getSharedPreferences("cbPrefs", 0);
    }
    
    public static String a(final Map<String, String> map) {
        if (map == null) {
            return "";
        }
        final StringBuilder sb = new StringBuilder();
        if (!map.keySet().isEmpty()) {
            sb.append("?");
        }
    Label_0048:
        for (final String s : map.keySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            final String s2 = map.get(s);
            while (true) {
                Label_0162: {
                    if (s == null) {
                        break Label_0162;
                    }
                    while (true) {
                        while (true) {
                            Label_0169: {
                                try {
                                    final String encode = URLEncoder.encode(s, "UTF-8");
                                    sb.append(encode);
                                    sb.append("=");
                                    if (s2 != null) {
                                        final String encode2 = URLEncoder.encode(s2, "UTF-8");
                                        sb.append(encode2);
                                        continue Label_0048;
                                    }
                                    break Label_0169;
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
    
    public static List<String> a(final JSONArray jsonArray) {
        List<String> list;
        if (jsonArray == null) {
            list = null;
        }
        else {
            list = new ArrayList<String>();
            int i = 0;
            while (i < jsonArray.length()) {
                while (true) {
                    try {
                        list.add(jsonArray.getString(i));
                        ++i;
                    }
                    catch (Exception ex) {
                        continue;
                    }
                    break;
                }
            }
        }
        return list;
    }
    
    public static Map<String, String> a(final JSONObject jsonObject) {
        if (jsonObject == null) {
            return null;
        }
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        final Iterator keys = jsonObject.keys();
        while (keys.hasNext()) {
            try {
                final String s = keys.next();
                hashMap.put(s, jsonObject.getString(s));
            }
            catch (Exception ex) {}
        }
        return hashMap;
    }
    
    public static JSONArray a(final List<String> list) {
        JSONArray jsonArray;
        if (list == null) {
            jsonArray = null;
        }
        else {
            jsonArray = new JSONArray();
            int i = 0;
            while (i < list.size()) {
                while (true) {
                    try {
                        jsonArray.put((Object)list.get(i));
                        ++i;
                    }
                    catch (Exception ex) {
                        continue;
                    }
                    break;
                }
            }
        }
        return jsonArray;
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
        //    48: ifeq            110
        //    51: iconst_1       
        //    52: istore_3       
        //    53: iload_2        
        //    54: iload_3        
        //    55: ior            
        //    56: ireturn        
        //    57: ldc             "X.509"
        //    59: invokestatic    java/security/cert/CertificateFactory.getInstance:(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
        //    62: new             Ljava/io/ByteArrayInputStream;
        //    65: dup            
        //    66: aload           4
        //    68: iload           5
        //    70: aaload         
        //    71: invokevirtual   android/content/pm/Signature.toByteArray:()[B
        //    74: invokespecial   java/io/ByteArrayInputStream.<init>:([B)V
        //    77: invokevirtual   java/security/cert/CertificateFactory.generateCertificate:(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
        //    80: checkcast       Ljava/security/cert/X509Certificate;
        //    83: invokevirtual   java/security/cert/X509Certificate.getSubjectX500Principal:()Ljavax/security/auth/x500/X500Principal;
        //    86: getstatic       com/chartboost/sdk/Libraries/d.b:Ljavax/security/auth/x500/X500Principal;
        //    89: invokevirtual   javax/security/auth/x500/X500Principal.equals:(Ljava/lang/Object;)Z
        //    92: istore          9
        //    94: iload           9
        //    96: istore_2       
        //    97: iload_2        
        //    98: ifne            39
        //   101: iinc            5, 1
        //   104: iload_2        
        //   105: istore          6
        //   107: goto            24
        //   110: iconst_0       
        //   111: istore_3       
        //   112: goto            53
        //   115: astore_1       
        //   116: iconst_0       
        //   117: istore_2       
        //   118: goto            39
        //   121: astore          7
        //   123: iload           6
        //   125: istore_2       
        //   126: goto            39
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      18     115    121    Ljava/lang/Exception;
        //  24     29     121    129    Ljava/lang/Exception;
        //  57     94     121    129    Ljava/lang/Exception;
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
    
    public static JSONObject b(final Map<String, String> map) {
        if (map == null) {
            return null;
        }
        final JSONObject jsonObject = new JSONObject();
        for (final Map.Entry<String, String> entry : map.entrySet()) {
            final String s = entry.getKey();
            final String value = entry.getValue();
            try {
                jsonObject.put(s, (Object)value);
            }
            catch (Exception ex) {}
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
