package com.fusepowered.util;

import java.util.*;
import android.content.*;

public class DeviceInfoFactory
{
    protected static final String PREFS_DEVICE_ID = "device_id";
    protected static final String PREFS_FILE = "device_id.xml";
    private static final String TAG = "DeviceInfoFactory";
    protected static String countryCode;
    protected static String deviceId;
    protected static String deviceName;
    protected static String deviceSoftwareVersion;
    protected static String fingerprint;
    protected static String hardware;
    protected static String language;
    protected static String macAddress;
    protected static String manufacturer;
    protected static String model;
    protected static String networkCountryIso;
    protected static String networkOperator;
    protected static String networkOperatorName;
    protected static String networkType;
    protected static String packageName;
    protected static String phoneType;
    protected static String product;
    protected static String simCountryIso;
    protected static String simOperator;
    protected static String simOperatorName;
    protected static String user;
    protected static UUID uuid;
    Context ctx;
    
    public DeviceInfoFactory(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokespecial   java/lang/Object.<init>:()V
        //     4: aload_0        
        //     5: aload_1        
        //     6: putfield        com/fusepowered/util/DeviceInfoFactory.ctx:Landroid/content/Context;
        //     9: getstatic       com/fusepowered/util/DeviceInfoFactory.countryCode:Ljava/lang/String;
        //    12: ifnonnull       31
        //    15: aload_1        
        //    16: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //    19: invokevirtual   android/content/res/Resources.getConfiguration:()Landroid/content/res/Configuration;
        //    22: getfield        android/content/res/Configuration.locale:Ljava/util/Locale;
        //    25: invokevirtual   java/util/Locale.getCountry:()Ljava/lang/String;
        //    28: putstatic       com/fusepowered/util/DeviceInfoFactory.countryCode:Ljava/lang/String;
        //    31: getstatic       com/fusepowered/util/DeviceInfoFactory.language:Ljava/lang/String;
        //    34: ifnonnull       53
        //    37: aload_1        
        //    38: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //    41: invokevirtual   android/content/res/Resources.getConfiguration:()Landroid/content/res/Configuration;
        //    44: getfield        android/content/res/Configuration.locale:Ljava/util/Locale;
        //    47: invokevirtual   java/util/Locale.getLanguage:()Ljava/lang/String;
        //    50: putstatic       com/fusepowered/util/DeviceInfoFactory.language:Ljava/lang/String;
        //    53: getstatic       com/fusepowered/util/DeviceInfoFactory.packageName:Ljava/lang/String;
        //    56: ifnonnull       66
        //    59: aload_1        
        //    60: invokevirtual   android/content/Context.getPackageName:()Ljava/lang/String;
        //    63: putstatic       com/fusepowered/util/DeviceInfoFactory.packageName:Ljava/lang/String;
        //    66: getstatic       com/fusepowered/util/DeviceInfoFactory.deviceName:Ljava/lang/String;
        //    69: ifnonnull       78
        //    72: getstatic       android/os/Build.USER:Ljava/lang/String;
        //    75: putstatic       com/fusepowered/util/DeviceInfoFactory.deviceName:Ljava/lang/String;
        //    78: getstatic       com/fusepowered/util/DeviceInfoFactory.user:Ljava/lang/String;
        //    81: ifnonnull       90
        //    84: getstatic       android/os/Build.USER:Ljava/lang/String;
        //    87: putstatic       com/fusepowered/util/DeviceInfoFactory.user:Ljava/lang/String;
        //    90: getstatic       com/fusepowered/util/DeviceInfoFactory.manufacturer:Ljava/lang/String;
        //    93: ifnonnull       102
        //    96: getstatic       android/os/Build.MANUFACTURER:Ljava/lang/String;
        //    99: putstatic       com/fusepowered/util/DeviceInfoFactory.manufacturer:Ljava/lang/String;
        //   102: getstatic       com/fusepowered/util/DeviceInfoFactory.hardware:Ljava/lang/String;
        //   105: ifnonnull       114
        //   108: getstatic       android/os/Build.HARDWARE:Ljava/lang/String;
        //   111: putstatic       com/fusepowered/util/DeviceInfoFactory.hardware:Ljava/lang/String;
        //   114: getstatic       com/fusepowered/util/DeviceInfoFactory.fingerprint:Ljava/lang/String;
        //   117: ifnonnull       126
        //   120: getstatic       android/os/Build.FINGERPRINT:Ljava/lang/String;
        //   123: putstatic       com/fusepowered/util/DeviceInfoFactory.fingerprint:Ljava/lang/String;
        //   126: getstatic       com/fusepowered/util/DeviceInfoFactory.model:Ljava/lang/String;
        //   129: ifnonnull       138
        //   132: getstatic       android/os/Build.MODEL:Ljava/lang/String;
        //   135: putstatic       com/fusepowered/util/DeviceInfoFactory.model:Ljava/lang/String;
        //   138: getstatic       com/fusepowered/util/DeviceInfoFactory.product:Ljava/lang/String;
        //   141: ifnonnull       150
        //   144: getstatic       android/os/Build.PRODUCT:Ljava/lang/String;
        //   147: putstatic       com/fusepowered/util/DeviceInfoFactory.product:Ljava/lang/String;
        //   150: aload_1        
        //   151: ldc             "phone"
        //   153: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
        //   156: checkcast       Landroid/telephony/TelephonyManager;
        //   159: astore_2       
        //   160: getstatic       com/fusepowered/util/DeviceInfoFactory.deviceId:Ljava/lang/String;
        //   163: ifnonnull       173
        //   166: aload_2        
        //   167: invokevirtual   android/telephony/TelephonyManager.getDeviceId:()Ljava/lang/String;
        //   170: putstatic       com/fusepowered/util/DeviceInfoFactory.deviceId:Ljava/lang/String;
        //   173: getstatic       com/fusepowered/util/DeviceInfoFactory.deviceSoftwareVersion:Ljava/lang/String;
        //   176: ifnonnull       188
        //   179: getstatic       android/os/Build$VERSION.SDK_INT:I
        //   182: invokestatic    java/lang/String.valueOf:(I)Ljava/lang/String;
        //   185: putstatic       com/fusepowered/util/DeviceInfoFactory.deviceSoftwareVersion:Ljava/lang/String;
        //   188: getstatic       com/fusepowered/util/DeviceInfoFactory.networkCountryIso:Ljava/lang/String;
        //   191: ifnonnull       201
        //   194: aload_2        
        //   195: invokevirtual   android/telephony/TelephonyManager.getNetworkCountryIso:()Ljava/lang/String;
        //   198: putstatic       com/fusepowered/util/DeviceInfoFactory.networkCountryIso:Ljava/lang/String;
        //   201: getstatic       com/fusepowered/util/DeviceInfoFactory.networkOperator:Ljava/lang/String;
        //   204: ifnonnull       214
        //   207: aload_2        
        //   208: invokevirtual   android/telephony/TelephonyManager.getNetworkOperator:()Ljava/lang/String;
        //   211: putstatic       com/fusepowered/util/DeviceInfoFactory.networkOperator:Ljava/lang/String;
        //   214: getstatic       com/fusepowered/util/DeviceInfoFactory.networkOperatorName:Ljava/lang/String;
        //   217: ifnonnull       227
        //   220: aload_2        
        //   221: invokevirtual   android/telephony/TelephonyManager.getNetworkOperatorName:()Ljava/lang/String;
        //   224: putstatic       com/fusepowered/util/DeviceInfoFactory.networkOperatorName:Ljava/lang/String;
        //   227: getstatic       com/fusepowered/util/DeviceInfoFactory.simOperatorName:Ljava/lang/String;
        //   230: ifnonnull       240
        //   233: aload_2        
        //   234: invokevirtual   android/telephony/TelephonyManager.getSimOperatorName:()Ljava/lang/String;
        //   237: putstatic       com/fusepowered/util/DeviceInfoFactory.simOperatorName:Ljava/lang/String;
        //   240: getstatic       com/fusepowered/util/DeviceInfoFactory.simOperator:Ljava/lang/String;
        //   243: ifnonnull       253
        //   246: aload_2        
        //   247: invokevirtual   android/telephony/TelephonyManager.getSimOperator:()Ljava/lang/String;
        //   250: putstatic       com/fusepowered/util/DeviceInfoFactory.simOperator:Ljava/lang/String;
        //   253: getstatic       com/fusepowered/util/DeviceInfoFactory.simCountryIso:Ljava/lang/String;
        //   256: ifnonnull       266
        //   259: aload_2        
        //   260: invokevirtual   android/telephony/TelephonyManager.getSimCountryIso:()Ljava/lang/String;
        //   263: putstatic       com/fusepowered/util/DeviceInfoFactory.simCountryIso:Ljava/lang/String;
        //   266: getstatic       com/fusepowered/util/DeviceInfoFactory.phoneType:Ljava/lang/String;
        //   269: ifnonnull       282
        //   272: aload_2        
        //   273: invokevirtual   android/telephony/TelephonyManager.getPhoneType:()I
        //   276: invokestatic    java/lang/String.valueOf:(I)Ljava/lang/String;
        //   279: putstatic       com/fusepowered/util/DeviceInfoFactory.phoneType:Ljava/lang/String;
        //   282: getstatic       com/fusepowered/util/DeviceInfoFactory.networkType:Ljava/lang/String;
        //   285: ifnonnull       298
        //   288: aload_2        
        //   289: invokevirtual   android/telephony/TelephonyManager.getNetworkType:()I
        //   292: invokestatic    java/lang/String.valueOf:(I)Ljava/lang/String;
        //   295: putstatic       com/fusepowered/util/DeviceInfoFactory.networkType:Ljava/lang/String;
        //   298: getstatic       com/fusepowered/util/DeviceInfoFactory.macAddress:Ljava/lang/String;
        //   301: ifnonnull       325
        //   304: aload_0        
        //   305: getfield        com/fusepowered/util/DeviceInfoFactory.ctx:Landroid/content/Context;
        //   308: ldc             "wifi"
        //   310: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
        //   313: checkcast       Landroid/net/wifi/WifiManager;
        //   316: invokevirtual   android/net/wifi/WifiManager.getConnectionInfo:()Landroid/net/wifi/WifiInfo;
        //   319: invokevirtual   android/net/wifi/WifiInfo.getMacAddress:()Ljava/lang/String;
        //   322: putstatic       com/fusepowered/util/DeviceInfoFactory.macAddress:Ljava/lang/String;
        //   325: getstatic       com/fusepowered/util/DeviceInfoFactory.uuid:Ljava/util/UUID;
        //   328: ifnonnull       507
        //   331: ldc             Lcom/fusepowered/util/DeviceInfoFactory;.class
        //   333: monitorenter   
        //   334: getstatic       com/fusepowered/util/DeviceInfoFactory.uuid:Ljava/util/UUID;
        //   337: ifnonnull       374
        //   340: aload_1        
        //   341: ldc             "device_id.xml"
        //   343: iconst_0       
        //   344: invokevirtual   android/content/Context.getSharedPreferences:(Ljava/lang/String;I)Landroid/content/SharedPreferences;
        //   347: astore          4
        //   349: aload           4
        //   351: ldc             "device_id"
        //   353: aconst_null    
        //   354: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   359: astore          5
        //   361: aload           5
        //   363: ifnull          378
        //   366: aload           5
        //   368: invokestatic    java/util/UUID.fromString:(Ljava/lang/String;)Ljava/util/UUID;
        //   371: putstatic       com/fusepowered/util/DeviceInfoFactory.uuid:Ljava/util/UUID;
        //   374: ldc             Lcom/fusepowered/util/DeviceInfoFactory;.class
        //   376: monitorexit    
        //   377: return         
        //   378: aload_1        
        //   379: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   382: ldc             "android_id"
        //   384: invokestatic    android/provider/Settings$Secure.getString:(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
        //   387: astore          6
        //   389: ldc             "9774d56d682e549c"
        //   391: aload           6
        //   393: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   396: ifne            447
        //   399: aload           6
        //   401: ldc             "utf8"
        //   403: invokevirtual   java/lang/String.getBytes:(Ljava/lang/String;)[B
        //   406: invokestatic    java/util/UUID.nameUUIDFromBytes:([B)Ljava/util/UUID;
        //   409: putstatic       com/fusepowered/util/DeviceInfoFactory.uuid:Ljava/util/UUID;
        //   412: aload           4
        //   414: invokeinterface android/content/SharedPreferences.edit:()Landroid/content/SharedPreferences$Editor;
        //   419: ldc             "device_id"
        //   421: getstatic       com/fusepowered/util/DeviceInfoFactory.uuid:Ljava/util/UUID;
        //   424: invokevirtual   java/util/UUID.toString:()Ljava/lang/String;
        //   427: invokeinterface android/content/SharedPreferences$Editor.putString:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
        //   432: invokeinterface android/content/SharedPreferences$Editor.commit:()Z
        //   437: pop            
        //   438: goto            374
        //   441: astore_3       
        //   442: ldc             Lcom/fusepowered/util/DeviceInfoFactory;.class
        //   444: monitorexit    
        //   445: aload_3        
        //   446: athrow         
        //   447: aload_2        
        //   448: invokevirtual   android/telephony/TelephonyManager.getDeviceId:()Ljava/lang/String;
        //   451: astore          8
        //   453: aload           8
        //   455: ifnull          490
        //   458: aload           8
        //   460: ldc             "utf8"
        //   462: invokevirtual   java/lang/String.getBytes:(Ljava/lang/String;)[B
        //   465: invokestatic    java/util/UUID.nameUUIDFromBytes:([B)Ljava/util/UUID;
        //   468: astore          9
        //   470: aload           9
        //   472: putstatic       com/fusepowered/util/DeviceInfoFactory.uuid:Ljava/util/UUID;
        //   475: goto            412
        //   478: astore          7
        //   480: new             Ljava/lang/RuntimeException;
        //   483: dup            
        //   484: aload           7
        //   486: invokespecial   java/lang/RuntimeException.<init>:(Ljava/lang/Throwable;)V
        //   489: athrow         
        //   490: invokestatic    java/util/UUID.randomUUID:()Ljava/util/UUID;
        //   493: astore          11
        //   495: aload           11
        //   497: astore          9
        //   499: goto            470
        //   502: astore          12
        //   504: goto            325
        //   507: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                  
        //  -----  -----  -----  -----  --------------------------------------
        //  304    325    502    507    Ljava/lang/Exception;
        //  334    361    441    447    Any
        //  366    374    441    447    Any
        //  374    377    441    447    Any
        //  378    389    441    447    Any
        //  389    412    478    490    Ljava/io/UnsupportedEncodingException;
        //  389    412    441    447    Any
        //  412    438    441    447    Any
        //  442    445    441    447    Any
        //  447    453    478    490    Ljava/io/UnsupportedEncodingException;
        //  447    453    441    447    Any
        //  458    470    478    490    Ljava/io/UnsupportedEncodingException;
        //  458    470    441    447    Any
        //  470    475    478    490    Ljava/io/UnsupportedEncodingException;
        //  470    475    441    447    Any
        //  480    490    441    447    Any
        //  490    495    478    490    Ljava/io/UnsupportedEncodingException;
        //  490    495    441    447    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0412:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
    
    public static String getPackageName() {
        return DeviceInfoFactory.packageName;
    }
    
    public String getCountryCode() {
        return DeviceInfoFactory.countryCode;
    }
    
    public String getDeviceId() {
        return DeviceInfoFactory.deviceId;
    }
    
    public String getDeviceName() {
        return DeviceInfoFactory.deviceName;
    }
    
    public String getDeviceSoftwareVersion() {
        return DeviceInfoFactory.deviceSoftwareVersion;
    }
    
    public String getFingerprint() {
        return DeviceInfoFactory.fingerprint;
    }
    
    public String getHardware() {
        return DeviceInfoFactory.hardware;
    }
    
    public String getLanguage() {
        return DeviceInfoFactory.language;
    }
    
    public String getMacAddress() {
        return DeviceInfoFactory.macAddress;
    }
    
    public String getManufacturer() {
        return DeviceInfoFactory.manufacturer;
    }
    
    public String getModel() {
        return DeviceInfoFactory.model;
    }
    
    public String getNetworkCountryIso() {
        return DeviceInfoFactory.networkCountryIso;
    }
    
    public String getNetworkOperator() {
        return DeviceInfoFactory.networkOperator;
    }
    
    public String getNetworkOperatorName() {
        return DeviceInfoFactory.networkOperatorName;
    }
    
    public String getNetworkType() {
        return DeviceInfoFactory.networkType;
    }
    
    public String getPhoneType() {
        return DeviceInfoFactory.phoneType;
    }
    
    public String getPrefsDeviceId() {
        return "device_id";
    }
    
    public String getProduct() {
        return DeviceInfoFactory.product;
    }
    
    public String getSimCountryIso() {
        return DeviceInfoFactory.simCountryIso;
    }
    
    public String getSimOperator() {
        return DeviceInfoFactory.simOperator;
    }
    
    public String getSimOperatorName() {
        return DeviceInfoFactory.simOperatorName;
    }
    
    public String getUser() {
        return DeviceInfoFactory.user;
    }
    
    public UUID getUuid() {
        return DeviceInfoFactory.uuid;
    }
    
    @Override
    public String toString() {
        return "DeviceInfoFactory{" + "uuid:" + DeviceInfoFactory.uuid + " deviceId:" + DeviceInfoFactory.deviceId + " deviceName:" + DeviceInfoFactory.deviceName + " deviceSoftwareVersion:" + DeviceInfoFactory.deviceSoftwareVersion + " user:" + DeviceInfoFactory.user + " manufacturer:" + DeviceInfoFactory.manufacturer + " hardware:" + DeviceInfoFactory.hardware + " fingerprint:" + DeviceInfoFactory.fingerprint + " model:" + DeviceInfoFactory.model + " product:" + DeviceInfoFactory.product + " networkCountryIso:" + DeviceInfoFactory.networkCountryIso + " networkOperator:" + DeviceInfoFactory.networkOperator + " networkOperatorName:" + DeviceInfoFactory.networkOperatorName + " simOperator:" + DeviceInfoFactory.simOperator + " simOperatorName:" + DeviceInfoFactory.simOperatorName + " simCountryIso:" + DeviceInfoFactory.simCountryIso + " phoneType:" + DeviceInfoFactory.phoneType + " networkType:" + DeviceInfoFactory.networkType + " language:" + DeviceInfoFactory.language + " countryCode:" + DeviceInfoFactory.countryCode + " packageName:" + DeviceInfoFactory.packageName + " macAddress:" + DeviceInfoFactory.macAddress + '}';
    }
}
