package com.fusepowered.m1.android;

import android.graphics.*;
import android.content.*;
import java.io.*;
import java.nio.channels.*;
import android.net.*;
import org.json.*;
import java.util.concurrent.*;
import java.lang.ref.*;
import android.media.*;
import java.util.*;
import android.os.*;

class BridgeMMMedia extends MMJSObject
{
    private static final String PATH = "path";
    private static final String PICTURES = "Pictures";
    private static Object pickerActivityObject;
    MediaScannerConnection mediaScanner;
    
    private static Bitmap centerOfImage(final Bitmap bitmap, final int n, final int n2) {
        return cropImage(bitmap, (bitmap.getWidth() - n) / 2, (bitmap.getHeight() - n2) / 2, n, n2);
    }
    
    private static Bitmap cropImage(final Bitmap bitmap, final int n, final int n2, final int n3, final int n4) {
        return Bitmap.createBitmap(bitmap, n, n2, n3, n4);
    }
    
    private boolean isCameraAvailable() {
        final Context context = this.contextRef.get();
        return context != null && context.getPackageManager().checkPermission("android.permission.CAMERA", context.getPackageName()) == 0 && context.getPackageManager().queryIntentActivities(new Intent("android.media.action.IMAGE_CAPTURE"), 65536).size() > 0;
    }
    
    private boolean isPictureChooserAvailable() {
        final Context context = this.contextRef.get();
        if (context != null) {
            final Intent intent = new Intent();
            intent.setType("image/*");
            intent.setAction("android.intent.action.GET_CONTENT");
            return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
        }
        return false;
    }
    
    private boolean moveFile(final File file, final File file2) {
        try {
            final FileChannel channel = new FileInputStream(file).getChannel();
            final File parentFile = file2.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            file2.createNewFile();
            channel.transferTo(0L, channel.size(), new FileOutputStream(file2).getChannel());
            return true;
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }
    
    private static Bitmap resizeImage(final Bitmap bitmap, final int n, final int n2, final int n3) {
        return Bitmap.createScaledBitmap(bitmap, n, n2, true);
    }
    
    static Bitmap resizeImage(final Bitmap bitmap, final String s, final int n, final int n2, final int n3) {
        final float n4 = n / bitmap.getWidth();
        final float n5 = n2 / bitmap.getHeight();
        if (s.equals("Center")) {
            return centerOfImage(bitmap, n, n2);
        }
        if (s.equals("ScaleToAspectFit")) {
            final float min = Math.min(n4, n5);
            return resizeImage(bitmap, (int)(min * bitmap.getWidth()), (int)(min * bitmap.getHeight()), n3);
        }
        if (s.equals("ScaleToAspectFill")) {
            final float max = Math.max(n4, n5);
            return cropImage(resizeImage(bitmap, (int)(max * bitmap.getWidth()), (int)(max * bitmap.getHeight()), n3), 0, 0, n, n2);
        }
        return resizeImage(bitmap, n, n2, n3);
    }
    
    private static final byte[] scaleBitmapToBytes(final File p0, final int p1, final int p2, final String p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/io/FileInputStream;
        //     3: dup            
        //     4: aload_0        
        //     5: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //     8: astore          4
        //    10: new             Landroid/graphics/BitmapFactory$Options;
        //    13: dup            
        //    14: invokespecial   android/graphics/BitmapFactory$Options.<init>:()V
        //    17: astore          5
        //    19: aload           5
        //    21: iconst_1       
        //    22: putfield        android/graphics/BitmapFactory$Options.inJustDecodeBounds:Z
        //    25: aload           4
        //    27: aconst_null    
        //    28: aload           5
        //    30: invokestatic    android/graphics/BitmapFactory.decodeStream:(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
        //    33: pop            
        //    34: aload           5
        //    36: getfield        android/graphics/BitmapFactory$Options.outHeight:I
        //    39: istore          32
        //    41: aload           5
        //    43: getfield        android/graphics/BitmapFactory$Options.outWidth:I
        //    46: istore          33
        //    48: iconst_1       
        //    49: istore          34
        //    51: iload           32
        //    53: iload_2        
        //    54: if_icmpgt       63
        //    57: iload           33
        //    59: iload_1        
        //    60: if_icmple       81
        //    63: iload           33
        //    65: iload           32
        //    67: if_icmple       228
        //    70: iload           32
        //    72: i2f            
        //    73: iload_2        
        //    74: i2f            
        //    75: fdiv           
        //    76: invokestatic    java/lang/Math.round:(F)I
        //    79: istore          34
        //    81: new             Ljava/io/FileInputStream;
        //    84: dup            
        //    85: aload_0        
        //    86: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //    89: astore          8
        //    91: aload           5
        //    93: iconst_0       
        //    94: putfield        android/graphics/BitmapFactory$Options.inJustDecodeBounds:Z
        //    97: aload           5
        //    99: iload           34
        //   101: putfield        android/graphics/BitmapFactory$Options.inSampleSize:I
        //   104: aload           8
        //   106: aconst_null    
        //   107: aload           5
        //   109: invokestatic    android/graphics/BitmapFactory.decodeStream:(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
        //   112: astore          37
        //   114: aload           4
        //   116: ifnull          124
        //   119: aload           4
        //   121: invokevirtual   java/io/FileInputStream.close:()V
        //   124: aload           8
        //   126: ifnull          134
        //   129: aload           8
        //   131: invokevirtual   java/io/FileInputStream.close:()V
        //   134: aload           37
        //   136: astore          10
        //   138: aload           10
        //   140: ifnull          556
        //   143: aload           10
        //   145: aload_3        
        //   146: iload_1        
        //   147: iload_2        
        //   148: iconst_1       
        //   149: invokestatic    com/fusepowered/m1/android/BridgeMMMedia.resizeImage:(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;
        //   152: astore          11
        //   154: aconst_null    
        //   155: astore          12
        //   157: new             Ljava/io/ByteArrayOutputStream;
        //   160: dup            
        //   161: invokespecial   java/io/ByteArrayOutputStream.<init>:()V
        //   164: astore          13
        //   166: aload_3        
        //   167: ldc             ""
        //   169: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   172: ifeq            336
        //   175: aload           10
        //   177: getstatic       android/graphics/Bitmap$CompressFormat.JPEG:Landroid/graphics/Bitmap$CompressFormat;
        //   180: bipush          100
        //   182: aload           13
        //   184: invokevirtual   android/graphics/Bitmap.compress:(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
        //   187: pop            
        //   188: aload           13
        //   190: invokevirtual   java/io/ByteArrayOutputStream.toByteArray:()[B
        //   193: astore          21
        //   195: aload           10
        //   197: ifnull          205
        //   200: aload           10
        //   202: invokevirtual   android/graphics/Bitmap.recycle:()V
        //   205: aload           11
        //   207: ifnull          215
        //   210: aload           11
        //   212: invokevirtual   android/graphics/Bitmap.recycle:()V
        //   215: aload           13
        //   217: ifnull          225
        //   220: aload           13
        //   222: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   225: aload           21
        //   227: areturn        
        //   228: iload           33
        //   230: i2f            
        //   231: iload_1        
        //   232: i2f            
        //   233: fdiv           
        //   234: fstore          39
        //   236: fload           39
        //   238: invokestatic    java/lang/Math.round:(F)I
        //   241: istore          40
        //   243: iload           40
        //   245: istore          34
        //   247: goto            81
        //   250: astore          38
        //   252: aload           37
        //   254: astore          10
        //   256: goto            138
        //   259: astore          42
        //   261: aconst_null    
        //   262: astore          7
        //   264: aconst_null    
        //   265: astore          8
        //   267: aload           7
        //   269: ifnull          277
        //   272: aload           7
        //   274: invokevirtual   java/io/FileInputStream.close:()V
        //   277: aload           8
        //   279: ifnull          287
        //   282: aload           8
        //   284: invokevirtual   java/io/FileInputStream.close:()V
        //   287: aconst_null    
        //   288: astore          10
        //   290: goto            138
        //   293: astore          9
        //   295: aconst_null    
        //   296: astore          10
        //   298: goto            138
        //   301: astore          41
        //   303: aload           41
        //   305: astore          27
        //   307: aconst_null    
        //   308: astore          29
        //   310: aconst_null    
        //   311: astore          28
        //   313: aload           28
        //   315: ifnull          323
        //   318: aload           28
        //   320: invokevirtual   java/io/FileInputStream.close:()V
        //   323: aload           29
        //   325: ifnull          333
        //   328: aload           29
        //   330: invokevirtual   java/io/FileInputStream.close:()V
        //   333: aload           27
        //   335: athrow         
        //   336: aload           11
        //   338: getstatic       android/graphics/Bitmap$CompressFormat.JPEG:Landroid/graphics/Bitmap$CompressFormat;
        //   341: bipush          100
        //   343: aload           13
        //   345: invokevirtual   android/graphics/Bitmap.compress:(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
        //   348: pop            
        //   349: goto            188
        //   352: astore          17
        //   354: aload           17
        //   356: astore          18
        //   358: aload           13
        //   360: astore          12
        //   362: aload           18
        //   364: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   367: aload           10
        //   369: ifnull          377
        //   372: aload           10
        //   374: invokevirtual   android/graphics/Bitmap.recycle:()V
        //   377: aload           11
        //   379: ifnull          387
        //   382: aload           11
        //   384: invokevirtual   android/graphics/Bitmap.recycle:()V
        //   387: aload           12
        //   389: ifnull          397
        //   392: aload           12
        //   394: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   397: aconst_null    
        //   398: areturn        
        //   399: astore          22
        //   401: aload           22
        //   403: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   406: aload           21
        //   408: areturn        
        //   409: astore          19
        //   411: aload           19
        //   413: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   416: aconst_null    
        //   417: areturn        
        //   418: astore          25
        //   420: aload           25
        //   422: astore          15
        //   424: aload           10
        //   426: ifnull          434
        //   429: aload           10
        //   431: invokevirtual   android/graphics/Bitmap.recycle:()V
        //   434: aload           11
        //   436: ifnull          444
        //   439: aload           11
        //   441: invokevirtual   android/graphics/Bitmap.recycle:()V
        //   444: aload           12
        //   446: ifnull          454
        //   449: aload           12
        //   451: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   454: aload           15
        //   456: athrow         
        //   457: astore          16
        //   459: aload           16
        //   461: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   464: goto            454
        //   467: astore          14
        //   469: aload           14
        //   471: astore          15
        //   473: aload           13
        //   475: astore          12
        //   477: goto            424
        //   480: astore          15
        //   482: goto            424
        //   485: astore          24
        //   487: aload           24
        //   489: astore          18
        //   491: aconst_null    
        //   492: astore          12
        //   494: goto            362
        //   497: astore          30
        //   499: goto            333
        //   502: astore          26
        //   504: aload           26
        //   506: astore          27
        //   508: aload           4
        //   510: astore          28
        //   512: aconst_null    
        //   513: astore          29
        //   515: goto            313
        //   518: astore          36
        //   520: aload           36
        //   522: astore          27
        //   524: aload           8
        //   526: astore          29
        //   528: aload           4
        //   530: astore          28
        //   532: goto            313
        //   535: astore          6
        //   537: aload           4
        //   539: astore          7
        //   541: aconst_null    
        //   542: astore          8
        //   544: goto            267
        //   547: astore          35
        //   549: aload           4
        //   551: astore          7
        //   553: goto            267
        //   556: aconst_null    
        //   557: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  0      10     259    267    Ljava/io/FileNotFoundException;
        //  0      10     301    313    Any
        //  10     48     535    547    Ljava/io/FileNotFoundException;
        //  10     48     502    518    Any
        //  70     81     535    547    Ljava/io/FileNotFoundException;
        //  70     81     502    518    Any
        //  81     91     535    547    Ljava/io/FileNotFoundException;
        //  81     91     502    518    Any
        //  91     114    547    556    Ljava/io/FileNotFoundException;
        //  91     114    518    535    Any
        //  119    124    250    259    Ljava/io/IOException;
        //  129    134    250    259    Ljava/io/IOException;
        //  157    166    485    497    Ljava/lang/Exception;
        //  157    166    418    424    Any
        //  166    188    352    362    Ljava/lang/Exception;
        //  166    188    467    480    Any
        //  188    195    352    362    Ljava/lang/Exception;
        //  188    195    467    480    Any
        //  200    205    399    409    Ljava/lang/Exception;
        //  210    215    399    409    Ljava/lang/Exception;
        //  220    225    399    409    Ljava/lang/Exception;
        //  236    243    535    547    Ljava/io/FileNotFoundException;
        //  236    243    502    518    Any
        //  272    277    293    301    Ljava/io/IOException;
        //  282    287    293    301    Ljava/io/IOException;
        //  318    323    497    502    Ljava/io/IOException;
        //  328    333    497    502    Ljava/io/IOException;
        //  336    349    352    362    Ljava/lang/Exception;
        //  336    349    467    480    Any
        //  362    367    480    485    Any
        //  372    377    409    418    Ljava/lang/Exception;
        //  382    387    409    418    Ljava/lang/Exception;
        //  392    397    409    418    Ljava/lang/Exception;
        //  429    434    457    467    Ljava/lang/Exception;
        //  439    444    457    467    Ljava/lang/Exception;
        //  449    454    457    467    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 265, Size: 265
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
    
    private void scanMedia(final String s) {
        final Context context = this.contextRef.get();
        if (context != null) {
            this.mediaScanner = new MediaScannerConnection(context.getApplicationContext(), (MediaScannerConnection$MediaScannerConnectionClient)new MediaScannerConnection$MediaScannerConnectionClient() {
                public void onMediaScannerConnected() {
                    if (BridgeMMMedia.this.mediaScanner != null) {
                        BridgeMMMedia.this.mediaScanner.scanFile(s, (String)null);
                    }
                }
                
                public void onScanCompleted(final String str, final Uri uri) {
                    if (uri == null) {
                        MMSDK.Log.d("Failed to scan " + str);
                    }
                }
            });
            if (this.mediaScanner != null) {
                this.mediaScanner.connect();
            }
        }
    }
    
    public MMJSResponse availableSourceTypes(final HashMap<String, String> hashMap) {
        final JSONArray response = new JSONArray();
        if (this.isCameraAvailable()) {
            response.put((Object)"Camera");
        }
        if (this.isPictureChooserAvailable()) {
            response.put((Object)"Photo Library");
        }
        final MMJSResponse mmjsResponse = new MMJSResponse();
        mmjsResponse.result = 1;
        mmjsResponse.response = response;
        return mmjsResponse;
    }
    
    public MMJSResponse getDeviceVolume(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        if (context != null) {
            final int mediaVolume = MMSDK.getMediaVolume(context);
            final MMJSResponse responseWithSuccess = MMJSResponse.responseWithSuccess();
            responseWithSuccess.response = mediaVolume;
            return responseWithSuccess;
        }
        return MMJSResponse.responseWithError("no volume available");
    }
    
    public MMJSResponse getPicture(final HashMap<String, String> hashMap) {
    Label_0073_Outer:
        while (true) {
            // monitorenter(this)
        Label_0090_Outer:
            while (true) {
                while (true) {
                    Context context;
                    String s;
                    String s2 = null;
                    String s3 = null;
                    String s4;
                    MMJSResponse mmjsResponse;
                    File file;
                    int n;
                    int n2;
                    byte[] scaleBitmapToBytes;
                    MMJSResponse mmjsResponse2;
                    final Exception ex2;
                    Exception ex;
                    Block_12_Outer:Label_0271_Outer:
                    while (true) {
                    Label_0383:
                        while (true) {
                            try {
                                context = this.contextRef.get();
                                s = hashMap.get("sourceType");
                                s2 = hashMap.get("constrainHeight");
                                s3 = hashMap.get("constrainWidth");
                                s4 = hashMap.get("contentMode");
                                if (s4 == null) {
                                    s4 = "";
                                }
                                break Block_12_Outer;
                                // monitorexit(this)
                                return mmjsResponse;
                            Block_7_Outer:
                                while (true) {
                                    try {
                                        Label_0232: {
                                            synchronized (BridgeMMMedia.pickerActivityObject = new Object()) {
                                                Utils.IntentUtils.startPickerActivity(context, file, s);
                                                BridgeMMMedia.pickerActivityObject.wait();
                                                // monitorexit(BridgeMMMedia.pickerActivityObject)
                                                BridgeMMMedia.pickerActivityObject = null;
                                                if (file == null || !file.exists() || file.length() <= 0L) {
                                                    break Label_0383;
                                                }
                                                scaleBitmapToBytes = scaleBitmapToBytes(file, n, n2, s4);
                                                file.delete();
                                                if (scaleBitmapToBytes != null) {
                                                    mmjsResponse2 = new MMJSResponse();
                                                    mmjsResponse2.result = 1;
                                                    mmjsResponse2.dataResponse = scaleBitmapToBytes;
                                                    mmjsResponse = mmjsResponse2;
                                                    continue Block_12_Outer;
                                                }
                                                break Label_0383;
                                            }
                                        }
                                    }
                                    catch (Exception ex2) {
                                        ex = ex2;
                                        ex.printStackTrace();
                                    }
                                    finally {
                                        BridgeMMMedia.pickerActivityObject = null;
                                    }
                                    mmjsResponse = MMJSResponse.responseWithError("Missing constrainHeight and/or constrainWidth");
                                    continue Block_12_Outer;
                                    Label_0199: {
                                        while (true) {
                                            file = new File(AdCache.getCacheDirectory(context), "tmp_mm_" + String.valueOf(System.currentTimeMillis()) + ".jpg");
                                            break Label_0199;
                                            Label_0128: {
                                                continue Block_7_Outer;
                                            }
                                        }
                                        while (true) {
                                            mmjsResponse = MMJSResponse.responseWithError("constrainHeight * constrainWidth > 360000");
                                            continue Block_12_Outer;
                                            n2 = (int)Float.parseFloat(s2);
                                            n = (int)Float.parseFloat(s3);
                                            continue Label_0090_Outer;
                                        }
                                    }
                                    continue Label_0271_Outer;
                                }
                            }
                            // iftrue(Label_0232:, s.equalsIgnoreCase("Camera") && this.isCameraAvailable())
                            // iftrue(Label_0383:, context == null || s == null)
                            // iftrue(Label_0128:, n2 * n <= 360000)
                            // iftrue(Label_0383:, !s.equalsIgnoreCase("Photo Library") && !s.equalsIgnoreCase("PhotoLibrary") || !this.isPictureChooserAvailable())
                            finally {}
                            try {
                                ex = ex2;
                                ex.printStackTrace();
                                continue Label_0073_Outer;
                            }
                            finally {}
                            break;
                        }
                        mmjsResponse = null;
                        continue Label_0271_Outer;
                    }
                    if (s2 != null && s3 != null) {
                        continue;
                    }
                    break;
                }
                continue Label_0090_Outer;
            }
        }
    }
    
    public MMJSResponse isSourceTypeAvailable(final HashMap<String, String> hashMap) {
        final String s = hashMap.get("sourceType");
        if (s != null) {
            if (s.equalsIgnoreCase("Camera") && this.isCameraAvailable()) {
                return MMJSResponse.responseWithSuccess("true");
            }
            if (s.equalsIgnoreCase("Photo Library") && this.isPictureChooserAvailable()) {
                return MMJSResponse.responseWithSuccess("true");
            }
        }
        return MMJSResponse.responseWithError("false");
    }
    
    public MMJSResponse playAudio(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        final String s = hashMap.get("path");
        if (context != null && s != null) {
            final Audio sharedAudio = Audio.sharedAudio(context);
            if (sharedAudio == null) {
                return null;
            }
            if (sharedAudio.isPlaying()) {
                return MMJSResponse.responseWithError("Audio already playing.");
            }
            if (s.startsWith("http")) {
                return sharedAudio.playAudio(Uri.parse(s), Boolean.parseBoolean(hashMap.get("repeat")));
            }
            final File downloadFile = AdCache.getDownloadFile(context, s);
            if (downloadFile.exists()) {
                return sharedAudio.playAudio(Uri.fromFile(downloadFile), Boolean.parseBoolean(hashMap.get("repeat")));
            }
        }
        return null;
    }
    
    public MMJSResponse playSound(final HashMap<String, String> hashMap) {
        if (this.contextRef == null) {
            return null;
        }
        final Context context = this.contextRef.get();
        final String s = hashMap.get("path");
        if (context != null && s != null) {
            final File downloadFile = AdCache.getDownloadFile(context, s);
            if (downloadFile.exists()) {
                final Audio sharedAudio = Audio.sharedAudio(this.contextRef.get());
                if (sharedAudio != null) {
                    return sharedAudio.playSound(downloadFile);
                }
            }
        }
        return null;
    }
    
    public MMJSResponse playVideo(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        final String s = hashMap.get("path");
        if (context != null && s != null) {
            if (s.startsWith("http")) {
                Utils.IntentUtils.startVideoPlayerActivityWithData(context, s);
                return MMJSResponse.responseWithSuccess(s);
            }
            final File downloadFile = AdCache.getDownloadFile(context, s);
            if (downloadFile.exists()) {
                Utils.IntentUtils.startVideoPlayerActivityWithData(context, downloadFile);
                return MMJSResponse.responseWithSuccess(downloadFile.getName());
            }
        }
        return null;
    }
    
    public MMJSResponse stopAudio(final HashMap<String, String> hashMap) {
        if (this.contextRef != null) {
            final Audio sharedAudio = Audio.sharedAudio(this.contextRef.get());
            if (sharedAudio != null) {
                return sharedAudio.stop();
            }
        }
        return null;
    }
    
    public MMJSResponse writeToPhotoLibrary(final HashMap<String, String> hashMap) {
        synchronized (this) {
            final Context context = this.contextRef.get();
            final Uri parse = Uri.parse((String)hashMap.get("path"));
            final File file = new File(AdCache.getCacheDirectory(context).getAbsolutePath() + File.separator + "Pictures" + File.separator + parse.getLastPathSegment());
            final String scheme = parse.getScheme();
            Label_0170: {
                if (scheme == null || !scheme.equals("http")) {
                    break Label_0170;
                }
                hashMap.put("url", parse.toString());
                hashMap.put("path", parse.getLastPathSegment());
                final BridgeMMFileManager bridgeMMFileManager = new BridgeMMFileManager();
                bridgeMMFileManager.setContext(context);
                if (bridgeMMFileManager.downloadFile(hashMap) != null) {
                    break Label_0170;
                }
                return MMJSResponse.responseWithError("Failed to download");
            }
            final File downloadFile = AdCache.getDownloadFile(context, parse.getLastPathSegment());
            if (!downloadFile.exists()) {
                return MMJSResponse.responseWithError("No file at " + downloadFile.getAbsolutePath());
            }
            String s;
            if (this.moveFile(downloadFile, file)) {
                s = file.getAbsolutePath();
            }
            else {
                s = downloadFile.getAbsolutePath();
            }
            this.scanMedia(s);
            if (!AdCache.isExternalMounted()) {
                return MMJSResponse.responseWithError("Storage not mounted, cannot add image to photo library photo library");
            }
            return MMJSResponse.responseWithSuccess("Image saved to photo library");
        }
    }
    
    static class Audio implements MediaPlayer$OnCompletionListener
    {
        private static final int MAX_SOUNDS = 4;
        private static Audio sharedInstance;
        private OnLoadCompleteListener completionListener;
        CopyOnWriteArrayList<MediaPlayer$OnCompletionListener> completionListeners;
        private WeakReference<Context> contextRef;
        private MediaPlayer mediaPlayer;
        CopyOnWriteArrayList<PeriodicListener> periodicListeners;
        Runnable periodicUpdater;
        private SoundPool soundPool;
        
        private Audio() {
            super();
            this.periodicUpdater = new Runnable() {
                @Override
                public void run() {
                    if (Audio.this.mediaPlayer != null) {
                        if (Audio.this.mediaPlayer.isPlaying()) {
                            final int currentPosition = Audio.this.mediaPlayer.getCurrentPosition();
                            if (Audio.this.periodicListeners != null) {
                                final Iterator<PeriodicListener> iterator = Audio.this.periodicListeners.iterator();
                                while (iterator.hasNext()) {
                                    ((PeriodicListener)iterator.next()).onUpdate(currentPosition);
                                }
                            }
                        }
                        MMSDK.runOnUiThreadDelayed(this, 500L);
                    }
                }
            };
        }
        
        private Audio(final Context context) {
            super();
            this.periodicUpdater = new Runnable() {
                @Override
                public void run() {
                    if (Audio.this.mediaPlayer != null) {
                        if (Audio.this.mediaPlayer.isPlaying()) {
                            final int currentPosition = Audio.this.mediaPlayer.getCurrentPosition();
                            if (Audio.this.periodicListeners != null) {
                                final Iterator<PeriodicListener> iterator = Audio.this.periodicListeners.iterator();
                                while (iterator.hasNext()) {
                                    ((PeriodicListener)iterator.next()).onUpdate(currentPosition);
                                }
                            }
                        }
                        MMSDK.runOnUiThreadDelayed(this, 500L);
                    }
                }
            };
            this.contextRef = new WeakReference<Context>(context.getApplicationContext());
        }
        
        static Audio sharedAudio(final Context context) {
            synchronized (Audio.class) {
                if (Audio.sharedInstance == null) {
                    Audio.sharedInstance = new Audio(context);
                }
                return Audio.sharedInstance;
            }
        }
        
        boolean addCompletionListener(final MediaPlayer$OnCompletionListener mediaPlayer$OnCompletionListener) {
            if (this.completionListeners == null) {
                this.completionListeners = new CopyOnWriteArrayList<MediaPlayer$OnCompletionListener>();
            }
            return !this.completionListeners.contains(mediaPlayer$OnCompletionListener) && this.completionListeners.add(mediaPlayer$OnCompletionListener);
        }
        
        boolean addPeriodicListener(final PeriodicListener periodicListener) {
            if (this.periodicListeners == null) {
                this.periodicListeners = new CopyOnWriteArrayList<PeriodicListener>();
            }
            return !this.periodicListeners.contains(periodicListener) && this.periodicListeners.add(periodicListener);
        }
        
        boolean isPlaying() {
            synchronized (this) {
                return this.mediaPlayer != null && this.mediaPlayer.isPlaying();
            }
        }
        
        public void onCompletion(final MediaPlayer mediaPlayer) {
            synchronized (this) {
                if (this.completionListeners != null) {
                    final Iterator<MediaPlayer$OnCompletionListener> iterator = this.completionListeners.iterator();
                    while (iterator.hasNext()) {
                        iterator.next().onCompletion(this.mediaPlayer);
                    }
                }
            }
            if (this.mediaPlayer != null) {
                this.mediaPlayer.release();
                this.mediaPlayer = null;
            }
        }
        // monitorexit(this)
        
        MMJSResponse playAudio(final Uri uri, final boolean looping) {
            synchronized (this) {
                try {
                    if (this.mediaPlayer != null) {
                        this.mediaPlayer.release();
                        this.mediaPlayer = null;
                    }
                    (this.mediaPlayer = MediaPlayer.create((Context)this.contextRef.get(), uri)).setLooping(looping);
                    this.mediaPlayer.start();
                    this.mediaPlayer.setOnCompletionListener((MediaPlayer$OnCompletionListener)this);
                    MMSDK.runOnUiThread(this.periodicUpdater);
                    return MMJSResponse.responseWithSuccess("Audio playback started");
                }
                catch (Exception ex) {
                    MMSDK.Log.e(ex.getCause());
                    return MMJSResponse.responseWithSuccess("Audio playback started");
                }
            }
        }
        
        MMJSResponse playSound(final File file) {
            // monitorenter(this)
            while (true) {
                try {
                    try {
                        if (this.soundPool == null) {
                            this.soundPool = new SoundPool(4, 3, 0);
                            this.completionListener = (OnLoadCompleteListener)new OnLoadCompleteListener(this.soundPool) {
                                public void onLoadComplete(final SoundPool soundPool, final int n, final int n2) {
                                    // monitorenter(this)
                                    if (soundPool == null) {
                                        return;
                                    }
                                    try {
                                        final Context context = (Context)Audio.this.contextRef.get();
                                        if (context != null) {
                                            final AudioManager audioManager = (AudioManager)context.getSystemService("audio");
                                            final float n3 = (0.0f + audioManager.getStreamVolume(3)) / audioManager.getStreamMaxVolume(3);
                                            soundPool.play(n, n3, n3, 1, 0, 1.0f);
                                        }
                                    }
                                    finally {
                                    }
                                    // monitorexit(this)
                                }
                            };
                        }
                        this.completionListener.testSample(this.soundPool.load(file.getAbsolutePath(), 1));
                        return MMJSResponse.responseWithSuccess("Sound playback started");
                    }
                    finally {
                    }
                    // monitorexit(this)
                }
                catch (Exception ex) {
                    continue;
                }
                break;
            }
        }
        
        boolean removeCompletionListener(final MediaPlayer$OnCompletionListener o) {
            return this.completionListeners != null && this.completionListeners.remove(o);
        }
        
        boolean removePeriodicListener(final PeriodicListener o) {
            return this.periodicListeners != null && this.periodicListeners.remove(o);
        }
        
        MMJSResponse stop() {
            synchronized (this) {
                if (this.mediaPlayer != null) {
                    this.onCompletion(this.mediaPlayer);
                }
                if (this.soundPool != null) {
                    this.soundPool.release();
                    this.soundPool = null;
                }
                if (this.completionListener != null) {
                    this.completionListener.release();
                    this.completionListener = null;
                }
                return MMJSResponse.responseWithSuccess("Audio stopped");
            }
        }
        
        private abstract class OnLoadCompleteListener
        {
            private static final int TEST_PERIOD_MS = 100;
            private ArrayList<Integer> sampleIds;
            private SoundPool soundPool;
            private Timer timer;
            
            public OnLoadCompleteListener(final SoundPool soundPool) {
                super();
                this.sampleIds = new ArrayList<Integer>();
                this.soundPool = soundPool;
            }
            
            abstract void onLoadComplete(final SoundPool p0, final int p1, final int p2);
            
            void release() {
                synchronized (this) {
                    if (this.timer != null) {
                        this.timer.cancel();
                        this.timer.purge();
                    }
                }
            }
            
            void testSample(final int i) {
                synchronized (this) {
                    this.sampleIds.add(i);
                    if (this.sampleIds.size() == 1) {
                        (this.timer = new Timer()).scheduleAtFixedRate(new TimerTask() {
                            @Override
                            public void run() {
                                final ArrayList<Integer> c = new ArrayList<Integer>();
                                for (final Integer e : OnLoadCompleteListener.this.sampleIds) {
                                    final int play = OnLoadCompleteListener.this.soundPool.play((int)e, 0.0f, 0.0f, 0, 0, 1.0f);
                                    if (play != 0) {
                                        OnLoadCompleteListener.this.soundPool.stop(play);
                                        OnLoadCompleteListener.this.onLoadComplete(OnLoadCompleteListener.this.soundPool, e, 0);
                                        c.add(e);
                                    }
                                }
                                OnLoadCompleteListener.this.sampleIds.removeAll(c);
                                if (OnLoadCompleteListener.this.sampleIds.size() == 0) {
                                    OnLoadCompleteListener.this.timer.cancel();
                                    OnLoadCompleteListener.this.timer.purge();
                                }
                            }
                        }, 0L, 100L);
                    }
                }
            }
        }
        
        interface PeriodicListener
        {
            void onUpdate(int p0);
        }
    }
    
    static class PickerActivity extends MMBaseActivity
    {
        private Uri fileUri;
        boolean hasRequestedPic;
        
        PickerActivity() {
            super();
            this.hasRequestedPic = false;
        }
        
        @Override
        protected void onActivityResult(final int p0, final int p1, final Intent p2) {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     0: aload_0        
            //     1: iload_1        
            //     2: iload_2        
            //     3: aload_3        
            //     4: invokespecial   com/fusepowered/m1/android/MMBaseActivity.onActivityResult:(IILandroid/content/Intent;)V
            //     7: aload_3        
            //     8: ifnull          172
            //    11: aconst_null    
            //    12: astore          6
            //    14: aconst_null    
            //    15: astore          7
            //    17: aload_3        
            //    18: invokevirtual   android/content/Intent.getData:()Landroid/net/Uri;
            //    21: astore          9
            //    23: aload           9
            //    25: ifnonnull       274
            //    28: aload_3        
            //    29: invokevirtual   android/content/Intent.getExtras:()Landroid/os/Bundle;
            //    32: ifnull          172
            //    35: aload_3        
            //    36: invokevirtual   android/content/Intent.getExtras:()Landroid/os/Bundle;
            //    39: ldc             "data"
            //    41: invokevirtual   android/os/Bundle.get:(Ljava/lang/String;)Ljava/lang/Object;
            //    44: checkcast       Landroid/graphics/Bitmap;
            //    47: astore          10
            //    49: new             Ljava/io/File;
            //    52: dup            
            //    53: aload_0        
            //    54: invokevirtual   com/fusepowered/m1/android/BridgeMMMedia$PickerActivity.getIntent:()Landroid/content/Intent;
            //    57: invokevirtual   android/content/Intent.getData:()Landroid/net/Uri;
            //    60: invokevirtual   android/net/Uri.getPath:()Ljava/lang/String;
            //    63: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
            //    66: astore          11
            //    68: new             Ljava/io/ByteArrayOutputStream;
            //    71: dup            
            //    72: invokespecial   java/io/ByteArrayOutputStream.<init>:()V
            //    75: astore          12
            //    77: aload           10
            //    79: getstatic       android/graphics/Bitmap$CompressFormat.PNG:Landroid/graphics/Bitmap$CompressFormat;
            //    82: iconst_0       
            //    83: aload           12
            //    85: invokevirtual   android/graphics/Bitmap.compress:(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
            //    88: pop            
            //    89: new             Ljava/io/ByteArrayInputStream;
            //    92: dup            
            //    93: aload           12
            //    95: invokevirtual   java/io/ByteArrayOutputStream.toByteArray:()[B
            //    98: invokespecial   java/io/ByteArrayInputStream.<init>:([B)V
            //   101: astore          19
            //   103: new             Ljava/io/FileOutputStream;
            //   106: dup            
            //   107: aload           11
            //   109: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
            //   112: astore          20
            //   114: sipush          1024
            //   117: newarray        B
            //   119: astore          22
            //   121: aload           19
            //   123: aload           22
            //   125: invokevirtual   java/io/ByteArrayInputStream.read:([B)I
            //   128: istore          23
            //   130: iload           23
            //   132: ifle            194
            //   135: aload           20
            //   137: aload           22
            //   139: iconst_0       
            //   140: iload           23
            //   142: invokevirtual   java/io/OutputStream.write:([BII)V
            //   145: goto            121
            //   148: astore          21
            //   150: aload           20
            //   152: astore          14
            //   154: iconst_0       
            //   155: ifeq            162
            //   158: aconst_null    
            //   159: invokevirtual   java/io/InputStream.close:()V
            //   162: aload           14
            //   164: ifnull          172
            //   167: aload           14
            //   169: invokevirtual   java/io/OutputStream.close:()V
            //   172: invokestatic    com/fusepowered/m1/android/BridgeMMMedia.access$000:()Ljava/lang/Object;
            //   175: astore          4
            //   177: aload           4
            //   179: monitorenter   
            //   180: invokestatic    com/fusepowered/m1/android/BridgeMMMedia.access$000:()Ljava/lang/Object;
            //   183: invokevirtual   java/lang/Object.notify:()V
            //   186: aload           4
            //   188: monitorexit    
            //   189: aload_0        
            //   190: invokevirtual   com/fusepowered/m1/android/BridgeMMMedia$PickerActivity.finish:()V
            //   193: return         
            //   194: iconst_0       
            //   195: ifeq            202
            //   198: aconst_null    
            //   199: invokevirtual   java/io/InputStream.close:()V
            //   202: aload           20
            //   204: ifnull          212
            //   207: aload           20
            //   209: invokevirtual   java/io/OutputStream.close:()V
            //   212: goto            172
            //   215: astore          24
            //   217: goto            172
            //   220: astore          16
            //   222: iconst_0       
            //   223: ifeq            230
            //   226: aconst_null    
            //   227: invokevirtual   java/io/InputStream.close:()V
            //   230: aload           7
            //   232: ifnull          240
            //   235: aload           7
            //   237: invokevirtual   java/io/OutputStream.close:()V
            //   240: aload           16
            //   242: athrow         
            //   243: astore          8
            //   245: new             Ljava/lang/StringBuilder;
            //   248: dup            
            //   249: invokespecial   java/lang/StringBuilder.<init>:()V
            //   252: ldc             "Error with picture: "
            //   254: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   257: aload           8
            //   259: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
            //   262: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   265: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   268: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;)V
            //   271: goto            172
            //   274: aload           9
            //   276: ifnull          172
            //   279: iconst_1       
            //   280: anewarray       Ljava/lang/String;
            //   283: dup            
            //   284: iconst_0       
            //   285: ldc             "_data"
            //   287: aastore        
            //   288: astore          25
            //   290: aload_0        
            //   291: invokevirtual   com/fusepowered/m1/android/BridgeMMMedia$PickerActivity.getContentResolver:()Landroid/content/ContentResolver;
            //   294: astore          26
            //   296: aload           26
            //   298: ifnull          172
            //   301: aload           26
            //   303: aload           9
            //   305: aload           25
            //   307: aconst_null    
            //   308: aconst_null    
            //   309: aconst_null    
            //   310: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
            //   313: astore          27
            //   315: aload           27
            //   317: ifnull          172
            //   320: aload           27
            //   322: ldc             "_data"
            //   324: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
            //   329: istore          28
            //   331: iload           28
            //   333: iconst_m1      
            //   334: if_icmpeq       172
            //   337: aload           27
            //   339: invokeinterface android/database/Cursor.moveToFirst:()Z
            //   344: pop            
            //   345: new             Ljava/io/File;
            //   348: dup            
            //   349: aload           27
            //   351: iload           28
            //   353: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
            //   358: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
            //   361: astore          30
            //   363: aload           27
            //   365: invokeinterface android/database/Cursor.close:()V
            //   370: new             Ljava/io/File;
            //   373: dup            
            //   374: aload_0        
            //   375: invokevirtual   com/fusepowered/m1/android/BridgeMMMedia$PickerActivity.getIntent:()Landroid/content/Intent;
            //   378: invokevirtual   android/content/Intent.getData:()Landroid/net/Uri;
            //   381: invokevirtual   android/net/Uri.getPath:()Ljava/lang/String;
            //   384: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
            //   387: astore          31
            //   389: new             Ljava/io/FileInputStream;
            //   392: dup            
            //   393: aload           30
            //   395: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
            //   398: astore          32
            //   400: new             Ljava/io/FileOutputStream;
            //   403: dup            
            //   404: aload           31
            //   406: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
            //   409: astore          33
            //   411: sipush          1024
            //   414: newarray        B
            //   416: astore          40
            //   418: aload           32
            //   420: aload           40
            //   422: invokevirtual   java/io/InputStream.read:([B)I
            //   425: istore          41
            //   427: iload           41
            //   429: ifle            483
            //   432: aload           33
            //   434: aload           40
            //   436: iconst_0       
            //   437: iload           41
            //   439: invokevirtual   java/io/OutputStream.write:([BII)V
            //   442: goto            418
            //   445: astore          36
            //   447: aload           33
            //   449: astore          37
            //   451: aload           32
            //   453: astore          38
            //   455: aload           38
            //   457: ifnull          465
            //   460: aload           38
            //   462: invokevirtual   java/io/InputStream.close:()V
            //   465: aload           37
            //   467: ifnull          172
            //   470: aload           37
            //   472: invokevirtual   java/io/OutputStream.close:()V
            //   475: goto            172
            //   478: astore          39
            //   480: goto            172
            //   483: aload           32
            //   485: ifnull          493
            //   488: aload           32
            //   490: invokevirtual   java/io/InputStream.close:()V
            //   493: aload           33
            //   495: ifnull          503
            //   498: aload           33
            //   500: invokevirtual   java/io/OutputStream.close:()V
            //   503: goto            172
            //   506: astore          42
            //   508: goto            172
            //   511: astore          34
            //   513: aload           6
            //   515: ifnull          523
            //   518: aload           6
            //   520: invokevirtual   java/io/InputStream.close:()V
            //   523: aload           7
            //   525: ifnull          533
            //   528: aload           7
            //   530: invokevirtual   java/io/OutputStream.close:()V
            //   533: aload           34
            //   535: athrow         
            //   536: astore          5
            //   538: aload           4
            //   540: monitorexit    
            //   541: aload           5
            //   543: athrow         
            //   544: astore          35
            //   546: goto            533
            //   549: astore          34
            //   551: aload           32
            //   553: astore          6
            //   555: aconst_null    
            //   556: astore          7
            //   558: goto            513
            //   561: astore          34
            //   563: aload           33
            //   565: astore          7
            //   567: aload           32
            //   569: astore          6
            //   571: goto            513
            //   574: astore          44
            //   576: aconst_null    
            //   577: astore          38
            //   579: aconst_null    
            //   580: astore          37
            //   582: goto            455
            //   585: astore          43
            //   587: aload           32
            //   589: astore          38
            //   591: aconst_null    
            //   592: astore          37
            //   594: goto            455
            //   597: astore          17
            //   599: goto            240
            //   602: astore          16
            //   604: aload           20
            //   606: astore          7
            //   608: goto            222
            //   611: astore          15
            //   613: goto            172
            //   616: astore          13
            //   618: aconst_null    
            //   619: astore          14
            //   621: goto            154
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                 
            //  -----  -----  -----  -----  ---------------------
            //  17     23     243    274    Ljava/lang/Exception;
            //  28     49     243    274    Ljava/lang/Exception;
            //  49     114    616    624    Ljava/lang/Exception;
            //  49     114    220    222    Any
            //  114    121    148    154    Ljava/lang/Exception;
            //  114    121    602    611    Any
            //  121    130    148    154    Ljava/lang/Exception;
            //  121    130    602    611    Any
            //  135    145    148    154    Ljava/lang/Exception;
            //  135    145    602    611    Any
            //  158    162    611    616    Ljava/lang/Exception;
            //  167    172    611    616    Ljava/lang/Exception;
            //  180    189    536    544    Any
            //  198    202    215    220    Ljava/lang/Exception;
            //  207    212    215    220    Ljava/lang/Exception;
            //  226    230    597    602    Ljava/lang/Exception;
            //  235    240    597    602    Ljava/lang/Exception;
            //  240    243    243    274    Ljava/lang/Exception;
            //  279    296    243    274    Ljava/lang/Exception;
            //  301    315    243    274    Ljava/lang/Exception;
            //  320    331    243    274    Ljava/lang/Exception;
            //  337    370    243    274    Ljava/lang/Exception;
            //  370    400    574    585    Ljava/lang/Exception;
            //  370    400    511    513    Any
            //  400    411    585    597    Ljava/lang/Exception;
            //  400    411    549    561    Any
            //  411    418    445    455    Ljava/lang/Exception;
            //  411    418    561    574    Any
            //  418    427    445    455    Ljava/lang/Exception;
            //  418    427    561    574    Any
            //  432    442    445    455    Ljava/lang/Exception;
            //  432    442    561    574    Any
            //  460    465    478    483    Ljava/lang/Exception;
            //  470    475    478    483    Ljava/lang/Exception;
            //  488    493    506    511    Ljava/lang/Exception;
            //  498    503    506    511    Ljava/lang/Exception;
            //  518    523    544    549    Ljava/lang/Exception;
            //  528    533    544    549    Ljava/lang/Exception;
            //  533    536    243    274    Ljava/lang/Exception;
            //  538    541    536    544    Any
            // 
            // The error that occurred was:
            // 
            // java.lang.IllegalStateException: Expression is linked from several locations: Label_0162:
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
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:556)
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
        
        public void onCreate(final Bundle bundle) {
            super.onCreate(bundle);
            if (this.getLastNonConfigurationInstance() != null) {
                this.hasRequestedPic = ((Bundle)this.getLastNonConfigurationInstance()).getBoolean("hasRequestedPic");
            }
            if (!this.hasRequestedPic) {
                if (!this.getIntent().getStringExtra("type").equalsIgnoreCase("Camera")) {
                    final Intent intent = new Intent();
                    intent.setType("image/*");
                    intent.setAction("android.intent.action.GET_CONTENT");
                    this.hasRequestedPic = true;
                    this.startActivityForResult(intent, 0);
                    return;
                }
                final Intent intent2 = new Intent("android.media.action.IMAGE_CAPTURE");
                this.fileUri = this.getIntent().getData();
                intent2.putExtra("return-data", true);
                this.hasRequestedPic = true;
                this.startActivityForResult(intent2, 0);
            }
        }
        
        @Override
        public Object onRetainNonConfigurationInstance() {
            super.onRetainNonConfigurationInstance();
            final Bundle bundle = new Bundle();
            bundle.putBoolean("hasRequestedPic", this.hasRequestedPic);
            return bundle;
        }
    }
}
