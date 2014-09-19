package com.inmobi.commons.internal;

import javax.crypto.*;
import android.content.*;
import java.security.interfaces.*;
import java.math.*;
import java.security.spec.*;
import android.provider.*;
import java.security.*;
import android.net.*;
import android.view.*;

public class InternalSDKUtil
{
    public static final String INMOBI_SDK_RELEASE_VERSION = "3.6.1";
    static final String a = "IMCOMMONS_3.6.1";
    private static final String b = "3.6.1";
    private static final String c = "C10F7968CFE2C76AC6F0650C877806D4514DE58FC239592D2385BCE5609A84B2A0FBDAF29B05505EAD1FDFEF3D7209ACBF34B5D0A806DF18147EA9C0337D6B5B";
    private static final String d = "010001";
    private static final String e = "1";
    private static int f = 0;
    private static String g;
    private static final String h = "getRotation";
    private static final String i = "getOrientation";
    
    static {
        InternalSDKUtil.f = 0;
    }
    
    private static String a(final String s, final String s2) {
        try {
            final byte[] bytes = s.getBytes("UTF-8");
            final byte[] array = new byte[bytes.length];
            final byte[] bytes2 = s2.getBytes("UTF-8");
            for (int i = 0; i < bytes.length; ++i) {
                array[i] = (byte)(bytes[i] ^ bytes2[i % bytes2.length]);
            }
            return new String(Base64.encode(array, 2), "UTF-8");
        }
        catch (Exception ex) {
            IMLog.debug("IMCOMMONS_3.6.1", "Exception in xor with random integer", ex);
            return "";
        }
    }
    
    private static byte[] a(final byte[] array, final int n, final Cipher cipher) throws IllegalBlockSizeException, BadPaddingException {
        final byte[] array2 = new byte[0];
        final byte[] array3 = new byte[0];
        int n2;
        if (n == 1) {
            n2 = 64;
        }
        else {
            n2 = 64;
        }
        final int length = array.length;
        byte[] array4 = new byte[n2];
        byte[] array5 = array3;
        for (int i = 0; i < length; ++i) {
            if (i > 0 && i % n2 == 0) {
                final byte[] a = a(array5, cipher.doFinal(array4));
                int n3;
                if (i + 64 > length) {
                    n3 = length - i;
                }
                else {
                    n3 = n2;
                }
                final byte[] array6 = new byte[n3];
                array5 = a;
                array4 = array6;
            }
            array4[i % n2] = array[i];
        }
        return a(array5, cipher.doFinal(array4));
    }
    
    private static byte[] a(final byte[] array, final byte[] array2) {
        final byte[] array3 = new byte[array.length + array2.length];
        for (int i = 0; i < array.length; ++i) {
            array3[i] = array[i];
        }
        for (int j = 0; j < array2.length; ++j) {
            array3[j + array.length] = array2[j];
        }
        return array3;
    }
    
    public static String byteToHex(final byte b) {
        try {
            final char[] array = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
            return new String(new char[] { array[0xF & b >> 4], array[b & 0xF] });
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    public static boolean checkNetworkAvailibility(final Context context) {
        if (context == null) {
            return false;
        }
        final ConnectivityManager connectivityManager = (ConnectivityManager)context.getSystemService("connectivity");
        return connectivityManager.getActiveNetworkInfo() != null && connectivityManager.getActiveNetworkInfo().isConnected();
    }
    
    public static String encryptRSA(final String s) {
        try {
            final RSAPublicKey key = (RSAPublicKey)KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(new BigInteger("C10F7968CFE2C76AC6F0650C877806D4514DE58FC239592D2385BCE5609A84B2A0FBDAF29B05505EAD1FDFEF3D7209ACBF34B5D0A806DF18147EA9C0337D6B5B", 16), new BigInteger("010001", 16)));
            final Cipher instance = Cipher.getInstance("RSA/ECB/nopadding");
            instance.init(1, key);
            return new String(Base64.encode(a(s.getBytes("UTF-8"), 1, instance), 0));
        }
        catch (Exception ex) {
            IMLog.debug("IMCOMMONS_3.6.1", "Exception in encryptRSA", ex);
            return null;
        }
    }
    
    public static String getAndroidId(final Context context) {
        while (true) {
            try {
                String s = Settings$Secure.getString(context.getContentResolver(), "android_id");
                if (s != null) {
                    return s;
                }
                try {
                    s = Settings$System.getString(context.getContentResolver(), "android_id");
                    return s;
                }
                catch (Exception ex) {
                    return s;
                }
            }
            catch (Exception ex2) {
                final String s = null;
                continue;
            }
            break;
        }
    }
    
    public static String getAndroidIdMD5(final Context context) {
        try {
            final String androidId = getAndroidId(context);
            final MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(androidId.getBytes());
            final byte[] digest = instance.digest();
            final StringBuffer sb = new StringBuffer();
            for (int i = 0; i < digest.length; ++i) {
                sb.append(Integer.toString(256 + (0xFF & digest[i]), 16).substring(1));
            }
            return sb.toString();
        }
        catch (Exception ex) {
            IMLog.internal("IMCOMMONS_3.6.1", "Exception in getting MD5 Android Id", ex);
            return null;
        }
    }
    
    public static String getConnectivityType(final Context context) {
        Block_0: {
            break Block_0;
        Label_0110:
            while (true) {
                int i = 0;
                do {
                    Label_0101: {
                        Label_0077: {
                            break Label_0077;
                            try {
                                final int checkCallingOrSelfPermission = context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE");
                                String s = null;
                                if (checkCallingOrSelfPermission != 0) {
                                    return s;
                                }
                                final ConnectivityManager connectivityManager = (ConnectivityManager)context.getSystemService("connectivity");
                                s = null;
                                if (connectivityManager == null) {
                                    return s;
                                }
                                final NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                                final int type = activeNetworkInfo.getType();
                                i = activeNetworkInfo.getSubtype();
                                if (type == 1) {
                                    return "wifi";
                                }
                                s = null;
                                if (type != 0) {
                                    return s;
                                }
                                if (i == 1) {
                                    return "gprs";
                                }
                                break Label_0101;
                                // iftrue(Label_0096:, i != 0)
                                return "carrier";
                            }
                            catch (Exception ex) {
                                IMLog.internal("IMCOMMONS_3.6.1", "Error getting the network info", ex);
                                return null;
                            }
                        }
                        return "carrier";
                    }
                    if (i == 2) {
                        return "edge";
                    }
                    continue Label_0110;
                    String s = null;
                    Label_0096: {
                        s = "carrier";
                    }
                    return s;
                } while (i != 3);
                break;
            }
        }
        return "umts";
    }
    
    public static int getDisplayRotation(final Display p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: sipush          -999
        //     3: istore_1       
        //     4: ldc_w           Landroid/view/Display;.class
        //     7: ldc             "getRotation"
        //     9: aconst_null    
        //    10: invokevirtual   java/lang/Class.getMethod:(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
        //    13: astore          8
        //    15: aload           8
        //    17: astore          4
        //    19: aload           4
        //    21: ifnull          42
        //    24: aload           4
        //    26: aload_0        
        //    27: aconst_null    
        //    28: invokevirtual   java/lang/reflect/Method.invoke:(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
        //    31: checkcast       Ljava/lang/Integer;
        //    34: invokevirtual   java/lang/Integer.intValue:()I
        //    37: istore          6
        //    39: iload           6
        //    41: istore_1       
        //    42: iload_1        
        //    43: ireturn        
        //    44: astore_2       
        //    45: ldc_w           Landroid/view/Display;.class
        //    48: ldc             "getOrientation"
        //    50: aconst_null    
        //    51: invokevirtual   java/lang/Class.getMethod:(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
        //    54: astore          7
        //    56: aload           7
        //    58: astore          4
        //    60: goto            19
        //    63: astore_3       
        //    64: aconst_null    
        //    65: astore          4
        //    67: goto            19
        //    70: astore          5
        //    72: iload_1        
        //    73: ireturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  4      15     44     70     Ljava/lang/NoSuchMethodException;
        //  24     39     70     74     Ljava/lang/Exception;
        //  45     56     63     70     Ljava/lang/NoSuchMethodException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0042:
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
    
    public static String getODIN1(final String s) {
        if (s != null) {
            try {
                if (!"".equals(s.trim())) {
                    final MessageDigest instance = MessageDigest.getInstance("SHA-1");
                    instance.update(s.getBytes());
                    final byte[] digest = instance.digest();
                    final StringBuffer sb = new StringBuffer();
                    for (int i = 0; i < digest.length; ++i) {
                        sb.append(Integer.toString(256 + (0xFF & digest[i]), 16).substring(1));
                    }
                    return sb.toString();
                }
            }
            catch (Exception ex) {
                IMLog.debug("IMCOMMONS_3.6.1", "Exception in getting ODIN-1", ex);
                return null;
            }
        }
        return null;
    }
    
    public static String getODIN1MD5(final String s) {
        if (s != null) {
            try {
                if (!"".equals(s.trim())) {
                    final String odin1 = getODIN1(s);
                    if (odin1 == null) {
                        return null;
                    }
                    final MessageDigest instance = MessageDigest.getInstance("MD5");
                    instance.update(odin1.getBytes());
                    final byte[] digest = instance.digest();
                    final StringBuffer sb = new StringBuffer();
                    for (int i = 0; i < digest.length; ++i) {
                        sb.append(Integer.toString(256 + (0xFF & digest[i]), 16).substring(1));
                    }
                    return sb.toString();
                }
            }
            catch (Exception ex) {
                IMLog.debug("IMCOMMONS_3.6.1", "Error generating Odin1");
                return null;
            }
        }
        return null;
    }
    
    public static String getRSAKeyVersion() {
        return "1";
    }
    
    public static String getUIDMap(final String s, final String s2, final String s3, final String s4, final int n, final String s5) {
        final StringBuilder sb = new StringBuilder();
        sb.append("{");
        int n2 = 0;
        if (s != null) {
            final String a = a(s, s5);
            sb.append("LID:'");
            sb.append(a);
            sb.append("'");
            n2 = 1;
        }
        if (s2 != null) {
            if (n2 == 1) {
                sb.append(",");
            }
            final String a2 = a(s2, s5);
            sb.append("SID:'");
            sb.append(a2);
            sb.append("'");
            n2 = 1;
        }
        if (s4 != null) {
            if (n2 == 1) {
                sb.append(",");
            }
            final String a3 = a(s4, s5);
            sb.append("UM5:'");
            sb.append(a3);
            sb.append("'");
            n2 = 1;
        }
        if (n <= 0) {
            if (s3 != null) {
                if (n2 == 1) {
                    sb.append(",");
                }
                final String a4 = a(s3, s5);
                sb.append("O1:'");
                sb.append(a4);
                sb.append("'");
                n2 = 1;
            }
        }
        else if (s3 != null && (n & 0x2) != 0x2 && (n & 0x1) == 0x1) {
            if (n2 == 1) {
                sb.append(",");
            }
            final String a5 = a(s3, s5);
            sb.append("O1:'");
            sb.append(a5);
            sb.append("'");
            n2 = 1;
        }
        sb.append("}");
        String encryptRSA = null;
        if (n2 == 1) {
            encryptRSA = encryptRSA(sb.toString());
        }
        return encryptRSA;
    }
    
    public static String getUserAgent(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/inmobi/commons/internal/InternalSDKUtil.g:Ljava/lang/String;
        //     3: ifnonnull       37
        //     6: ldc             Lcom/inmobi/commons/internal/InternalSDKUtil;.class
        //     8: monitorenter   
        //     9: getstatic       com/inmobi/commons/internal/InternalSDKUtil.g:Ljava/lang/String;
        //    12: astore_2       
        //    13: aload_2        
        //    14: ifnonnull       34
        //    17: new             Landroid/webkit/WebView;
        //    20: dup            
        //    21: aload_0        
        //    22: invokespecial   android/webkit/WebView.<init>:(Landroid/content/Context;)V
        //    25: invokevirtual   android/webkit/WebView.getSettings:()Landroid/webkit/WebSettings;
        //    28: invokevirtual   android/webkit/WebSettings.getUserAgentString:()Ljava/lang/String;
        //    31: putstatic       com/inmobi/commons/internal/InternalSDKUtil.g:Ljava/lang/String;
        //    34: ldc             Lcom/inmobi/commons/internal/InternalSDKUtil;.class
        //    36: monitorexit    
        //    37: getstatic       com/inmobi/commons/internal/InternalSDKUtil.g:Ljava/lang/String;
        //    40: areturn        
        //    41: astore_1       
        //    42: ldc             Lcom/inmobi/commons/internal/InternalSDKUtil;.class
        //    44: monitorexit    
        //    45: aload_1        
        //    46: athrow         
        //    47: astore_3       
        //    48: goto            34
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  9      13     41     47     Any
        //  17     34     47     51     Ljava/lang/Exception;
        //  17     34     41     47     Any
        //  34     37     41     47     Any
        //  42     45     41     47     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0034:
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
    
    public static boolean getWhetherTablet(final int n, final int n2, final int n3) {
        return (n2 > n3 && (n == 0 || n == 2)) || (n2 < n3 && (n == 1 || n == 3));
    }
    
    public static int incrementBaseUrl() {
        synchronized (InternalSDKUtil.class) {
            return ++InternalSDKUtil.f;
        }
    }
    
    public static boolean validateAppId(final String s) {
        if (s == null) {
            IMLog.debug("IMCOMMONS_3.6.1", "appId is null");
            return false;
        }
        if (s.matches("(x)+")) {
            IMLog.debug("IMCOMMONS_3.6.1", "appId is all xxxxxxx");
            return false;
        }
        if ("".equals(s.trim())) {
            IMLog.debug("IMCOMMONS_3.6.1", "appId is all blank");
            return false;
        }
        return true;
    }
}
