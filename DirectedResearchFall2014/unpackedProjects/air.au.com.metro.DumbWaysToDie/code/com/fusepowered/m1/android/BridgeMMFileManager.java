package com.fusepowered.m1.android;

import java.io.*;
import android.content.*;
import java.util.*;
import android.text.*;
import android.net.*;
import org.json.*;
import android.os.*;
import android.webkit.*;

class BridgeMMFileManager extends MMJSObject
{
    private File root;
    
    private boolean hasCreativeDirectory() {
        final Context context = this.contextRef.get();
        return context != null && (this.root = AdCache.getCacheDirectory(context)) != null;
    }
    
    public MMJSResponse cleanupCache(final HashMap<String, String> hashMap) {
        long creativeCacheTimeout = 259200000L;
        Label_0056: {
            if (!this.hasCreativeDirectory()) {
                break Label_0056;
            }
            final boolean containsKey = hashMap.containsKey("clear");
            boolean boolean1 = false;
            if (containsKey) {
                boolean1 = Boolean.parseBoolean(hashMap.get("clear"));
            }
            Label_0058: {
                if (!boolean1) {
                    break Label_0058;
                }
                creativeCacheTimeout = 0L;
                try {
                    // iftrue(Label_0048:, context == null)
                    while (true) {
                        while (true) {
                            AdCache.cleanupDirectory(this.root, creativeCacheTimeout);
                            return null;
                            final Context context;
                            creativeCacheTimeout = HandShake.sharedHandShake(context).creativeCacheTimeout;
                            continue;
                        }
                        final Context context = this.contextRef.get();
                        continue;
                    }
                }
                catch (SecurityException ex) {
                    return null;
                }
            }
        }
    }
    
    public MMJSResponse downloadFile(final HashMap<String, String> hashMap) {
        final Context context = this.contextRef.get();
        final String s = hashMap.get("url");
        if (!TextUtils.isEmpty((CharSequence)s) && context != null) {
            String lastPathSegment;
            if (hashMap.containsKey("path")) {
                lastPathSegment = hashMap.get("path");
            }
            else {
                lastPathSegment = Uri.parse((String)hashMap.get("url")).getLastPathSegment();
            }
            if (AdCache.downloadComponentToCache(s, lastPathSegment, context)) {
                return MMJSResponse.responseWithSuccess(lastPathSegment);
            }
        }
        return null;
    }
    
    public MMJSResponse getDirectoryContents(final HashMap<String, String> hashMap) {
        if (this.hasCreativeDirectory()) {
            File root;
            if (hashMap.containsKey("path")) {
                root = new File(this.root, hashMap.get("path"));
            }
            else {
                root = this.root;
            }
            final JSONArray response = new JSONArray();
            final String[] list = root.list();
            for (int length = list.length, i = 0; i < length; ++i) {
                response.put((Object)list[i]);
            }
            final MMJSResponse mmjsResponse = new MMJSResponse();
            mmjsResponse.result = 1;
            mmjsResponse.response = response;
            return mmjsResponse;
        }
        return null;
    }
    
    public MMJSResponse getFileContents(final HashMap<String, String> p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokespecial   com/fusepowered/m1/android/BridgeMMFileManager.hasCreativeDirectory:()Z
        //     4: ifeq            151
        //     7: aconst_null    
        //     8: astore_2       
        //     9: aload_1        
        //    10: ldc             "path"
        //    12: invokevirtual   java/util/HashMap.containsKey:(Ljava/lang/Object;)Z
        //    15: ifeq            151
        //    18: new             Ljava/io/File;
        //    21: dup            
        //    22: aload_0        
        //    23: getfield        com/fusepowered/m1/android/BridgeMMFileManager.root:Ljava/io/File;
        //    26: aload_1        
        //    27: ldc             "path"
        //    29: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    32: checkcast       Ljava/lang/String;
        //    35: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //    38: astore_3       
        //    39: new             Ljava/io/FileInputStream;
        //    42: dup            
        //    43: aload_3        
        //    44: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/File;)V
        //    47: astore          4
        //    49: aload_3        
        //    50: invokevirtual   java/io/File.length:()J
        //    53: l2i            
        //    54: newarray        B
        //    56: astore          6
        //    58: aload           4
        //    60: aload           6
        //    62: invokevirtual   java/io/FileInputStream.read:([B)I
        //    65: pop            
        //    66: aload           4
        //    68: ifnull          76
        //    71: aload           4
        //    73: invokevirtual   java/io/FileInputStream.close:()V
        //    76: aload           6
        //    78: ifnull          151
        //    81: new             Lcom/fusepowered/m1/android/MMJSResponse;
        //    84: dup            
        //    85: invokespecial   com/fusepowered/m1/android/MMJSResponse.<init>:()V
        //    88: astore          8
        //    90: aload           8
        //    92: iconst_1       
        //    93: putfield        com/fusepowered/m1/android/MMJSResponse.result:I
        //    96: aload           8
        //    98: aload           6
        //   100: putfield        com/fusepowered/m1/android/MMJSResponse.dataResponse:[B
        //   103: aload           8
        //   105: areturn        
        //   106: astore          12
        //   108: goto            76
        //   111: astore          13
        //   113: aconst_null    
        //   114: astore          6
        //   116: aload_2        
        //   117: ifnull          76
        //   120: aload_2        
        //   121: invokevirtual   java/io/FileInputStream.close:()V
        //   124: aconst_null    
        //   125: astore          6
        //   127: goto            76
        //   130: astore          7
        //   132: aconst_null    
        //   133: astore          6
        //   135: goto            76
        //   138: astore          9
        //   140: aload_2        
        //   141: ifnull          148
        //   144: aload_2        
        //   145: invokevirtual   java/io/FileInputStream.close:()V
        //   148: aload           9
        //   150: athrow         
        //   151: aconst_null    
        //   152: areturn        
        //   153: astore          10
        //   155: goto            148
        //   158: astore          9
        //   160: aload           4
        //   162: astore_2       
        //   163: goto            140
        //   166: astore          5
        //   168: aload           4
        //   170: astore_2       
        //   171: goto            113
        //    Signature:
        //  (Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Lcom/fusepowered/m1/android/MMJSResponse;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  18     49     111    113    Ljava/lang/Exception;
        //  18     49     138    140    Any
        //  49     66     166    174    Ljava/lang/Exception;
        //  49     66     158    166    Any
        //  71     76     106    111    Ljava/lang/Exception;
        //  120    124    130    138    Ljava/lang/Exception;
        //  144    148    153    158    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0076:
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
    
    public MMJSResponse getFreeDiskSpace(final HashMap<String, String> hashMap) {
        if (this.hasCreativeDirectory()) {
            final MMJSResponse mmjsResponse = new MMJSResponse();
            mmjsResponse.result = 1;
            final StatFs statFs = new StatFs(this.root.getAbsolutePath());
            mmjsResponse.response = new Long(statFs.getAvailableBlocks() * statFs.getBlockSize());
            return mmjsResponse;
        }
        return null;
    }
    
    public MMJSResponse getMimeType(final HashMap<String, String> hashMap) {
        if (this.hasCreativeDirectory()) {
            final String[] split = hashMap.get("path").split("\\.");
            final String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(split[split.length - 1]);
            if (mimeTypeFromExtension != null) {
                final MMJSResponse mmjsResponse = new MMJSResponse();
                mmjsResponse.result = 1;
                mmjsResponse.response = mimeTypeFromExtension;
                return mmjsResponse;
            }
        }
        return null;
    }
    
    public MMJSResponse moveFile(final HashMap<String, String> hashMap) {
        if (this.hasCreativeDirectory()) {
            try {
                final String child = hashMap.get("fromPath");
                final String child2 = hashMap.get("toPath");
                if (child != null && child2 != null && new File(this.root, child).renameTo(new File(this.root, child2))) {
                    return MMJSResponse.responseWithSuccess("File moved successfully");
                }
            }
            catch (Exception ex) {}
        }
        return null;
    }
    
    public MMJSResponse removeAtPath(final HashMap<String, String> hashMap) {
        if (this.hasCreativeDirectory()) {
            try {
                final String child = hashMap.get("path");
                if (child != null && new File(this.root, child).delete()) {
                    return MMJSResponse.responseWithSuccess("File removed successfully");
                }
            }
            catch (Exception ex) {}
        }
        return null;
    }
    
    public MMJSResponse writeData(final HashMap<String, String> p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokespecial   com/fusepowered/m1/android/BridgeMMFileManager.hasCreativeDirectory:()Z
        //     4: ifeq            148
        //     7: aconst_null    
        //     8: astore_2       
        //     9: aload_1        
        //    10: ldc             "path"
        //    12: invokevirtual   java/util/HashMap.containsKey:(Ljava/lang/Object;)Z
        //    15: ifeq            148
        //    18: aload_1        
        //    19: ldc             "data"
        //    21: invokevirtual   java/util/HashMap.containsKey:(Ljava/lang/Object;)Z
        //    24: ifeq            148
        //    27: new             Ljava/io/File;
        //    30: dup            
        //    31: aload_0        
        //    32: getfield        com/fusepowered/m1/android/BridgeMMFileManager.root:Ljava/io/File;
        //    35: aload_1        
        //    36: ldc             "path"
        //    38: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    41: checkcast       Ljava/lang/String;
        //    44: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //    47: astore_3       
        //    48: aload_1        
        //    49: ldc             "data"
        //    51: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    54: checkcast       Ljava/lang/String;
        //    57: invokestatic    com/fusepowered/m1/android/Base64.decode:(Ljava/lang/String;)[B
        //    60: astore          9
        //    62: new             Ljava/io/FileOutputStream;
        //    65: dup            
        //    66: aload_3        
        //    67: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //    70: astore          10
        //    72: aload           10
        //    74: aload           9
        //    76: invokevirtual   java/io/FileOutputStream.write:([B)V
        //    79: iconst_1       
        //    80: istore          7
        //    82: aload           10
        //    84: ifnull          92
        //    87: aload           10
        //    89: invokevirtual   java/io/FileOutputStream.close:()V
        //    92: iload           7
        //    94: ifeq            148
        //    97: ldc             "File written successfully"
        //    99: invokestatic    com/fusepowered/m1/android/MMJSResponse.responseWithSuccess:(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;
        //   102: areturn        
        //   103: astore          12
        //   105: goto            92
        //   108: astore          6
        //   110: iconst_0       
        //   111: istore          7
        //   113: aload_2        
        //   114: ifnull          92
        //   117: aload_2        
        //   118: invokevirtual   java/io/FileOutputStream.close:()V
        //   121: iconst_0       
        //   122: istore          7
        //   124: goto            92
        //   127: astore          8
        //   129: iconst_0       
        //   130: istore          7
        //   132: goto            92
        //   135: astore          4
        //   137: aload_2        
        //   138: ifnull          145
        //   141: aload_2        
        //   142: invokevirtual   java/io/FileOutputStream.close:()V
        //   145: aload           4
        //   147: athrow         
        //   148: aconst_null    
        //   149: areturn        
        //   150: astore          5
        //   152: goto            145
        //   155: astore          4
        //   157: aload           10
        //   159: astore_2       
        //   160: goto            137
        //   163: astore          11
        //   165: aload           10
        //   167: astore_2       
        //   168: goto            110
        //    Signature:
        //  (Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)Lcom/fusepowered/m1/android/MMJSResponse;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  27     72     108    110    Ljava/lang/Exception;
        //  27     72     135    137    Any
        //  72     79     163    171    Ljava/lang/Exception;
        //  72     79     155    163    Any
        //  87     92     103    108    Ljava/lang/Exception;
        //  117    121    127    135    Ljava/lang/Exception;
        //  141    145    150    155    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0092:
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
}
