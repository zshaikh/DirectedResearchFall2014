package com.adobe.air;

import android.app.*;
import android.net.*;
import android.database.*;
import java.io.*;
import android.media.*;
import java.text.*;
import java.util.*;
import android.os.*;
import android.content.*;

public final class CameraUI implements ActivityResultCallback
{
    public static final int ERROR_ACTIVITY_DESTROYED = 4;
    public static final int ERROR_CAMERA_BUSY = 1;
    public static final int ERROR_CAMERA_ERROR = 2;
    public static final int ERROR_CAMERA_UNAVAILABLE = 3;
    private static final String LOG_TAG = "CameraUI";
    private static final String PHONE_STORAGE = "phoneStorage";
    public static final int REQUESTED_MEDIA_TYPE_IMAGE = 1;
    public static final int REQUESTED_MEDIA_TYPE_INVALID = 0;
    public static final int REQUESTED_MEDIA_TYPE_VIDEO = 2;
    private static String sCameraRollPath;
    private static CameraUI sCameraUI;
    private boolean mCameraBusy;
    private String mImagePath;
    private long mLastClientId;
    
    static {
        CameraUI.sCameraRollPath = null;
        CameraUI.sCameraUI = null;
    }
    
    private CameraUI() {
        super();
        this.mLastClientId = 0L;
        this.mCameraBusy = false;
        this.mImagePath = null;
    }
    
    private String getCameraRollDirectory(final Activity p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/adobe/air/CameraUI.sCameraRollPath:Ljava/lang/String;
        //     3: ifnull          10
        //     6: getstatic       com/adobe/air/CameraUI.sCameraRollPath:Ljava/lang/String;
        //     9: areturn        
        //    10: aload_1        
        //    11: invokevirtual   android/app/Activity.getContentResolver:()Landroid/content/ContentResolver;
        //    14: getstatic       android/provider/MediaStore$Images$Media.EXTERNAL_CONTENT_URI:Landroid/net/Uri;
        //    17: new             Landroid/content/ContentValues;
        //    20: dup            
        //    21: invokespecial   android/content/ContentValues.<init>:()V
        //    24: invokevirtual   android/content/ContentResolver.insert:(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
        //    27: astore          14
        //    29: aload           14
        //    31: astore_3       
        //    32: aload_3        
        //    33: ifnonnull       60
        //    36: aload_1        
        //    37: invokevirtual   android/app/Activity.getContentResolver:()Landroid/content/ContentResolver;
        //    40: ldc             "phoneStorage"
        //    42: invokestatic    android/provider/MediaStore$Images$Media.getContentUri:(Ljava/lang/String;)Landroid/net/Uri;
        //    45: new             Landroid/content/ContentValues;
        //    48: dup            
        //    49: invokespecial   android/content/ContentValues.<init>:()V
        //    52: invokevirtual   android/content/ContentResolver.insert:(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
        //    55: astore          13
        //    57: aload           13
        //    59: astore_3       
        //    60: aload_3        
        //    61: ifnull          145
        //    64: aload_0        
        //    65: aload_3        
        //    66: aload_1        
        //    67: invokespecial   com/adobe/air/CameraUI.getFileFromUri:(Landroid/net/Uri;Landroid/app/Activity;)Ljava/io/File;
        //    70: invokevirtual   java/io/File.getParent:()Ljava/lang/String;
        //    73: putstatic       com/adobe/air/CameraUI.sCameraRollPath:Ljava/lang/String;
        //    76: aload_1        
        //    77: invokevirtual   android/app/Activity.getContentResolver:()Landroid/content/ContentResolver;
        //    80: aload_3        
        //    81: aconst_null    
        //    82: aconst_null    
        //    83: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //    86: pop            
        //    87: getstatic       com/adobe/air/CameraUI.sCameraRollPath:Ljava/lang/String;
        //    90: areturn        
        //    91: astore_2       
        //    92: aconst_null    
        //    93: astore_3       
        //    94: goto            32
        //    97: astore          9
        //    99: aload_1        
        //   100: invokevirtual   android/app/Activity.getContentResolver:()Landroid/content/ContentResolver;
        //   103: aload_3        
        //   104: aconst_null    
        //   105: aconst_null    
        //   106: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //   109: pop            
        //   110: goto            87
        //   113: astore          7
        //   115: aload_1        
        //   116: invokevirtual   android/app/Activity.getContentResolver:()Landroid/content/ContentResolver;
        //   119: aload_3        
        //   120: aconst_null    
        //   121: aconst_null    
        //   122: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //   125: pop            
        //   126: goto            87
        //   129: astore          5
        //   131: aload_1        
        //   132: invokevirtual   android/app/Activity.getContentResolver:()Landroid/content/ContentResolver;
        //   135: aload_3        
        //   136: aconst_null    
        //   137: aconst_null    
        //   138: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //   141: pop            
        //   142: aload           5
        //   144: athrow         
        //   145: getstatic       android/os/Environment.DIRECTORY_PICTURES:Ljava/lang/String;
        //   148: invokestatic    android/os/Environment.getExternalStoragePublicDirectory:(Ljava/lang/String;)Ljava/io/File;
        //   151: astore          4
        //   153: aload           4
        //   155: invokevirtual   java/io/File.exists:()Z
        //   158: ifeq            87
        //   161: aload           4
        //   163: invokevirtual   java/io/File.toString:()Ljava/lang/String;
        //   166: putstatic       com/adobe/air/CameraUI.sCameraRollPath:Ljava/lang/String;
        //   169: goto            87
        //   172: astore          12
        //   174: goto            60
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                       
        //  -----  -----  -----  -----  -------------------------------------------
        //  10     29     91     97     Ljava/lang/Exception;
        //  36     57     172    177    Ljava/lang/Exception;
        //  64     76     97     113    Landroid/content/ActivityNotFoundException;
        //  64     76     113    129    Ljava/lang/NullPointerException;
        //  64     76     129    145    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0060:
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
    
    public static CameraUI getCameraUI() {
        synchronized (CameraUI.class) {
            if (CameraUI.sCameraUI == null) {
                CameraUI.sCameraUI = new CameraUI();
                AndroidActivityWrapper.GetAndroidActivityWrapper().addActivityResultListener((AndroidActivityWrapper.ActivityResultCallback)CameraUI.sCameraUI);
            }
            return CameraUI.sCameraUI;
        }
    }
    
    private Cursor getCursorFromUri(final Uri p0, final Activity p1, final String[] p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_2        
        //     1: invokevirtual   android/app/Activity.getContentResolver:()Landroid/content/ContentResolver;
        //     4: aload_1        
        //     5: aload_3        
        //     6: aconst_null    
        //     7: aconst_null    
        //     8: aconst_null    
        //     9: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    12: astore          8
        //    14: aload           8
        //    16: invokeinterface android/database/Cursor.moveToFirst:()Z
        //    21: istore          10
        //    23: iload           10
        //    25: ifeq            79
        //    28: aload           8
        //    30: ifnull          67
        //    33: iconst_1       
        //    34: istore          13
        //    36: aload           8
        //    38: invokeinterface android/database/Cursor.moveToFirst:()Z
        //    43: ifne            73
        //    46: iconst_1       
        //    47: istore          14
        //    49: iload           13
        //    51: iload           14
        //    53: iand           
        //    54: ifeq            64
        //    57: aload           8
        //    59: invokeinterface android/database/Cursor.close:()V
        //    64: aload           8
        //    66: areturn        
        //    67: iconst_0       
        //    68: istore          13
        //    70: goto            36
        //    73: iconst_0       
        //    74: istore          14
        //    76: goto            49
        //    79: aload           8
        //    81: invokeinterface android/database/Cursor.close:()V
        //    86: aload           8
        //    88: ifnull          124
        //    91: iconst_1       
        //    92: istore          11
        //    94: aload           8
        //    96: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   101: ifne            130
        //   104: iconst_1       
        //   105: istore          12
        //   107: iload           11
        //   109: iload           12
        //   111: iand           
        //   112: ifeq            122
        //   115: aload           8
        //   117: invokeinterface android/database/Cursor.close:()V
        //   122: aconst_null    
        //   123: areturn        
        //   124: iconst_0       
        //   125: istore          11
        //   127: goto            94
        //   130: iconst_0       
        //   131: istore          12
        //   133: goto            107
        //   136: astore          4
        //   138: aconst_null    
        //   139: astore          5
        //   141: aload           5
        //   143: ifnull          180
        //   146: iconst_1       
        //   147: istore          6
        //   149: aload           5
        //   151: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   156: ifne            186
        //   159: iconst_1       
        //   160: istore          7
        //   162: iload           6
        //   164: iload           7
        //   166: iand           
        //   167: ifeq            177
        //   170: aload           5
        //   172: invokeinterface android/database/Cursor.close:()V
        //   177: aload           4
        //   179: athrow         
        //   180: iconst_0       
        //   181: istore          6
        //   183: goto            149
        //   186: iconst_0       
        //   187: istore          7
        //   189: goto            162
        //   192: astore          9
        //   194: aload           8
        //   196: astore          5
        //   198: aload           9
        //   200: astore          4
        //   202: goto            141
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  0      14     136    141    Any
        //  14     23     192    205    Any
        //  79     86     192    205    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0036:
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
    
    private File getFileFromUri(final Uri uri, final Activity activity) {
        final Cursor cursorFromUri = this.getCursorFromUri(uri, activity, new String[] { "_data" });
        File file = null;
        if (cursorFromUri == null) {
            return file;
        }
        try {
            final File file2 = new File(cursorFromUri.getString(cursorFromUri.getColumnIndexOrThrow("_data")));
            cursorFromUri.close();
            file = file2;
            return file;
        }
        catch (IllegalArgumentException ex) {
            return null;
        }
        finally {
            cursorFromUri.close();
        }
    }
    
    private native void nativeOnCameraCancel(final long p0);
    
    private native void nativeOnCameraError(final long p0, final int p1);
    
    private native void nativeOnCameraResult(final long p0, final String p1, final String p2, final String p3);
    
    private void onCameraCancel() {
        if (this.mLastClientId != 0L) {
            this.nativeOnCameraCancel(this.mLastClientId);
            this.mLastClientId = 0L;
        }
    }
    
    private void onCameraError(final int n) {
        if (this.mLastClientId != 0L) {
            this.nativeOnCameraError(this.mLastClientId, n);
            this.mLastClientId = 0L;
        }
    }
    
    private void onCameraResult(final String s, final String s2, final String s3) {
        if (this.mLastClientId != 0L) {
            this.nativeOnCameraResult(this.mLastClientId, s, s2, s3);
            this.mLastClientId = 0L;
        }
    }
    
    private void processImageSuccessResult() {
        final String s = new String("image");
        final String name = new File(this.mImagePath).getName();
        MediaScannerConnection.scanFile(AndroidActivityWrapper.GetAndroidActivityWrapper().getDefaultContext(), new String[] { this.mImagePath }, (String[])null, (MediaScannerConnection$OnScanCompletedListener)null);
        this.onCameraResult(this.mImagePath, s, name);
    }
    
    private void processVideoSuccessResult(final Intent p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_3       
        //     1: anewarray       Ljava/lang/String;
        //     4: dup            
        //     5: iconst_0       
        //     6: ldc             "_data"
        //     8: aastore        
        //     9: dup            
        //    10: iconst_1       
        //    11: ldc             "mime_type"
        //    13: aastore        
        //    14: dup            
        //    15: iconst_2       
        //    16: ldc             "_display_name"
        //    18: aastore        
        //    19: astore_2       
        //    20: aload_0        
        //    21: aload_1        
        //    22: invokevirtual   android/content/Intent.getData:()Landroid/net/Uri;
        //    25: invokestatic    com/adobe/air/AndroidActivityWrapper.GetAndroidActivityWrapper:()Lcom/adobe/air/AndroidActivityWrapper;
        //    28: invokevirtual   com/adobe/air/AndroidActivityWrapper.getActivity:()Landroid/app/Activity;
        //    31: aload_2        
        //    32: invokespecial   com/adobe/air/CameraUI.getCursorFromUri:(Landroid/net/Uri;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;
        //    35: astore_3       
        //    36: aload_3        
        //    37: ifnull          337
        //    40: aload_3        
        //    41: ldc             "_data"
        //    43: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //    48: istore          12
        //    50: aload_3        
        //    51: ldc             "mime_type"
        //    53: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //    58: istore          13
        //    60: aload_3        
        //    61: ldc             "_display_name"
        //    63: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //    68: istore          14
        //    70: aload_3        
        //    71: iload           12
        //    73: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    78: astore          15
        //    80: aload           15
        //    82: ifnull          328
        //    85: aload_0        
        //    86: aload_3        
        //    87: iload           13
        //    89: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //    94: invokespecial   com/adobe/air/CameraUI.toMediaType:(Ljava/lang/String;)Ljava/lang/String;
        //    97: astore          19
        //    99: aload           19
        //   101: astore          16
        //   103: aload           16
        //   105: ifnonnull       123
        //   108: new             Ljava/lang/String;
        //   111: dup            
        //   112: ldc             "video"
        //   114: invokespecial   java/lang/String.<init>:(Ljava/lang/String;)V
        //   117: astore          25
        //   119: aload           25
        //   121: astore          16
        //   123: aload_3        
        //   124: iload           14
        //   126: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   131: astore          21
        //   133: aload           21
        //   135: astore          17
        //   137: aload           17
        //   139: ifnonnull       157
        //   142: new             Ljava/lang/String;
        //   145: dup            
        //   146: ldc             ""
        //   148: invokespecial   java/lang/String.<init>:(Ljava/lang/String;)V
        //   151: astore          22
        //   153: aload           22
        //   155: astore          17
        //   157: aload_3        
        //   158: invokeinterface android/database/Cursor.close:()V
        //   163: aload           16
        //   165: astore          4
        //   167: aload           15
        //   169: astore          6
        //   171: aload           17
        //   173: astore          5
        //   175: aload           4
        //   177: ifnull          190
        //   180: aload           4
        //   182: ldc             "image"
        //   184: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   187: ifne            200
        //   190: aload           4
        //   192: ldc             "video"
        //   194: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   197: ifeq            254
        //   200: aload_0        
        //   201: aload           6
        //   203: aload           4
        //   205: aload           5
        //   207: invokespecial   com/adobe/air/CameraUI.onCameraResult:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
        //   210: return         
        //   211: astore          8
        //   213: aconst_null    
        //   214: astore          9
        //   216: aconst_null    
        //   217: astore          10
        //   219: aconst_null    
        //   220: astore          11
        //   222: aload_3        
        //   223: invokeinterface android/database/Cursor.close:()V
        //   228: aload           9
        //   230: astore          4
        //   232: aload           10
        //   234: astore          5
        //   236: aload           11
        //   238: astore          6
        //   240: goto            175
        //   243: astore          7
        //   245: aload_3        
        //   246: invokeinterface android/database/Cursor.close:()V
        //   251: aload           7
        //   253: athrow         
        //   254: aload_0        
        //   255: iconst_2       
        //   256: invokespecial   com/adobe/air/CameraUI.onCameraError:(I)V
        //   259: return         
        //   260: astore          18
        //   262: aload           15
        //   264: astore          11
        //   266: aconst_null    
        //   267: astore          9
        //   269: aconst_null    
        //   270: astore          10
        //   272: goto            222
        //   275: astore          26
        //   277: aload           15
        //   279: astore          11
        //   281: aload           16
        //   283: astore          9
        //   285: aconst_null    
        //   286: astore          10
        //   288: goto            222
        //   291: astore          20
        //   293: aload           15
        //   295: astore          11
        //   297: aload           16
        //   299: astore          9
        //   301: aconst_null    
        //   302: astore          10
        //   304: goto            222
        //   307: astore          23
        //   309: aload           16
        //   311: astore          24
        //   313: aload           17
        //   315: astore          10
        //   317: aload           15
        //   319: astore          11
        //   321: aload           24
        //   323: astore          9
        //   325: goto            222
        //   328: aconst_null    
        //   329: astore          16
        //   331: aconst_null    
        //   332: astore          17
        //   334: goto            157
        //   337: aconst_null    
        //   338: astore          4
        //   340: aconst_null    
        //   341: astore          5
        //   343: aconst_null    
        //   344: astore          6
        //   346: goto            175
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                
        //  -----  -----  -----  -----  ------------------------------------
        //  40     80     211    222    Ljava/lang/IllegalArgumentException;
        //  40     80     243    254    Any
        //  85     99     260    275    Ljava/lang/IllegalArgumentException;
        //  85     99     243    254    Any
        //  108    119    275    291    Ljava/lang/IllegalArgumentException;
        //  108    119    243    254    Any
        //  123    133    291    307    Ljava/lang/IllegalArgumentException;
        //  123    133    243    254    Any
        //  142    153    307    328    Ljava/lang/IllegalArgumentException;
        //  142    153    243    254    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 170, Size: 170
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
    
    private int stillPictureWork() {
        final Activity activity = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
        if (activity == null) {
            return 4;
        }
        if (this.getCameraRollDirectory(activity) == null) {
            return 2;
        }
        final String string = this.getCameraRollDirectory(activity) + "/" + new SimpleDateFormat("'IMG'_yyyyMMdd_HHmmss").format(new Date(System.currentTimeMillis())) + ".jpg";
        final File file = new File(string);
        if (file.exists()) {
            return 2;
        }
        while (true) {
            try {
                final Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                intent.putExtra("output", (Parcelable)Uri.fromFile(file));
                activity.startActivityForResult(intent, 3);
                final int n = 0;
                final String mImagePath = string;
                this.mImagePath = mImagePath;
                return n;
            }
            catch (ActivityNotFoundException ex) {
                final int n = 3;
                final String mImagePath = null;
                continue;
            }
            catch (NullPointerException ex2) {
                final int n = 2;
                final String mImagePath = null;
                continue;
            }
            break;
        }
    }
    
    private String toMediaType(final String s) {
        String s2 = null;
        if (s != null) {
            if (s.startsWith("image/")) {
                s2 = new String("image");
            }
            else {
                final boolean startsWith = s.startsWith("video/");
                s2 = null;
                if (startsWith) {
                    return new String("video");
                }
            }
        }
        return s2;
    }
    
    private int videoCaptureWork() {
        try {
            final Activity activity = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
            if (activity == null) {
                return 4;
            }
            final Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
            intent.putExtra("android.intent.extra.videoQuality", 0);
            activity.startActivityForResult(intent, 4);
            return 0;
        }
        catch (ActivityNotFoundException ex) {
            return 3;
        }
    }
    
    public Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException();
    }
    
    public void launch(final long mLastClientId, final int n) {
        if (mLastClientId != 0L) {
            if (this.mCameraBusy) {
                this.nativeOnCameraError(mLastClientId, 1);
                return;
            }
            if (this.mLastClientId != 0L) {
                this.onCameraError(1);
            }
            this.mLastClientId = mLastClientId;
            this.mCameraBusy = true;
            int n2 = 0;
            switch (n) {
                default: {
                    n2 = 3;
                    break;
                }
                case 1: {
                    n2 = this.stillPictureWork();
                    break;
                }
                case 2: {
                    n2 = this.videoCaptureWork();
                    break;
                }
            }
            if (n2 != 0) {
                this.mCameraBusy = false;
                this.onCameraError(n2);
            }
        }
    }
    
    @Override
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        if (n == 3 || n == 4) {
            this.mCameraBusy = false;
            if (this.mLastClientId != 0L) {
                switch (n2) {
                    default: {
                        if (this.mImagePath != null) {
                            this.mImagePath = null;
                        }
                        this.onCameraError(2);
                    }
                    case -1: {
                        if (n == 3) {
                            if (this.mImagePath != null) {
                                this.processImageSuccessResult();
                                this.mImagePath = null;
                                return;
                            }
                            this.onCameraCancel();
                            return;
                        }
                        else {
                            if (n == 4) {
                                this.processVideoSuccessResult(intent);
                                return;
                            }
                            break;
                        }
                        break;
                    }
                    case 0: {
                        if (this.mImagePath != null) {
                            this.mImagePath = null;
                        }
                        this.onCameraCancel();
                    }
                }
            }
        }
    }
    
    public void unregisterCallbacks(final long n) {
        if (this.mLastClientId == n) {
            this.mLastClientId = 0L;
        }
    }
}
