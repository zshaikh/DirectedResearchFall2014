package com.vungle.sdk;

import android.annotation.*;
import android.telephony.*;
import javax.inject.*;
import android.os.*;
import android.net.wifi.*;
import javax.crypto.*;
import javax.crypto.spec.*;
import android.util.*;
import java.security.*;
import android.content.*;
import android.provider.*;
import android.net.*;
import java.io.*;
import java.util.*;
import org.json.*;

@Singleton
@SuppressLint({ "NewApi" })
public class VungleUtil
{
    @Inject
    TelephonyManager a;
    @Inject
    Provider<VungleCache> b;
    @Inject
    Provider<VungleConnectionHandler> c;
    
    public static String a() {
        String s = IVungleConstants.i;
        if (Build$VERSION.SDK_INT < 9) {
            return s;
        }
        try {
            s = Build.SERIAL;
            return s;
        }
        catch (NoSuchFieldError noSuchFieldError) {
            return IVungleConstants.i;
        }
    }
    
    public static String a(final Context context) {
        try {
            return ((WifiManager)context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        }
        catch (SecurityException ex) {
            return null;
        }
    }
    
    private static String a(final Context p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/lang/StringBuilder;
        //     3: dup            
        //     4: invokespecial   java/lang/StringBuilder.<init>:()V
        //     7: astore_2       
        //     8: aload_0        
        //     9: aload_1        
        //    10: invokevirtual   android/content/Context.openFileInput:(Ljava/lang/String;)Ljava/io/FileInputStream;
        //    13: astore          9
        //    15: new             Ljava/io/InputStreamReader;
        //    18: dup            
        //    19: aload           9
        //    21: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;)V
        //    24: astore          5
        //    26: new             Ljava/io/BufferedReader;
        //    29: dup            
        //    30: aload           5
        //    32: invokespecial   java/io/BufferedReader.<init>:(Ljava/io/Reader;)V
        //    35: astore          10
        //    37: aload           10
        //    39: invokevirtual   java/io/BufferedReader.readLine:()Ljava/lang/String;
        //    42: astore          11
        //    44: aload           11
        //    46: ifnull          116
        //    49: aload_2        
        //    50: aload           11
        //    52: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    55: pop            
        //    56: goto            37
        //    59: astore_3       
        //    60: aload           9
        //    62: astore          6
        //    64: aload           10
        //    66: astore          4
        //    68: aload           4
        //    70: ifnull          78
        //    73: aload           4
        //    75: invokevirtual   java/io/BufferedReader.close:()V
        //    78: aload           5
        //    80: ifnull          88
        //    83: aload           5
        //    85: invokevirtual   java/io/InputStreamReader.close:()V
        //    88: aload           6
        //    90: ifnull          98
        //    93: aload           6
        //    95: invokevirtual   java/io/FileInputStream.close:()V
        //    98: aload_3        
        //    99: athrow         
        //   100: astore          8
        //   102: getstatic       com/vungle/sdk/IVungleConstants.b:Ljava/lang/String;
        //   105: ldc             "FileNotFoundException"
        //   107: aload           8
        //   109: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   112: getstatic       com/vungle/sdk/IVungleConstants.i:Ljava/lang/String;
        //   115: areturn        
        //   116: aload           10
        //   118: invokevirtual   java/io/BufferedReader.close:()V
        //   121: aload           5
        //   123: invokevirtual   java/io/InputStreamReader.close:()V
        //   126: aload           9
        //   128: ifnull          136
        //   131: aload           9
        //   133: invokevirtual   java/io/FileInputStream.close:()V
        //   136: aload_2        
        //   137: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   140: astore          13
        //   142: aload           13
        //   144: areturn        
        //   145: astore          7
        //   147: getstatic       com/vungle/sdk/IVungleConstants.b:Ljava/lang/String;
        //   150: ldc             "IOException"
        //   152: aload           7
        //   154: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   157: goto            112
        //   160: astore_3       
        //   161: aconst_null    
        //   162: astore          4
        //   164: aconst_null    
        //   165: astore          5
        //   167: aconst_null    
        //   168: astore          6
        //   170: goto            68
        //   173: astore_3       
        //   174: aload           9
        //   176: astore          6
        //   178: aconst_null    
        //   179: astore          4
        //   181: aconst_null    
        //   182: astore          5
        //   184: goto            68
        //   187: astore_3       
        //   188: aload           9
        //   190: astore          6
        //   192: aconst_null    
        //   193: astore          4
        //   195: goto            68
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  0      8      100    112    Ljava/io/FileNotFoundException;
        //  0      8      145    160    Ljava/io/IOException;
        //  8      15     160    173    Any
        //  15     26     173    187    Any
        //  26     37     187    198    Any
        //  37     44     59     68     Any
        //  49     56     59     68     Any
        //  73     78     100    112    Ljava/io/FileNotFoundException;
        //  73     78     145    160    Ljava/io/IOException;
        //  83     88     100    112    Ljava/io/FileNotFoundException;
        //  83     88     145    160    Ljava/io/IOException;
        //  93     98     100    112    Ljava/io/FileNotFoundException;
        //  93     98     145    160    Ljava/io/IOException;
        //  98     100    100    112    Ljava/io/FileNotFoundException;
        //  98     100    145    160    Ljava/io/IOException;
        //  116    126    100    112    Ljava/io/FileNotFoundException;
        //  116    126    145    160    Ljava/io/IOException;
        //  131    136    100    112    Ljava/io/FileNotFoundException;
        //  131    136    145    160    Ljava/io/IOException;
        //  136    142    100    112    Ljava/io/FileNotFoundException;
        //  136    142    145    160    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 95, Size: 95
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
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
    
    public static String a(final String s) {
        final byte[] e = e(s);
        final int length = e.length;
        final StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; ++i) {
            sb.append(Character.forDigit(0xF & e[i] >> 4, 16));
            sb.append(Character.forDigit(0xF & e[i], 16));
        }
        return sb.toString();
    }
    
    private static String a(final String s, final String s2) {
        try {
            final Mac instance = Mac.getInstance("HmacSHA256");
            instance.init(new SecretKeySpec(s2.getBytes(), instance.getAlgorithm()));
            return Base64.encodeToString(instance.doFinal(s.getBytes()), 8);
        }
        catch (NoSuchAlgorithmException ex) {
            ex.printStackTrace();
            return s;
        }
        catch (InvalidKeyException ex2) {
            ex2.printStackTrace();
            return s;
        }
    }
    
    public static void a(final Context context, final String s, final String s2, final boolean b) {
        final SharedPreferences$Editor edit = context.getSharedPreferences(s, 0).edit();
        if (edit != null) {
            edit.putBoolean(s2, b);
            edit.commit();
        }
    }
    
    public static boolean a(final Context context, final String s, final String s2) {
        return context.getSharedPreferences(s, 0).getBoolean(s2, false);
    }
    
    public static String b() {
        final String a = IVungleConstants.a;
        Locale.getDefault().getISO3Language();
        return Locale.getDefault().getISO3Language();
    }
    
    public static String b(final Context context) {
        return Settings$Secure.getString(context.getContentResolver(), "android_id");
    }
    
    public static boolean b(final String anObject) {
        return anObject == null || IVungleConstants.i.equals(anObject);
    }
    
    public static String c() {
        final String a = IVungleConstants.a;
        TimeZone.getDefault().getID();
        return TimeZone.getDefault().getID();
    }
    
    public static String c(final Context context) {
        final String b = b(context);
        if (b != null && b.length() != 0) {
            return b;
        }
        return a();
    }
    
    public static boolean c(final String s) {
        return !b(s) && (".m3u8".equalsIgnoreCase(s.substring(s.length() - 5, s.length())) || ".m3u".equalsIgnoreCase(s.substring(s.length() - 4, s.length())));
    }
    
    public static String d(final Context context) {
        final String i = IVungleConstants.i;
        final ConnectivityManager connectivityManager = (ConnectivityManager)context.getSystemService("connectivity");
        if (connectivityManager != null && connectivityManager.getActiveNetworkInfo() != null) {
            switch (connectivityManager.getActiveNetworkInfo().getType()) {
                case 1:
                case 6: {
                    return "wifi";
                }
                case 0: {
                    return "mobile";
                }
            }
        }
        return i;
    }
    
    public static String d(final String s) {
        try {
            final JSONObject jsonObject = new JSONObject(s);
            final String string = jsonObject.getString("campaign");
            final String string2 = jsonObject.getString("pubAppId");
            return String.format("pubAppId=%s,SignedHeaders=host;x-vung-date;x-vung-target,Signature=%s", string2, a(s, string + string2 + System.currentTimeMillis()));
        }
        catch (JSONException ex) {
            ex.printStackTrace();
            return "";
        }
    }
    
    public static boolean e(final Context context) {
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        boolean connected = false;
        if (activeNetworkInfo != null) {
            connected = activeNetworkInfo.isConnected();
        }
        return connected;
    }
    
    private static byte[] e(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: sipush          1024
        //     3: newarray        B
        //     5: astore_1       
        //     6: new             Ljava/io/FileInputStream;
        //     9: dup            
        //    10: aload_0        
        //    11: invokespecial   java/io/FileInputStream.<init>:(Ljava/lang/String;)V
        //    14: astore_2       
        //    15: ldc_w           "MD5"
        //    18: invokestatic    java/security/MessageDigest.getInstance:(Ljava/lang/String;)Ljava/security/MessageDigest;
        //    21: astore          7
        //    23: aload_2        
        //    24: aload_1        
        //    25: invokevirtual   java/io/InputStream.read:([B)I
        //    28: istore          8
        //    30: iload           8
        //    32: ifle            44
        //    35: aload           7
        //    37: aload_1        
        //    38: iconst_0       
        //    39: iload           8
        //    41: invokevirtual   java/security/MessageDigest.update:([BII)V
        //    44: iload           8
        //    46: iconst_m1      
        //    47: if_icmpne       23
        //    50: aload           7
        //    52: invokevirtual   java/security/MessageDigest.digest:()[B
        //    55: astore          9
        //    57: aload_2        
        //    58: invokevirtual   java/io/InputStream.close:()V
        //    61: aload           9
        //    63: areturn        
        //    64: astore          13
        //    66: aconst_null    
        //    67: astore_2       
        //    68: aload           13
        //    70: astore_3       
        //    71: aload_2        
        //    72: ifnull          79
        //    75: aload_2        
        //    76: invokevirtual   java/io/InputStream.close:()V
        //    79: aload_3        
        //    80: athrow         
        //    81: astore          6
        //    83: getstatic       com/vungle/sdk/IVungleConstants.b:Ljava/lang/String;
        //    86: ldc             "FileNotFoundException"
        //    88: aload           6
        //    90: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //    93: aload_1        
        //    94: areturn        
        //    95: astore          12
        //    97: aload           9
        //    99: astore_1       
        //   100: aload           12
        //   102: astore          4
        //   104: getstatic       com/vungle/sdk/IVungleConstants.b:Ljava/lang/String;
        //   107: ldc_w           "NoSuchAlgorithmException"
        //   110: aload           4
        //   112: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   115: aload_1        
        //   116: areturn        
        //   117: astore          11
        //   119: aload           9
        //   121: astore_1       
        //   122: aload           11
        //   124: astore          5
        //   126: getstatic       com/vungle/sdk/IVungleConstants.b:Ljava/lang/String;
        //   129: ldc             "IOException"
        //   131: aload           5
        //   133: invokestatic    com/vungle/sdk/r.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   136: aload_1        
        //   137: areturn        
        //   138: astore          5
        //   140: goto            126
        //   143: astore          4
        //   145: goto            104
        //   148: astore          10
        //   150: aload           9
        //   152: astore_1       
        //   153: aload           10
        //   155: astore          6
        //   157: goto            83
        //   160: astore_3       
        //   161: goto            71
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                    
        //  -----  -----  -----  -----  ----------------------------------------
        //  6      15     64     71     Any
        //  15     23     160    164    Any
        //  23     30     160    164    Any
        //  35     44     160    164    Any
        //  50     57     160    164    Any
        //  57     61     148    160    Ljava/io/FileNotFoundException;
        //  57     61     95     104    Ljava/security/NoSuchAlgorithmException;
        //  57     61     117    126    Ljava/io/IOException;
        //  75     79     81     83     Ljava/io/FileNotFoundException;
        //  75     79     143    148    Ljava/security/NoSuchAlgorithmException;
        //  75     79     138    143    Ljava/io/IOException;
        //  79     81     81     83     Ljava/io/FileNotFoundException;
        //  79     81     143    148    Ljava/security/NoSuchAlgorithmException;
        //  79     81     138    143    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0023:
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
    
    public static String f() {
        while (true) {
            while (true) {
                try {
                    final StringBuilder append = new StringBuilder().append("");
                    if (Build.MANUFACTURER != null) {
                        final String manufacturer = Build.MANUFACTURER;
                        final StringBuilder append2 = new StringBuilder().append(append.append(manufacturer).toString() + ",");
                        String model;
                        if (Build.MODEL != null) {
                            model = Build.MODEL;
                        }
                        else {
                            model = "";
                        }
                        return append2.append(model).toString();
                    }
                }
                catch (Throwable t) {
                    return "<Unknown>";
                }
                final String manufacturer = "";
                continue;
            }
        }
    }
    
    private static void g() {
        final float x = n.x;
        n.x = n.y;
        n.y = x;
    }
    
    public static void g(final Context obj) {
        final String a = IVungleConstants.a;
        new StringBuilder("Call to readMetricDataQueue(Context ").append(obj).append(")");
        final File filesDir = obj.getFilesDir();
        if (filesDir != null && new File(filesDir.getAbsolutePath() + File.separator + "MetricDataQueue").exists()) {
            final String a2 = a(obj, "MetricDataQueue");
            final ArrayList<String> list = new ArrayList<String>();
            if (b(a2)) {
                ab.a(list);
                final String a3 = IVungleConstants.a;
            }
            else {
                try {
                    final JSONArray jsonArray = new JSONArray(a2);
                    final int length = jsonArray.length();
                    final String a4 = IVungleConstants.a;
                    new StringBuilder().append(length).append(" Pending metric data requests found");
                    for (int i = 0; i < length; ++i) {
                        list.add(jsonArray.get(i).toString());
                    }
                    ab.a(list);
                }
                catch (JSONException ex) {
                    r.a(IVungleConstants.b, "JSONException", (Throwable)ex);
                }
                finally {
                    final File file = new File(obj.getFilesDir().getAbsoluteFile() + File.separator + "MetricDataQueue");
                    if (file.exists()) {
                        final String a5 = IVungleConstants.a;
                        new StringBuilder("Deleting : ").append(file.getAbsolutePath());
                        file.delete();
                    }
                }
            }
        }
    }
    
    public static void h(final Context context) {
        final int orientation = context.getResources().getConfiguration().orientation;
        if (orientation == 2 || orientation == 3) {
            if (n.y > n.x) {
                g();
            }
        }
        else if ((orientation == 1 || orientation == 0) && n.x > n.y) {
            g();
        }
    }
    
    public final String d() {
        try {
            String networkOperatorName = this.a.getNetworkOperatorName();
            if (networkOperatorName == null || networkOperatorName.length() == 0) {
                networkOperatorName = null;
            }
            return networkOperatorName;
        }
        catch (Throwable t) {
            ab.a(t);
            return null;
        }
    }
    
    public final void e() {
        n.k = true;
        ((VungleConnectionHandler)this.c.get()).a();
        ((VungleConnectionHandler)this.c.get()).c();
    }
    
    public final String f(final Context context) {
        if (!e(context)) {
            return "Network";
        }
        if (this.b.get() == null || !VungleCache.a()) {
            return "External Storage";
        }
        return null;
    }
}
