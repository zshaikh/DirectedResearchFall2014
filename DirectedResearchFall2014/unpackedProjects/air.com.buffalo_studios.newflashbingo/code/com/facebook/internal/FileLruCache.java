package com.facebook.internal;

import java.util.concurrent.atomic.*;
import android.content.*;
import java.util.*;
import com.facebook.*;
import org.json.*;
import java.io.*;

public final class FileLruCache
{
    private static final String HEADER_CACHEKEY_KEY = "key";
    private static final String HEADER_CACHE_CONTENT_TAG_KEY = "tag";
    static final String TAG;
    private static final AtomicLong bufferIndex;
    private final File directory;
    private boolean isTrimInProgress;
    private boolean isTrimPending;
    private AtomicLong lastClearCacheTime;
    private final FileLruCache$Limits limits;
    private final Object lock;
    private final String tag;
    
    static {
        TAG = FileLruCache.class.getSimpleName();
        bufferIndex = new AtomicLong();
    }
    
    public FileLruCache(final Context context, final String s, final FileLruCache$Limits limits) {
        super();
        this.lastClearCacheTime = new AtomicLong(0L);
        this.tag = s;
        this.limits = limits;
        this.directory = new File(context.getCacheDir(), s);
        this.lock = new Object();
        if (this.directory.mkdirs() || this.directory.isDirectory()) {
            FileLruCache$BufferFile.deleteAll(this.directory);
        }
    }
    
    private void postTrim() {
        synchronized (this.lock) {
            if (!this.isTrimPending) {
                this.isTrimPending = true;
                Settings.getExecutor().execute(new FileLruCache$3(this));
            }
        }
    }
    
    private void renameToTargetAndTrim(final String s, final File file) {
        if (!file.renameTo(new File(this.directory, Utility.md5hash(s)))) {
            file.delete();
        }
        this.postTrim();
    }
    
    private void trim() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/facebook/internal/FileLruCache.lock:Ljava/lang/Object;
        //     4: astore_1       
        //     5: aload_1        
        //     6: monitorenter   
        //     7: aload_0        
        //     8: iconst_0       
        //     9: putfield        com/facebook/internal/FileLruCache.isTrimPending:Z
        //    12: aload_0        
        //    13: iconst_1       
        //    14: putfield        com/facebook/internal/FileLruCache.isTrimInProgress:Z
        //    17: aload_1        
        //    18: monitorexit    
        //    19: getstatic       com/facebook/LoggingBehavior.CACHE:Lcom/facebook/LoggingBehavior;
        //    22: getstatic       com/facebook/internal/FileLruCache.TAG:Ljava/lang/String;
        //    25: ldc             "trim started"
        //    27: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
        //    30: new             Ljava/util/PriorityQueue;
        //    33: dup            
        //    34: invokespecial   java/util/PriorityQueue.<init>:()V
        //    37: astore          6
        //    39: aload_0        
        //    40: getfield        com/facebook/internal/FileLruCache.directory:Ljava/io/File;
        //    43: invokestatic    com/facebook/internal/FileLruCache$BufferFile.excludeBufferFiles:()Ljava/io/FilenameFilter;
        //    46: invokevirtual   java/io/File.listFiles:(Ljava/io/FilenameFilter;)[Ljava/io/File;
        //    49: astore          7
        //    51: aload           7
        //    53: ifnull          356
        //    56: aload           7
        //    58: arraylength    
        //    59: istore          8
        //    61: lconst_0       
        //    62: lstore          9
        //    64: iconst_0       
        //    65: istore          11
        //    67: lconst_0       
        //    68: lstore          12
        //    70: iload           11
        //    72: iload           8
        //    74: if_icmpge       345
        //    77: aload           7
        //    79: iload           11
        //    81: aaload         
        //    82: astore          14
        //    84: new             Lcom/facebook/internal/FileLruCache$ModifiedFile;
        //    87: dup            
        //    88: aload           14
        //    90: invokespecial   com/facebook/internal/FileLruCache$ModifiedFile.<init>:(Ljava/io/File;)V
        //    93: astore          15
        //    95: aload           6
        //    97: aload           15
        //    99: invokevirtual   java/util/PriorityQueue.add:(Ljava/lang/Object;)Z
        //   102: pop            
        //   103: getstatic       com/facebook/LoggingBehavior.CACHE:Lcom/facebook/LoggingBehavior;
        //   106: getstatic       com/facebook/internal/FileLruCache.TAG:Ljava/lang/String;
        //   109: new             Ljava/lang/StringBuilder;
        //   112: dup            
        //   113: ldc             "  trim considering time="
        //   115: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   118: aload           15
        //   120: invokevirtual   com/facebook/internal/FileLruCache$ModifiedFile.getModified:()J
        //   123: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   126: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   129: ldc             " name="
        //   131: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   134: aload           15
        //   136: invokevirtual   com/facebook/internal/FileLruCache$ModifiedFile.getFile:()Ljava/io/File;
        //   139: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //   142: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   145: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   148: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
        //   151: aload           14
        //   153: invokevirtual   java/io/File.length:()J
        //   156: lstore          17
        //   158: lload           9
        //   160: lload           17
        //   162: ladd           
        //   163: lstore          9
        //   165: lload           12
        //   167: lconst_1       
        //   168: ladd           
        //   169: lstore          12
        //   171: iinc            11, 1
        //   174: goto            70
        //   177: astore_2       
        //   178: aload_1        
        //   179: monitorexit    
        //   180: aload_2        
        //   181: athrow         
        //   182: lload           21
        //   184: aload_0        
        //   185: getfield        com/facebook/internal/FileLruCache.limits:Lcom/facebook/internal/FileLruCache$Limits;
        //   188: invokevirtual   com/facebook/internal/FileLruCache$Limits.getByteCount:()I
        //   191: i2l            
        //   192: lcmp           
        //   193: ifgt            210
        //   196: lload           19
        //   198: aload_0        
        //   199: getfield        com/facebook/internal/FileLruCache.limits:Lcom/facebook/internal/FileLruCache$Limits;
        //   202: invokevirtual   com/facebook/internal/FileLruCache$Limits.getFileCount:()I
        //   205: i2l            
        //   206: lcmp           
        //   207: ifle            304
        //   210: aload           6
        //   212: invokevirtual   java/util/PriorityQueue.remove:()Ljava/lang/Object;
        //   215: checkcast       Lcom/facebook/internal/FileLruCache$ModifiedFile;
        //   218: invokevirtual   com/facebook/internal/FileLruCache$ModifiedFile.getFile:()Ljava/io/File;
        //   221: astore          23
        //   223: getstatic       com/facebook/LoggingBehavior.CACHE:Lcom/facebook/LoggingBehavior;
        //   226: getstatic       com/facebook/internal/FileLruCache.TAG:Ljava/lang/String;
        //   229: new             Ljava/lang/StringBuilder;
        //   232: dup            
        //   233: ldc             "  trim removing "
        //   235: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   238: aload           23
        //   240: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //   243: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   246: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   249: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
        //   252: lload           21
        //   254: aload           23
        //   256: invokevirtual   java/io/File.length:()J
        //   259: lsub           
        //   260: lstore          21
        //   262: lload           19
        //   264: lconst_1       
        //   265: lsub           
        //   266: lstore          19
        //   268: aload           23
        //   270: invokevirtual   java/io/File.delete:()Z
        //   273: pop            
        //   274: goto            182
        //   277: astore_3       
        //   278: aload_0        
        //   279: getfield        com/facebook/internal/FileLruCache.lock:Ljava/lang/Object;
        //   282: astore          4
        //   284: aload           4
        //   286: monitorenter   
        //   287: aload_0        
        //   288: iconst_0       
        //   289: putfield        com/facebook/internal/FileLruCache.isTrimInProgress:Z
        //   292: aload_0        
        //   293: getfield        com/facebook/internal/FileLruCache.lock:Ljava/lang/Object;
        //   296: invokevirtual   java/lang/Object.notifyAll:()V
        //   299: aload           4
        //   301: monitorexit    
        //   302: aload_3        
        //   303: athrow         
        //   304: aload_0        
        //   305: getfield        com/facebook/internal/FileLruCache.lock:Ljava/lang/Object;
        //   308: astore          25
        //   310: aload           25
        //   312: monitorenter   
        //   313: aload_0        
        //   314: iconst_0       
        //   315: putfield        com/facebook/internal/FileLruCache.isTrimInProgress:Z
        //   318: aload_0        
        //   319: getfield        com/facebook/internal/FileLruCache.lock:Ljava/lang/Object;
        //   322: invokevirtual   java/lang/Object.notifyAll:()V
        //   325: aload           25
        //   327: monitorexit    
        //   328: return         
        //   329: astore          26
        //   331: aload           25
        //   333: monitorexit    
        //   334: aload           26
        //   336: athrow         
        //   337: astore          5
        //   339: aload           4
        //   341: monitorexit    
        //   342: aload           5
        //   344: athrow         
        //   345: lload           12
        //   347: lstore          19
        //   349: lload           9
        //   351: lstore          21
        //   353: goto            182
        //   356: lconst_0       
        //   357: lstore          21
        //   359: lconst_0       
        //   360: lstore          19
        //   362: goto            182
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  7      19     177    182    Any
        //  19     51     277    304    Any
        //  56     61     277    304    Any
        //  77     158    277    304    Any
        //  182    210    277    304    Any
        //  210    262    277    304    Any
        //  268    274    277    304    Any
        //  287    302    337    345    Any
        //  313    328    329    337    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0070:
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
    
    public final void clearCache() {
        final File[] listFiles = this.directory.listFiles(FileLruCache$BufferFile.excludeBufferFiles());
        this.lastClearCacheTime.set(System.currentTimeMillis());
        if (listFiles != null) {
            Settings.getExecutor().execute(new FileLruCache$2(this, listFiles));
        }
    }
    
    public final InputStream get(final String s) {
        return this.get(s, null);
    }
    
    public final InputStream get(final String anObject, final String s) {
        final File file = new File(this.directory, Utility.md5hash(anObject));
        Label_0063: {
            BufferedInputStream bufferedInputStream;
            try {
                final BufferedInputStream bufferedInputStream2;
                bufferedInputStream = (bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file), 8192));
                final JSONObject jsonObject = FileLruCache$StreamHeader.readHeader(bufferedInputStream2);
                final JSONObject jsonObject3;
                final JSONObject jsonObject2 = jsonObject3 = jsonObject;
                if (jsonObject3 == null) {
                    final BufferedInputStream bufferedInputStream3 = bufferedInputStream;
                    bufferedInputStream3.close();
                    return null;
                }
                break Label_0063;
            }
            catch (IOException ex) {
                return null;
            }
            try {
                final BufferedInputStream bufferedInputStream2 = bufferedInputStream;
                final JSONObject jsonObject = FileLruCache$StreamHeader.readHeader(bufferedInputStream2);
                final JSONObject jsonObject3;
                final JSONObject jsonObject2 = jsonObject3 = jsonObject;
                if (jsonObject3 == null) {
                    final BufferedInputStream bufferedInputStream3 = bufferedInputStream;
                    bufferedInputStream3.close();
                    return null;
                }
                final String optString = jsonObject2.optString("key");
                if (optString == null || !optString.equals(anObject)) {
                    bufferedInputStream.close();
                    return null;
                }
                final String optString2 = jsonObject2.optString("tag", (String)null);
                if ((s == null && optString2 != null) || (s != null && !s.equals(optString2))) {
                    bufferedInputStream.close();
                    return null;
                }
                final long time = new Date().getTime();
                Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "Setting lastModified to " + (Object)time + " for " + file.getName());
                file.setLastModified(time);
                return bufferedInputStream;
            }
            finally {
                if (0 == 0) {
                    bufferedInputStream.close();
                }
            }
        }
    }
    
    public final InputStream interceptAndPut(final String s, final InputStream inputStream) {
        return new FileLruCache$CopyingInputStream(inputStream, this.openPutStream(s));
    }
    
    final OutputStream openPutStream(final String s) {
        return this.openPutStream(s, null);
    }
    
    public final OutputStream openPutStream(final String p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/facebook/internal/FileLruCache.directory:Ljava/io/File;
        //     4: invokestatic    com/facebook/internal/FileLruCache$BufferFile.newFile:(Ljava/io/File;)Ljava/io/File;
        //     7: astore_3       
        //     8: aload_3        
        //     9: invokevirtual   java/io/File.delete:()Z
        //    12: pop            
        //    13: aload_3        
        //    14: invokevirtual   java/io/File.createNewFile:()Z
        //    17: ifne            48
        //    20: new             Ljava/io/IOException;
        //    23: dup            
        //    24: new             Ljava/lang/StringBuilder;
        //    27: dup            
        //    28: ldc_w           "Could not create file at "
        //    31: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    34: aload_3        
        //    35: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //    38: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    41: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    44: invokespecial   java/io/IOException.<init>:(Ljava/lang/String;)V
        //    47: athrow         
        //    48: new             Ljava/io/FileOutputStream;
        //    51: dup            
        //    52: aload_3        
        //    53: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //    56: astore          5
        //    58: new             Ljava/io/BufferedOutputStream;
        //    61: dup            
        //    62: new             Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;
        //    65: dup            
        //    66: aload           5
        //    68: new             Lcom/facebook/internal/FileLruCache$1;
        //    71: dup            
        //    72: aload_0        
        //    73: invokestatic    java/lang/System.currentTimeMillis:()J
        //    76: aload_3        
        //    77: aload_1        
        //    78: invokespecial   com/facebook/internal/FileLruCache$1.<init>:(Lcom/facebook/internal/FileLruCache;JLjava/io/File;Ljava/lang/String;)V
        //    81: invokespecial   com/facebook/internal/FileLruCache$CloseCallbackOutputStream.<init>:(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V
        //    84: sipush          8192
        //    87: invokespecial   java/io/BufferedOutputStream.<init>:(Ljava/io/OutputStream;I)V
        //    90: astore          6
        //    92: new             Lorg/json/JSONObject;
        //    95: dup            
        //    96: invokespecial   org/json/JSONObject.<init>:()V
        //    99: astore          7
        //   101: aload           7
        //   103: ldc             "key"
        //   105: aload_1        
        //   106: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   109: pop            
        //   110: aload_2        
        //   111: invokestatic    com/facebook/internal/Utility.isNullOrEmpty:(Ljava/lang/String;)Z
        //   114: ifne            126
        //   117: aload           7
        //   119: ldc             "tag"
        //   121: aload_2        
        //   122: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   125: pop            
        //   126: aload           6
        //   128: aload           7
        //   130: invokestatic    com/facebook/internal/FileLruCache$StreamHeader.writeHeader:(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
        //   133: aload           6
        //   135: areturn        
        //   136: astore          12
        //   138: getstatic       com/facebook/LoggingBehavior.CACHE:Lcom/facebook/LoggingBehavior;
        //   141: iconst_5       
        //   142: getstatic       com/facebook/internal/FileLruCache.TAG:Ljava/lang/String;
        //   145: new             Ljava/lang/StringBuilder;
        //   148: dup            
        //   149: ldc_w           "Error creating buffer output stream: "
        //   152: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   155: aload           12
        //   157: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   160: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   163: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
        //   166: new             Ljava/io/IOException;
        //   169: dup            
        //   170: aload           12
        //   172: invokevirtual   java/io/FileNotFoundException.getMessage:()Ljava/lang/String;
        //   175: invokespecial   java/io/IOException.<init>:(Ljava/lang/String;)V
        //   178: athrow         
        //   179: astore          9
        //   181: getstatic       com/facebook/LoggingBehavior.CACHE:Lcom/facebook/LoggingBehavior;
        //   184: iconst_5       
        //   185: getstatic       com/facebook/internal/FileLruCache.TAG:Ljava/lang/String;
        //   188: new             Ljava/lang/StringBuilder;
        //   191: dup            
        //   192: ldc_w           "Error creating JSON header for cache file: "
        //   195: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   198: aload           9
        //   200: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   203: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   206: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
        //   209: new             Ljava/io/IOException;
        //   212: dup            
        //   213: aload           9
        //   215: invokevirtual   org/json/JSONException.getMessage:()Ljava/lang/String;
        //   218: invokespecial   java/io/IOException.<init>:(Ljava/lang/String;)V
        //   221: athrow         
        //   222: astore          8
        //   224: iconst_0       
        //   225: ifne            233
        //   228: aload           6
        //   230: invokevirtual   java/io/BufferedOutputStream.close:()V
        //   233: aload           8
        //   235: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  48     58     136    179    Ljava/io/FileNotFoundException;
        //  92     126    179    222    Lorg/json/JSONException;
        //  92     126    222    236    Any
        //  126    133    179    222    Lorg/json/JSONException;
        //  126    133    222    236    Any
        //  181    222    222    236    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0126:
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
    
    final long sizeInBytesForTest() {
        long n;
        synchronized (this.lock) {
            while (true) {
                if (!this.isTrimPending) {
                    if (!this.isTrimInProgress) {
                        break;
                    }
                }
                try {
                    this.lock.wait();
                }
                catch (InterruptedException ex) {}
            }
            // monitorexit(this.lock)
            final File[] listFiles = this.directory.listFiles();
            if (listFiles == null) {
                return 0L;
            }
            final int length = listFiles.length;
            n = 0L;
            for (int i = 0; i < length; ++i) {
                n += listFiles[i].length();
            }
        }
        return n;
    }
    
    @Override
    public final String toString() {
        return "{FileLruCache: tag:" + this.tag + " file:" + this.directory.getName() + "}";
    }
}
