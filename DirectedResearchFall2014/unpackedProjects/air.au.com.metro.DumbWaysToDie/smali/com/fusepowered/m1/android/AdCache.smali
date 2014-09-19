.class final Lcom/fusepowered/m1/android/AdCache;
.super Ljava/lang/Object;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/AdCache$Iterator;,
        Lcom/fusepowered/m1/android/AdCache$AdCacheTaskListener;
    }
.end annotation


# static fields
.field private static final CACHED_AD_FILE:Ljava/lang/String; = "ad.dat"

.field private static final CACHE_INCOMPLETE_PREFIX:Ljava/lang/String; = "incompleteDownload_"

.field private static final CACHE_PREFIX:Ljava/lang/String; = "nextCachedAd_"

.field private static final CACHE_PREFIX_APID:Ljava/lang/String; = "nextCachedAd_apids"

.field private static final LOCK_FILE:Ljava/lang/String; = "ad.lock"

.field static final PRIORITY_FETCH:I = 0x3

.field static final PRIORITY_PRECACHE:I = 0x1

.field static final PRIORITY_REFRESH:I = 0x2

.field static final PRIVATE_CACHE_DIR:Ljava/lang/String; = ".mmsyscache"

.field private static apidListSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedVideoList:Ljava/lang/String;

.field private static cachedVideoListLoaded:Z

.field private static cachedVideoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static incompleteDownloadHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static incompleteDownloadHashMapLoaded:Z

.field static isExternalEnabled:Z

.field private static nextCachedAdHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static nextCachedAdHashMapLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/m1/android/AdCache;->isExternalEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static declared-synchronized cachedVideoWasAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "acid"

    .prologue
    .line 74
    const-class v0, Lcom/fusepowered/m1/android/AdCache;

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 76
    :try_start_0
    sget-boolean v1, Lcom/fusepowered/m1/android/AdCache;->cachedVideoListLoaded:Z

    if-nez v1, :cond_0

    .line 77
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    .line 78
    :cond_0
    sget-object v1, Lcom/fusepowered/m1/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 79
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/fusepowered/m1/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    .line 80
    :cond_1
    sget-object v1, Lcom/fusepowered/m1/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v1, 0x0

    sput-object v1, Lcom/fusepowered/m1/android/AdCache;->cachedVideoList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_2
    monitor-exit v0

    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized cachedVideoWasRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "acid"

    .prologue
    .line 93
    const-class v0, Lcom/fusepowered/m1/android/AdCache;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 95
    :try_start_0
    sget-boolean v1, Lcom/fusepowered/m1/android/AdCache;->cachedVideoListLoaded:Z

    if-nez v1, :cond_0

    .line 96
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    .line 97
    :cond_0
    sget-object v1, Lcom/fusepowered/m1/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 99
    sget-object v1, Lcom/fusepowered/m1/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 100
    const/4 v1, 0x0

    sput-object v1, Lcom/fusepowered/m1/android/AdCache;->cachedVideoList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_1
    monitor-exit v0

    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static cleanCache(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 429
    new-instance v0, Lcom/fusepowered/m1/android/AdCache$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/AdCache$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/fusepowered/m1/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 439
    return-void
.end method

.method static cleanUpExpiredAds(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 444
    const/4 v0, 0x1

    new-instance v1, Lcom/fusepowered/m1/android/AdCache$4;

    invoke-direct {v1, p0}, Lcom/fusepowered/m1/android/AdCache$4;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/fusepowered/m1/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/fusepowered/m1/android/AdCache$Iterator;)V

    .line 468
    return-void
.end method

.method static cleanupCache(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 472
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->cleanupInternalCache(Landroid/content/Context;)V

    .line 473
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->cleanupExternalCache(Landroid/content/Context;)V

    .line 477
    :cond_0
    return-void
.end method

.method static cleanupDirectory(Ljava/io/File;J)V
    .locals 9
    .parameter "file"
    .parameter "timeout"

    .prologue
    .line 506
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 508
    .local v1, entries:[Ljava/io/File;
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 510
    .local v2, entry:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v5, v5, p1

    if-lez v5, :cond_0

    .line 513
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 508
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 515
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 519
    :try_start_0
    invoke-static {v2, p1, p2}, Lcom/fusepowered/m1/android/AdCache;->cleanupDirectory(Ljava/io/File;J)V

    .line 520
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    .line 521
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 523
    :catch_0
    move-exception v5

    goto :goto_1

    .line 528
    .end local v2           #entry:Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static cleanupExternalCache(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 493
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 494
    .local v0, externalCacheDir:Ljava/io/File;
    if-nez v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    invoke-static {p0}, Lcom/fusepowered/m1/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/fusepowered/m1/android/HandShake;

    move-result-object v1

    .line 499
    .local v1, handShake:Lcom/fusepowered/m1/android/HandShake;
    iget-wide v2, v1, Lcom/fusepowered/m1/android/HandShake;->creativeCacheTimeout:J

    invoke-static {v0, v2, v3}, Lcom/fusepowered/m1/android/AdCache;->cleanupDirectory(Ljava/io/File;J)V

    goto :goto_0
.end method

.method private static cleanupInternalCache(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 481
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 482
    .local v1, internalCacheDir:Ljava/io/File;
    if-nez v1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    invoke-static {p0}, Lcom/fusepowered/m1/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/fusepowered/m1/android/HandShake;

    move-result-object v0

    .line 487
    .local v0, handShake:Lcom/fusepowered/m1/android/HandShake;
    iget-wide v2, v0, Lcom/fusepowered/m1/android/HandShake;->creativeCacheTimeout:J

    invoke-static {v1, v2, v3}, Lcom/fusepowered/m1/android/AdCache;->cleanupDirectory(Ljava/io/File;J)V

    goto :goto_0
.end method

.method static deleteFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 937
    invoke-static {p0, p1}, Lcom/fusepowered/m1/android/AdCache;->getCachedAdFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 938
    .local v0, deleteFile:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 942
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z
    .locals 8
    .parameter "urlString"
    .parameter "name"
    .parameter "path"
    .parameter "context"

    .prologue
    .line 722
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    const-string p0, "No Url ..."

    .end local p0
    invoke-static {p0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 725
    const/4 p0, 0x0

    .line 809
    .end local p1
    .end local p2
    .end local p3
    :cond_0
    :goto_0
    return p0

    .line 727
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 729
    .local v2, file:Ljava/io/File;
    const-string p2, "Downloading Component: %s from %s"

    .end local p2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {p2, v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    if-lez p2, :cond_2

    .line 733
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " already exists, skipping..."

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 734
    const/4 p0, 0x1

    goto :goto_0

    .line 737
    .restart local p0
    .restart local p1
    :cond_2
    const/4 v3, 0x0

    .line 738
    .local v3, inStream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 739
    .local v4, out:Ljava/io/FileOutputStream;
    const-wide/16 v0, -0x1

    .line 742
    .local v0, contentLength:J
    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 743
    .local p2, connectURL:Ljava/net/URL;
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 744
    .end local p0
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 745
    .local p0, conn:Ljava/net/HttpURLConnection;
    const/16 p2, 0x7530

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 746
    .end local p2           #connectURL:Ljava/net/URL;
    const-string p2, "GET"

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 748
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object p2

    .line 749
    .end local v3           #inStream:Ljava/io/InputStream;
    .local p2, inStream:Ljava/io/InputStream;
    :try_start_1
    const-string v3, "Content-Length"

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 750
    .local p0, temp:Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 751
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 752
    :cond_3
    if-nez p2, :cond_6

    .line 754
    const-string p0, "Connection stream is null downloading %s."

    .end local p0           #temp:Ljava/lang/String;
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 v3, 0x0

    aput-object p1, p3, v3

    invoke-static {p0, p3}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 755
    const/4 p0, 0x0

    .line 794
    if-eqz p2, :cond_4

    .line 795
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 796
    :cond_4
    if-eqz v4, :cond_0

    .line 797
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 799
    :catch_0
    move-exception p0

    .line 801
    .local p0, ex:Ljava/io/IOException;
    const-string p1, "Content caching error: %s"

    .end local p1
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .end local p2           #inStream:Ljava/io/InputStream;
    const/4 p3, 0x0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    aput-object p0, p2, p3

    invoke-static {p1, p2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    if-eqz v2, :cond_5

    .line 803
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 804
    :cond_5
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 759
    .local p0, temp:Ljava/lang/String;
    .restart local p1
    .restart local p2       #inStream:Ljava/io/InputStream;
    .restart local p3
    :cond_6
    :try_start_3
    invoke-static {p3}, Lcom/fusepowered/m1/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .end local p0           #temp:Ljava/lang/String;
    invoke-static {p3, p0}, Lcom/fusepowered/m1/android/AdCache;->isInternalDir(Landroid/content/Context;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 761
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    invoke-virtual {p3, p0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object p0

    .end local v4           #out:Ljava/io/FileOutputStream;
    .local p0, out:Ljava/io/FileOutputStream;
    move-object v3, p0

    .line 765
    .end local p0           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :goto_1
    const/16 p0, 0x1000

    :try_start_4
    new-array p0, p0, [B

    .line 767
    .end local p3
    .local p0, buf:[B
    :goto_2
    invoke-virtual {p2, p0}, Ljava/io/InputStream;->read([B)I

    move-result p3

    .local p3, numread:I
    if-lez p3, :cond_b

    .line 768
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 786
    .end local p0           #buf:[B
    .end local p3           #numread:I
    :catch_1
    move-exception p0

    move-wide v6, v0

    .end local v0           #contentLength:J
    .local v6, contentLength:J
    move-object v1, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v1, out:Ljava/io/FileOutputStream;
    move-object v0, p2

    .end local p2           #inStream:Ljava/io/InputStream;
    .local v0, inStream:Ljava/io/InputStream;
    move-wide p2, v6

    .line 788
    .end local v6           #contentLength:J
    .local p0, e:Ljava/lang/Exception;
    .local p2, contentLength:J
    :goto_3
    :try_start_5
    const-string v3, "Exception downloading component %s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .end local p1
    move-result-object p0

    .end local p0           #e:Ljava/lang/Exception;
    aput-object p0, v4, p1

    invoke-static {v3, v4}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 794
    if-eqz v0, :cond_7

    .line 795
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 796
    :cond_7
    if-eqz v1, :cond_8

    .line 797
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_8
    move-wide p0, p2

    .end local p2           #contentLength:J
    .local p0, contentLength:J
    move-object p3, v1

    .end local v1           #out:Ljava/io/FileOutputStream;
    .local p3, out:Ljava/io/FileOutputStream;
    move-object p2, v0

    .line 807
    .end local v0           #inStream:Ljava/io/InputStream;
    .local p2, inStream:Ljava/io/InputStream;
    :goto_4
    if-eqz v2, :cond_9

    .line 808
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 809
    :cond_9
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 764
    .end local p0           #contentLength:J
    .local v0, contentLength:J
    .restart local v4       #out:Ljava/io/FileOutputStream;
    .restart local p1
    .local p3, context:Landroid/content/Context;
    :cond_a
    :try_start_7
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .end local v4           #out:Ljava/io/FileOutputStream;
    .local p0, out:Ljava/io/FileOutputStream;
    move-object v3, p0

    .end local p0           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 770
    .local p0, buf:[B
    .local p3, numread:I
    :cond_b
    if-eqz v2, :cond_10

    .line 775
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result-wide v4

    cmp-long p0, v4, v0

    if-eqz p0, :cond_c

    .end local p0           #buf:[B
    const-wide/16 v4, -0x1

    cmp-long p0, v0, v4

    if-nez p0, :cond_f

    .line 776
    :cond_c
    const/4 p0, 0x1

    .line 794
    if-eqz p2, :cond_d

    .line 795
    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 796
    :cond_d
    if-eqz v3, :cond_0

    .line 797
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 799
    :catch_2
    move-exception p0

    .line 801
    .local p0, ex:Ljava/io/IOException;
    const-string p1, "Content caching error: %s"

    .end local p1
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .end local p2           #inStream:Ljava/io/InputStream;
    const/4 p3, 0x0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .end local p3           #numread:I
    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    aput-object p0, p2, p3

    invoke-static {p1, p2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    if-eqz v2, :cond_e

    .line 803
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 804
    :cond_e
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 778
    .restart local p1
    .restart local p2       #inStream:Ljava/io/InputStream;
    .restart local p3       #numread:I
    :cond_f
    :try_start_a
    const-string p0, "Content-Length does not match actual length."

    invoke-static {p0}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 794
    .end local p3           #numread:I
    :cond_10
    :goto_5
    if-eqz p2, :cond_11

    .line 795
    :try_start_b
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 796
    :cond_11
    if-eqz v3, :cond_12

    .line 797
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_12
    move-wide p0, v0

    .end local v0           #contentLength:J
    .end local p1
    .local p0, contentLength:J
    move-object p3, v3

    .line 805
    .end local v3           #out:Ljava/io/FileOutputStream;
    .local p3, out:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 780
    .end local p0           #contentLength:J
    .restart local v0       #contentLength:J
    .restart local v3       #out:Ljava/io/FileOutputStream;
    .restart local p1
    .local p3, numread:I
    :catch_3
    move-exception p0

    .line 782
    .local p0, e:Ljava/lang/SecurityException;
    :try_start_c
    const-string p3, "Exception downloading component %s: %s"

    .end local p3           #numread:I
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/lang/SecurityException;
    aput-object p0, v4, v5

    invoke-static {p3, v4}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_5

    .line 792
    :catchall_0
    move-exception p0

    move-object p3, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .local p3, out:Ljava/io/FileOutputStream;
    move-wide v6, v0

    .end local v0           #contentLength:J
    .restart local v6       #contentLength:J
    move-object v0, p0

    move-wide p0, v6

    .line 794
    .end local v6           #contentLength:J
    .end local p1
    .local p0, contentLength:J
    :goto_6
    if-eqz p2, :cond_13

    .line 795
    :try_start_d
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 796
    :cond_13
    if-eqz p3, :cond_14

    .line 797
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 804
    :cond_14
    throw v0

    .line 799
    .end local p0           #contentLength:J
    .end local p3           #out:Ljava/io/FileOutputStream;
    .restart local v0       #contentLength:J
    .restart local v3       #out:Ljava/io/FileOutputStream;
    .restart local p1
    :catch_4
    move-exception p0

    .line 801
    .local p0, ex:Ljava/io/IOException;
    const-string p1, "Content caching error: %s"

    .end local p1
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .end local p2           #inStream:Ljava/io/InputStream;
    const/4 p3, 0x0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    aput-object p0, p2, p3

    invoke-static {p1, p2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    if-eqz v2, :cond_15

    .line 803
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 804
    :cond_15
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 799
    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v0, inStream:Ljava/io/InputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    .local p2, contentLength:J
    :catch_5
    move-exception p0

    .line 801
    .restart local p0       #ex:Ljava/io/IOException;
    const-string p1, "Content caching error: %s"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .end local p2           #contentLength:J
    const/4 p3, 0x0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    aput-object p0, p2, p3

    invoke-static {p1, p2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    if-eqz v2, :cond_16

    .line 803
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 804
    :cond_16
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 799
    .end local v0           #inStream:Ljava/io/InputStream;
    .end local v1           #out:Ljava/io/FileOutputStream;
    .local p0, contentLength:J
    .local p2, inStream:Ljava/io/InputStream;
    .restart local p3       #out:Ljava/io/FileOutputStream;
    :catch_6
    move-exception p0

    .line 801
    .local p0, ex:Ljava/io/IOException;
    const-string p1, "Content caching error: %s"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .end local p2           #inStream:Ljava/io/InputStream;
    const/4 p3, 0x0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .end local p3           #out:Ljava/io/FileOutputStream;
    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    aput-object p0, p2, p3

    invoke-static {p1, p2}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    if-eqz v2, :cond_17

    .line 803
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 804
    :cond_17
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 792
    .local v0, contentLength:J
    .local v3, inStream:Ljava/io/InputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    .restart local p1
    .local p3, context:Landroid/content/Context;
    :catchall_1
    move-exception p0

    move-object p3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .local p3, out:Ljava/io/FileOutputStream;
    move-object p2, v3

    .end local v3           #inStream:Ljava/io/InputStream;
    .restart local p2       #inStream:Ljava/io/InputStream;
    move-object v6, p0

    move-wide p0, v0

    .end local v0           #contentLength:J
    .end local p1
    .local p0, contentLength:J
    move-object v0, v6

    goto :goto_6

    .end local p0           #contentLength:J
    .end local p3           #out:Ljava/io/FileOutputStream;
    .restart local v0       #contentLength:J
    .restart local v4       #out:Ljava/io/FileOutputStream;
    .restart local p1
    :catchall_2
    move-exception p0

    move-object p3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local p3       #out:Ljava/io/FileOutputStream;
    move-wide v6, v0

    .end local v0           #contentLength:J
    .restart local v6       #contentLength:J
    move-object v0, p0

    move-wide p0, v6

    .end local v6           #contentLength:J
    .end local p1
    .restart local p0       #contentLength:J
    goto :goto_6

    .end local p0           #contentLength:J
    .end local p3           #out:Ljava/io/FileOutputStream;
    .local v0, inStream:Ljava/io/InputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    .local p2, contentLength:J
    :catchall_3
    move-exception p0

    move-object v6, p0

    move-wide p0, p2

    .end local p2           #contentLength:J
    .restart local p0       #contentLength:J
    move-object p3, v1

    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local p3       #out:Ljava/io/FileOutputStream;
    move-object p2, v0

    .end local v0           #inStream:Ljava/io/InputStream;
    .local p2, inStream:Ljava/io/InputStream;
    move-object v0, v6

    goto :goto_6

    .line 786
    .end local p0           #contentLength:J
    .end local p2           #inStream:Ljava/io/InputStream;
    .local v0, contentLength:J
    .restart local v3       #inStream:Ljava/io/InputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    .restart local p1
    .local p3, context:Landroid/content/Context;
    :catch_7
    move-exception p0

    move-wide p2, v0

    .end local v0           #contentLength:J
    .end local p3           #context:Landroid/content/Context;
    .local p2, contentLength:J
    move-object v1, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    move-object v0, v3

    .end local v3           #inStream:Ljava/io/InputStream;
    .local v0, inStream:Ljava/io/InputStream;
    goto/16 :goto_3

    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v0, contentLength:J
    .restart local v4       #out:Ljava/io/FileOutputStream;
    .local p2, inStream:Ljava/io/InputStream;
    :catch_8
    move-exception p0

    move-wide v6, v0

    .end local v0           #contentLength:J
    .restart local v6       #contentLength:J
    move-object v1, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    move-object v0, p2

    .end local p2           #inStream:Ljava/io/InputStream;
    .local v0, inStream:Ljava/io/InputStream;
    move-wide p2, v6

    .end local v6           #contentLength:J
    .local p2, contentLength:J
    goto/16 :goto_3
.end method

.method static downloadComponentToCache(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .parameter "urlString"
    .parameter "name"
    .parameter "context"

    .prologue
    .line 709
    invoke-static {p2}, Lcom/fusepowered/m1/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/fusepowered/m1/android/AdCache;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "context"

    .prologue
    .line 594
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 598
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCachedAdFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    .line 641
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ad.dat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 642
    .local v4, fileName:Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v7

    .line 643
    .local v7, isExternalStateMounted:Z
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 644
    .local v2, cacheDir:Ljava/io/File;
    const/4 v0, 0x0

    .line 648
    .local v0, adFile:Ljava/io/File;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 650
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v0           #adFile:Ljava/io/File;
    .local v1, adFile:Ljava/io/File;
    move-object v0, v1

    .line 652
    .end local v1           #adFile:Ljava/io/File;
    .restart local v0       #adFile:Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 655
    :cond_1
    if-nez v7, :cond_2

    .line 657
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 659
    .local v5, internalCacheDir:Ljava/io/File;
    if-eqz v5, :cond_2

    .line 661
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ".mmsyscache"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 662
    .local v6, internalFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v6

    .line 675
    .end local v5           #internalCacheDir:Ljava/io/File;
    .end local v6           #internalFile:Ljava/io/File;
    :goto_0
    return-object v8

    .line 670
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 672
    .local v3, e:Ljava/lang/Exception;
    invoke-static {v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

    .line 673
    const/4 v8, 0x0

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    move-object v8, v0

    .line 675
    goto :goto_0
.end method

.method static declared-synchronized getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 112
    const-class v4, Lcom/fusepowered/m1/android/AdCache;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/fusepowered/m1/android/AdCache;->cachedVideoList:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 114
    sget-boolean v5, Lcom/fusepowered/m1/android/AdCache;->cachedVideoListLoaded:Z

    if-nez v5, :cond_0

    .line 116
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 118
    .local v1, hashSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x2

    new-instance v6, Lcom/fusepowered/m1/android/AdCache$1;

    invoke-direct {v6, p0, v1}, Lcom/fusepowered/m1/android/AdCache$1;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    invoke-static {p0, v5, v6}, Lcom/fusepowered/m1/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/fusepowered/m1/android/AdCache$Iterator;)V

    .line 128
    sput-object v1, Lcom/fusepowered/m1/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    .line 129
    const/4 v5, 0x1

    sput-boolean v5, Lcom/fusepowered/m1/android/AdCache;->cachedVideoListLoaded:Z

    .line 132
    .end local v1           #hashSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    sget-object v5, Lcom/fusepowered/m1/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/fusepowered/m1/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v3, stringBuilder:Ljava/lang/StringBuilder;
    sget-object v5, Lcom/fusepowered/m1/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, acid:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast v0, Ljava/lang/String;

    .end local v0           #acid:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #stringBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 140
    .restart local v0       #acid:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #stringBuilder:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    check-cast v0, Ljava/lang/String;

    .end local v0           #acid:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fusepowered/m1/android/AdCache;->cachedVideoList:Ljava/lang/String;

    .line 145
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_3
    sget-object v5, Lcom/fusepowered/m1/android/AdCache;->cachedVideoList:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-object v5
.end method

.method static getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 577
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 578
    .local v0, dir:Ljava/io/File;
    const/4 v1, 0x0

    .line 579
    .local v1, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 581
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 583
    .restart local v1       #file:Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method private static getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "context"

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, extCacheDir:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 605
    .local v1, externalStorageDir:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 607
    new-instance v0, Ljava/io/File;

    .end local v0           #extCacheDir:Ljava/io/File;
    const-string v2, ".mmsyscache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 608
    .restart local v0       #extCacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 610
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 611
    const/4 v0, 0x0

    .line 614
    :cond_0
    return-object v0
.end method

.method static declared-synchronized getIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "adName"

    .prologue
    .line 247
    const-class v0, Lcom/fusepowered/m1/android/AdCache;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/fusepowered/m1/android/AdCache;->incompleteDownloadHashMapLoaded:Z

    if-nez v1, :cond_0

    .line 248
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->loadIncompleteDownloadHashMap(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .end local p0
    :goto_0
    monitor-exit v0

    return-object v1

    .restart local p0
    :cond_1
    :try_start_1
    sget-object v1, Lcom/fusepowered/m1/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "context"

    .prologue
    .line 619
    if-nez p0, :cond_0

    .line 620
    const/4 v1, 0x0

    .line 627
    :goto_0
    return-object v1

    .line 621
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".mmsyscache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 622
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 624
    const/4 v0, 0x0

    :cond_1
    move-object v1, v0

    .line 627
    goto :goto_0
.end method

.method static declared-synchronized getNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "adName"

    .prologue
    .line 187
    const-class v0, Lcom/fusepowered/m1/android/AdCache;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/fusepowered/m1/android/AdCache;->nextCachedAdHashMapLoaded:Z

    if-nez v1, :cond_0

    .line 188
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->loadNextCachedAdHashMap(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .end local p0
    :goto_0
    monitor-exit v0

    return-object v1

    .restart local p0
    :cond_1
    :try_start_1
    sget-object v1, Lcom/fusepowered/m1/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static hasDownloadFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 588
    invoke-static {p0, p1}, Lcom/fusepowered/m1/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 589
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isExternalMounted()Z
    .locals 2

    .prologue
    .line 963
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isExternalStorageAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 954
    if-nez p0, :cond_0

    move v1, v2

    .line 957
    :goto_0
    return v1

    .line 956
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, storageState:Ljava/lang/String;
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/fusepowered/m1/android/AdCache;->isExternalEnabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method static isInternalDir(Landroid/content/Context;Ljava/io/File;)Z
    .locals 2
    .parameter "context"
    .parameter "dir"

    .prologue
    .line 948
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 949
    .local v0, internalDir:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static iterateCachedAds(Landroid/content/Context;ILcom/fusepowered/m1/android/AdCache$Iterator;)V
    .locals 19
    .parameter "context"
    .parameter "mode"
    .parameter "iterator"

    .prologue
    .line 341
    invoke-static/range {p0 .. p0}, Lcom/fusepowered/m1/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    .line 343
    .local v8, cachedDir:Ljava/io/File;
    const/4 v14, 0x0

    .line 348
    .local v14, objectInputStream:Ljava/io/ObjectInputStream;
    const/16 p0, 0x0

    .line 350
    .local p0, ad:Lcom/fusepowered/m1/android/CachedAd;
    if-eqz v8, :cond_3

    .line 352
    new-instance v9, Lcom/fusepowered/m1/android/AdCache$2;

    invoke-direct {v9}, Lcom/fusepowered/m1/android/AdCache$2;-><init>()V

    invoke-virtual {v8, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v8

    .line 360
    .local v8, adFiles:[Ljava/io/File;
    if-eqz v8, :cond_3

    .line 362
    move-object/from16 v16, v8

    .local v16, arr$:[Ljava/io/File;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move/from16 v17, v8

    .end local v8           #i$:I
    .local v17, i$:I
    move-object v8, v14

    .end local v14           #objectInputStream:Ljava/io/ObjectInputStream;
    .local v8, objectInputStream:Ljava/io/ObjectInputStream;
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    aget-object v15, v16, v17

    .line 366
    .local v15, adFile:Ljava/io/File;
    if-eqz v15, :cond_0

    :try_start_0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v9

    if-nez v9, :cond_2

    .line 411
    :cond_0
    if-eqz v8, :cond_9

    .line 413
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    const/4 v14, 0x0

    .line 362
    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v14       #objectInputStream:Ljava/io/ObjectInputStream;
    :cond_1
    :goto_1
    add-int/lit8 v8, v17, 0x1

    .end local v17           #i$:I
    .local v8, i$:I
    move/from16 v17, v8

    .end local v8           #i$:I
    .restart local v17       #i$:I
    move-object v8, v14

    .end local v14           #objectInputStream:Ljava/io/ObjectInputStream;
    .local v8, objectInputStream:Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 417
    :catch_0
    move-exception v9

    move-object v14, v8

    .line 419
    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v14       #objectInputStream:Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 368
    .end local v14           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v8       #objectInputStream:Ljava/io/ObjectInputStream;
    :cond_2
    if-nez p1, :cond_5

    .line 370
    :try_start_2
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/AdCache$Iterator;->callback(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v9

    if-nez v9, :cond_4

    .line 411
    if-eqz v8, :cond_a

    .line 413
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 414
    const/4 v14, 0x0

    .line 424
    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .end local v15           #adFile:Ljava/io/File;
    .end local v16           #arr$:[Ljava/io/File;
    .end local v17           #i$:I
    .end local v18           #len$:I
    .end local p1
    .restart local v14       #objectInputStream:Ljava/io/ObjectInputStream;
    :cond_3
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/fusepowered/m1/android/AdCache$Iterator;->done()V

    .line 425
    return-void

    .line 417
    .end local v14           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v8       #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v15       #adFile:Ljava/io/File;
    .restart local v16       #arr$:[Ljava/io/File;
    .restart local v17       #i$:I
    .restart local v18       #len$:I
    .restart local p1
    :catch_1
    move-exception p1

    .end local p1
    move-object v14, v8

    .line 419
    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v14       #objectInputStream:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 411
    .end local v14           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v8       #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local p1
    :cond_4
    if-eqz v8, :cond_9

    .line 413
    :try_start_4
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 414
    const/4 v14, 0x0

    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v14       #objectInputStream:Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 417
    .end local v14           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v8       #objectInputStream:Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v9

    move-object v14, v8

    .line 419
    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v14       #objectInputStream:Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 375
    .end local v14           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v8       #objectInputStream:Ljava/io/ObjectInputStream;
    :cond_5
    :try_start_5
    new-instance v14, Ljava/io/ObjectInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 377
    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v14       #objectInputStream:Ljava/io/ObjectInputStream;
    :try_start_6
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v9

    .line 378
    .local v9, type:I
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Date;

    .line 379
    .local v10, expiration:Ljava/util/Date;
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 380
    .local v11, acid:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v12

    .line 381
    .local v12, deferredViewStart:J
    const/4 v8, 0x1

    move/from16 v0, p1

    move v1, v8

    if-ne v0, v1, :cond_6

    .line 383
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p2

    move-object v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-wide v5, v12

    move-object v7, v14

    invoke-virtual/range {v0 .. v7}, Lcom/fusepowered/m1/android/AdCache$Iterator;->callback(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;JLjava/io/ObjectInputStream;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 385
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 386
    const/4 v14, 0x0

    .line 411
    if-eqz v14, :cond_3

    .line 413
    :try_start_7
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 414
    const/4 v14, 0x0

    goto :goto_2

    .line 393
    :cond_6
    :try_start_8
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/fusepowered/m1/android/CachedAd;

    move-object/from16 p0, v0

    .line 394
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/AdCache$Iterator;->callback(Lcom/fusepowered/m1/android/CachedAd;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 396
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 397
    const/4 v14, 0x0

    .line 411
    if-eqz v14, :cond_3

    .line 413
    :try_start_9
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 414
    const/4 v14, 0x0

    goto :goto_2

    .line 411
    :cond_7
    if-eqz v14, :cond_1

    .line 413
    :try_start_a
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 414
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 402
    .end local v9           #type:I
    .end local v10           #expiration:Ljava/util/Date;
    .end local v11           #acid:Ljava/lang/String;
    .end local v12           #deferredViewStart:J
    .end local v14           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v8       #objectInputStream:Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v9

    move-object v14, v8

    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v14       #objectInputStream:Ljava/io/ObjectInputStream;
    move-object v8, v9

    .line 404
    .local v8, e:Ljava/lang/Exception;
    :goto_3
    :try_start_b
    const-string v9, "There was a problem reading the cached ad %s."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    invoke-static {v8}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 411
    if-eqz v14, :cond_1

    .line 413
    :try_start_c
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 414
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 409
    .end local v14           #objectInputStream:Ljava/io/ObjectInputStream;
    .local v8, objectInputStream:Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception p1

    move-object v14, v8

    .line 411
    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .end local p1
    .restart local v14       #objectInputStream:Ljava/io/ObjectInputStream;
    :goto_4
    if-eqz v14, :cond_8

    .line 413
    :try_start_d
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 414
    const/4 v14, 0x0

    .line 419
    .end local p0           #ad:Lcom/fusepowered/m1/android/CachedAd;
    :cond_8
    :goto_5
    throw p1

    .line 417
    .restart local v9       #type:I
    .restart local v10       #expiration:Ljava/util/Date;
    .restart local v11       #acid:Ljava/lang/String;
    .restart local v12       #deferredViewStart:J
    .restart local p0       #ad:Lcom/fusepowered/m1/android/CachedAd;
    .restart local p1
    :catch_4
    move-exception p1

    goto/16 :goto_2

    :catch_5
    move-exception p1

    goto/16 :goto_2

    :catch_6
    move-exception v8

    goto/16 :goto_1

    .end local v9           #type:I
    .end local v10           #expiration:Ljava/util/Date;
    .end local v11           #acid:Ljava/lang/String;
    .end local v12           #deferredViewStart:J
    .local v8, e:Ljava/lang/Exception;
    :catch_7
    move-exception v8

    goto/16 :goto_1

    .end local v8           #e:Ljava/lang/Exception;
    .end local p1
    :catch_8
    move-exception p0

    goto :goto_5

    .line 409
    .restart local p1
    :catchall_1
    move-exception p1

    goto :goto_4

    .line 402
    :catch_9
    move-exception v8

    goto :goto_3

    .end local v14           #objectInputStream:Ljava/io/ObjectInputStream;
    .local v8, objectInputStream:Ljava/io/ObjectInputStream;
    :cond_9
    move-object v14, v8

    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v14       #objectInputStream:Ljava/io/ObjectInputStream;
    goto/16 :goto_1

    .end local v14           #objectInputStream:Ljava/io/ObjectInputStream;
    .end local v15           #adFile:Ljava/io/File;
    .restart local v8       #objectInputStream:Ljava/io/ObjectInputStream;
    :cond_a
    move-object v14, v8

    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v14       #objectInputStream:Ljava/io/ObjectInputStream;
    goto/16 :goto_2
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Lcom/fusepowered/m1/android/CachedAd;
    .locals 13
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v11, 0x0

    .line 819
    if-eqz p1, :cond_0

    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move-object v10, v11

    .line 865
    :goto_0
    return-object v10

    .line 822
    :cond_1
    const/4 v2, 0x0

    .line 823
    .local v2, cachedAdFile:Ljava/io/File;
    const/4 v8, 0x0

    .line 826
    .local v8, objectInputStream:Ljava/io/ObjectInputStream;
    const/4 v1, 0x0

    .line 828
    .local v1, ad:Lcom/fusepowered/m1/android/CachedAd;
    invoke-static {p0, p1}, Lcom/fusepowered/m1/android/AdCache;->getCachedAdFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 829
    if-nez v2, :cond_2

    move-object v10, v11

    .line 830
    goto :goto_0

    .line 834
    :cond_2
    :try_start_0
    new-instance v9, Ljava/io/ObjectInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 836
    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .local v9, objectInputStream:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readInt()I

    .line 837
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    .line 838
    .local v6, expiration:Ljava/util/Date;
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 839
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v3

    .line 841
    .local v3, deferredViewStart:J
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/fusepowered/m1/android/CachedAd;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 857
    if-eqz v9, :cond_3

    .line 858
    :try_start_2
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v8, v9

    .end local v3           #deferredViewStart:J
    .end local v6           #expiration:Ljava/util/Date;
    .end local v9           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v8       #objectInputStream:Ljava/io/ObjectInputStream;
    :cond_4
    :goto_1
    move-object v10, v1

    .line 865
    goto :goto_0

    .line 860
    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v3       #deferredViewStart:J
    .restart local v6       #expiration:Ljava/util/Date;
    .restart local v9       #objectInputStream:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v10

    move-object v8, v9

    .line 863
    .end local v9           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v8       #objectInputStream:Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 843
    .end local v3           #deferredViewStart:J
    .end local v6           #expiration:Ljava/util/Date;
    :catch_1
    move-exception v10

    move-object v7, v10

    .line 845
    .local v7, fe:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v10, "There was a problem loading up the cached ad %s. Ad is not on disk."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {v10, v11}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 857
    if-eqz v8, :cond_4

    .line 858
    :try_start_4
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 860
    :catch_2
    move-exception v10

    goto :goto_1

    .line 847
    .end local v7           #fe:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v10

    move-object v5, v10

    .line 849
    .local v5, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v10, "There was a problem loading up the cached ad %s."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {v10, v11}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 851
    invoke-static {v5}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 857
    if-eqz v8, :cond_4

    .line 858
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 860
    :catch_4
    move-exception v10

    goto :goto_1

    .line 855
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 857
    :goto_4
    if-eqz v8, :cond_5

    .line 858
    :try_start_7
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 862
    :cond_5
    :goto_5
    throw v10

    .line 860
    :catch_5
    move-exception v11

    goto :goto_5

    .line 855
    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v9       #objectInputStream:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v8       #objectInputStream:Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 847
    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v9       #objectInputStream:Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v10

    move-object v5, v10

    move-object v8, v9

    .end local v9           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v8       #objectInputStream:Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 843
    .end local v8           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v9       #objectInputStream:Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v10

    move-object v7, v10

    move-object v8, v9

    .end local v9           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v8       #objectInputStream:Ljava/io/ObjectInputStream;
    goto :goto_2
.end method

.method private static loadApidListSet(Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "settings"

    .prologue
    .line 272
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sput-object v6, Lcom/fusepowered/m1/android/AdCache;->apidListSet:Ljava/util/Set;

    .line 273
    const-string v6, "nextCachedAd_apids"

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, apids:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 276
    sget-object v6, Lcom/fusepowered/m1/android/MMSDK;->COMMA:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, apidArray:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v6, v1

    if-lez v6, :cond_0

    .line 278
    move-object v3, v1

    .local v3, arr$:[Ljava/lang/String;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 280
    .local v0, apid:Ljava/lang/String;
    sget-object v6, Lcom/fusepowered/m1/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    .end local v0           #apid:Ljava/lang/String;
    .end local v1           #apidArray:[Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-void
.end method

.method static loadIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Lcom/fusepowered/m1/android/CachedAd;
    .locals 2
    .parameter "context"
    .parameter "adName"

    .prologue
    .line 254
    invoke-static {p0, p1}, Lcom/fusepowered/m1/android/AdCache;->getIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, nextIncompleteAd:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/fusepowered/m1/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/fusepowered/m1/android/CachedAd;

    move-result-object v1

    goto :goto_0
.end method

.method private static loadIncompleteDownloadHashMap(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/16 v10, 0x5f

    .line 214
    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 215
    .local v7, settings:Landroid/content/SharedPreferences;
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v8, Lcom/fusepowered/m1/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    .line 218
    sget-object v8, Lcom/fusepowered/m1/android/AdCache;->apidListSet:Ljava/util/Set;

    if-nez v8, :cond_0

    .line 219
    invoke-static {v7}, Lcom/fusepowered/m1/android/AdCache;->loadApidListSet(Landroid/content/SharedPreferences;)V

    .line 221
    :cond_0
    sget-object v8, Lcom/fusepowered/m1/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    .local v1, apid:Ljava/lang/String;
    invoke-static {}, Lcom/fusepowered/m1/android/MMAdImpl;->getAdTypes()[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 225
    .local v0, adType:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "incompleteDownload_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, result:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 227
    sget-object v8, Lcom/fusepowered/m1/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 230
    .end local v0           #adType:Ljava/lang/String;
    .end local v1           #apid:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #result:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    sput-boolean v8, Lcom/fusepowered/m1/android/AdCache;->incompleteDownloadHashMapLoaded:Z

    .line 231
    return-void
.end method

.method static loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/fusepowered/m1/android/CachedAd;
    .locals 2
    .parameter "context"
    .parameter "adName"

    .prologue
    .line 194
    invoke-static {p0, p1}, Lcom/fusepowered/m1/android/AdCache;->getNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, nextAd:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0, v0}, Lcom/fusepowered/m1/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/fusepowered/m1/android/CachedAd;

    move-result-object v1

    goto :goto_0
.end method

.method private static loadNextCachedAdHashMap(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/16 v10, 0x5f

    .line 154
    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 155
    .local v7, settings:Landroid/content/SharedPreferences;
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v8, Lcom/fusepowered/m1/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    .line 157
    sget-object v8, Lcom/fusepowered/m1/android/AdCache;->apidListSet:Ljava/util/Set;

    if-nez v8, :cond_0

    .line 158
    invoke-static {v7}, Lcom/fusepowered/m1/android/AdCache;->loadApidListSet(Landroid/content/SharedPreferences;)V

    .line 160
    :cond_0
    sget-object v8, Lcom/fusepowered/m1/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    .local v1, apid:Ljava/lang/String;
    invoke-static {}, Lcom/fusepowered/m1/android/MMAdImpl;->getAdTypes()[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 164
    .local v0, adType:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nextCachedAd_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, result:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 166
    sget-object v8, Lcom/fusepowered/m1/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    .end local v0           #adType:Ljava/lang/String;
    .end local v1           #apid:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #result:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    sput-boolean v8, Lcom/fusepowered/m1/android/AdCache;->nextCachedAdHashMapLoaded:Z

    .line 170
    return-void
.end method

.method static resetCache(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 536
    const/4 v2, 0x2

    new-instance v3, Lcom/fusepowered/m1/android/AdCache$5;

    invoke-direct {v3, p0}, Lcom/fusepowered/m1/android/AdCache$5;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v2, v3}, Lcom/fusepowered/m1/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/fusepowered/m1/android/AdCache$Iterator;)V

    .line 549
    sput-object v4, Lcom/fusepowered/m1/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    .line 550
    sput-object v4, Lcom/fusepowered/m1/android/AdCache;->cachedVideoList:Ljava/lang/String;

    .line 551
    const/4 v2, 0x0

    sput-boolean v2, Lcom/fusepowered/m1/android/AdCache;->cachedVideoListLoaded:Z

    .line 553
    sget-object v2, Lcom/fusepowered/m1/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 555
    sget-object v2, Lcom/fusepowered/m1/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 556
    .local v1, key:Ljava/lang/String;
    invoke-static {p0, v1, v4}, Lcom/fusepowered/m1/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/fusepowered/m1/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 561
    sget-object v2, Lcom/fusepowered/m1/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 562
    .restart local v1       #key:Ljava/lang/String;
    invoke-static {p0, v1, v4}, Lcom/fusepowered/m1/android/AdCache;->setIncompleteDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 564
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static save(Landroid/content/Context;Lcom/fusepowered/m1/android/CachedAd;)Z
    .locals 11
    .parameter "context"
    .parameter "ad"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, cachedAdFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 875
    .local v2, lockFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 877
    .local v4, objectOutputStream:Ljava/io/ObjectOutputStream;
    if-nez p1, :cond_0

    move v6, v10

    .line 932
    :goto_0
    return v6

    .line 880
    :cond_0
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/fusepowered/m1/android/AdCache;->getCachedAdFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 881
    if-nez v0, :cond_1

    move v6, v10

    .line 882
    goto :goto_0

    .line 884
    :cond_1
    const-string v6, "Saving CachedAd %s to %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v0, v7, v9

    invoke-static {v6, v7}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ad.lock"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v2           #lockFile:Ljava/io/File;
    .local v3, lockFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_3

    .line 892
    const-string v6, "Could not save the cached ad %s. Ad was locked."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 916
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 917
    if-eqz v4, :cond_2

    .line 918
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_2
    :goto_1
    move-object v2, v3

    .end local v3           #lockFile:Ljava/io/File;
    .restart local v2       #lockFile:Ljava/io/File;
    move v6, v10

    .line 922
    goto :goto_0

    .line 896
    .end local v2           #lockFile:Ljava/io/File;
    .restart local v3       #lockFile:Ljava/io/File;
    :cond_3
    :try_start_3
    new-instance v5, Ljava/io/ObjectOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 898
    .end local v4           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .local v5, objectOutputStream:Ljava/io/ObjectOutputStream;
    :try_start_4
    invoke-virtual {p1}, Lcom/fusepowered/m1/android/CachedAd;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 899
    iget-object v6, p1, Lcom/fusepowered/m1/android/CachedAd;->expiration:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 900
    iget-object v6, p1, Lcom/fusepowered/m1/android/CachedAd;->acid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 901
    iget-wide v6, p1, Lcom/fusepowered/m1/android/CachedAd;->deferredViewStart:J

    invoke-virtual {v5, v6, v7}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 903
    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 916
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 917
    if-eqz v5, :cond_4

    .line 918
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 926
    :cond_4
    :goto_2
    invoke-virtual {p1, p0}, Lcom/fusepowered/m1/android/CachedAd;->saveAssets(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 928
    invoke-virtual {p1, p0}, Lcom/fusepowered/m1/android/CachedAd;->delete(Landroid/content/Context;)V

    move-object v4, v5

    .end local v5           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #objectOutputStream:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #lockFile:Ljava/io/File;
    .restart local v2       #lockFile:Ljava/io/File;
    move v6, v10

    .line 929
    goto/16 :goto_0

    .line 905
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 907
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v6, "There was a problem saving the cached ad %s."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 908
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 909
    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 916
    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 917
    if-eqz v4, :cond_5

    .line 918
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_4
    move v6, v10

    .line 922
    goto/16 :goto_0

    .line 914
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 916
    :goto_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 917
    if-eqz v4, :cond_6

    .line 918
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 922
    :cond_6
    :goto_6
    throw v6

    .end local v2           #lockFile:Ljava/io/File;
    .end local v4           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #lockFile:Ljava/io/File;
    .restart local v5       #objectOutputStream:Ljava/io/ObjectOutputStream;
    :cond_7
    move-object v4, v5

    .end local v5           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #objectOutputStream:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #lockFile:Ljava/io/File;
    .restart local v2       #lockFile:Ljava/io/File;
    move v6, v9

    .line 932
    goto/16 :goto_0

    .line 920
    :catch_1
    move-exception v7

    goto :goto_6

    .line 914
    .end local v2           #lockFile:Ljava/io/File;
    .restart local v3       #lockFile:Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #lockFile:Ljava/io/File;
    .restart local v2       #lockFile:Ljava/io/File;
    goto :goto_5

    .end local v2           #lockFile:Ljava/io/File;
    .end local v4           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #lockFile:Ljava/io/File;
    .restart local v5       #objectOutputStream:Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #objectOutputStream:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #lockFile:Ljava/io/File;
    .restart local v2       #lockFile:Ljava/io/File;
    goto :goto_5

    .line 920
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_4

    .line 905
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #lockFile:Ljava/io/File;
    .restart local v3       #lockFile:Ljava/io/File;
    :catch_3
    move-exception v6

    move-object v1, v6

    move-object v2, v3

    .end local v3           #lockFile:Ljava/io/File;
    .restart local v2       #lockFile:Ljava/io/File;
    goto :goto_3

    .end local v2           #lockFile:Ljava/io/File;
    .end local v4           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #lockFile:Ljava/io/File;
    .restart local v5       #objectOutputStream:Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v6

    move-object v1, v6

    move-object v4, v5

    .end local v5           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #objectOutputStream:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #lockFile:Ljava/io/File;
    .restart local v2       #lockFile:Ljava/io/File;
    goto :goto_3

    .line 920
    .end local v2           #lockFile:Ljava/io/File;
    .end local v4           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #lockFile:Ljava/io/File;
    .restart local v5       #objectOutputStream:Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v6

    goto :goto_2

    .end local v5           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v4       #objectOutputStream:Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v6

    goto/16 :goto_1
.end method

.method private static saveApidListSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 7
    .parameter "editor"
    .parameter "adName"

    .prologue
    .line 287
    const/16 v4, 0x5f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 288
    .local v3, start:I
    if-ltz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 290
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, apid:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 293
    sget-object v4, Lcom/fusepowered/m1/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 295
    const/4 v2, 0x0

    .line 296
    .local v2, builder:Ljava/lang/StringBuilder;
    sget-object v4, Lcom/fusepowered/m1/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    sget-object v4, Lcom/fusepowered/m1/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 299
    .local v1, apidIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .restart local v2       #builder:Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/fusepowered/m1/android/MMSDK;->COMMA:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 305
    .end local v1           #apidIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    const-string v4, "nextCachedAd_apids"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_2

    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    sget-object v4, Lcom/fusepowered/m1/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    .end local v0           #apid:Ljava/lang/String;
    .end local v2           #builder:Ljava/lang/StringBuilder;
    :cond_1
    return-void

    .line 305
    .restart local v0       #apid:Ljava/lang/String;
    .restart local v2       #builder:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private static saveIncompleteDownloadHashMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "adName"

    .prologue
    .line 235
    if-eqz p1, :cond_0

    .line 237
    const-string v2, "MillennialMediaSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 238
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0, p1}, Lcom/fusepowered/m1/android/AdCache;->saveApidListSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incompleteDownload_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/m1/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private static saveNextCachedAdHashMapValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "adName"

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 177
    const-string v2, "MillennialMediaSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 178
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0, p1}, Lcom/fusepowered/m1/android/AdCache;->saveApidListSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nextCachedAd_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/m1/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method static setEnableExternalStorage(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 970
    sput-boolean p0, Lcom/fusepowered/m1/android/AdCache;->isExternalEnabled:Z

    .line 971
    return-void
.end method

.method static declared-synchronized setIncompleteDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "adName"
    .parameter "id"

    .prologue
    .line 260
    const-class v0, Lcom/fusepowered/m1/android/AdCache;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/fusepowered/m1/android/AdCache;->incompleteDownloadHashMapLoaded:Z

    if-nez v1, :cond_0

    .line 261
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->loadIncompleteDownloadHashMap(Landroid/content/Context;)V

    .line 262
    :cond_0
    if-eqz p1, :cond_1

    .line 264
    sget-object v1, Lcom/fusepowered/m1/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    if-nez p2, :cond_2

    const-string v2, ""

    :goto_0
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {p0, p1}, Lcom/fusepowered/m1/android/AdCache;->saveIncompleteDownloadHashMap(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    move-object v2, p2

    .line 264
    goto :goto_0

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "adName"
    .parameter "id"

    .prologue
    .line 200
    const-class v0, Lcom/fusepowered/m1/android/AdCache;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/fusepowered/m1/android/AdCache;->nextCachedAdHashMapLoaded:Z

    if-nez v1, :cond_0

    .line 201
    invoke-static {p0}, Lcom/fusepowered/m1/android/AdCache;->loadNextCachedAdHashMap(Landroid/content/Context;)V

    .line 202
    :cond_0
    if-eqz p1, :cond_1

    .line 204
    sget-object v1, Lcom/fusepowered/m1/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    if-nez p2, :cond_2

    const-string v2, ""

    :goto_0
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {p0, p1}, Lcom/fusepowered/m1/android/AdCache;->saveNextCachedAdHashMapValue(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    move-object v2, p2

    .line 204
    goto :goto_0

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m1/android/CachedAd;Lcom/fusepowered/m1/android/AdCache$AdCacheTaskListener;)Z
    .locals 1
    .parameter "context"
    .parameter "adName"
    .parameter "ad"
    .parameter "listener"

    .prologue
    .line 59
    invoke-static {}, Lcom/fusepowered/m1/android/AdCacheThreadPool;->sharedThreadPool()Lcom/fusepowered/m1/android/AdCacheThreadPool;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fusepowered/m1/android/AdCacheThreadPool;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/fusepowered/m1/android/CachedAd;Lcom/fusepowered/m1/android/AdCache$AdCacheTaskListener;)Z

    move-result v0

    return v0
.end method
