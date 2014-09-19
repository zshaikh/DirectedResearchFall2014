package com.facebook.internal;

import java.util.concurrent.atomic.*;
import android.content.*;
import com.facebook.*;
import java.util.*;
import org.json.*;
import java.io.*;

public final class FileLruCache
{
    private static final String HEADER_CACHEKEY_KEY = "key";
    private static final String HEADER_CACHE_CONTENT_TAG_KEY = "tag";
    static final String TAG;
    private static final AtomicLong bufferIndex;
    private final File directory;
    private boolean isTrimPending;
    private final FileLruCache$Limits limits;
    private final Object lock;
    private final String tag;
    
    static {
        TAG = FileLruCache.class.getSimpleName();
        bufferIndex = new AtomicLong();
    }
    
    public FileLruCache(final Context context, final String s, final FileLruCache$Limits limits) {
        super();
        this.tag = s;
        this.limits = limits;
        this.directory = new File(context.getCacheDir(), s);
        this.lock = new Object();
        this.directory.mkdirs();
        FileLruCache$BufferFile.deleteAll(this.directory);
    }
    
    private void postTrim() {
        synchronized (this.lock) {
            if (!this.isTrimPending) {
                this.isTrimPending = true;
                Settings.getExecutor().execute(new FileLruCache$2(this));
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
        while (true) {
            while (true) {
                long n = 0L;
                long n2 = 0L;
                Label_0306: {
                    Object lock;
                    try {
                        Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "trim started");
                        final PriorityQueue<FileLruCache$ModifiedFile> priorityQueue = new PriorityQueue<FileLruCache$ModifiedFile>();
                        final File[] listFiles = this.directory.listFiles(FileLruCache$BufferFile.excludeBufferFiles());
                        final int length = listFiles.length;
                        n = 0L;
                        int i = 0;
                        n2 = 0L;
                        while (i < length) {
                            final File file = listFiles[i];
                            final FileLruCache$ModifiedFile e = new FileLruCache$ModifiedFile(file);
                            priorityQueue.add(e);
                            Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "  trim considering time=" + (Object)e.getModified() + " name=" + e.getFile().getName());
                            n += file.length();
                            ++n2;
                            ++i;
                        }
                        break Label_0306;
                        // iftrue(Label_0268:, n3 <= (long)this.limits.getByteCount() && n4 <= (long)this.limits.getFileCount())
                        final File file2 = priorityQueue.remove().getFile();
                        Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "  trim removing " + file2.getName());
                        final long n3 = n3 - file2.length();
                        final long n4 = n4 - 1L;
                        file2.delete();
                        continue;
                    }
                    finally {
                        lock = this.lock;
                        // monitorenter(lock)
                        final FileLruCache fileLruCache = this;
                        final boolean b = false;
                        fileLruCache.isTrimPending = b;
                        final FileLruCache fileLruCache2 = this;
                        final Object o = fileLruCache2.lock;
                        o.notifyAll();
                        final Object o2 = lock;
                    }
                    // monitorexit(o2)
                    try {
                        final FileLruCache fileLruCache = this;
                        final boolean b = false;
                        fileLruCache.isTrimPending = b;
                        final FileLruCache fileLruCache2 = this;
                        final Object o = fileLruCache2.lock;
                        o.notifyAll();
                        final Object o2 = lock;
                        // monitorexit(o2)
                        Label_0268: {
                            synchronized (this.lock) {
                                this.isTrimPending = false;
                                this.lock.notifyAll();
                                return;
                            }
                        }
                    }
                    finally {
                    }
                    // monitorexit(lock)
                }
                final long n4 = n2;
                final long n3 = n;
                continue;
            }
        }
    }
    
    public final void clearForTest() {
        final File[] listFiles = this.directory.listFiles();
        for (int length = listFiles.length, i = 0; i < length; ++i) {
            listFiles[i].delete();
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
        //    73: aload_1        
        //    74: aload_3        
        //    75: invokespecial   com/facebook/internal/FileLruCache$1.<init>:(Lcom/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V
        //    78: invokespecial   com/facebook/internal/FileLruCache$CloseCallbackOutputStream.<init>:(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V
        //    81: sipush          8192
        //    84: invokespecial   java/io/BufferedOutputStream.<init>:(Ljava/io/OutputStream;I)V
        //    87: astore          6
        //    89: new             Lorg/json/JSONObject;
        //    92: dup            
        //    93: invokespecial   org/json/JSONObject.<init>:()V
        //    96: astore          7
        //    98: aload           7
        //   100: ldc             "key"
        //   102: aload_1        
        //   103: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   106: pop            
        //   107: aload_2        
        //   108: invokestatic    com/facebook/internal/Utility.isNullOrEmpty:(Ljava/lang/String;)Z
        //   111: ifne            123
        //   114: aload           7
        //   116: ldc             "tag"
        //   118: aload_2        
        //   119: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   122: pop            
        //   123: aload           6
        //   125: aload           7
        //   127: invokestatic    com/facebook/internal/FileLruCache$StreamHeader.writeHeader:(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
        //   130: aload           6
        //   132: areturn        
        //   133: astore          12
        //   135: getstatic       com/facebook/LoggingBehavior.CACHE:Lcom/facebook/LoggingBehavior;
        //   138: iconst_5       
        //   139: getstatic       com/facebook/internal/FileLruCache.TAG:Ljava/lang/String;
        //   142: new             Ljava/lang/StringBuilder;
        //   145: dup            
        //   146: ldc_w           "Error creating buffer output stream: "
        //   149: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   152: aload           12
        //   154: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   157: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   160: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
        //   163: new             Ljava/io/IOException;
        //   166: dup            
        //   167: aload           12
        //   169: invokevirtual   java/io/FileNotFoundException.getMessage:()Ljava/lang/String;
        //   172: invokespecial   java/io/IOException.<init>:(Ljava/lang/String;)V
        //   175: athrow         
        //   176: astore          9
        //   178: getstatic       com/facebook/LoggingBehavior.CACHE:Lcom/facebook/LoggingBehavior;
        //   181: iconst_5       
        //   182: getstatic       com/facebook/internal/FileLruCache.TAG:Ljava/lang/String;
        //   185: new             Ljava/lang/StringBuilder;
        //   188: dup            
        //   189: ldc_w           "Error creating JSON header for cache file: "
        //   192: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   195: aload           9
        //   197: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   200: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   203: invokestatic    com/facebook/internal/Logger.log:(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
        //   206: new             Ljava/io/IOException;
        //   209: dup            
        //   210: aload           9
        //   212: invokevirtual   org/json/JSONException.getMessage:()Ljava/lang/String;
        //   215: invokespecial   java/io/IOException.<init>:(Ljava/lang/String;)V
        //   218: athrow         
        //   219: astore          8
        //   221: iconst_0       
        //   222: ifne            230
        //   225: aload           6
        //   227: invokevirtual   java/io/BufferedOutputStream.close:()V
        //   230: aload           8
        //   232: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                           
        //  -----  -----  -----  -----  -------------------------------
        //  48     58     133    176    Ljava/io/FileNotFoundException;
        //  89     123    176    219    Lorg/json/JSONException;
        //  89     123    219    233    Any
        //  123    130    176    219    Lorg/json/JSONException;
        //  123    130    219    233    Any
        //  178    219    219    233    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0123:
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
            while (this.isTrimPending) {
                try {
                    this.lock.wait();
                }
                catch (InterruptedException ex) {}
            }
            // monitorexit(this.lock)
            final File[] listFiles = this.directory.listFiles();
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
