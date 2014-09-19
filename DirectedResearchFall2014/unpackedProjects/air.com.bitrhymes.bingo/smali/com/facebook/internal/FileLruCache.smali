.class public final Lcom/facebook/internal/FileLruCache;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FileLruCache$BufferFile;,
        Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;,
        Lcom/facebook/internal/FileLruCache$CopyingInputStream;,
        Lcom/facebook/internal/FileLruCache$Limits;,
        Lcom/facebook/internal/FileLruCache$ModifiedFile;,
        Lcom/facebook/internal/FileLruCache$StreamCloseCallback;,
        Lcom/facebook/internal/FileLruCache$StreamHeader;
    }
.end annotation


# static fields
.field private static final HEADER_CACHEKEY_KEY:Ljava/lang/String; = "key"

.field private static final HEADER_CACHE_CONTENT_TAG_KEY:Ljava/lang/String; = "tag"

.field static final TAG:Ljava/lang/String;

.field private static final bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final directory:Ljava/io/File;

.field private isTrimPending:Z

.field private lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final limits:Lcom/facebook/internal/FileLruCache$Limits;

.field private final lock:Ljava/lang/Object;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V
    .locals 3
    .parameter "context"
    .parameter "tag"
    .parameter "limits"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    iput-object p2, p0, Lcom/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/internal/FileLruCache$BufferFile;->deleteAll(Ljava/io/File;)V

    .line 85
    :cond_1
    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/facebook/internal/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/internal/FileLruCache;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/internal/FileLruCache;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FileLruCache;->renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$3(Lcom/facebook/internal/FileLruCache;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/facebook/internal/FileLruCache;->trim()V

    return-void
.end method

.method private postTrim()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    if-nez v1, :cond_0

    .line 268
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    .line 269
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/internal/FileLruCache$3;

    invoke-direct {v2, p0}, Lcom/facebook/internal/FileLruCache$3;-><init>(Lcom/facebook/internal/FileLruCache;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 266
    :cond_0
    monitor-exit v0

    .line 277
    return-void

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private renameToTargetAndTrim(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .parameter "key"
    .parameter "buffer"

    .prologue
    .line 239
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    .local v0, target:Ljava/io/File;
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/facebook/internal/FileLruCache;->postTrim()V

    .line 251
    return-void
.end method

.method private trim()V
    .locals 15

    .prologue
    .line 281
    :try_start_0
    sget-object v8, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v9, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    const-string v10, "trim started"

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v4, Ljava/util/PriorityQueue;

    invoke-direct {v4}, Ljava/util/PriorityQueue;-><init>()V

    .line 283
    .local v4, heap:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    const-wide/16 v6, 0x0

    .line 284
    .local v6, size:J
    const-wide/16 v0, 0x0

    .line 285
    .local v0, count:J
    iget-object v8, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {}, Lcom/facebook/internal/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 286
    .local v3, filesToTrim:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 287
    array-length v8, v3

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v8, :cond_1

    .line 298
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    invoke-virtual {v8}, Lcom/facebook/internal/FileLruCache$Limits;->getByteCount()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-gtz v8, :cond_2

    iget-object v8, p0, Lcom/facebook/internal/FileLruCache;->limits:Lcom/facebook/internal/FileLruCache$Limits;

    invoke-virtual {v8}, Lcom/facebook/internal/FileLruCache$Limits;->getFileCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v0, v8

    if-gtz v8, :cond_2

    .line 306
    iget-object v8, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 307
    const/4 v9, 0x0

    :try_start_1
    iput-boolean v9, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    .line 308
    iget-object v9, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 306
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 311
    return-void

    .line 287
    :cond_1
    :try_start_2
    aget-object v2, v3, v9

    .line 288
    .local v2, file:Ljava/io/File;
    new-instance v5, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    invoke-direct {v5, v2}, Lcom/facebook/internal/FileLruCache$ModifiedFile;-><init>(Ljava/io/File;)V

    .line 289
    .local v5, modified:Lcom/facebook/internal/FileLruCache$ModifiedFile;
    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v10, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v11, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "  trim considering time="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 291
    const-string v13, " name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 290
    invoke-static {v10, v11, v12}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 294
    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    .line 287
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 299
    .end local v2           #file:Ljava/io/File;
    .end local v5           #modified:Lcom/facebook/internal/FileLruCache$ModifiedFile;
    :cond_2
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    invoke-virtual {v2}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v2

    .line 300
    .restart local v2       #file:Ljava/io/File;
    sget-object v8, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v9, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  trim removing "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 302
    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    .line 303
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 305
    .end local v0           #count:J
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filesToTrim:[Ljava/io/File;
    .end local v4           #heap:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    .end local v6           #size:J
    :catchall_0
    move-exception v8

    .line 306
    iget-object v9, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 307
    const/4 v10, 0x0

    :try_start_3
    iput-boolean v10, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    .line 308
    iget-object v10, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 306
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    throw v8

    .line 306
    :catchall_1
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .restart local v0       #count:J
    .restart local v3       #filesToTrim:[Ljava/io/File;
    .restart local v4       #heap:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Lcom/facebook/internal/FileLruCache$ModifiedFile;>;"
    .restart local v6       #size:J
    :catchall_2
    move-exception v9

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9
.end method


# virtual methods
.method public clearCache()V
    .locals 4

    .prologue
    .line 224
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {}, Lcom/facebook/internal/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 225
    .local v0, filesToDelete:[Ljava/io/File;
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->lastClearCacheTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/internal/FileLruCache$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/internal/FileLruCache$2;-><init>(Lcom/facebook/internal/FileLruCache;[Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 236
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 17
    .parameter "key"
    .parameter "contentTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    move-object v13, v0

    invoke-static/range {p1 .. p1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .local v6, file:Ljava/io/File;
    const/4 v10, 0x0

    .line 122
    .local v10, input:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v10           #input:Ljava/io/FileInputStream;
    .local v11, input:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v13, 0x2000

    invoke-direct {v4, v11, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 128
    .local v4, buffered:Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 131
    .local v12, success:Z
    :try_start_1
    invoke-static {v4}, Lcom/facebook/internal/FileLruCache$StreamHeader;->readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 132
    .local v8, header:Lorg/json/JSONObject;
    if-nez v8, :cond_1

    .line 156
    if-nez v12, :cond_0

    .line 157
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 133
    :cond_0
    const/4 v13, 0x0

    move-object v10, v11

    .line 154
    .end local v4           #buffered:Ljava/io/BufferedInputStream;
    .end local v8           #header:Lorg/json/JSONObject;
    .end local v11           #input:Ljava/io/FileInputStream;
    .end local v12           #success:Z
    .restart local v10       #input:Ljava/io/FileInputStream;
    :goto_0
    return-object v13

    .line 123
    :catch_0
    move-exception v13

    move-object v5, v13

    .line 124
    .local v5, e:Ljava/io/IOException;
    const/4 v13, 0x0

    goto :goto_0

    .line 136
    .end local v5           #e:Ljava/io/IOException;
    .end local v10           #input:Ljava/io/FileInputStream;
    .restart local v4       #buffered:Ljava/io/BufferedInputStream;
    .restart local v8       #header:Lorg/json/JSONObject;
    .restart local v11       #input:Ljava/io/FileInputStream;
    .restart local v12       #success:Z
    :cond_1
    :try_start_2
    const-string v13, "key"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, foundKey:Ljava/lang/String;
    if-eqz v7, :cond_2

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    if-nez v13, :cond_4

    .line 156
    :cond_2
    if-nez v12, :cond_3

    .line 157
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 138
    :cond_3
    const/4 v13, 0x0

    move-object v10, v11

    .end local v11           #input:Ljava/io/FileInputStream;
    .restart local v10       #input:Ljava/io/FileInputStream;
    goto :goto_0

    .line 141
    .end local v10           #input:Ljava/io/FileInputStream;
    .restart local v11       #input:Ljava/io/FileInputStream;
    :cond_4
    :try_start_3
    const-string v13, "tag"

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, headerContentTag:Ljava/lang/String;
    if-nez p2, :cond_5

    if-nez v9, :cond_6

    .line 144
    :cond_5
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v13

    if-nez v13, :cond_8

    .line 156
    :cond_6
    if-nez v12, :cond_7

    .line 157
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 145
    :cond_7
    const/4 v13, 0x0

    move-object v10, v11

    .end local v11           #input:Ljava/io/FileInputStream;
    .restart local v10       #input:Ljava/io/FileInputStream;
    goto :goto_0

    .line 148
    .end local v10           #input:Ljava/io/FileInputStream;
    .restart local v11       #input:Ljava/io/FileInputStream;
    :cond_8
    :try_start_4
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 149
    .local v2, accessTime:J
    sget-object v13, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v14, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Setting lastModified to "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 150
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 149
    invoke-static {v13, v14, v15}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v6, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    const/4 v12, 0x1

    .line 156
    if-nez v12, :cond_9

    .line 157
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_9
    move-object v10, v11

    .end local v11           #input:Ljava/io/FileInputStream;
    .restart local v10       #input:Ljava/io/FileInputStream;
    move-object v13, v4

    .line 154
    goto :goto_0

    .line 155
    .end local v2           #accessTime:J
    .end local v7           #foundKey:Ljava/lang/String;
    .end local v8           #header:Lorg/json/JSONObject;
    .end local v9           #headerContentTag:Ljava/lang/String;
    .end local v10           #input:Ljava/io/FileInputStream;
    .restart local v11       #input:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v13

    .line 156
    if-nez v12, :cond_a

    .line 157
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 159
    :cond_a
    throw v13
.end method

.method public interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .parameter "key"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 258
    .local v0, output:Ljava/io/OutputStream;
    new-instance v1, Lcom/facebook/internal/FileLruCache$CopyingInputStream;

    invoke-direct {v1, p2, v0}, Lcom/facebook/internal/FileLruCache$CopyingInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 12
    .parameter "key"
    .parameter "contentTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-static {v1}, Lcom/facebook/internal/FileLruCache$BufferFile;->newFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 168
    .local v4, buffer:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 169
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create file at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_0
    const/4 v9, 0x0

    .line 175
    .local v9, file:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    .end local v9           #file:Ljava/io/FileOutputStream;
    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .restart local v9       #file:Ljava/io/FileOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 182
    .local v2, bufferFileCreateTime:J
    new-instance v0, Lcom/facebook/internal/FileLruCache$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/FileLruCache$1;-><init>(Lcom/facebook/internal/FileLruCache;JLjava/io/File;Ljava/lang/String;)V

    .line 195
    .local v0, renameToTargetCallback:Lcom/facebook/internal/FileLruCache$StreamCloseCallback;
    new-instance v7, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;

    invoke-direct {v7, v9, v0}, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V

    .line 196
    .local v7, cleanup:Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v6, v7, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 197
    .local v6, buffered:Ljava/io/BufferedOutputStream;
    const/4 v11, 0x0

    .line 201
    .local v11, success:Z
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 202
    .local v10, header:Lorg/json/JSONObject;
    const-string v1, "key"

    invoke-virtual {v10, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    const-string v1, "tag"

    invoke-virtual {v10, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    :cond_1
    invoke-static {v6, v10}, Lcom/facebook/internal/FileLruCache$StreamHeader;->writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    const/4 v11, 0x1

    .line 216
    if-nez v11, :cond_2

    .line 217
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 210
    :cond_2
    return-object v6

    .line 176
    .end local v0           #renameToTargetCallback:Lcom/facebook/internal/FileLruCache$StreamCloseCallback;
    .end local v2           #bufferFileCreateTime:J
    .end local v6           #buffered:Ljava/io/BufferedOutputStream;
    .end local v7           #cleanup:Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;
    .end local v9           #file:Ljava/io/FileOutputStream;
    .end local v10           #header:Lorg/json/JSONObject;
    .end local v11           #success:Z
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 177
    .local v8, e:Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #buffer:Ljava/io/File;
    const-string v5, "Error creating buffer output stream: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #renameToTargetCallback:Lcom/facebook/internal/FileLruCache$StreamCloseCallback;
    .restart local v2       #bufferFileCreateTime:J
    .restart local v4       #buffer:Ljava/io/File;
    .restart local v6       #buffered:Ljava/io/BufferedOutputStream;
    .restart local v7       #cleanup:Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;
    .restart local v9       #file:Ljava/io/FileOutputStream;
    .restart local v11       #success:Z
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 213
    .local v8, e:Lorg/json/JSONException;
    :try_start_2
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    .end local v2           #bufferFileCreateTime:J
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #buffer:Ljava/io/File;
    const-string v5, "Error creating JSON header for cache file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    .end local v8           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    .line 216
    if-nez v11, :cond_3

    .line 217
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 219
    :cond_3
    throw v1
.end method

.method sizeInBytesForTest()J
    .locals 8

    .prologue
    .line 93
    iget-object v4, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 94
    :goto_0
    :try_start_0
    iget-boolean v5, p0, Lcom/facebook/internal/FileLruCache;->isTrimPending:Z

    if-nez v5, :cond_1

    .line 93
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v4, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 104
    .local v1, files:[Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 105
    .local v2, total:J
    if-eqz v1, :cond_0

    .line 106
    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v4, :cond_2

    .line 110
    :cond_0
    return-wide v2

    .line 96
    .end local v1           #files:[Ljava/io/File;
    .end local v2           #total:J
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/facebook/internal/FileLruCache;->lock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v5

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 106
    .restart local v1       #files:[Ljava/io/File;
    .restart local v2       #total:J
    :cond_2
    aget-object v0, v1, v5

    .line 107
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 106
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{FileLruCache: tag:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
