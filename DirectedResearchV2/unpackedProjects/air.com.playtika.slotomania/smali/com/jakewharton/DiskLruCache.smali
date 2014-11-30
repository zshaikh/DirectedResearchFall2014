.class public Lcom/jakewharton/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/DiskLruCache$Editor;,
        Lcom/jakewharton/DiskLruCache$Entry;,
        Lcom/jakewharton/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static final VERSION_1:Ljava/lang/String; = "1"

.field private static sharedDiskCache:Lcom/jakewharton/DiskLruCache;


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jakewharton/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/jakewharton/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-wide v4, p0, Lcom/jakewharton/DiskLruCache;->size:J

    .line 241
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 249
    iput-wide v4, p0, Lcom/jakewharton/DiskLruCache;->nextSequenceNumber:J

    .line 252
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 253
    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/jakewharton/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 254
    new-instance v0, Lcom/jakewharton/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/DiskLruCache$1;-><init>(Lcom/jakewharton/DiskLruCache;)V

    iput-object v0, p0, Lcom/jakewharton/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 272
    iput-object v7, p0, Lcom/jakewharton/DiskLruCache;->directory:Ljava/io/File;

    .line 273
    const/4 v0, -0x1

    iput v0, p0, Lcom/jakewharton/DiskLruCache;->appVersion:I

    .line 274
    iput-object v7, p0, Lcom/jakewharton/DiskLruCache;->journalFile:Ljava/io/File;

    .line 275
    iput-object v7, p0, Lcom/jakewharton/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 276
    iput v2, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    .line 277
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lcom/jakewharton/DiskLruCache;->maxSize:J

    .line 279
    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIJ)V
    .locals 7
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-wide v4, p0, Lcom/jakewharton/DiskLruCache;->size:J

    .line 241
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 249
    iput-wide v4, p0, Lcom/jakewharton/DiskLruCache;->nextSequenceNumber:J

    .line 252
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 253
    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/jakewharton/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 254
    new-instance v0, Lcom/jakewharton/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/DiskLruCache$1;-><init>(Lcom/jakewharton/DiskLruCache;)V

    iput-object v0, p0, Lcom/jakewharton/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 282
    iput-object p1, p0, Lcom/jakewharton/DiskLruCache;->directory:Ljava/io/File;

    .line 283
    iput p2, p0, Lcom/jakewharton/DiskLruCache;->appVersion:I

    .line 284
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jakewharton/DiskLruCache;->journalFile:Ljava/io/File;

    .line 285
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jakewharton/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 286
    iput p3, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    .line 287
    iput-wide p4, p0, Lcom/jakewharton/DiskLruCache;->maxSize:J

    .line 288
    return-void
.end method

.method static synthetic access$0(Lcom/jakewharton/DiskLruCache;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jakewharton/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/jakewharton/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$2(Lcom/jakewharton/DiskLruCache;)Z
    .locals 1

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/jakewharton/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/jakewharton/DiskLruCache;I)V
    .locals 0

    .prologue
    .line 242
    iput p1, p0, Lcom/jakewharton/DiskLruCache;->redundantOpCount:I

    return-void
.end method

.method static synthetic access$4(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    invoke-static {p0}, Lcom/jakewharton/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Ljava/io/Closeable;)V
    .locals 0

    .prologue
    .line 144
    invoke-static {p0}, Lcom/jakewharton/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$6()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/jakewharton/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jakewharton/DiskLruCache;)I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$8(Lcom/jakewharton/DiskLruCache;)Ljava/io/File;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_0
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 145
    if-eqz p0, :cond_0

    .line 147
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 150
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 110
    array-length v1, p0

    .line 111
    .local v1, "originalLength":I
    if-le p1, p2, :cond_0

    .line 112
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 114
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 115
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 117
    :cond_2
    sub-int v3, p2, p1

    .line 118
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 119
    .local v0, "copyLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 120
    .local v2, "result":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    return-object v2
.end method

.method public static declared-synchronized createSharedDiskCache(Ljava/io/File;IIJ)V
    .locals 8
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J

    .prologue
    .line 317
    const-class v7, Lcom/jakewharton/DiskLruCache;

    monitor-enter v7

    :try_start_0
    new-instance v0, Lcom/jakewharton/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    sput-object v0, Lcom/jakewharton/DiskLruCache;->sharedDiskCache:Lcom/jakewharton/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :try_start_1
    sget-object v0, Lcom/jakewharton/DiskLruCache;->sharedDiskCache:Lcom/jakewharton/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache;->open()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    :goto_0
    monitor-exit v7

    return-void

    .line 320
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 321
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "DiskLruCache - createSharedDiskCache"

    sget-object v1, Lcom/playhaven/src/common/PHCrashReport$Urgency;->low:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v6, v0, v1}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 317
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private static deleteContents(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 130
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "not a directory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 141
    return-void

    .line 133
    :cond_1
    aget-object v0, v1, v3

    .line 134
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 137
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 138
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to delete file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 480
    :cond_0
    return-void
.end method

.method public static declared-synchronized getSharedDiskCache()Lcom/jakewharton/DiskLruCache;
    .locals 2

    .prologue
    .line 297
    const-class v0, Lcom/jakewharton/DiskLruCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/jakewharton/DiskLruCache;->sharedDiskCache:Lcom/jakewharton/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/jakewharton/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/jakewharton/DiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .prologue
    .line 638
    const/16 v0, 0x7d0

    .line 639
    .local v0, "REDUNDANT_OP_COMPACT_THRESHOLD":I
    iget v1, p0, Lcom/jakewharton/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    .line 640
    iget v1, p0, Lcom/jakewharton/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    .line 639
    goto :goto_0
.end method

.method private static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 176
    .local v2, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 177
    .local v0, "c":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 178
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 179
    :cond_0
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 186
    .local v1, "length":I
    if-lez v1, :cond_1

    sub-int v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    .line 187
    sub-int v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 189
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 183
    .end local v1    # "length":I
    :cond_2
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 159
    .local v2, "writer":Ljava/io/StringWriter;
    const/16 v3, 0x400

    new-array v0, v3, [C

    .line 161
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 164
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 166
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 164
    return-object v3

    .line 162
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v2    # "writer":Ljava/io/StringWriter;
    :catchall_0
    move-exception v3

    .line 166
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 167
    throw v3
.end method

.method public static declared-synchronized setSharedDiskCache(Lcom/jakewharton/DiskLruCache;)V
    .locals 2
    .param p0, "cache"    # Lcom/jakewharton/DiskLruCache;

    .prologue
    .line 306
    const-class v0, Lcom/jakewharton/DiskLruCache;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/jakewharton/DiskLruCache;->sharedDiskCache:Lcom/jakewharton/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit v0

    return-void

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    :goto_0
    iget-wide v1, p0, Lcom/jakewharton/DiskLruCache;->size:J

    iget-wide v3, p0, Lcom/jakewharton/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 721
    return-void

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 719
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jakewharton/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jakewharton/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 734
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 735
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 714
    :goto_0
    monitor-exit p0

    return-void

    .line 706
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 711
    invoke-direct {p0}, Lcom/jakewharton/DiskLruCache;->trimToSize()V

    .line 712
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 713
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 703
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 706
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/DiskLruCache$Entry;

    .line 707
    .local v0, "entry":Lcom/jakewharton/DiskLruCache$Entry;
    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->currentEditor:Lcom/jakewharton/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache$Entry;->access$0(Lcom/jakewharton/DiskLruCache$Entry;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 708
    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->currentEditor:Lcom/jakewharton/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache$Entry;->access$0(Lcom/jakewharton/DiskLruCache$Entry;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jakewharton/DiskLruCache$Editor;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized completeEdit(Lcom/jakewharton/DiskLruCache$Editor;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/jakewharton/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    # getter for: Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/jakewharton/DiskLruCache$Editor;->access$1(Lcom/jakewharton/DiskLruCache$Editor;)Lcom/jakewharton/DiskLruCache$Entry;

    move-result-object v2

    .line 585
    .local v2, "entry":Lcom/jakewharton/DiskLruCache$Entry;
    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->currentEditor:Lcom/jakewharton/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache$Entry;->access$0(Lcom/jakewharton/DiskLruCache$Entry;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 586
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    .end local v2    # "entry":Lcom/jakewharton/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 590
    .restart local v2    # "entry":Lcom/jakewharton/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache$Entry;->access$1(Lcom/jakewharton/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 591
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    if-lt v3, v8, :cond_5

    .line 599
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget v8, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    if-lt v3, v8, :cond_7

    .line 615
    iget v8, p0, Lcom/jakewharton/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/jakewharton/DiskLruCache;->redundantOpCount:I

    .line 616
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/jakewharton/DiskLruCache$Entry;->access$4(Lcom/jakewharton/DiskLruCache$Entry;Lcom/jakewharton/DiskLruCache$Editor;)V

    .line 617
    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache$Entry;->access$1(Lcom/jakewharton/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_a

    .line 618
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/jakewharton/DiskLruCache$Entry;->access$3(Lcom/jakewharton/DiskLruCache$Entry;Z)V

    .line 619
    iget-object v8, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CLEAN "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache$Entry;->access$2(Lcom/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/jakewharton/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 620
    if-eqz p2, :cond_2

    .line 621
    iget-wide v8, p0, Lcom/jakewharton/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/jakewharton/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v2, v8, v9}, Lcom/jakewharton/DiskLruCache$Entry;->access$8(Lcom/jakewharton/DiskLruCache$Entry;J)V

    .line 628
    :cond_2
    :goto_2
    iget-wide v8, p0, Lcom/jakewharton/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/jakewharton/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    invoke-direct {p0}, Lcom/jakewharton/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 629
    :cond_3
    iget-object v8, p0, Lcom/jakewharton/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Lcom/jakewharton/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    :cond_4
    monitor-exit p0

    return-void

    .line 592
    :cond_5
    :try_start_2
    invoke-virtual {v2, v3}, Lcom/jakewharton/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_6

    .line 593
    invoke-virtual {p1}, Lcom/jakewharton/DiskLruCache$Editor;->abort()V

    .line 594
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "edit didn\'t create file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 591
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 600
    :cond_7
    invoke-virtual {v2, v3}, Lcom/jakewharton/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 601
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_9

    .line 602
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 603
    invoke-virtual {v2, v3}, Lcom/jakewharton/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 604
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 605
    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache$Entry;->access$6(Lcom/jakewharton/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 606
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 607
    .local v4, "newLength":J
    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache$Entry;->access$6(Lcom/jakewharton/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 608
    iget-wide v8, p0, Lcom/jakewharton/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/jakewharton/DiskLruCache;->size:J

    .line 599
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 611
    :cond_9
    invoke-static {v1}, Lcom/jakewharton/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_3

    .line 624
    .end local v1    # "dirty":Ljava/io/File;
    :cond_a
    iget-object v8, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache$Entry;->access$2(Lcom/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v8, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "REMOVE "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache$Entry;->access$2(Lcom/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/jakewharton/DiskLruCache;->close()V

    .line 730
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/jakewharton/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 731
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jakewharton/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized edit(Ljava/lang/String;J)Lcom/jakewharton/DiskLruCache$Editor;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 536
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jakewharton/DiskLruCache;->checkNotClosed()V

    .line 537
    invoke-direct {p0, p1}, Lcom/jakewharton/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jakewharton/DiskLruCache$Entry;

    .line 539
    .local v1, "entry":Lcom/jakewharton/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    .line 540
    if-eqz v1, :cond_0

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v1}, Lcom/jakewharton/DiskLruCache$Entry;->access$7(Lcom/jakewharton/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v4

    .line 556
    :goto_0
    monitor-exit p0

    return-object v2

    .line 543
    :cond_1
    if-nez v1, :cond_3

    .line 544
    :try_start_1
    new-instance v1, Lcom/jakewharton/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/jakewharton/DiskLruCache$Entry;
    invoke-direct {v1, p0, p1}, Lcom/jakewharton/DiskLruCache$Entry;-><init>(Lcom/jakewharton/DiskLruCache;Ljava/lang/String;)V

    .line 545
    .restart local v1    # "entry":Lcom/jakewharton/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_2
    new-instance v0, Lcom/jakewharton/DiskLruCache$Editor;

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/DiskLruCache$Editor;-><init>(Lcom/jakewharton/DiskLruCache;Lcom/jakewharton/DiskLruCache$Entry;)V

    .line 551
    .local v0, "editor":Lcom/jakewharton/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/jakewharton/DiskLruCache$Entry;->access$4(Lcom/jakewharton/DiskLruCache$Entry;Lcom/jakewharton/DiskLruCache$Editor;)V

    .line 554
    iget-object v2, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 555
    iget-object v2, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    move-object v2, v0

    .line 556
    goto :goto_0

    .line 546
    .end local v0    # "editor":Lcom/jakewharton/DiskLruCache$Editor;
    :cond_3
    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->currentEditor:Lcom/jakewharton/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/jakewharton/DiskLruCache$Entry;->access$0(Lcom/jakewharton/DiskLruCache$Entry;)Lcom/jakewharton/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v2, v4

    .line 547
    goto :goto_0

    .line 536
    .end local v1    # "entry":Lcom/jakewharton/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jakewharton/DiskLruCache;->checkNotClosed()V

    .line 695
    invoke-direct {p0}, Lcom/jakewharton/DiskLruCache;->trimToSize()V

    .line 696
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    monitor-exit p0

    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Snapshot;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 488
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jakewharton/DiskLruCache;->checkNotClosed()V

    .line 489
    invoke-direct {p0, p1}, Lcom/jakewharton/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jakewharton/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .local v8, "entry":Lcom/jakewharton/DiskLruCache$Entry;
    if-nez v8, :cond_0

    move-object v0, v2

    .line 524
    :goto_0
    monitor-exit p0

    return-object v0

    .line 495
    :cond_0
    :try_start_1
    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->readable:Z
    invoke-static {v8}, Lcom/jakewharton/DiskLruCache$Entry;->access$1(Lcom/jakewharton/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    .line 496
    goto :goto_0

    .line 504
    :cond_1
    iget v0, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    new-array v5, v0, [Ljava/io/InputStream;

    .line 506
    .local v5, "ins":[Ljava/io/InputStream;
    iget v0, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    new-array v6, v0, [Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    .local v6, "files":[Ljava/io/File;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    :try_start_2
    iget v0, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v9, v0, :cond_3

    .line 518
    :try_start_3
    iget v0, p0, Lcom/jakewharton/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jakewharton/DiskLruCache;->redundantOpCount:I

    .line 519
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "READ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 520
    invoke-direct {p0}, Lcom/jakewharton/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/jakewharton/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 524
    :cond_2
    new-instance v0, Lcom/jakewharton/DiskLruCache$Snapshot;

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v8}, Lcom/jakewharton/DiskLruCache$Entry;->access$7(Lcom/jakewharton/DiskLruCache$Entry;)J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/jakewharton/DiskLruCache$Snapshot;-><init>(Lcom/jakewharton/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 488
    .end local v5    # "ins":[Ljava/io/InputStream;
    .end local v6    # "files":[Ljava/io/File;
    .end local v8    # "entry":Lcom/jakewharton/DiskLruCache$Entry;
    .end local v9    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 510
    .restart local v5    # "ins":[Ljava/io/InputStream;
    .restart local v6    # "files":[Ljava/io/File;
    .restart local v8    # "entry":Lcom/jakewharton/DiskLruCache$Entry;
    .restart local v9    # "i":I
    :cond_3
    :try_start_4
    invoke-virtual {v8, v9}, Lcom/jakewharton/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    aput-object v0, v6, v9

    .line 511
    new-instance v0, Ljava/io/FileInputStream;

    aget-object v1, v6, v9

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v0, v5, v9
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 509
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 513
    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, "e":Ljava/io/FileNotFoundException;
    move-object v0, v2

    .line 515
    goto :goto_0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 571
    iget-wide v0, p0, Lcom/jakewharton/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public open()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 333
    iget-wide v1, p0, Lcom/jakewharton/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 334
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_0
    iget v1, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    if-gtz v1, :cond_1

    .line 337
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_1
    iput-wide v3, p0, Lcom/jakewharton/DiskLruCache;->size:J

    .line 342
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    :try_start_0
    invoke-virtual {p0}, Lcom/jakewharton/DiskLruCache;->readJournal()V

    .line 345
    invoke-virtual {p0}, Lcom/jakewharton/DiskLruCache;->processJournal()V

    .line 346
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/jakewharton/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 349
    .local v0, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiskLruCache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jakewharton/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 350
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/jakewharton/DiskLruCache;->delete()V

    .line 356
    .end local v0    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_2
    iget-object v1, p0, Lcom/jakewharton/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 357
    invoke-virtual {p0}, Lcom/jakewharton/DiskLruCache;->rebuildJournal()V

    goto :goto_0
.end method

.method public processJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    iget-object v3, p0, Lcom/jakewharton/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/jakewharton/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 426
    iget-object v3, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jakewharton/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 441
    return-void

    .line 427
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/DiskLruCache$Entry;

    .line 428
    .local v0, "entry":Lcom/jakewharton/DiskLruCache$Entry;
    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->currentEditor:Lcom/jakewharton/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache$Entry;->access$0(Lcom/jakewharton/DiskLruCache$Entry;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_2

    .line 429
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 430
    iget-wide v3, p0, Lcom/jakewharton/DiskLruCache;->size:J

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache$Entry;->access$6(Lcom/jakewharton/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/jakewharton/DiskLruCache;->size:J

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 433
    .end local v2    # "t":I
    :cond_2
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/jakewharton/DiskLruCache$Entry;->access$4(Lcom/jakewharton/DiskLruCache$Entry;Lcom/jakewharton/DiskLruCache$Editor;)V

    .line 434
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    if-lt v2, v3, :cond_3

    .line 438
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 435
    :cond_3
    invoke-virtual {v0, v2}, Lcom/jakewharton/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/jakewharton/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 436
    invoke-virtual {v0, v2}, Lcom/jakewharton/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/jakewharton/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public readJournal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, ", "

    .line 361
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/jakewharton/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 363
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "magic":Ljava/lang/String;
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "version":Ljava/lang/String;
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "valueCountString":Ljava/lang/String;
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "blank":Ljava/lang/String;
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 369
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 370
    iget v6, p0, Lcom/jakewharton/DiskLruCache;->appVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 371
    iget v6, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 372
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 373
    :cond_0
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 373
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v3    # "magic":Ljava/lang/String;
    .end local v4    # "valueCountString":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 385
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 386
    throw v6

    .line 379
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v3    # "magic":Ljava/lang/String;
    .restart local v4    # "valueCountString":Ljava/lang/String;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jakewharton/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v6

    .line 385
    invoke-static {v2}, Lcom/jakewharton/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 387
    return-void
.end method

.method public readJournalLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const-string v8, "unexpected journal line: "

    .line 390
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v5, :cond_0

    .line 392
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 395
    :cond_0
    aget-object v1, v2, v7

    .line 396
    .local v1, "key":Ljava/lang/String;
    aget-object v3, v2, v6

    const-string v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    array-length v3, v2

    if-ne v3, v5, :cond_2

    .line 397
    iget-object v3, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .end local p0    # "this":Lcom/jakewharton/DiskLruCache;
    :cond_1
    :goto_0
    return-void

    .line 401
    .restart local p0    # "this":Lcom/jakewharton/DiskLruCache;
    :cond_2
    iget-object v3, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/DiskLruCache$Entry;

    .line 402
    .local v0, "entry":Lcom/jakewharton/DiskLruCache$Entry;
    if-nez v0, :cond_3

    .line 403
    new-instance v0, Lcom/jakewharton/DiskLruCache$Entry;

    .end local v0    # "entry":Lcom/jakewharton/DiskLruCache$Entry;
    invoke-direct {v0, p0, v1}, Lcom/jakewharton/DiskLruCache$Entry;-><init>(Lcom/jakewharton/DiskLruCache;Ljava/lang/String;)V

    .line 404
    .restart local v0    # "entry":Lcom/jakewharton/DiskLruCache$Entry;
    iget-object v3, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_3
    aget-object v3, v2, v6

    const-string v4, "CLEAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, v2

    iget v4, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_4

    .line 408
    invoke-static {v0, v7}, Lcom/jakewharton/DiskLruCache$Entry;->access$3(Lcom/jakewharton/DiskLruCache$Entry;Z)V

    .line 409
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/jakewharton/DiskLruCache$Entry;->access$4(Lcom/jakewharton/DiskLruCache$Entry;Lcom/jakewharton/DiskLruCache$Editor;)V

    .line 410
    array-length v3, v2

    invoke-static {v2, v5, v3}, Lcom/jakewharton/DiskLruCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/jakewharton/DiskLruCache;
    check-cast p0, [Ljava/lang/String;

    # invokes: Lcom/jakewharton/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, p0}, Lcom/jakewharton/DiskLruCache$Entry;->access$5(Lcom/jakewharton/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 411
    .restart local p0    # "this":Lcom/jakewharton/DiskLruCache;
    :cond_4
    aget-object v3, v2, v6

    const-string v4, "DIRTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, v2

    if-ne v3, v5, :cond_5

    .line 412
    new-instance v3, Lcom/jakewharton/DiskLruCache$Editor;

    invoke-direct {v3, p0, v0}, Lcom/jakewharton/DiskLruCache$Editor;-><init>(Lcom/jakewharton/DiskLruCache;Lcom/jakewharton/DiskLruCache$Entry;)V

    invoke-static {v0, v3}, Lcom/jakewharton/DiskLruCache$Entry;->access$4(Lcom/jakewharton/DiskLruCache$Entry;Lcom/jakewharton/DiskLruCache$Editor;)V

    goto :goto_0

    .line 413
    :cond_5
    aget-object v3, v2, v6

    const-string v4, "READ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    array-length v3, v2

    if-eq v3, v5, :cond_1

    .line 416
    :cond_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public declared-synchronized rebuildJournal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "\n"

    .line 448
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 452
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/jakewharton/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 453
    .local v1, "writer":Ljava/io/Writer;
    const-string v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 454
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 455
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 456
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 457
    iget v2, p0, Lcom/jakewharton/DiskLruCache;->appVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 458
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 459
    iget v2, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 460
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 461
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 471
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 472
    iget-object v2, p0, Lcom/jakewharton/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/jakewharton/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 473
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/jakewharton/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    monitor-exit p0

    return-void

    .line 463
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/DiskLruCache$Entry;

    .line 464
    .local v0, "entry":Lcom/jakewharton/DiskLruCache$Entry;
    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->currentEditor:Lcom/jakewharton/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache$Entry;->access$0(Lcom/jakewharton/DiskLruCache$Entry;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache$Entry;->access$2(Lcom/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 448
    .end local v0    # "entry":Lcom/jakewharton/DiskLruCache$Entry;
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 467
    .restart local v0    # "entry":Lcom/jakewharton/DiskLruCache$Entry;
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache$Entry;->access$2(Lcom/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jakewharton/DiskLruCache;->checkNotClosed()V

    .line 651
    invoke-direct {p0, p1}, Lcom/jakewharton/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 652
    iget-object v3, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/DiskLruCache$Entry;

    .line 653
    .local v0, "entry":Lcom/jakewharton/DiskLruCache$Entry;
    if-eqz v0, :cond_0

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->currentEditor:Lcom/jakewharton/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache$Entry;->access$0(Lcom/jakewharton/DiskLruCache$Entry;)Lcom/jakewharton/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 654
    :cond_0
    const/4 v3, 0x0

    .line 674
    :goto_0
    monitor-exit p0

    return v3

    .line 657
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/jakewharton/DiskLruCache;->valueCount:I

    if-lt v2, v3, :cond_3

    .line 666
    iget v3, p0, Lcom/jakewharton/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jakewharton/DiskLruCache;->redundantOpCount:I

    .line 667
    iget-object v3, p0, Lcom/jakewharton/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "REMOVE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 668
    iget-object v3, p0, Lcom/jakewharton/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-direct {p0}, Lcom/jakewharton/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 671
    iget-object v3, p0, Lcom/jakewharton/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/jakewharton/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 674
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 658
    :cond_3
    invoke-virtual {v0, v2}, Lcom/jakewharton/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 659
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    .line 660
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    .end local v0    # "entry":Lcom/jakewharton/DiskLruCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 662
    .restart local v0    # "entry":Lcom/jakewharton/DiskLruCache$Entry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_4
    :try_start_2
    iget-wide v3, p0, Lcom/jakewharton/DiskLruCache;->size:J

    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache$Entry;->access$6(Lcom/jakewharton/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/jakewharton/DiskLruCache;->size:J

    .line 663
    # getter for: Lcom/jakewharton/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/jakewharton/DiskLruCache$Entry;->access$6(Lcom/jakewharton/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 657
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/jakewharton/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
