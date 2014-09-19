package com.milkmangames.extensions.android.goviral;

import android.annotation.*;
import android.app.*;
import c.m.x.a.gv.*;
import android.util.*;
import android.text.*;
import android.net.*;
import android.os.*;
import android.provider.*;
import com.facebook.*;
import android.content.*;
import android.content.pm.*;
import org.json.*;
import com.adobe.fre.*;
import java.util.*;
import com.facebook.widget.*;

@TargetApi(8)
public final class b extends FREContext implements ay
{
    public static final String[] a;
    public static FREContext c;
    public static a d;
    public static boolean e;
    public Activity b;
    private av f;
    private SharedPreferences g;
    private String h;
    private RequestAsyncTask i;
    private String j;
    private String k;
    private String l;
    private AppEventsLogger m;
    
    static {
        a = new String[] { "com.twitdroid", "com.twitter.android", "com.handmark.tweetcaster", "com.thedeck.android" };
        b.e = false;
    }
    
    public b() {
        super();
        this.b = null;
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
    
    private List<Intent> a(final Intent intent) {
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
    
    private void a(final String s, final FREBitmapData freBitmapData) {
        final Intent d = this.d("text/plain");
        if (d == null) {
            return;
        }
        d.putExtra("android.intent.extra.TEXT", s);
        final Uri b = b("twattachment", freBitmapData);
        if (b != null) {
            d.putExtra("android.intent.extra.STREAM", (Parcelable)b);
            d.setType("image/jpeg");
        }
        else {
            Log.d("[GVExtension]", "Twitter intent did not allow image attachment.");
            d.setType("text/plain");
        }
        this.b.startActivityForResult(d, 194236);
    }
    
    private void a(final String l, final String s, final Bundle bundle, final String s2) {
        if (!i()) {
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
        final f f = new f(this, l);
        Log.d("[GVExtension]", "Graph->Task");
        while (true) {
            Label_0318: {
                if (s.equals("GET")) {
                    break Label_0318;
                }
                HttpMethod httpMethod;
                if (s.equals("POST")) {
                    httpMethod = HttpMethod.POST;
                }
                else {
                    if (!s.equals("DELETE")) {
                        break Label_0318;
                    }
                    httpMethod = HttpMethod.DELETE;
                }
                final RequestAsyncTask k = new RequestAsyncTask(new Request[] { new Request(activeSession, l, bundle, httpMethod, f) });
                if (n2 != 0) {
                    this.i = k;
                    Log.d("[GVExtension]", "Reauthorizing for graph publish permissions.");
                    final Session$NewPermissionsRequest session$NewPermissionsRequest = new Session$NewPermissionsRequest(this.getActivity(), list);
                    session$NewPermissionsRequest.setRequestCode(2345234);
                    Session.getActiveSession().requestNewPublishPermissions(session$NewPermissionsRequest);
                    return;
                }
                Log.d("[GVExtension]", "Graph execute");
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
        //    28: ldc_w           "Image size:"
        //    31: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    34: iload           22
        //    36: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    39: ldc_w           ","
        //    42: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    45: iload           24
        //    47: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    50: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    53: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    56: pop            
        //    57: iload           22
        //    59: istore_3       
        //    60: iload           24
        //    62: istore_2       
        //    63: aload           5
        //    65: ifnull          365
        //    68: new             Ljava/io/ByteArrayOutputStream;
        //    71: dup            
        //    72: invokespecial   java/io/ByteArrayOutputStream.<init>:()V
        //    75: astore          6
        //    77: iload_3        
        //    78: iload_2        
        //    79: getstatic       android/graphics/Bitmap$Config.ARGB_8888:Landroid/graphics/Bitmap$Config;
        //    82: invokestatic    android/graphics/Bitmap.createBitmap:(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
        //    85: astore          7
        //    87: aload           7
        //    89: aload           5
        //    91: invokevirtual   android/graphics/Bitmap.copyPixelsFromBuffer:(Ljava/nio/Buffer;)V
        //    94: iload_3        
        //    95: iload_2        
        //    96: getstatic       android/graphics/Bitmap$Config.ARGB_8888:Landroid/graphics/Bitmap$Config;
        //    99: invokestatic    android/graphics/Bitmap.createBitmap:(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
        //   102: astore          8
        //   104: iconst_0       
        //   105: istore          9
        //   107: iload           9
        //   109: iload_2        
        //   110: if_icmpge       235
        //   113: iconst_0       
        //   114: istore          16
        //   116: iload           16
        //   118: iload_3        
        //   119: if_icmpge       229
        //   122: aload           7
        //   124: iload           16
        //   126: iload           9
        //   128: invokevirtual   android/graphics/Bitmap.getPixel:(II)I
        //   131: istore          17
        //   133: sipush          255
        //   136: iload           17
        //   138: bipush          24
        //   140: ishr           
        //   141: iand           
        //   142: istore          18
        //   144: sipush          255
        //   147: iload           17
        //   149: bipush          16
        //   151: ishr           
        //   152: iand           
        //   153: istore          19
        //   155: sipush          255
        //   158: iload           17
        //   160: bipush          8
        //   162: ishr           
        //   163: iand           
        //   164: istore          20
        //   166: iload           17
        //   168: sipush          255
        //   171: iand           
        //   172: istore          21
        //   174: aload           8
        //   176: iload           16
        //   178: iload           9
        //   180: iload           19
        //   182: iload           18
        //   184: bipush          24
        //   186: ishl           
        //   187: iload           21
        //   189: bipush          16
        //   191: ishl           
        //   192: ior            
        //   193: iload           20
        //   195: bipush          8
        //   197: ishl           
        //   198: ior            
        //   199: ior            
        //   200: invokevirtual   android/graphics/Bitmap.setPixel:(III)V
        //   203: iinc            16, 1
        //   206: goto            116
        //   209: astore_1       
        //   210: iconst_0       
        //   211: istore_2       
        //   212: iconst_0       
        //   213: istore_3       
        //   214: ldc             "[GVExtension]"
        //   216: ldc_w           "Encoding failed!"
        //   219: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   222: pop            
        //   223: aconst_null    
        //   224: astore          5
        //   226: goto            63
        //   229: iinc            9, 1
        //   232: goto            107
        //   235: ldc             "[GVExtension]"
        //   237: new             Ljava/lang/StringBuilder;
        //   240: dup            
        //   241: ldc_w           "wrote bitmap height-"
        //   244: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   247: aload           8
        //   249: invokevirtual   android/graphics/Bitmap.getHeight:()I
        //   252: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   255: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   258: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   261: pop            
        //   262: aload           8
        //   264: getstatic       android/graphics/Bitmap$CompressFormat.JPEG:Landroid/graphics/Bitmap$CompressFormat;
        //   267: bipush          90
        //   269: aload           6
        //   271: invokevirtual   android/graphics/Bitmap.compress:(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
        //   274: pop            
        //   275: ldc             "[GVExtension]"
        //   277: new             Ljava/lang/StringBuilder;
        //   280: dup            
        //   281: ldc_w           "results in px39:"
        //   284: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   287: aload           8
        //   289: bipush          39
        //   291: bipush          39
        //   293: invokevirtual   android/graphics/Bitmap.getPixel:(II)I
        //   296: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   299: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   302: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   305: pop            
        //   306: aload           6
        //   308: invokevirtual   java/io/ByteArrayOutputStream.toByteArray:()[B
        //   311: astore          13
        //   313: aload           6
        //   315: invokevirtual   java/io/ByteArrayOutputStream.flush:()V
        //   318: aload           6
        //   320: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   323: aload_0        
        //   324: invokevirtual   com/adobe/fre/FREBitmapData.release:()V
        //   327: aload           13
        //   329: areturn        
        //   330: astore          14
        //   332: ldc             "[GVExtension]"
        //   334: ldc_w           "Failed releasing image"
        //   337: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   340: pop            
        //   341: aload           13
        //   343: areturn        
        //   344: astore          23
        //   346: iload           22
        //   348: istore_3       
        //   349: iconst_0       
        //   350: istore_2       
        //   351: goto            214
        //   354: astore          25
        //   356: iload           22
        //   358: istore_3       
        //   359: iload           24
        //   361: istore_2       
        //   362: goto            214
        //   365: aconst_null    
        //   366: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      10     209    214    Ljava/lang/Exception;
        //  10     16     344    354    Ljava/lang/Exception;
        //  16     57     354    365    Ljava/lang/Exception;
        //  313    327    330    344    Ljava/lang/Exception;
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
    
    private static Uri b(final String p0, final FREBitmapData p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: ldc_w           ".jpeg"
        //     4: invokevirtual   java/lang/String.concat:(Ljava/lang/String;)Ljava/lang/String;
        //     7: astore_2       
        //     8: aload_1        
        //     9: invokevirtual   com/adobe/fre/FREBitmapData.acquire:()V
        //    12: aload_1        
        //    13: invokevirtual   com/adobe/fre/FREBitmapData.getWidth:()I
        //    16: istore          5
        //    18: aload_1        
        //    19: invokevirtual   com/adobe/fre/FREBitmapData.getHeight:()I
        //    22: istore          6
        //    24: aload_1        
        //    25: invokevirtual   com/adobe/fre/FREBitmapData.getBits:()Ljava/nio/ByteBuffer;
        //    28: astore          7
        //    30: ldc             "[GVExtension]"
        //    32: new             Ljava/lang/StringBuilder;
        //    35: dup            
        //    36: ldc_w           "Image size:"
        //    39: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    42: iload           5
        //    44: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    47: ldc_w           ","
        //    50: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    53: iload           6
        //    55: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    58: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    61: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    64: pop            
        //    65: new             Ljava/io/File;
        //    68: dup            
        //    69: new             Ljava/lang/StringBuilder;
        //    72: dup            
        //    73: invokespecial   java/lang/StringBuilder.<init>:()V
        //    76: invokestatic    android/os/Environment.getExternalStorageDirectory:()Ljava/io/File;
        //    79: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //    82: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    85: ldc_w           "/"
        //    88: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    91: aload_2        
        //    92: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    95: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    98: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //   101: astore          9
        //   103: new             Ljava/io/FileOutputStream;
        //   106: dup            
        //   107: aload           9
        //   109: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //   112: astore          10
        //   114: aload           10
        //   116: ifnull          378
        //   119: iload           5
        //   121: iload           6
        //   123: getstatic       android/graphics/Bitmap$Config.ARGB_8888:Landroid/graphics/Bitmap$Config;
        //   126: invokestatic    android/graphics/Bitmap.createBitmap:(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
        //   129: astore          12
        //   131: aload           12
        //   133: aload           7
        //   135: invokevirtual   android/graphics/Bitmap.copyPixelsFromBuffer:(Ljava/nio/Buffer;)V
        //   138: iload           5
        //   140: iload           6
        //   142: getstatic       android/graphics/Bitmap$Config.ARGB_8888:Landroid/graphics/Bitmap$Config;
        //   145: invokestatic    android/graphics/Bitmap.createBitmap:(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
        //   148: astore          13
        //   150: iconst_0       
        //   151: istore          14
        //   153: iload           14
        //   155: iload           6
        //   157: if_icmpge       292
        //   160: iconst_0       
        //   161: istore          19
        //   163: iload           19
        //   165: iload           5
        //   167: if_icmpge       286
        //   170: aload           12
        //   172: iload           19
        //   174: iload           14
        //   176: invokevirtual   android/graphics/Bitmap.getPixel:(II)I
        //   179: istore          20
        //   181: sipush          255
        //   184: iload           20
        //   186: bipush          24
        //   188: ishr           
        //   189: iand           
        //   190: istore          21
        //   192: sipush          255
        //   195: iload           20
        //   197: bipush          16
        //   199: ishr           
        //   200: iand           
        //   201: istore          22
        //   203: sipush          255
        //   206: iload           20
        //   208: bipush          8
        //   210: ishr           
        //   211: iand           
        //   212: istore          23
        //   214: iload           20
        //   216: sipush          255
        //   219: iand           
        //   220: istore          24
        //   222: aload           13
        //   224: iload           19
        //   226: iload           14
        //   228: iload           22
        //   230: iload           21
        //   232: bipush          24
        //   234: ishl           
        //   235: iload           24
        //   237: bipush          16
        //   239: ishl           
        //   240: ior            
        //   241: iload           23
        //   243: bipush          8
        //   245: ishl           
        //   246: ior            
        //   247: ior            
        //   248: invokevirtual   android/graphics/Bitmap.setPixel:(III)V
        //   251: iinc            19, 1
        //   254: goto            163
        //   257: astore_3       
        //   258: ldc             "[GVExtension]"
        //   260: ldc_w           "Encoding failed!"
        //   263: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   266: pop            
        //   267: aconst_null    
        //   268: areturn        
        //   269: astore          25
        //   271: ldc             "[GVExtension]"
        //   273: ldc_w           "File caching failed"
        //   276: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   279: pop            
        //   280: aconst_null    
        //   281: astore          10
        //   283: goto            114
        //   286: iinc            14, 1
        //   289: goto            153
        //   292: aload           13
        //   294: getstatic       android/graphics/Bitmap$CompressFormat.JPEG:Landroid/graphics/Bitmap$CompressFormat;
        //   297: bipush          90
        //   299: aload           10
        //   301: invokevirtual   android/graphics/Bitmap.compress:(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
        //   304: pop            
        //   305: ldc             "[GVExtension]"
        //   307: new             Ljava/lang/StringBuilder;
        //   310: dup            
        //   311: ldc_w           "out to file:"
        //   314: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   317: aload           9
        //   319: invokestatic    android/net/Uri.fromFile:(Ljava/io/File;)Landroid/net/Uri;
        //   322: invokevirtual   android/net/Uri.toString:()Ljava/lang/String;
        //   325: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   328: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   331: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   334: pop            
        //   335: aload           10
        //   337: invokevirtual   java/io/FileOutputStream.flush:()V
        //   340: aload           10
        //   342: invokevirtual   java/io/FileOutputStream.close:()V
        //   345: aload_1        
        //   346: invokevirtual   com/adobe/fre/FREBitmapData.release:()V
        //   349: new             Ljava/io/File;
        //   352: dup            
        //   353: invokestatic    android/os/Environment.getExternalStorageDirectory:()Ljava/io/File;
        //   356: aload_2        
        //   357: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //   360: invokestatic    android/net/Uri.fromFile:(Ljava/io/File;)Landroid/net/Uri;
        //   363: areturn        
        //   364: astore          17
        //   366: ldc             "[GVExtension]"
        //   368: ldc_w           "Failed releasing image"
        //   371: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   374: pop            
        //   375: goto            349
        //   378: ldc             "[GVExtension]"
        //   380: ldc_w           "Failed to write temp image stream."
        //   383: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //   386: pop            
        //   387: aconst_null    
        //   388: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  8      65     257    269    Ljava/lang/Exception;
        //  103    114    269    286    Ljava/lang/Exception;
        //  335    349    364    378    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0114:
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
    
    private void b(final String s) {
        final Intent d = this.d("text/plain");
        if (d == null) {
            return;
        }
        d.putExtra("android.intent.extra.TEXT", s);
        this.b.startActivityForResult(d, 194236);
    }
    
    private Intent c(final String s) {
        if (Build$VERSION.SDK_INT < 19) {
            final Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("sms:"));
            intent.putExtra("sms_body", s);
            return intent;
        }
        final Intent intent2 = new Intent("android.intent.action.SEND");
        intent2.setType("text/plain");
        final String defaultSmsPackage = Telephony$Sms.getDefaultSmsPackage((Context)this.getActivity());
        if (defaultSmsPackage == null) {
            return null;
        }
        intent2.putExtra("android.intent.extra.TEXT", s);
        intent2.setPackage(defaultSmsPackage);
        return intent2;
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
    
    private static boolean i() {
        final Session activeSession = Session.getActiveSession();
        return activeSession != null && !activeSession.isClosed() && activeSession.isOpened();
    }
    
    private boolean j() {
        return this.d("text/plain") != null;
    }
    
    private AppEventsLogger k() {
        if (this.m == null) {
            this.m = AppEventsLogger.newLogger((Context)this.getActivity());
        }
        return this.m;
    }
    
    private Intent l() {
        final Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        for (final ResolveInfo resolveInfo : this.b.getPackageManager().queryIntentActivities(intent, 65536)) {
            if (resolveInfo.activityInfo.name.contains("facebook")) {
                final ActivityInfo activityInfo = resolveInfo.activityInfo;
                intent.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
                return intent;
            }
        }
        return null;
    }
    
    private Session$StatusCallback m() {
        return new i(this);
    }
    
    @Override
    public final void a() {
        Log.d("[GVExtension]", "started fb");
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
        if (n == 2345235) {
            this.dispatchStatusEventAsync("51", "");
        }
    }
    
    public final void a(final int i, final String str, final String str2) {
        final String string = i + "[ERR]" + str + "[URL]" + str2;
        Log.d("[GVExtension]", "FB Dialog failed:" + string);
        this.dispatchStatusEventAsync("11", string);
    }
    
    public final void a(final String s) {
        final String string = "{\"gvDialogType\":\"" + s + "\"}";
        Log.d("[GVExtension]", "facebook dialog canceled :" + s);
        this.dispatchStatusEventAsync("10", string);
    }
    
    public final void a(final String s, final Bundle bundle) {
        Log.d("[GVExtension]", "FBDialogFinished.");
        final JSONStringer jsonStringer = new JSONStringer();
        String s2 = "{\"gvDialogType\":\"" + s + "\"}";
        Label_0161: {
            if (bundle != null) {
                Label_0171: {
                    try {
                        jsonStringer.object();
                        jsonStringer.key("gvDialogType");
                        jsonStringer.value((Object)s);
                        for (final String s3 : bundle.keySet()) {
                            jsonStringer.key(s3);
                            jsonStringer.value((Object)bundle.getString(s3));
                        }
                        break Label_0171;
                    }
                    catch (Exception ex) {
                        Log.d("[GVExtension]", "Failed parsing fb dialog return values.");
                        s2 = "{\"gvDialogType\":\"" + s + "\"}";
                    }
                    break Label_0161;
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
    
    @Override
    public final void b() {
        Log.d("[GVExtension]", "Resume->activate publish");
        AppEventsLogger.activateApp((Context)this.getActivity(), this.h);
    }
    
    public final void b(final int i, final String str, final String str2) {
        this.dispatchStatusEventAsync("13", i + "[ERR]" + str + "[URL]" + str2);
    }
    
    @Override
    public final void dispose() {
        this.b = null;
    }
    
    @Override
    public final Map<String, FREFunction> getFunctions() {
        final HashMap<String, l> hashMap = (HashMap<String, l>)new HashMap<String, m>();
        hashMap.put("ffiInitGoViral", (m)new w(this, (byte)0));
        hashMap.put("ffiCanSendEmail", (m)new l(this, (byte)0));
        hashMap.put("ffiShowEmailComposer", (m)new ag(this, (byte)0));
        hashMap.put("ffiShowEmailComposerWithBitmap", (m)new ah(this, (byte)0));
        hashMap.put("ffiInitFacebook", (m)new v(this, (byte)0));
        hashMap.put("ffiAuthenticateWithFacebook", (m)new k(this, (byte)0));
        hashMap.put("ffiIsFacebookAuthenticated", (m)new x(this, (byte)0));
        hashMap.put("ffiLogoutFacebook", (m)new ab(this, (byte)0));
        hashMap.put("ffiShowFacebookFeedDialog", (m)new ai(this, (byte)0));
        hashMap.put("ffiShowFacebookRequestDialog", (m)new aj(this, (byte)0));
        hashMap.put("ffiFacebookGraphRequest", (m)new n(this, (byte)0));
        hashMap.put("ffiFacebookPostPhoto", (m)new p(this, (byte)0));
        hashMap.put("ffiGetAccessToken", (m)new t(this, (byte)0));
        hashMap.put("ffiShowTweetSheet", (m)new ak(this, (byte)0));
        hashMap.put("ffiShowTweetSheetWithImage", (m)new al(this, (byte)0));
        hashMap.put("ffiIsTweetSheetAvailable", (m)new aa(this, (byte)0));
        hashMap.put("ffiIsGenericShareAvailable", (m)new y(this, (byte)0));
        hashMap.put("ffiShareGeneric", (m)new r(this, (byte)0));
        hashMap.put("ffiShareGenericWithImage", (m)new s(this, (byte)0));
        hashMap.put("ffiPublishInstall", (m)new ad(this, (byte)0));
        hashMap.put("ffiGetFbAccessExpiry", (m)new u(this, (byte)0));
        hashMap.put("ffiRequestNewReadPermissions", (m)new af(this, (byte)0));
        hashMap.put("ffiRequestNewPublishPermissions", (m)new ae(this, (byte)0));
        hashMap.put("ffiFacebookLogAppEvent", (m)new o(this, (byte)0));
        hashMap.put("ffiFacebookRequestAppUserID", (m)new q(this, (byte)0));
        hashMap.put("ffiPresentFacebookProfileOrPage", (m)new ac(this, (byte)0));
        hashMap.put("ffiIsServiceAvailable", (m)new z(this, (byte)0));
        hashMap.put("ffiDisplaySocialView", new m(this, (byte)0));
        return (Map<String, FREFunction>)hashMap;
    }
}
