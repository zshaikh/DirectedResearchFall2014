package com.milkmangames.extensions.android.goviral;

import android.annotation.*;
import android.app.*;
import c.m.x.a.gv.*;
import android.util.*;
import android.content.res.*;
import android.net.*;
import com.adobe.fre.*;
import android.content.pm.*;
import android.content.*;
import android.text.*;
import android.os.*;
import com.facebook.*;
import org.json.*;
import java.util.*;
import com.facebook.widget.*;

@TargetApi(8)
public final class b extends FREContext implements ao
{
    public static final String[] a;
    public static FREContext c;
    public static a d;
    public static boolean e;
    public Activity b;
    private al f;
    private SharedPreferences g;
    private String h;
    private RequestAsyncTask i;
    private String j;
    private String k;
    private String l;
    
    static {
        a = new String[] { "com.twitdroid", "com.twitter.android", "com.handmark.tweetcaster", "com.thedeck.android" };
        b.e = false;
    }
    
    public b() {
        super();
        this.b = null;
    }
    
    public static int a(final String s) {
        if (b.c == null) {
            Log.d("[GVExtension]", "no context res id, 0");
            return 0;
        }
        try {
            return b.c.getResourceId(s);
        }
        catch (IllegalArgumentException ex) {
            Log.d("[GVExtension]", "illegal argument res id");
            ex.printStackTrace();
            return 0;
        }
        catch (Resources$NotFoundException ex3) {
            Log.d("[GVExtension]", "res not found.");
            return 0;
        }
        catch (IllegalStateException ex2) {
            Log.d("[GVExtension]", "illegal id state");
            ex2.printStackTrace();
            return 0;
        }
    }
    
    private static Uri a(final String p0, final FREBitmapData p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: ldc             ".jpeg"
        //     3: invokevirtual   java/lang/String.concat:(Ljava/lang/String;)Ljava/lang/String;
        //     6: astore_2       
        //     7: aload_1        
        //     8: invokevirtual   com/adobe/fre/FREBitmapData.acquire:()V
        //    11: aload_1        
        //    12: invokevirtual   com/adobe/fre/FREBitmapData.getWidth:()I
        //    15: istore          5
        //    17: aload_1        
        //    18: invokevirtual   com/adobe/fre/FREBitmapData.getHeight:()I
        //    21: istore          6
        //    23: aload_1        
        //    24: invokevirtual   com/adobe/fre/FREBitmapData.getBits:()Ljava/nio/ByteBuffer;
        //    27: astore          7
        //    29: ldc             "[GVExtension]"
        //    31: new             Ljava/lang/StringBuilder;
        //    34: dup            
        //    35: ldc             "Image size:"
        //    37: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    40: iload           5
        //    42: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    45: ldc             ","
        //    47: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    50: iload           6
        //    52: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    55: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    58: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    61: pop            
        //    62: new             Ljava/io/File;
        //    65: dup            
        //    66: new             Ljava/lang/StringBuilder;
        //    69: dup            
        //    70: invokespecial   java/lang/StringBuilder.<init>:()V
        //    73: invokestatic    android/os/Environment.getExternalStorageDirectory:()Ljava/io/File;
        //    76: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //    79: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    82: ldc             "/"
        //    84: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    87: aload_2        
        //    88: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    91: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    94: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //    97: astore          9
        //    99: new             Ljava/io/FileOutputStream;
        //   102: dup            
        //   103: aload           9
        //   105: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //   108: astore          10
        //   110: aload           10
        //   112: ifnull          370
        //   115: iload           5
        //   117: iload           6
        //   119: getstatic       android/graphics/Bitmap$Config.ARGB_8888:Landroid/graphics/Bitmap$Config;
        //   122: invokestatic    android/graphics/Bitmap.createBitmap:(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
        //   125: astore          12
        //   127: aload           12
        //   129: aload           7
        //   131: invokevirtual   android/graphics/Bitmap.copyPixelsFromBuffer:(Ljava/nio/Buffer;)V
        //   134: iload           5
        //   136: iload           6
        //   138: getstatic       android/graphics/Bitmap$Config.ARGB_8888:Landroid/graphics/Bitmap$Config;
        //   141: invokestatic    android/graphics/Bitmap.createBitmap:(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
        //   144: astore          13
        //   146: iconst_0       
        //   147: istore          14
        //   149: iload           14
        //   151: iload           6
        //   153: if_icmpge       286
        //   156: iconst_0       
        //   157: istore          19
        //   159: iload           19
        //   161: iload           5
        //   163: if_icmpge       280
        //   166: aload           12
        //   168: iload           19
        //   170: iload           14
        //   172: invokevirtual   android/graphics/Bitmap.getPixel:(II)I
        //   175: istore          20
        //   177: sipush          255
        //   180: iload           20
        //   182: bipush          24
        //   184: ishr           
        //   185: iand           
        //   186: istore          21
        //   188: sipush          255
        //   191: iload           20
        //   193: bipush          16
        //   195: ishr           
        //   196: iand           
        //   197: istore          22
        //   199: sipush          255
        //   202: iload           20
        //   204: bipush          8
        //   206: ishr           
        //   207: iand           
        //   208: istore          23
        //   210: iload           20
        //   212: sipush          255
        //   215: iand           
        //   216: istore          24
        //   218: aload           13
        //   220: iload           19
        //   222: iload           14
        //   224: iload           22
        //   226: iload           21
        //   228: bipush          24
        //   230: ishl           
        //   231: iload           24
        //   233: bipush          16
        //   235: ishl           
        //   236: ior            
        //   237: iload           23
        //   239: bipush          8
        //   241: ishl           
        //   242: ior            
        //   243: ior            
        //   244: invokevirtual   android/graphics/Bitmap.setPixel:(III)V
        //   247: iinc            19, 1
        //   250: goto            159
        //   253: astore_3       
        //   254: ldc             "[GVExtension]"
        //   256: ldc             "Encoding failed!"
        //   258: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   261: pop            
        //   262: aconst_null    
        //   263: areturn        
        //   264: astore          25
        //   266: ldc             "[GVExtension]"
        //   268: ldc             "File caching failed"
        //   270: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   273: pop            
        //   274: aconst_null    
        //   275: astore          10
        //   277: goto            110
        //   280: iinc            14, 1
        //   283: goto            149
        //   286: aload           13
        //   288: getstatic       android/graphics/Bitmap$CompressFormat.JPEG:Landroid/graphics/Bitmap$CompressFormat;
        //   291: bipush          90
        //   293: aload           10
        //   295: invokevirtual   android/graphics/Bitmap.compress:(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
        //   298: pop            
        //   299: ldc             "[GVExtension]"
        //   301: new             Ljava/lang/StringBuilder;
        //   304: dup            
        //   305: ldc             "out to file:"
        //   307: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   310: aload           9
        //   312: invokestatic    android/net/Uri.fromFile:(Ljava/io/File;)Landroid/net/Uri;
        //   315: invokevirtual   android/net/Uri.toString:()Ljava/lang/String;
        //   318: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   321: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   324: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   327: pop            
        //   328: aload           10
        //   330: invokevirtual   java/io/FileOutputStream.flush:()V
        //   333: aload           10
        //   335: invokevirtual   java/io/FileOutputStream.close:()V
        //   338: aload_1        
        //   339: invokevirtual   com/adobe/fre/FREBitmapData.release:()V
        //   342: new             Ljava/io/File;
        //   345: dup            
        //   346: invokestatic    android/os/Environment.getExternalStorageDirectory:()Ljava/io/File;
        //   349: aload_2        
        //   350: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //   353: invokestatic    android/net/Uri.fromFile:(Ljava/io/File;)Landroid/net/Uri;
        //   356: areturn        
        //   357: astore          17
        //   359: ldc             "[GVExtension]"
        //   361: ldc             "Failed releasing image"
        //   363: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   366: pop            
        //   367: goto            342
        //   370: ldc             "[GVExtension]"
        //   372: ldc             "Failed to write temp image stream."
        //   374: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   377: pop            
        //   378: aconst_null    
        //   379: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  7      62     253    264    Ljava/lang/Exception;
        //  99     110    264    280    Ljava/lang/Exception;
        //  328    342    357    370    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0110:
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
    
    protected static Bundle a(final FREArray freArray, final FREArray freArray2) {
        final Bundle bundle = new Bundle();
        int n = 0;
        while (true) {
            final long n2 = n;
            try {
                if (n2 < freArray.getLength()) {
                    bundle.putString(freArray.getObjectAt(n).getAsString(), freArray2.getObjectAt(n).getAsString());
                    ++n;
                    continue;
                }
            }
            catch (Exception ex) {
                Log.e("[GVExtension]", ex.getMessage());
            }
            break;
        }
        return bundle;
    }
    
    private List a(final Intent intent) {
        final ArrayList<Intent> list = new ArrayList<Intent>();
        final PackageManager packageManager = this.b.getPackageManager();
        final List queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        final Intent intent2 = new Intent("android.intent.action.SEND");
        intent2.setType("message/rfc822");
        final List queryIntentActivities2 = packageManager.queryIntentActivities(intent2, 65536);
        Log.d("[GVExtension]", "rfc intent size:" + queryIntentActivities2.size() + ", given size:" + queryIntentActivities.size());
        final Iterator<ResolveInfo> iterator = queryIntentActivities2.iterator();
        while (iterator.hasNext()) {
            final String packageName = iterator.next().activityInfo.packageName;
            if (packageName != null) {
                final Iterator<ResolveInfo> iterator2 = queryIntentActivities.iterator();
                while (iterator2.hasNext()) {
                    final String packageName2 = iterator2.next().activityInfo.packageName;
                    if (packageName2.equals(packageName)) {
                        final Intent intent3 = (Intent)intent.clone();
                        intent3.setPackage(packageName2);
                        Log.d("[GVExtension]", "add intent package:" + packageName2);
                        list.add(intent3);
                    }
                }
            }
        }
        return list;
    }
    
    private void a(final String l, final String s, final Bundle bundle, final String s2) {
        if (!g()) {
            return;
        }
        Log.d("[GVExtension]", "Graph->GetSession");
        final Session activeSession = Session.getActiveSession();
        final ArrayList<String> list = new ArrayList<String>();
        int n2;
        if (s2 != null && !s2.equals("")) {
            final String[] split = s2.split(",");
            int i = 0;
            int n = 0;
            while (i < split.length) {
                if (!Session.getActiveSession().getPermissions().contains(split[i])) {
                    Log.d("[GVExtension]", "No current write permission for '" + split[i] + "'");
                    n = 1;
                }
                ++i;
            }
            for (int length = split.length, j = 0; j < length; ++j) {
                list.add(split[j]);
            }
            n2 = n;
        }
        else {
            n2 = 0;
        }
        this.l = l;
        final e e = new e(this);
        Log.d("[GVExtension]", "Graph->Task");
        while (true) {
            Label_0317: {
                if (s.equals("GET")) {
                    break Label_0317;
                }
                HttpMethod httpMethod;
                if (s.equals("POST")) {
                    httpMethod = HttpMethod.POST;
                }
                else {
                    if (!s.equals("DELETE")) {
                        break Label_0317;
                    }
                    httpMethod = HttpMethod.DELETE;
                }
                final RequestAsyncTask k = new RequestAsyncTask(new Request[] { new Request(activeSession, l, bundle, httpMethod, e) });
                if (n2 != 0) {
                    this.i = k;
                    Log.d("[GVExtension]", "Reauthorizing for graph publish permissions.");
                    final Session$NewPermissionsRequest session$NewPermissionsRequest = new Session$NewPermissionsRequest(this.getActivity(), list);
                    session$NewPermissionsRequest.setRequestCode(2345234);
                    Session.getActiveSession().requestNewPublishPermissions(session$NewPermissionsRequest);
                    return;
                }
                k.execute((Object[])new Void[0]);
                return;
            }
            HttpMethod httpMethod = HttpMethod.GET;
            continue;
        }
    }
    
    private static byte[] a(final FREBitmapData p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   com/adobe/fre/FREBitmapData.acquire:()V
        //     4: aload_0        
        //     5: invokevirtual   com/adobe/fre/FREBitmapData.getWidth:()I
        //     8: istore          22
        //    10: aload_0        
        //    11: invokevirtual   com/adobe/fre/FREBitmapData.getHeight:()I
        //    14: istore          24
        //    16: aload_0        
        //    17: invokevirtual   com/adobe/fre/FREBitmapData.getBits:()Ljava/nio/ByteBuffer;
        //    20: astore          5
        //    22: ldc             "[GVExtension]"
        //    24: new             Ljava/lang/StringBuilder;
        //    27: dup            
        //    28: ldc             "Image size:"
        //    30: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    33: iload           22
        //    35: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    38: ldc             ","
        //    40: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    43: iload           24
        //    45: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    48: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    51: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    54: pop            
        //    55: iload           22
        //    57: istore_3       
        //    58: iload           24
        //    60: istore_2       
        //    61: aload           5
        //    63: ifnull          361
        //    66: new             Ljava/io/ByteArrayOutputStream;
        //    69: dup            
        //    70: invokespecial   java/io/ByteArrayOutputStream.<init>:()V
        //    73: astore          6
        //    75: iload_3        
        //    76: iload_2        
        //    77: getstatic       android/graphics/Bitmap$Config.ARGB_8888:Landroid/graphics/Bitmap$Config;
        //    80: invokestatic    android/graphics/Bitmap.createBitmap:(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
        //    83: astore          7
        //    85: aload           7
        //    87: aload           5
        //    89: invokevirtual   android/graphics/Bitmap.copyPixelsFromBuffer:(Ljava/nio/Buffer;)V
        //    92: iload_3        
        //    93: iload_2        
        //    94: getstatic       android/graphics/Bitmap$Config.ARGB_8888:Landroid/graphics/Bitmap$Config;
        //    97: invokestatic    android/graphics/Bitmap.createBitmap:(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
        //   100: astore          8
        //   102: iconst_0       
        //   103: istore          9
        //   105: iload           9
        //   107: iload_2        
        //   108: if_icmpge       232
        //   111: iconst_0       
        //   112: istore          16
        //   114: iload           16
        //   116: iload_3        
        //   117: if_icmpge       226
        //   120: aload           7
        //   122: iload           16
        //   124: iload           9
        //   126: invokevirtual   android/graphics/Bitmap.getPixel:(II)I
        //   129: istore          17
        //   131: sipush          255
        //   134: iload           17
        //   136: bipush          24
        //   138: ishr           
        //   139: iand           
        //   140: istore          18
        //   142: sipush          255
        //   145: iload           17
        //   147: bipush          16
        //   149: ishr           
        //   150: iand           
        //   151: istore          19
        //   153: sipush          255
        //   156: iload           17
        //   158: bipush          8
        //   160: ishr           
        //   161: iand           
        //   162: istore          20
        //   164: iload           17
        //   166: sipush          255
        //   169: iand           
        //   170: istore          21
        //   172: aload           8
        //   174: iload           16
        //   176: iload           9
        //   178: iload           19
        //   180: iload           18
        //   182: bipush          24
        //   184: ishl           
        //   185: iload           21
        //   187: bipush          16
        //   189: ishl           
        //   190: ior            
        //   191: iload           20
        //   193: bipush          8
        //   195: ishl           
        //   196: ior            
        //   197: ior            
        //   198: invokevirtual   android/graphics/Bitmap.setPixel:(III)V
        //   201: iinc            16, 1
        //   204: goto            114
        //   207: astore_1       
        //   208: iconst_0       
        //   209: istore_2       
        //   210: iconst_0       
        //   211: istore_3       
        //   212: ldc             "[GVExtension]"
        //   214: ldc             "Encoding failed!"
        //   216: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   219: pop            
        //   220: aconst_null    
        //   221: astore          5
        //   223: goto            61
        //   226: iinc            9, 1
        //   229: goto            105
        //   232: ldc             "[GVExtension]"
        //   234: new             Ljava/lang/StringBuilder;
        //   237: dup            
        //   238: ldc_w           "wrote bitmap height-"
        //   241: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   244: aload           8
        //   246: invokevirtual   android/graphics/Bitmap.getHeight:()I
        //   249: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   252: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   255: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   258: pop            
        //   259: aload           8
        //   261: getstatic       android/graphics/Bitmap$CompressFormat.JPEG:Landroid/graphics/Bitmap$CompressFormat;
        //   264: bipush          90
        //   266: aload           6
        //   268: invokevirtual   android/graphics/Bitmap.compress:(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
        //   271: pop            
        //   272: ldc             "[GVExtension]"
        //   274: new             Ljava/lang/StringBuilder;
        //   277: dup            
        //   278: ldc_w           "results in px39:"
        //   281: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   284: aload           8
        //   286: bipush          39
        //   288: bipush          39
        //   290: invokevirtual   android/graphics/Bitmap.getPixel:(II)I
        //   293: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   296: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   299: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   302: pop            
        //   303: aload           6
        //   305: invokevirtual   java/io/ByteArrayOutputStream.toByteArray:()[B
        //   308: astore          13
        //   310: aload           6
        //   312: invokevirtual   java/io/ByteArrayOutputStream.flush:()V
        //   315: aload           6
        //   317: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   320: aload_0        
        //   321: invokevirtual   com/adobe/fre/FREBitmapData.release:()V
        //   324: aload           13
        //   326: areturn        
        //   327: astore          14
        //   329: ldc             "[GVExtension]"
        //   331: ldc             "Failed releasing image"
        //   333: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   336: pop            
        //   337: aload           13
        //   339: areturn        
        //   340: astore          23
        //   342: iload           22
        //   344: istore_3       
        //   345: iconst_0       
        //   346: istore_2       
        //   347: goto            212
        //   350: astore          25
        //   352: iload           22
        //   354: istore_3       
        //   355: iload           24
        //   357: istore_2       
        //   358: goto            212
        //   361: aconst_null    
        //   362: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      10     207    212    Ljava/lang/Exception;
        //  10     16     340    350    Ljava/lang/Exception;
        //  16     55     350    361    Ljava/lang/Exception;
        //  310    324    327    340    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 180, Size: 180
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
    
    public static int[] b(final String s) {
        final int[] array = { 0 };
        if (b.c == null) {
            array[0] = 0;
        }
        array[0] = b.c.getResourceId(s);
        return array;
    }
    
    private Intent d(final String type) {
        final Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(type);
        final List queryIntentActivities = this.b.getPackageManager().queryIntentActivities(intent, 65536);
        for (int i = 0; i < com.milkmangames.extensions.android.goviral.b.a.length; ++i) {
            final Iterator<ResolveInfo> iterator = queryIntentActivities.iterator();
            while (iterator.hasNext()) {
                final String packageName = iterator.next().activityInfo.packageName;
                if (packageName != null && packageName.startsWith(com.milkmangames.extensions.android.goviral.b.a[i])) {
                    intent.setPackage(packageName);
                    return intent;
                }
            }
        }
        return null;
    }
    
    private static boolean g() {
        final Session activeSession = Session.getActiveSession();
        return activeSession != null && !activeSession.isClosed() && activeSession.isOpened();
    }
    
    private Session$StatusCallback h() {
        return new h(this);
    }
    
    @Override
    public final void a(final int n, final int n2, final Intent intent) {
        if (n == 2345234) {
            Session.getActiveSession().onActivityResult(this.b, n, n2, intent);
        }
        if (n == 194236) {
            this.dispatchStatusEventAsync("18", "");
        }
        if (n == 194235) {
            this.dispatchStatusEventAsync("3", "");
        }
        if (n == 194234 || n == 194233) {
            this.dispatchStatusEventAsync("30", "");
        }
    }
    
    public final void a(final int i, final String str, final String str2) {
        this.dispatchStatusEventAsync("11", i + "[ERR]" + str + "[URL]" + str2);
    }
    
    public final void a(final String s, final Bundle bundle) {
        final JSONStringer jsonStringer = new JSONStringer();
        String s2 = "{\"gvDialogType\":" + s + "\"}";
        Label_0146: {
            if (bundle != null) {
                Label_0156: {
                    try {
                        jsonStringer.object();
                        jsonStringer.key("gvDialogType");
                        jsonStringer.value((Object)s);
                        for (final String s3 : bundle.keySet()) {
                            jsonStringer.key(s3);
                            jsonStringer.value((Object)bundle.getString(s3));
                        }
                        break Label_0156;
                    }
                    catch (Exception ex) {
                        Log.d("[GVExtension]", "Failed parsing fb dialog return values.");
                        s2 = "{\"gvDialogType\":" + s + "\"}";
                    }
                    break Label_0146;
                }
                jsonStringer.endObject();
                s2 = jsonStringer.toString();
            }
        }
        this.dispatchStatusEventAsync("9", s2);
    }
    
    public final void a(final String str, final String str2) {
        final String string = str + "[URL]" + str2;
        Log.d("[GVExtension]", "onrawresponse:" + string);
        this.dispatchStatusEventAsync("12", string);
    }
    
    public final void b(final int i, final String str, final String str2) {
        this.dispatchStatusEventAsync("13", i + "[ERR]" + str + "[URL]" + str2);
    }
    
    public final void c(final String str) {
        this.dispatchStatusEventAsync("10", "{\"gvDialogType\":" + str + "\"}");
    }
    
    @Override
    public final void dispose() {
        this.b = null;
    }
    
    @Override
    public final Map getFunctions() {
        final HashMap<String, k> hashMap = new HashMap<String, k>();
        hashMap.put("ffiInitGoViral", new s(this, (byte)0));
        hashMap.put("ffiCanSendEmail", (s)new k(this, (byte)0));
        hashMap.put("ffiShowEmailComposer", (s)new aa(this, (byte)0));
        hashMap.put("ffiShowEmailComposerWithBitmap", (s)new ab(this, (byte)0));
        hashMap.put("ffiInitFacebook", (s)new r(this, (byte)0));
        hashMap.put("ffiAuthenticateWithFacebook", (s)new j(this, (byte)0));
        hashMap.put("ffiIsFacebookAuthenticated", (s)new t(this, (byte)0));
        hashMap.put("ffiLogoutFacebook", (s)new w(this, (byte)0));
        hashMap.put("ffiShowFacebookFeedDialog", (s)new ac(this, (byte)0));
        hashMap.put("ffiShowFacebookRequestDialog", (s)new ad(this, (byte)0));
        hashMap.put("ffiFacebookGraphRequest", (s)new l(this, (byte)0));
        hashMap.put("ffiFacebookPostPhoto", (s)new m(this, (byte)0));
        hashMap.put("ffiGetAccessToken", (s)new p(this, (byte)0));
        hashMap.put("ffiShowTweetSheet", (s)new ae(this, (byte)0));
        hashMap.put("ffiShowTweetSheetWithImage", (s)new af(this, (byte)0));
        hashMap.put("ffiIsTweetSheetAvailable", (s)new v(this, (byte)0));
        hashMap.put("ffiIsGenericShareAvailable", (s)new u(this, (byte)0));
        hashMap.put("ffiShareGeneric", (s)new n(this, (byte)0));
        hashMap.put("ffiShareGenericWithImage", (s)new o(this, (byte)0));
        hashMap.put("ffiPublishInstall", (s)new x(this, (byte)0));
        hashMap.put("ffiGetFbAccessExpiry", (s)new q(this, (byte)0));
        hashMap.put("ffiRequestNewReadPermissions", (s)new z(this, (byte)0));
        hashMap.put("ffiRequestNewPublishPermissions", (s)new y(this, (byte)0));
        return hashMap;
    }
}
