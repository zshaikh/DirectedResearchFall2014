package com.inmobi.androidsdk.ai.controller;

import com.inmobi.androidsdk.ai.container.*;
import android.text.*;
import android.os.*;
import android.net.*;
import com.inmobi.commons.internal.*;
import android.webkit.*;
import android.app.*;
import java.util.*;
import android.widget.*;
import android.database.*;
import android.util.*;
import android.view.*;
import org.json.*;
import android.content.*;
import java.io.*;

public class JSUtilityController extends JSController
{
    private JSAssetController a;
    private JSDisplayController b;
    
    public JSUtilityController(final IMWebView imWebView, final Context context) {
        super(imWebView, context);
        this.a = new JSAssetController(imWebView, context);
        imWebView.addJavascriptInterface((Object)(this.b = new JSDisplayController(imWebView, context)), "displayController");
    }
    
    private String a(final String str) {
        if (TextUtils.isEmpty((CharSequence)str)) {
            return null;
        }
        if (str.startsWith("tel:")) {
            return str;
        }
        final StringBuilder sb = new StringBuilder("tel:");
        sb.append(str);
        return sb.toString();
    }
    
    private void a(final int i, final String s, final String s2, final String s3) {
        final ContentResolver contentResolver = this.mContext.getContentResolver();
        final long long1 = Long.parseLong(s);
        final long l = 3600000L + long1;
        final ContentValues contentValues = new ContentValues();
        contentValues.put("calendar_id", i);
        contentValues.put("title", s2);
        contentValues.put("description", s3);
        contentValues.put("dtstart", long1);
        contentValues.put("hasAlarm", 1);
        contentValues.put("dtend", l);
        Uri uri;
        if (Build$VERSION.SDK_INT == 8) {
            uri = contentResolver.insert(Uri.parse("content://com.android.calendar/events"), contentValues);
        }
        else {
            uri = contentResolver.insert(Uri.parse("content://calendar/events"), contentValues);
        }
        if (uri != null) {
            final long long2 = Long.parseLong(uri.getLastPathSegment());
            final ContentValues contentValues2 = new ContentValues();
            contentValues2.put("event_id", long2);
            contentValues2.put("method", 1);
            contentValues2.put("minutes", 15);
            if (Build$VERSION.SDK_INT == 8) {
                contentResolver.insert(Uri.parse("content://com.android.calendar/reminders"), contentValues2);
            }
            else {
                contentResolver.insert(Uri.parse("content://calendar/reminders"), contentValues2);
            }
        }
        Toast.makeText(this.mContext, (CharSequence)"Event added to calendar", 0).show();
    }
    
    private void b(final String s) {
        new Thread() {
            @Override
            public void run() {
                // 
                // This method could not be decompiled.
                // 
                // Original Bytecode:
                // 
                //     0: aconst_null    
                //     1: astore_1       
                //     2: aload_0        
                //     3: getfield        com/inmobi/androidsdk/ai/controller/JSUtilityController$2.b:Ljava/lang/String;
                //     6: ldc             "%25"
                //     8: ldc             "%"
                //    10: invokevirtual   java/lang/String.replaceAll:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
                //    13: astore          4
                //    15: ldc             "InMobiAndroidSDK_3.6.2"
                //    17: new             Ljava/lang/StringBuilder;
                //    20: dup            
                //    21: ldc             "Pinging URL: "
                //    23: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //    26: aload           4
                //    28: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
                //    31: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //    34: invokestatic    com/inmobi/commons/internal/IMLog.debug:(Ljava/lang/String;Ljava/lang/String;)V
                //    37: new             Ljava/net/URL;
                //    40: dup            
                //    41: aload           4
                //    43: invokespecial   java/net/URL.<init>:(Ljava/lang/String;)V
                //    46: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
                //    49: checkcast       Ljava/net/HttpURLConnection;
                //    52: astore          5
                //    54: aload           5
                //    56: sipush          20000
                //    59: invokevirtual   java/net/HttpURLConnection.setConnectTimeout:(I)V
                //    62: aload           5
                //    64: ldc             "GET"
                //    66: invokevirtual   java/net/HttpURLConnection.setRequestMethod:(Ljava/lang/String;)V
                //    69: aload_0        
                //    70: getfield        com/inmobi/androidsdk/ai/controller/JSUtilityController$2.a:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;
                //    73: getfield        com/inmobi/androidsdk/ai/controller/JSUtilityController.imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;
                //    76: getfield        com/inmobi/androidsdk/ai/container/IMWebView.webviewUserAgent:Ljava/lang/String;
                //    79: astore          8
                //    81: aload           8
                //    83: ifnull          95
                //    86: aload           5
                //    88: ldc             "user-agent"
                //    90: aload           8
                //    92: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
                //    95: ldc             "InMobiAndroidSDK_3.6.2"
                //    97: new             Ljava/lang/StringBuilder;
                //   100: dup            
                //   101: ldc             "Async Ping Connection Response Code: "
                //   103: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
                //   106: aload           5
                //   108: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
                //   111: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
                //   114: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
                //   117: invokestatic    com/inmobi/commons/internal/IMLog.debug:(Ljava/lang/String;Ljava/lang/String;)V
                //   120: aload           5
                //   122: ifnull          130
                //   125: aload           5
                //   127: invokevirtual   java/net/HttpURLConnection.disconnect:()V
                //   130: return         
                //   131: astore_3       
                //   132: ldc             "InMobiAndroidSDK_3.6.2"
                //   134: ldc             "Error doing async Ping. "
                //   136: aload_3        
                //   137: invokestatic    com/inmobi/commons/internal/IMLog.debug:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
                //   140: aload_1        
                //   141: ifnull          130
                //   144: aload_1        
                //   145: invokevirtual   java/net/HttpURLConnection.disconnect:()V
                //   148: return         
                //   149: astore_2       
                //   150: aload_1        
                //   151: ifnull          158
                //   154: aload_1        
                //   155: invokevirtual   java/net/HttpURLConnection.disconnect:()V
                //   158: aload_2        
                //   159: athrow         
                //   160: astore          7
                //   162: aload           5
                //   164: astore_1       
                //   165: aload           7
                //   167: astore_2       
                //   168: goto            150
                //   171: astore          6
                //   173: aload           5
                //   175: astore_1       
                //   176: aload           6
                //   178: astore_3       
                //   179: goto            132
                //    Exceptions:
                //  Try           Handler
                //  Start  End    Start  End    Type                 
                //  -----  -----  -----  -----  ---------------------
                //  2      54     131    132    Ljava/lang/Exception;
                //  2      54     149    150    Any
                //  54     81     171    182    Ljava/lang/Exception;
                //  54     81     160    171    Any
                //  86     95     171    182    Ljava/lang/Exception;
                //  86     95     160    171    Any
                //  95     120    171    182    Ljava/lang/Exception;
                //  95     120    160    171    Any
                //  132    140    149    150    Any
                // 
                // The error that occurred was:
                // 
                // java.lang.IllegalStateException: Expression is linked from several locations: Label_0095:
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
        }.start();
    }
    
    @JavascriptInterface
    public void activate(final String str) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> activate: " + str);
    }
    
    @JavascriptInterface
    public void asyncPing(final String str) {
        try {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> asyncPing: url: " + str);
            if (!URLUtil.isValidUrl(str)) {
                this.imWebView.raiseError("Invalid url", "asyncPing");
                return;
            }
            this.b(str);
        }
        catch (Exception ex) {}
    }
    
    @JavascriptInterface
    public void closeVideo(final String str) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> closeVideo: id :" + str);
        this.imWebView.closeVideo(str);
    }
    
    @JavascriptInterface
    public String copyTextFromJarIntoAssetDir(final String s, final String s2) {
        return this.a.copyTextFromJarIntoAssetDir(s, s2);
    }
    
    @JavascriptInterface
    public void createEvent(final String str, final String str2, final String str3) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> createEvent: date: " + str + " title: " + str2 + " body: " + str3);
        final ContentResolver contentResolver = this.mContext.getContentResolver();
        final String[] array = { "_id", "displayName", "_sync_account" };
        Cursor cursor;
        if (Build$VERSION.SDK_INT == 8) {
            cursor = contentResolver.query(Uri.parse("content://com.android.calendar/calendars"), array, (String)null, (String[])null, (String)null);
        }
        else {
            cursor = contentResolver.query(Uri.parse("content://calendar/calendars"), array, (String)null, (String[])null, (String)null);
        }
        if (cursor == null || (cursor != null && !cursor.moveToFirst())) {
            Toast.makeText(this.mContext, (CharSequence)"No calendar account found", 1).show();
            if (cursor != null) {
                cursor.close();
            }
            return;
        }
        if (cursor.getCount() == 1) {
            this.a(cursor.getInt(0), str, str2, str3);
        }
        else {
            final ArrayList<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>();
            for (int i = 0; i < cursor.getCount(); ++i) {
                final HashMap<String, String> hashMap = new HashMap<String, String>();
                hashMap.put("ID", cursor.getString(0));
                hashMap.put("NAME", cursor.getString(1));
                hashMap.put("EMAILID", cursor.getString(2));
                list.add(hashMap);
                cursor.moveToNext();
            }
            final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(this.mContext);
            alertDialog$Builder.setTitle((CharSequence)"Choose Calendar to save event to");
            alertDialog$Builder.setSingleChoiceItems((ListAdapter)new SimpleAdapter(this.mContext, (List)list, 17367053, new String[] { "NAME", "EMAILID" }, new int[] { 16908308, 16908309 }), -1, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                public void onClick(final DialogInterface dialogInterface, final int n) {
                    JSUtilityController.this.a(Integer.parseInt(list.get(n).get("ID")), str, str2, str3);
                    dialogInterface.cancel();
                }
            });
            alertDialog$Builder.create().show();
        }
        cursor.close();
    }
    
    @JavascriptInterface
    public void deactivate(final String str) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> deactivate: " + str);
    }
    
    @JavascriptInterface
    public void deleteOldAds() {
        this.a.deleteOldAds();
    }
    
    @JavascriptInterface
    public int getAudioVolume(final String s) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> getAudioVolume: ");
        return this.imWebView.getAudioVolume(s);
    }
    
    @JavascriptInterface
    public String getCurrentPosition() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             "InMobiAndroidSDK_3.6.2"
        //     2: ldc_w           "JSUtilityController-> getCurrentPosition"
        //     5: invokestatic    com/inmobi/commons/internal/IMLog.debug:(Ljava/lang/String;Ljava/lang/String;)V
        //     8: new             Lorg/json/JSONObject;
        //    11: dup            
        //    12: invokespecial   org/json/JSONObject.<init>:()V
        //    15: astore_1       
        //    16: new             Landroid/util/DisplayMetrics;
        //    19: dup            
        //    20: invokespecial   android/util/DisplayMetrics.<init>:()V
        //    23: astore_2       
        //    24: aload_0        
        //    25: getfield        com/inmobi/androidsdk/ai/controller/JSUtilityController.mContext:Landroid/content/Context;
        //    28: ldc_w           "window"
        //    31: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
        //    34: checkcast       Landroid/view/WindowManager;
        //    37: invokeinterface android/view/WindowManager.getDefaultDisplay:()Landroid/view/Display;
        //    42: aload_2        
        //    43: invokevirtual   android/view/Display.getMetrics:(Landroid/util/DisplayMetrics;)V
        //    46: aload_0        
        //    47: getfield        com/inmobi/androidsdk/ai/controller/JSUtilityController.imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //    50: invokevirtual   com/inmobi/androidsdk/ai/container/IMWebView.isViewable:()Z
        //    53: ifeq            423
        //    56: iconst_2       
        //    57: newarray        I
        //    59: astore          30
        //    61: aload_0        
        //    62: getfield        com/inmobi/androidsdk/ai/controller/JSUtilityController.imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //    65: aload           30
        //    67: invokevirtual   com/inmobi/androidsdk/ai/container/IMWebView.getLocationOnScreen:([I)V
        //    70: aload           30
        //    72: iconst_0       
        //    73: iaload         
        //    74: istore          15
        //    76: aload           30
        //    78: iconst_1       
        //    79: iaload         
        //    80: istore          32
        //    82: aload_0        
        //    83: getfield        com/inmobi/androidsdk/ai/controller/JSUtilityController.imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //    86: invokevirtual   com/inmobi/androidsdk/ai/container/IMWebView.getWidth:()I
        //    89: i2f            
        //    90: fstore          35
        //    92: aload_2        
        //    93: getfield        android/util/DisplayMetrics.density:F
        //    96: fstore          36
        //    98: fload           35
        //   100: fload           36
        //   102: fdiv           
        //   103: f2i            
        //   104: istore          37
        //   106: aload_0        
        //   107: getfield        com/inmobi/androidsdk/ai/controller/JSUtilityController.imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //   110: invokevirtual   com/inmobi/androidsdk/ai/container/IMWebView.getHeight:()I
        //   113: i2f            
        //   114: fstore          40
        //   116: aload_2        
        //   117: getfield        android/util/DisplayMetrics.density:F
        //   120: fstore          41
        //   122: fload           40
        //   124: fload           41
        //   126: fdiv           
        //   127: f2i            
        //   128: istore          42
        //   130: iload           32
        //   132: istore          24
        //   134: iload           42
        //   136: istore          22
        //   138: iload           37
        //   140: istore          23
        //   142: aload_1        
        //   143: ldc_w           "x"
        //   146: iload           15
        //   148: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   151: pop            
        //   152: aload_1        
        //   153: ldc_w           "y"
        //   156: iload           24
        //   158: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   161: pop            
        //   162: aload_1        
        //   163: ldc_w           "width"
        //   166: iload           23
        //   168: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   171: pop            
        //   172: aload_1        
        //   173: ldc_w           "height"
        //   176: iload           22
        //   178: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   181: pop            
        //   182: aload_1        
        //   183: invokevirtual   org/json/JSONObject.toString:()Ljava/lang/String;
        //   186: areturn        
        //   187: astore          12
        //   189: iconst_0       
        //   190: istore          13
        //   192: iconst_0       
        //   193: istore          14
        //   195: iconst_0       
        //   196: istore          15
        //   198: ldc             "InMobiAndroidSDK_3.6.2"
        //   200: ldc_w           "Failed to get current position"
        //   203: invokestatic    com/inmobi/commons/internal/IMLog.debug:(Ljava/lang/String;Ljava/lang/String;)V
        //   206: aload_1        
        //   207: ldc_w           "x"
        //   210: iload           15
        //   212: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   215: pop            
        //   216: aload_1        
        //   217: ldc_w           "y"
        //   220: iload           14
        //   222: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   225: pop            
        //   226: aload_1        
        //   227: ldc_w           "width"
        //   230: iload           13
        //   232: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   235: pop            
        //   236: aload_1        
        //   237: ldc_w           "height"
        //   240: iconst_0       
        //   241: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   244: pop            
        //   245: goto            182
        //   248: astore          17
        //   250: goto            182
        //   253: astore_3       
        //   254: iconst_0       
        //   255: istore          4
        //   257: iconst_0       
        //   258: istore          5
        //   260: iconst_0       
        //   261: istore          6
        //   263: aload_1        
        //   264: ldc_w           "x"
        //   267: iload           6
        //   269: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   272: pop            
        //   273: aload_1        
        //   274: ldc_w           "y"
        //   277: iload           5
        //   279: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   282: pop            
        //   283: aload_1        
        //   284: ldc_w           "width"
        //   287: iload           4
        //   289: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   292: pop            
        //   293: aload_1        
        //   294: ldc_w           "height"
        //   297: iconst_0       
        //   298: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   301: pop            
        //   302: aload_3        
        //   303: athrow         
        //   304: astore          25
        //   306: goto            182
        //   309: astore          7
        //   311: goto            302
        //   314: astore_3       
        //   315: iload           15
        //   317: istore          6
        //   319: iconst_0       
        //   320: istore          4
        //   322: iconst_0       
        //   323: istore          5
        //   325: goto            263
        //   328: astore          34
        //   330: iload           15
        //   332: istore          6
        //   334: iload           32
        //   336: istore          5
        //   338: aload           34
        //   340: astore_3       
        //   341: iconst_0       
        //   342: istore          4
        //   344: goto            263
        //   347: astore          39
        //   349: iload           37
        //   351: istore          4
        //   353: iload           15
        //   355: istore          6
        //   357: iload           32
        //   359: istore          5
        //   361: aload           39
        //   363: astore_3       
        //   364: goto            263
        //   367: astore          16
        //   369: iload           15
        //   371: istore          6
        //   373: iload           14
        //   375: istore          5
        //   377: iload           13
        //   379: istore          4
        //   381: aload           16
        //   383: astore_3       
        //   384: goto            263
        //   387: astore          31
        //   389: iconst_0       
        //   390: istore          13
        //   392: iconst_0       
        //   393: istore          14
        //   395: goto            198
        //   398: astore          33
        //   400: iload           32
        //   402: istore          14
        //   404: iconst_0       
        //   405: istore          13
        //   407: goto            198
        //   410: astore          38
        //   412: iload           32
        //   414: istore          14
        //   416: iload           37
        //   418: istore          13
        //   420: goto            198
        //   423: iconst_0       
        //   424: istore          22
        //   426: iconst_0       
        //   427: istore          23
        //   429: iconst_0       
        //   430: istore          24
        //   432: iconst_0       
        //   433: istore          15
        //   435: goto            142
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                    
        //  -----  -----  -----  -----  ------------------------
        //  46     76     187    198    Ljava/lang/Exception;
        //  46     76     253    263    Any
        //  76     82     387    398    Ljava/lang/Exception;
        //  76     82     314    328    Any
        //  82     98     398    410    Ljava/lang/Exception;
        //  82     98     328    347    Any
        //  106    122    410    423    Ljava/lang/Exception;
        //  106    122    347    367    Any
        //  142    182    304    309    Lorg/json/JSONException;
        //  198    206    367    387    Any
        //  206    245    248    253    Lorg/json/JSONException;
        //  263    302    309    314    Lorg/json/JSONException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 224, Size: 224
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
    
    @JavascriptInterface
    public String getScreenSize() {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> getScreenSize");
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager)this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        final int n = (int)(displayMetrics.widthPixels / displayMetrics.density);
        final int n2 = (int)(displayMetrics.heightPixels / displayMetrics.density);
        final JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("width", n);
            jsonObject.put("height", n2);
            return jsonObject.toString();
        }
        catch (JSONException ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Failed to get screen size");
            return jsonObject.toString();
        }
    }
    
    @JavascriptInterface
    public int getVideoVolume(final String s) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> getVideoVolume: ");
        return this.imWebView.getVideoVolume(s);
    }
    
    @JavascriptInterface
    public void hideVideo(final String str) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> hideVideo: id :" + str);
        this.imWebView.hideVideo(str);
    }
    
    @JavascriptInterface
    public boolean isAudioMuted(final String s) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> isAudioMuted: ");
        return this.imWebView.isAudioMuted(s);
    }
    
    @JavascriptInterface
    public boolean isVideoMuted(final String s) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> isVideoMuted: ");
        return this.imWebView.isVideoMuted(s);
    }
    
    @JavascriptInterface
    public void log(final String str) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "Ad Log Message: " + str);
    }
    
    @JavascriptInterface
    public void makeCall(final String str) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> makeCall: number: " + str);
        String a;
        try {
            if (this.mContext.checkCallingOrSelfPermission("android.permission.CALL_PHONE") == -1) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "No permission to make call");
                this.imWebView.raiseError("No Permisson to make call", "makeCall");
                return;
            }
            a = this.a(str);
            if (a == null) {
                this.imWebView.raiseError("Bad Phone Number", "makeCall");
                return;
            }
        }
        catch (Exception ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception in making call ", ex);
            this.imWebView.raiseError("Exception in making call", "makeCall");
            return;
        }
        final Intent intent = new Intent("android.intent.action.CALL", Uri.parse(a.toString()));
        intent.addFlags(268435456);
        this.imWebView.getExpandedActivity().startActivity(intent);
        this.imWebView.fireOnLeaveApplication();
    }
    
    @JavascriptInterface
    public void muteAudio(final String s) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> muteAudio: ");
        this.imWebView.muteAudio(s);
    }
    
    @JavascriptInterface
    public void muteVideo(final String s) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> muteVideo: ");
        this.imWebView.muteVideo(s);
    }
    
    @JavascriptInterface
    public void openExternal(final String str) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> openExternal: url: " + str);
        final Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.addFlags(268435456);
        try {
            this.imWebView.getContext().startActivity(intent);
            this.imWebView.fireOnLeaveApplication();
        }
        catch (Exception ex) {
            this.imWebView.raiseError("Request must specify a valid URL", "openExternal");
        }
    }
    
    @JavascriptInterface
    public void pauseAudio(final String str) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> pauseAudio: id :" + str);
        this.imWebView.pauseAudio(str);
    }
    
    @JavascriptInterface
    public void pauseVideo(final String str) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> pauseVideo: id :" + str);
        this.imWebView.pauseVideo(str);
    }
    
    @JavascriptInterface
    public void playAudio(final String str, final boolean b, final boolean b2, final boolean b3, final String str2, final String str3, final String str4) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "playAudio: url: " + str + " autoPlay: " + b + " controls: " + b2 + " loop: " + b3 + " startStyle: " + str2 + " stopStyle: " + str3 + " id:" + str4);
        this.imWebView.playAudio(str, b, b2, b3, str2, str3, str4);
    }
    
    @JavascriptInterface
    public void playVideo(final String str, final boolean b, final boolean b2, final boolean b3, final boolean b4, final String s, final String s2, final String s3, final String s4, final String str2, final String str3, final String str4) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> playVideo: url: " + str + " audioMuted: " + b + " autoPlay: " + b2 + " controls: " + b3 + " loop: " + b4 + " x: " + s + " y: " + s2 + " width: " + s3 + " height: " + s4 + " startStyle: " + str2 + " stopStyle: " + str3 + " id:" + str4);
        final Dimensions dimensions = new Dimensions();
        dimensions.x = Integer.parseInt(s);
        dimensions.y = Integer.parseInt(s2);
        dimensions.width = Integer.parseInt(s3);
        dimensions.height = Integer.parseInt(s4);
        this.imWebView.playVideo(str, b, b2, b3, b4, dimensions, str2, str3, str4);
    }
    
    @JavascriptInterface
    public void seekAudio(final String s, final int n) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> seekAudio: ");
        this.imWebView.seekAudio(s, n);
    }
    
    @JavascriptInterface
    public void seekVideo(final String s, final int n) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> seekVideo: ");
        this.imWebView.seekVideo(s, n);
    }
    
    @JavascriptInterface
    public void sendMail(final String str, final String str2, final String str3) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> sendMail: recipient: " + str + " subject: " + str2 + " body: " + str3);
        try {
            final Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("plain/text");
            intent.putExtra("android.intent.extra.EMAIL", new String[] { str });
            intent.putExtra("android.intent.extra.SUBJECT", str2);
            intent.putExtra("android.intent.extra.TEXT", str3);
            intent.addFlags(268435456);
            this.imWebView.getExpandedActivity().startActivity(Intent.createChooser(intent, (CharSequence)"Choose the Email Client."));
            this.imWebView.fireOnLeaveApplication();
        }
        catch (Exception ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception in sending mail ", ex);
            this.imWebView.raiseError("Exception in sending mail", "sendMail");
        }
    }
    
    @JavascriptInterface
    public void sendSMS(final String str, final String str2) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> sendSMS: recipient: " + str + " body: " + str2);
        try {
            final Intent intent = new Intent("android.intent.action.VIEW");
            intent.putExtra("address", str);
            intent.putExtra("sms_body", str2);
            intent.setType("vnd.android-dir/mms-sms");
            intent.addFlags(268435456);
            this.imWebView.getExpandedActivity().startActivity(intent);
            this.imWebView.fireOnLeaveApplication();
        }
        catch (Exception ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception in sending SMS ", ex);
            this.imWebView.raiseError("Exception in sending SMS", "sendSMS");
        }
    }
    
    @JavascriptInterface
    public void setAudioVolume(final String s, final int n) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> setAudioVolume: ");
        this.imWebView.setAudioVolume(s, n);
    }
    
    @JavascriptInterface
    public void setVideoVolume(final String s, final int n) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> setVideoVolume: ");
        this.imWebView.setVideoVolume(s, n);
    }
    
    @JavascriptInterface
    public void showAlert(final String s) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", s);
    }
    
    @JavascriptInterface
    public void showVideo(final String str) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> showVideo: id :" + str);
        this.imWebView.showVideo(str);
    }
    
    @Override
    public void stopAllListeners() {
        try {
            this.a.stopAllListeners();
            this.b.stopAllListeners();
        }
        catch (Exception ex) {}
    }
    
    @JavascriptInterface
    public void unMuteAudio(final String s) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> unMuteAudio: ");
        this.imWebView.unMuteAudio(s);
    }
    
    @JavascriptInterface
    public void unMuteVideo(final String s) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSUtilityController-> unMuteVideo: ");
        this.imWebView.unMuteVideo(s);
    }
    
    @JavascriptInterface
    public String writeToDiskWrap(final InputStream inputStream, final String s, final boolean b, final String s2, final String s3, final String s4) throws IllegalStateException, IOException {
        return this.a.writeToDiskWrap(inputStream, s, b, s2, s3, s4);
    }
}
