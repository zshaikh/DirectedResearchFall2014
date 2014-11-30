.class public Lcom/facebook/orca/images/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/images/ImageCacheKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/images/ImageCacheKey;",
            "Lcom/facebook/orca/images/ImageCache$CachedBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/images/ImageCache;->d:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/images/ImageCache;->e:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcom/facebook/orca/images/ImageCache;->a:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->b(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageCache;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 77
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageCache;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 78
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)I
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private a(Lcom/facebook/orca/images/ImageCacheKey;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/Base64;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p1, Lcom/facebook/orca/images/ImageCacheKey;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/orca/images/ImageCacheKey;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageCache;->d()Ljava/io/File;

    move-result-object v1

    .line 250
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private b(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 289
    iget-object v1, p0, Lcom/facebook/orca/images/ImageCache;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->c:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lcom/facebook/orca/images/ImageCache$CachedBitmap;

    invoke-direct {p0, p2}, Lcom/facebook/orca/images/ImageCache;->a(Landroid/graphics/Bitmap;)I

    move-result v3

    invoke-direct {v2, p1, p2, v3}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;-><init>(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;I)V

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget v0, p0, Lcom/facebook/orca/images/ImageCache;->f:I

    invoke-direct {p0, p2}, Lcom/facebook/orca/images/ImageCache;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/orca/images/ImageCache;->f:I

    .line 293
    iget v0, p0, Lcom/facebook/orca/images/ImageCache;->f:I

    const/high16 v2, 0x380000

    if-le v0, v2, :cond_3

    .line 294
    const-string v0, "orca:ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning out in memory cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/facebook/orca/images/ImageCache;->f:I

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/images/ImageCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 297
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;

    .line 300
    invoke-static {v0}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->b(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->a(Lcom/facebook/orca/images/ImageCache$CachedBitmap;J)J

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 302
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/orca/images/ImageCache$ExpirationComparator;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/facebook/orca/images/ImageCache$ExpirationComparator;-><init>(Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/images/ImageCache$1;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 304
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;

    .line 305
    iget-object v3, p0, Lcom/facebook/orca/images/ImageCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->c(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget v3, p0, Lcom/facebook/orca/images/ImageCache;->f:I

    invoke-static {v0}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->d(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)I

    move-result v0

    sub-int v0, v3, v0

    iput v0, p0, Lcom/facebook/orca/images/ImageCache;->f:I

    .line 307
    iget v0, p0, Lcom/facebook/orca/images/ImageCache;->f:I

    const/high16 v3, 0x300000

    if-ge v0, v3, :cond_1

    .line 311
    :cond_2
    const-string v0, "orca:ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished cleaning out in memory cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/facebook/orca/images/ImageCache;->f:I

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/images/ImageCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    return-void
.end method

.method private d()Ljava/io/File;
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 255
    new-instance v1, Ljava/io/File;

    const-string v2, "images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 259
    :cond_0
    return-object v1
.end method

.method private f(Lcom/facebook/orca/images/ImageCacheKey;)V
    .locals 7

    .prologue
    .line 220
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->h(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;

    move-result-object v0

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/32 v5, 0x1b7740

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 224
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;
    .locals 1

    .prologue
    .line 235
    const-string v0, ".png"

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private h(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;
    .locals 1

    .prologue
    .line 239
    const-string v0, ".lru"

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->g(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->f(Lcom/facebook/orca/images/ImageCacheKey;)V

    .line 86
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    .line 93
    :goto_0
    return-object v0

    .line 88
    :cond_0
    monitor-exit v0

    move-object v0, v3

    .line 90
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 93
    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/images/ImageCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 271
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/orca/images/ImageCache;->f:I

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/facebook/orca/images/ImageCacheKey;J)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public a(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;)V

    .line 158
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->g(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 162
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 163
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 164
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->f(Lcom/facebook/orca/images/ImageCacheKey;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 172
    return-void

    .line 167
    :catch_0
    move-exception v1

    .line 169
    const-string v2, "orca:ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 165
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public b(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/images/ImageCache$CachedBitmap;

    .line 99
    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->a()V

    .line 101
    invoke-static {p0}, Lcom/facebook/orca/images/ImageCache$CachedBitmap;->a(Lcom/facebook/orca/images/ImageCache$CachedBitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/images/ImageCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 278
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/orca/images/ImageCache;->f:I

    .line 279
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-direct {p0}, Lcom/facebook/orca/images/ImageCache;->d()Ljava/io/File;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 283
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 284
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 286
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/facebook/orca/images/ImageCache;->f:I

    return v0
.end method

.method public c(Lcom/facebook/orca/images/ImageCacheKey;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->g(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    move v0, v1

    .line 110
    goto :goto_0
.end method

.method public d(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-virtual {p0, p1}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->f(Lcom/facebook/orca/images/ImageCacheKey;)V

    .line 139
    :goto_0
    return-object v0

    .line 124
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageCache;->g(Lcom/facebook/orca/images/ImageCacheKey;)Ljava/io/File;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_1

    .line 129
    invoke-direct {p0, p1, v1}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;)V

    .line 130
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 133
    :cond_1
    monitor-exit v0

    move-object v0, v3

    .line 136
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 139
    goto :goto_0
.end method

.method public e(Lcom/facebook/orca/images/ImageCacheKey;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCache;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 145
    if-nez v0, :cond_0

    move v0, v5

    .line 152
    :goto_0
    return v0

    .line 148
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/images/ImageCache;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v5

    .line 152
    goto :goto_0
.end method
