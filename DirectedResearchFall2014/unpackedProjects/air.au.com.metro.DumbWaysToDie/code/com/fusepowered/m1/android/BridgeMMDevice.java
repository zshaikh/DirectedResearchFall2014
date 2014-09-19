package com.fusepowered.m1.android;

import org.json.*;
import java.util.*;
import android.net.*;
import android.content.*;
import android.view.*;
import java.net.*;

class BridgeMMDevice extends MMJSObject
{
    static JSONObject getDeviceInfo(final Context p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Lorg/json/JSONObject;
        //     3: dup            
        //     4: invokespecial   org/json/JSONObject.<init>:()V
        //     7: astore_1       
        //     8: aload_1        
        //     9: ldc             "sdkVersion"
        //    11: ldc             "5.1.0-13.08.12.a"
        //    13: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //    16: pop            
        //    17: aload_1        
        //    18: ldc             "mmisdk"
        //    20: ldc             "5.1.0-13.08.12.a"
        //    22: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //    25: pop            
        //    26: aload_1        
        //    27: ldc             "connection"
        //    29: aload_0        
        //    30: invokestatic    com/fusepowered/m1/android/MMSDK.getConnectionType:(Landroid/content/Context;)Ljava/lang/String;
        //    33: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //    36: pop            
        //    37: aload_1        
        //    38: ldc             "platform"
        //    40: ldc             "Android"
        //    42: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //    45: pop            
        //    46: getstatic       android/os/Build$VERSION.RELEASE:Ljava/lang/String;
        //    49: ifnull          62
        //    52: aload_1        
        //    53: ldc             "version"
        //    55: getstatic       android/os/Build$VERSION.RELEASE:Ljava/lang/String;
        //    58: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //    61: pop            
        //    62: getstatic       android/os/Build.MODEL:Ljava/lang/String;
        //    65: ifnull          78
        //    68: aload_1        
        //    69: ldc             "device"
        //    71: getstatic       android/os/Build.MODEL:Ljava/lang/String;
        //    74: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //    77: pop            
        //    78: aload_1        
        //    79: ldc             "mmdid"
        //    81: aload_0        
        //    82: invokestatic    com/fusepowered/m1/android/MMSDK.getMMdid:(Landroid/content/Context;)Ljava/lang/String;
        //    85: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //    88: pop            
        //    89: aload_0        
        //    90: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //    93: invokevirtual   android/content/res/Resources.getDisplayMetrics:()Landroid/util/DisplayMetrics;
        //    96: astore          8
        //    98: aload_1        
        //    99: ldc             "density"
        //   101: new             Ljava/lang/Float;
        //   104: dup            
        //   105: aload           8
        //   107: getfield        android/util/DisplayMetrics.density:F
        //   110: invokespecial   java/lang/Float.<init>:(F)V
        //   113: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   116: pop            
        //   117: aload_1        
        //   118: ldc             "height"
        //   120: new             Ljava/lang/Integer;
        //   123: dup            
        //   124: aload           8
        //   126: getfield        android/util/DisplayMetrics.heightPixels:I
        //   129: invokespecial   java/lang/Integer.<init>:(I)V
        //   132: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   135: pop            
        //   136: aload_1        
        //   137: ldc             "width"
        //   139: new             Ljava/lang/Integer;
        //   142: dup            
        //   143: aload           8
        //   145: getfield        android/util/DisplayMetrics.widthPixels:I
        //   148: invokespecial   java/lang/Integer.<init>:(I)V
        //   151: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   154: pop            
        //   155: invokestatic    java/util/Locale.getDefault:()Ljava/util/Locale;
        //   158: astore          12
        //   160: aload           12
        //   162: ifnull          189
        //   165: aload_1        
        //   166: ldc             "language"
        //   168: aload           12
        //   170: invokevirtual   java/util/Locale.getLanguage:()Ljava/lang/String;
        //   173: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   176: pop            
        //   177: aload_1        
        //   178: ldc             "country"
        //   180: aload           12
        //   182: invokevirtual   java/util/Locale.getCountry:()Ljava/lang/String;
        //   185: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   188: pop            
        //   189: new             Lorg/json/JSONObject;
        //   192: dup            
        //   193: invokespecial   org/json/JSONObject.<init>:()V
        //   196: astore          15
        //   198: aload           15
        //   200: ldc             "name"
        //   202: ldc             "MAC-ID"
        //   204: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   207: pop            
        //   208: aload           15
        //   210: ldc             "path"
        //   212: ldc             "/"
        //   214: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   217: pop            
        //   218: aload           15
        //   220: ldc             "value"
        //   222: getstatic       com/fusepowered/m1/android/MMSDK.macId:Ljava/lang/String;
        //   225: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   228: pop            
        //   229: new             Lorg/json/JSONArray;
        //   232: dup            
        //   233: invokespecial   org/json/JSONArray.<init>:()V
        //   236: astore          20
        //   238: aload           20
        //   240: aload           15
        //   242: invokevirtual   org/json/JSONArray.put:(Ljava/lang/Object;)Lorg/json/JSONArray;
        //   245: pop            
        //   246: aload_1        
        //   247: ldc             "cookies"
        //   249: aload           20
        //   251: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   254: pop            
        //   255: aload_1        
        //   256: areturn        
        //   257: astore          26
        //   259: aconst_null    
        //   260: areturn        
        //   261: astore_2       
        //   262: aload_1        
        //   263: areturn        
        //   264: astore          16
        //   266: aload_1        
        //   267: areturn        
        //   268: astore          21
        //   270: aload_1        
        //   271: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                    
        //  -----  -----  -----  -----  ------------------------
        //  0      8      257    261    Lorg/json/JSONException;
        //  8      62     261    264    Lorg/json/JSONException;
        //  62     78     261    264    Lorg/json/JSONException;
        //  78     160    261    264    Lorg/json/JSONException;
        //  165    189    261    264    Lorg/json/JSONException;
        //  189    198    261    264    Lorg/json/JSONException;
        //  198    238    264    268    Lorg/json/JSONException;
        //  238    255    268    272    Lorg/json/JSONException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 138, Size: 138
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
    
    public MMJSResponse call(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        final String s = hashMap.get("number");
        if (context != null && s != null) {
            MMSDK.Log.d("Dialing Phone: %s", s);
            Intent intent;
            if (Boolean.parseBoolean(hashMap.get("dial")) && context.checkCallingOrSelfPermission("android.permission.CALL_PHONE") == 0) {
                intent = new Intent("android.intent.action.CALL", Uri.parse("tel:" + s));
            }
            else {
                intent = new Intent("android.intent.action.VIEW", Uri.parse("tel:" + s));
            }
            Utils.IntentUtils.startActivity(context, intent);
            MMSDK.Event.intentStarted(context, "tel", this.getAdImplId(hashMap.get("PROPERTY_EXPANDING")));
            return MMJSResponse.responseWithSuccess();
        }
        return null;
    }
    
    public MMJSResponse composeEmail(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        final String s = hashMap.get("recipient");
        final String s2 = hashMap.get("subject");
        final String s3 = hashMap.get("message");
        if (context != null) {
            MMSDK.Log.d("Creating email");
            final Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("plain/text");
            if (s != null) {
                intent.putExtra("android.intent.extra.EMAIL", s.split(","));
            }
            if (s2 != null) {
                intent.putExtra("android.intent.extra.SUBJECT", s2);
            }
            if (s3 != null) {
                intent.putExtra("android.intent.extra.TEXT", s3);
            }
            Utils.IntentUtils.startActivity(context, intent);
            MMSDK.Event.intentStarted(context, "email", this.getAdImplId(hashMap.get("PROPERTY_EXPANDING")));
            return MMJSResponse.responseWithSuccess();
        }
        return null;
    }
    
    public MMJSResponse composeSms(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        final String str = hashMap.get("number");
        final String s = hashMap.get("message");
        if (context != null && str != null) {
            MMSDK.Log.d("Creating sms: %s", str);
            final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("sms:" + str));
            if (s != null) {
                intent.putExtra("sms_body", s);
            }
            Utils.IntentUtils.startActivity(context, intent);
            MMSDK.Event.intentStarted(context, "sms", this.getAdImplId(hashMap.get("PROPERTY_EXPANDING")));
            return MMJSResponse.responseWithSuccess("SMS Sent");
        }
        return null;
    }
    
    public MMJSResponse enableHardwareAcceleration(final HashMap<String, String> obj) {
        MMSDK.Log.d("hardware accel call" + obj);
        final String s = obj.get("enabled");
        final MMWebView mmWebView = this.mmWebViewRef.get();
        if (mmWebView != null && mmWebView != null) {
            if (Boolean.parseBoolean(s)) {
                mmWebView.enableHardwareAcceleration();
            }
            else {
                mmWebView.disableAllAcceleration();
            }
            return MMJSResponse.responseWithSuccess();
        }
        return null;
    }
    
    public MMJSResponse getAvailableSchemes(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        if (context != null) {
            final HandShake sharedHandShake = HandShake.sharedHandShake(context);
            final MMJSResponse mmjsResponse = new MMJSResponse();
            mmjsResponse.result = 1;
            mmjsResponse.response = sharedHandShake.getSchemesJSONArray(context);
            return mmjsResponse;
        }
        return null;
    }
    
    public MMJSResponse getInfo(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        if (context != null) {
            final MMJSResponse mmjsResponse = new MMJSResponse();
            mmjsResponse.result = 1;
            mmjsResponse.response = getDeviceInfo(context);
            return mmjsResponse;
        }
        return null;
    }
    
    public MMJSResponse getLocation(final HashMap<String, String> p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/fusepowered/m1/android/MMRequest.location:Landroid/location/Location;
        //     3: ifnull          214
        //     6: new             Lorg/json/JSONObject;
        //     9: dup            
        //    10: invokespecial   org/json/JSONObject.<init>:()V
        //    13: astore_2       
        //    14: aload_2        
        //    15: ldc_w           "lat"
        //    18: getstatic       com/fusepowered/m1/android/MMRequest.location:Landroid/location/Location;
        //    21: invokevirtual   android/location/Location.getLatitude:()D
        //    24: invokestatic    java/lang/Double.toString:(D)Ljava/lang/String;
        //    27: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //    30: pop            
        //    31: aload_2        
        //    32: ldc_w           "long"
        //    35: getstatic       com/fusepowered/m1/android/MMRequest.location:Landroid/location/Location;
        //    38: invokevirtual   android/location/Location.getLongitude:()D
        //    41: invokestatic    java/lang/Double.toString:(D)Ljava/lang/String;
        //    44: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //    47: pop            
        //    48: getstatic       com/fusepowered/m1/android/MMRequest.location:Landroid/location/Location;
        //    51: invokevirtual   android/location/Location.hasAccuracy:()Z
        //    54: ifeq            91
        //    57: aload_2        
        //    58: ldc_w           "ha"
        //    61: getstatic       com/fusepowered/m1/android/MMRequest.location:Landroid/location/Location;
        //    64: invokevirtual   android/location/Location.getAccuracy:()F
        //    67: invokestatic    java/lang/Float.toString:(F)Ljava/lang/String;
        //    70: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //    73: pop            
        //    74: aload_2        
        //    75: ldc_w           "va"
        //    78: getstatic       com/fusepowered/m1/android/MMRequest.location:Landroid/location/Location;
        //    81: invokevirtual   android/location/Location.getAccuracy:()F
        //    84: invokestatic    java/lang/Float.toString:(F)Ljava/lang/String;
        //    87: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //    90: pop            
        //    91: getstatic       com/fusepowered/m1/android/MMRequest.location:Landroid/location/Location;
        //    94: invokevirtual   android/location/Location.hasSpeed:()Z
        //    97: ifeq            117
        //   100: aload_2        
        //   101: ldc_w           "spd"
        //   104: getstatic       com/fusepowered/m1/android/MMRequest.location:Landroid/location/Location;
        //   107: invokevirtual   android/location/Location.getSpeed:()F
        //   110: invokestatic    java/lang/Float.toString:(F)Ljava/lang/String;
        //   113: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   116: pop            
        //   117: getstatic       com/fusepowered/m1/android/MMRequest.location:Landroid/location/Location;
        //   120: invokevirtual   android/location/Location.hasBearing:()Z
        //   123: ifeq            143
        //   126: aload_2        
        //   127: ldc_w           "brg"
        //   130: getstatic       com/fusepowered/m1/android/MMRequest.location:Landroid/location/Location;
        //   133: invokevirtual   android/location/Location.getBearing:()F
        //   136: invokestatic    java/lang/Float.toString:(F)Ljava/lang/String;
        //   139: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   142: pop            
        //   143: getstatic       com/fusepowered/m1/android/MMRequest.location:Landroid/location/Location;
        //   146: invokevirtual   android/location/Location.hasAltitude:()Z
        //   149: ifeq            169
        //   152: aload_2        
        //   153: ldc_w           "alt"
        //   156: getstatic       com/fusepowered/m1/android/MMRequest.location:Landroid/location/Location;
        //   159: invokevirtual   android/location/Location.getAltitude:()D
        //   162: invokestatic    java/lang/Double.toString:(D)Ljava/lang/String;
        //   165: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   168: pop            
        //   169: aload_2        
        //   170: ldc_w           "tslr"
        //   173: getstatic       com/fusepowered/m1/android/MMRequest.location:Landroid/location/Location;
        //   176: invokevirtual   android/location/Location.getTime:()J
        //   179: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   182: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   185: pop            
        //   186: aload_2        
        //   187: astore          4
        //   189: new             Lcom/fusepowered/m1/android/MMJSResponse;
        //   192: dup            
        //   193: invokespecial   com/fusepowered/m1/android/MMJSResponse.<init>:()V
        //   196: astore          5
        //   198: aload           5
        //   200: iconst_1       
        //   201: putfield        com/fusepowered/m1/android/MMJSResponse.result:I
        //   204: aload           5
        //   206: aload           4
        //   208: putfield        com/fusepowered/m1/android/MMJSResponse.response:Ljava/lang/Object;
        //   211: aload           5
        //   213: areturn        
        //   214: ldc_w           "location object has not been set"
        //   217: invokestatic    com/fusepowered/m1/android/MMJSResponse.responseWithError:(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;
        //   220: areturn        
        //   221: astore          14
        //   223: aconst_null    
        //   224: astore          4
        //   226: goto            189
        //   229: astore_3       
        //   230: aload_2        
        //   231: astore          4
        //   233: goto            189
        //    Signature:
        //  (Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Lcom/fusepowered/m1/android/MMJSResponse;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                    
        //  -----  -----  -----  -----  ------------------------
        //  6      14     221    229    Lorg/json/JSONException;
        //  14     91     229    236    Lorg/json/JSONException;
        //  91     117    229    236    Lorg/json/JSONException;
        //  117    143    229    236    Lorg/json/JSONException;
        //  143    169    229    236    Lorg/json/JSONException;
        //  169    186    229    236    Lorg/json/JSONException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0091:
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
    
    public MMJSResponse getOrientation(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        if (context != null) {
            int n = context.getResources().getConfiguration().orientation;
            if (n == 0) {
                n = ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getOrientation();
            }
            final MMJSResponse mmjsResponse = new MMJSResponse();
            mmjsResponse.result = 1;
            switch (n) {
                default: {
                    mmjsResponse.response = "portrait";
                    break;
                }
                case 2: {
                    mmjsResponse.response = "landscape";
                    break;
                }
            }
            return mmjsResponse;
        }
        return null;
    }
    
    public MMJSResponse isSchemeAvailable(final HashMap<String, String> hashMap) {
        String string = hashMap.get("scheme");
        if (!string.contains(":")) {
            string += ":";
        }
        final Context context = this.contextRef.get();
        if (string != null && context != null && context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(string)), 65536).size() > 0) {
            return MMJSResponse.responseWithSuccess(string);
        }
        return MMJSResponse.responseWithError(string);
    }
    
    public MMJSResponse openAppStore(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        final String str = hashMap.get("appId");
        final String s = hashMap.get("referrer");
        if (context != null && str != null) {
            MMSDK.Log.d("Opening marketplace: %s", str);
            final Intent intent = new Intent("android.intent.action.VIEW");
            if (s != null) {
                intent.setData(Uri.parse(String.format("market://details?id=%s&referrer=%s", str, URLEncoder.encode(s))));
            }
            else {
                intent.setData(Uri.parse("market://details?id=" + str));
            }
            MMSDK.Event.intentStarted(context, "market", this.getAdImplId(hashMap.get("PROPERTY_EXPANDING")));
            Utils.IntentUtils.startActivity(context, intent);
            return MMJSResponse.responseWithSuccess();
        }
        return null;
    }
    
    public MMJSResponse openUrl(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        final String s = hashMap.get("url");
        if (context != null && s != null) {
            MMSDK.Log.d("Opening: %s", s);
            final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
            if (intent.getScheme().startsWith("http") || intent.getScheme().startsWith("https")) {
                MMSDK.Event.intentStarted(context, "browser", this.getAdImplId(hashMap.get("PROPERTY_EXPANDING")));
            }
            Utils.IntentUtils.startActivity(context, intent);
            return MMJSResponse.responseWithSuccess("Overlay opened");
        }
        return MMJSResponse.responseWithError("URL could not be opened");
    }
    
    public MMJSResponse setMMDID(final HashMap<String, String> hashMap) {
        final String s = hashMap.get("mmdid");
        final Context context = this.contextRef.get();
        if (context != null) {
            HandShake.sharedHandShake(context).setMMdid(context, s);
            return MMJSResponse.responseWithSuccess("MMDID is set");
        }
        return null;
    }
    
    public MMJSResponse showMap(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        final String str = hashMap.get("location");
        if (context != null && str != null) {
            MMSDK.Log.d("Launching Google Maps: %s", str);
            Utils.IntentUtils.startActivity(context, new Intent("android.intent.action.VIEW", Uri.parse("geo:" + str)));
            MMSDK.Event.intentStarted(context, "geo", this.getAdImplId(hashMap.get("PROPERTY_EXPANDING")));
            return MMJSResponse.responseWithSuccess("Map successfully opened");
        }
        return null;
    }
    
    public MMJSResponse tweet(final HashMap<String, String> hashMap) {
        return null;
    }
}
