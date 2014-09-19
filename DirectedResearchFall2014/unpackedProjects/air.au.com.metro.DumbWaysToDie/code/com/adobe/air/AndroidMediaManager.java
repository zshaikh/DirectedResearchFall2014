package com.adobe.air;

import android.graphics.*;
import android.content.*;
import android.app.*;

public class AndroidMediaManager
{
    public static final int ERROR_ACTIVITY_DESTROYED = 2;
    public static final int ERROR_IMAGE_PICKER_NOT_FOUND = 1;
    private static long MediaManagerObjectPointer = 0L;
    private static final String PHONE_STORAGE = "phoneStorage";
    private AndroidActivityWrapper.ActivityResultCallback mActivityResultCB;
    private boolean mCallbacksRegistered;
    
    public AndroidMediaManager() {
        super();
        this.mCallbacksRegistered = false;
        this.mActivityResultCB = null;
        AndroidMediaManager.MediaManagerObjectPointer = 0L;
    }
    
    public static boolean AddImage(final Application p0, final Bitmap p1, final boolean p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: ifnull          140
        //     4: aload_0        
        //     5: invokevirtual   android/app/Application.getContentResolver:()Landroid/content/ContentResolver;
        //     8: astore_3       
        //     9: aload_3        
        //    10: aload_1        
        //    11: aconst_null    
        //    12: aconst_null    
        //    13: invokestatic    android/provider/MediaStore$Images$Media.insertImage:(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    16: astore          12
        //    18: aload           12
        //    20: astore          5
        //    22: aload           5
        //    24: ifnonnull       37
        //    27: ldc             "phoneStorage"
        //    29: aload_3        
        //    30: aload_1        
        //    31: iload_2        
        //    32: invokestatic    com/adobe/air/AndroidMediaManager.SaveImage:(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Z)Ljava/lang/String;
        //    35: astore          5
        //    37: aload           5
        //    39: ifnull          140
        //    42: iconst_1       
        //    43: anewarray       Ljava/lang/String;
        //    46: dup            
        //    47: iconst_0       
        //    48: ldc             "_data"
        //    50: aastore        
        //    51: astore          6
        //    53: aload_3        
        //    54: aload           5
        //    56: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //    59: aload           6
        //    61: aconst_null    
        //    62: aconst_null    
        //    63: aconst_null    
        //    64: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    67: astore          8
        //    69: aload           8
        //    71: ifnull          125
        //    74: aload           8
        //    76: ldc             "_data"
        //    78: invokeinterface android/database/Cursor.getColumnIndexOrThrow:(Ljava/lang/String;)I
        //    83: istore          9
        //    85: aload           8
        //    87: invokeinterface android/database/Cursor.moveToFirst:()Z
        //    92: pop            
        //    93: iconst_1       
        //    94: anewarray       Ljava/lang/String;
        //    97: astore          11
        //    99: aload           11
        //   101: iconst_0       
        //   102: aload           8
        //   104: iload           9
        //   106: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   111: aastore        
        //   112: invokestatic    com/adobe/air/AndroidActivityWrapper.GetAndroidActivityWrapper:()Lcom/adobe/air/AndroidActivityWrapper;
        //   115: invokevirtual   com/adobe/air/AndroidActivityWrapper.getDefaultContext:()Landroid/content/Context;
        //   118: aload           11
        //   120: aconst_null    
        //   121: aconst_null    
        //   122: invokestatic    android/media/MediaScannerConnection.scanFile:(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
        //   125: iconst_1       
        //   126: ireturn        
        //   127: astore          4
        //   129: aconst_null    
        //   130: astore          5
        //   132: goto            22
        //   135: astore          7
        //   137: goto            125
        //   140: iconst_0       
        //   141: ireturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  9      18     127    135    Ljava/lang/Exception;
        //  42     69     135    140    Ljava/lang/Exception;
        //  74     125    135    140    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0125:
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
    
    private static String SaveImage(final String p0, final ContentResolver p1, final Bitmap p2, final boolean p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Landroid/content/ContentValues;
        //     3: dup            
        //     4: invokespecial   android/content/ContentValues.<init>:()V
        //     7: astore          4
        //     9: iload_3        
        //    10: ifeq            155
        //    13: aload           4
        //    15: ldc             "mime_type"
        //    17: ldc             "image/jpeg"
        //    19: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //    22: new             Ljava/util/Date;
        //    25: dup            
        //    26: invokespecial   java/util/Date.<init>:()V
        //    29: astore          8
        //    31: aload           4
        //    33: ldc             "datetaken"
        //    35: aload           8
        //    37: invokevirtual   java/util/Date.getTime:()J
        //    40: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //    43: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //    46: aload           4
        //    48: ldc             "date_added"
        //    50: aload           8
        //    52: invokevirtual   java/util/Date.getTime:()J
        //    55: ldc2_w          1000
        //    58: ldiv           
        //    59: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //    62: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Long;)V
        //    65: aload_1        
        //    66: aload_0        
        //    67: invokestatic    android/provider/MediaStore$Images$Media.getContentUri:(Ljava/lang/String;)Landroid/net/Uri;
        //    70: aload           4
        //    72: invokevirtual   android/content/ContentResolver.insert:(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
        //    75: astore          9
        //    77: aload           9
        //    79: ifnull          252
        //    82: aload_1        
        //    83: aload           9
        //    85: invokevirtual   android/content/ContentResolver.openOutputStream:(Landroid/net/Uri;)Ljava/io/OutputStream;
        //    88: astore          11
        //    90: aload_2        
        //    91: getstatic       android/graphics/Bitmap$CompressFormat.JPEG:Landroid/graphics/Bitmap$CompressFormat;
        //    94: bipush          90
        //    96: aload           11
        //    98: invokevirtual   android/graphics/Bitmap.compress:(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
        //   101: pop            
        //   102: aload           9
        //   104: invokestatic    android/content/ContentUris.parseId:(Landroid/net/Uri;)J
        //   107: lstore          17
        //   109: aload_0        
        //   110: aload_1        
        //   111: aload_0        
        //   112: aload_1        
        //   113: aload_2        
        //   114: lload           17
        //   116: ldc             320.0
        //   118: ldc             240.0
        //   120: iconst_1       
        //   121: invokestatic    com/adobe/air/AndroidMediaManager.SaveThumbnail:(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
        //   124: lload           17
        //   126: ldc             50.0
        //   128: ldc             50.0
        //   130: iconst_3       
        //   131: invokestatic    com/adobe/air/AndroidMediaManager.SaveThumbnail:(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
        //   134: pop            
        //   135: aload           11
        //   137: invokevirtual   java/io/OutputStream.close:()V
        //   140: aload           9
        //   142: astore          6
        //   144: aload           6
        //   146: ifnull          243
        //   149: aload           6
        //   151: invokevirtual   android/net/Uri.toString:()Ljava/lang/String;
        //   154: areturn        
        //   155: aload           4
        //   157: ldc             "mime_type"
        //   159: ldc             "image/png"
        //   161: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //   164: goto            22
        //   167: astore          5
        //   169: aconst_null    
        //   170: astore          6
        //   172: aload           6
        //   174: ifnull          144
        //   177: aload_1        
        //   178: aload           6
        //   180: aconst_null    
        //   181: aconst_null    
        //   182: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //   185: pop            
        //   186: aconst_null    
        //   187: astore          6
        //   189: goto            144
        //   192: astore          13
        //   194: aload           9
        //   196: ifnull          245
        //   199: aload_1        
        //   200: aload           9
        //   202: aconst_null    
        //   203: aconst_null    
        //   204: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //   207: pop            
        //   208: aconst_null    
        //   209: astore          6
        //   211: aload           11
        //   213: invokevirtual   java/io/OutputStream.close:()V
        //   216: goto            144
        //   219: astore          14
        //   221: goto            172
        //   224: astore          12
        //   226: aload           11
        //   228: invokevirtual   java/io/OutputStream.close:()V
        //   231: aload           12
        //   233: athrow         
        //   234: astore          10
        //   236: aload           9
        //   238: astore          6
        //   240: goto            172
        //   243: aconst_null    
        //   244: areturn        
        //   245: aload           9
        //   247: astore          6
        //   249: goto            211
        //   252: aload           9
        //   254: astore          6
        //   256: goto            144
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      9      167    172    Ljava/lang/Exception;
        //  13     22     167    172    Ljava/lang/Exception;
        //  22     77     167    172    Ljava/lang/Exception;
        //  82     90     234    243    Ljava/lang/Exception;
        //  90     135    192    224    Ljava/lang/Exception;
        //  90     135    224    234    Any
        //  135    140    234    243    Ljava/lang/Exception;
        //  155    164    167    172    Ljava/lang/Exception;
        //  199    208    224    234    Any
        //  211    216    219    224    Ljava/lang/Exception;
        //  226    234    234    243    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0144:
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
    
    private static final Bitmap SaveThumbnail(final String p0, final ContentResolver p1, final Bitmap p2, final long p3, final float p4, final float p5, final int p6) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_2        
        //     1: ifnonnull       10
        //     4: aconst_null    
        //     5: astore          11
        //     7: aload           11
        //     9: areturn        
        //    10: new             Landroid/graphics/Matrix;
        //    13: dup            
        //    14: invokespecial   android/graphics/Matrix.<init>:()V
        //    17: astore          8
        //    19: aload           8
        //    21: fload           5
        //    23: aload_2        
        //    24: invokevirtual   android/graphics/Bitmap.getWidth:()I
        //    27: i2f            
        //    28: fdiv           
        //    29: fload           6
        //    31: aload_2        
        //    32: invokevirtual   android/graphics/Bitmap.getHeight:()I
        //    35: i2f            
        //    36: fdiv           
        //    37: invokevirtual   android/graphics/Matrix.setScale:(FF)V
        //    40: aload_2        
        //    41: iconst_0       
        //    42: iconst_0       
        //    43: aload_2        
        //    44: invokevirtual   android/graphics/Bitmap.getWidth:()I
        //    47: aload_2        
        //    48: invokevirtual   android/graphics/Bitmap.getHeight:()I
        //    51: aload           8
        //    53: iconst_1       
        //    54: invokestatic    android/graphics/Bitmap.createBitmap:(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
        //    57: astore          10
        //    59: aload           10
        //    61: astore          11
        //    63: new             Landroid/content/ContentValues;
        //    66: dup            
        //    67: iconst_4       
        //    68: invokespecial   android/content/ContentValues.<init>:(I)V
        //    71: astore          12
        //    73: aload           12
        //    75: ldc             "kind"
        //    77: iload           7
        //    79: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //    82: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //    85: aload           12
        //    87: ldc             "image_id"
        //    89: lload_3        
        //    90: l2i            
        //    91: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //    94: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //    97: aload           12
        //    99: ldc             "height"
        //   101: aload           11
        //   103: invokevirtual   android/graphics/Bitmap.getHeight:()I
        //   106: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   109: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   112: aload           12
        //   114: ldc             "width"
        //   116: aload           11
        //   118: invokevirtual   android/graphics/Bitmap.getWidth:()I
        //   121: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   124: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/Integer;)V
        //   127: aload_1        
        //   128: aload_0        
        //   129: invokestatic    android/provider/MediaStore$Images$Thumbnails.getContentUri:(Ljava/lang/String;)Landroid/net/Uri;
        //   132: aload           12
        //   134: invokevirtual   android/content/ContentResolver.insert:(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
        //   137: astore          16
        //   139: aload           16
        //   141: astore          14
        //   143: aload           14
        //   145: ifnull          174
        //   148: aload_1        
        //   149: aload           14
        //   151: invokevirtual   android/content/ContentResolver.openOutputStream:(Landroid/net/Uri;)Ljava/io/OutputStream;
        //   154: astore          18
        //   156: aload           11
        //   158: getstatic       android/graphics/Bitmap$CompressFormat.JPEG:Landroid/graphics/Bitmap$CompressFormat;
        //   161: bipush          100
        //   163: aload           18
        //   165: invokevirtual   android/graphics/Bitmap.compress:(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
        //   168: pop            
        //   169: aload           18
        //   171: invokevirtual   java/io/OutputStream.close:()V
        //   174: aload           14
        //   176: ifnonnull       7
        //   179: aconst_null    
        //   180: areturn        
        //   181: astore          9
        //   183: aconst_null    
        //   184: areturn        
        //   185: astore          13
        //   187: aconst_null    
        //   188: astore          14
        //   190: aload           14
        //   192: ifnull          174
        //   195: aload_1        
        //   196: aload           14
        //   198: aconst_null    
        //   199: aconst_null    
        //   200: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //   203: pop            
        //   204: aconst_null    
        //   205: astore          14
        //   207: goto            174
        //   210: astore          17
        //   212: goto            190
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  19     59     181    185    Ljava/lang/Exception;
        //  127    139    185    190    Ljava/lang/Exception;
        //  148    174    210    215    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 108, Size: 108
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
    
    private void doCallbackRegistration(final boolean mCallbacksRegistered) {
        this.mCallbacksRegistered = mCallbacksRegistered;
        if (mCallbacksRegistered) {
            if (this.mActivityResultCB == null) {
                this.mActivityResultCB = new AndroidActivityWrapper.ActivityResultCallback() {
                    @Override
                    public void onActivityResult(final int n, final int n2, final Intent intent) {
                        if (n == 2 && AndroidMediaManager.MediaManagerObjectPointer != 0L && AndroidMediaManager.this.mCallbacksRegistered) {
                            AndroidMediaManager.this.onBrowseImageResult(n2, intent, AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity());
                            AndroidMediaManager.this.unregisterCallbacks();
                        }
                    }
                };
            }
            AndroidActivityWrapper.GetAndroidActivityWrapper().addActivityResultListener(this.mActivityResultCB);
        }
        else if (this.mActivityResultCB != null) {
            AndroidActivityWrapper.GetAndroidActivityWrapper().removeActivityResultListener(this.mActivityResultCB);
            this.mActivityResultCB = null;
        }
    }
    
    public int BrowseImage(final long mediaManagerObjectPointer) {
        int n = 0;
        while (true) {
            try {
                final AndroidActivityWrapper getAndroidActivityWrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
                final Intent intent = new Intent();
                intent.setType("image/*");
                intent.setAction("android.intent.action.PICK");
                if (getAndroidActivityWrapper.getActivity() != null) {
                    getAndroidActivityWrapper.getActivity().startActivityForResult(Intent.createChooser(intent, (CharSequence)""), 2);
                }
                else {
                    n = 2;
                }
                if (n == 0) {
                    this.registerCallbacks();
                    AndroidMediaManager.MediaManagerObjectPointer = mediaManagerObjectPointer;
                }
                return n;
            }
            catch (ActivityNotFoundException ex) {
                n = 1;
                continue;
            }
            continue;
        }
    }
    
    public void onBrowseImageResult(final int n, final Intent intent, final Activity activity) {
        if (n == 0) {
            this.useImagePickerData(AndroidMediaManager.MediaManagerObjectPointer, false, true, "", "", "");
        }
        else if (n == -1) {
            try {
                if (activity.managedQuery(intent.getData(), new String[] { "_data", "mime_type", "_display_name" }, (String)null, (String[])null, (String)null) == null) {
                    this.useImagePickerData(AndroidMediaManager.MediaManagerObjectPointer, false, false, "", "", "");
                    return;
                }
                goto Label_0110;
            }
            catch (IllegalArgumentException ex) {
                this.useImagePickerData(AndroidMediaManager.MediaManagerObjectPointer, false, false, "", "", "");
            }
            catch (Exception ex2) {
                this.useImagePickerData(AndroidMediaManager.MediaManagerObjectPointer, false, false, "", "", "");
            }
        }
    }
    
    public void registerCallbacks() {
        this.doCallbackRegistration(true);
    }
    
    public void unregisterCallbacks() {
        this.doCallbackRegistration(false);
    }
    
    public native void useImagePickerData(final long p0, final boolean p1, final boolean p2, final String p3, final String p4, final String p5);
}
