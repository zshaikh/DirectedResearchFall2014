.class public Lcom/nativex/monetization/tasks/CachingTask;
.super Ljava/lang/Object;
.source "CachingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/tasks/CachingTask;Lcom/nativex/monetization/business/GetOfferCacheResponseData;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/tasks/CachingTask;
    .param p1, "x1"    # Lcom/nativex/monetization/business/GetOfferCacheResponseData;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/nativex/monetization/tasks/CachingTask;->executeCachingAlgorithm(Lcom/nativex/monetization/business/GetOfferCacheResponseData;)V

    return-void
.end method

.method private clearAllCache()V
    .locals 4

    .prologue
    .line 175
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDownloadManager;->getInstance()Lcom/nativex/monetization/manager/CacheDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/manager/CacheDownloadManager;->stopAllDownloads()V

    .line 176
    invoke-static {}, Lcom/nativex/monetization/manager/CacheManager;->getInstance()Lcom/nativex/monetization/manager/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/manager/CacheManager;->deleteCachedFiles()V

    .line 177
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/manager/CacheDBManager;->deleteAllCacheFiles()I

    .line 180
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v0

    const-string v1, "previous_cached_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nativex/monetization/manager/CacheDBManager;->updateCacheUtil(Ljava/lang/String;J)V

    .line 181
    return-void
.end method

.method private clearCache()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "Not enough cache to purge, deleting all the cached files."

    invoke-static {v0}, Lcom/nativex/common/Log;->v(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/nativex/monetization/tasks/CachingTask;->clearAllCache()V

    .line 142
    const-string v0, "Cache.NotEnoughSpace"

    invoke-static {v0}, Lcom/nativex/common/StatsDManager;->incrementCounter(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private deleteFromInternalCache(Ljava/lang/String;)Z
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 340
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nativex/monetization/manager/CacheDBManager;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 342
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "internalCacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 349
    .end local v0    # "internalCacheFile":Ljava/io/File;
    :goto_0
    return v2

    .line 346
    .restart local v0    # "internalCacheFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .end local v0    # "internalCacheFile":Ljava/io/File;
    :cond_1
    move v2, v4

    .line 349
    goto :goto_0
.end method

.method private executeCachingAlgorithm(Lcom/nativex/monetization/business/GetOfferCacheResponseData;)V
    .locals 15
    .param p1, "responseData"    # Lcom/nativex/monetization/business/GetOfferCacheResponseData;

    .prologue
    .line 49
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/manager/CacheDBManager;->deleteAllCacheErrors()I

    .line 51
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v0

    const-string v1, "free_space_min"

    invoke-virtual/range {p1 .. p1}, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->getFreeSpaceMin()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nativex/monetization/manager/CacheDBManager;->updateCacheUtil(Ljava/lang/String;J)V

    .line 52
    invoke-direct/range {p0 .. p1}, Lcom/nativex/monetization/tasks/CachingTask;->updateOfferIdToCacheFiles(Lcom/nativex/monetization/business/GetOfferCacheResponseData;)V

    .line 54
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDownloadManager;->getInstance()Lcom/nativex/monetization/manager/CacheDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/manager/CacheDownloadManager;->removeDownloadedFilesFromSDCard()V

    .line 56
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->getOffers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->getOffers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/business/CacheOffers;

    invoke-virtual {v0}, Lcom/nativex/monetization/business/CacheOffers;->getFiles()Ljava/util/List;

    move-result-object v9

    .line 58
    .local v9, "files":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    invoke-direct {p0, v9}, Lcom/nativex/monetization/tasks/CachingTask;->updateDatabaseWithIncomingData(Ljava/util/List;)V

    .line 56
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 61
    .end local v9    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    :cond_0
    invoke-direct {p0}, Lcom/nativex/monetization/tasks/CachingTask;->verifyFileStatusForAllRecords()V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Available internal free space "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/nativex/monetization/manager/CacheManager;->getInstance()Lcom/nativex/monetization/manager/CacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/monetization/manager/CacheManager;->getAvailableInternalMemorySize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/Log;->v(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/nativex/monetization/manager/CacheManager;->getInstance()Lcom/nativex/monetization/manager/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/manager/CacheManager;->getAvailableInternalMemorySize()J

    move-result-wide v3

    .line 68
    .local v3, "deviceInternalFreeSpace":J
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/manager/CacheDBManager;->getTotalSizeOfCacheFiles()J

    move-result-wide v13

    .line 71
    .local v13, "totalCacheSize":J
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/manager/CacheDBManager;->getSizeOfDownloadedCacheFiles()J

    move-result-wide v5

    .line 74
    .local v5, "downloadedCacheSize":J
    sub-long v7, v13, v5

    .line 76
    .local v7, "unDownloadedCacheSize":J
    invoke-virtual/range {p1 .. p1}, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->getFreeSpaceMin()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->getCacheSizeMax()I

    move-result v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/nativex/monetization/tasks/CachingTask;->findFreeSpaceNeeded(IIJJJ)J

    move-result-wide v10

    .line 82
    .local v10, "freeSpaceNeeded":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_1

    .line 83
    invoke-direct {p0, v10, v11}, Lcom/nativex/monetization/tasks/CachingTask;->purgeFreeSpace(J)V

    .line 87
    :cond_1
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/manager/CacheDBManager;->checkToDeleteOffers()V

    .line 90
    invoke-direct {p0}, Lcom/nativex/monetization/tasks/CachingTask;->initiateDownloads()V

    .line 93
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v0

    const-string v1, "previous_cached_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nativex/monetization/manager/CacheDBManager;->updateCacheUtil(Ljava/lang/String;J)V

    .line 94
    return-void
.end method

.method private initiateDownloads()V
    .locals 5

    .prologue
    .line 326
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nativex/monetization/manager/CacheDBManager;->getCacheFilesForDownload()Ljava/util/List;

    move-result-object v1

    .line 327
    .local v1, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 328
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/business/CacheFile;

    .line 330
    .local v0, "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    invoke-direct {p0, v0}, Lcom/nativex/monetization/tasks/CachingTask;->isCacheFilePresentInCache(Lcom/nativex/monetization/business/CacheFile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v3

    sget-object v4, Lcom/nativex/monetization/enums/FileStatus;->STATUS_READY:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v0, v4}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatus(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I

    .line 327
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_0
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDownloadManager;->getInstance()Lcom/nativex/monetization/manager/CacheDownloadManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nativex/monetization/manager/CacheDownloadManager;->push(Lcom/nativex/monetization/business/CacheFile;)V

    goto :goto_1

    .line 336
    .end local v0    # "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    :cond_1
    return-void
.end method

.method private isCacheFilePresentInCache(Lcom/nativex/monetization/business/CacheFile;)Z
    .locals 5
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;

    .prologue
    const/4 v4, 0x0

    .line 353
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nativex/monetization/manager/CacheDBManager;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 355
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "internalCacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 358
    .end local v0    # "internalCacheFile":Ljava/io/File;
    :goto_0
    return v2

    .restart local v0    # "internalCacheFile":Ljava/io/File;
    :cond_0
    move v2, v4

    .line 356
    goto :goto_0

    .end local v0    # "internalCacheFile":Ljava/io/File;
    :cond_1
    move v2, v4

    .line 358
    goto :goto_0
.end method

.method private isValidMD5(Lcom/nativex/monetization/business/CacheFile;)Z
    .locals 5
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/nativex/monetization/tasks/CachingTask;->isCacheFilePresentInCache(Lcom/nativex/monetization/business/CacheFile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nativex/monetization/manager/CacheDBManager;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 366
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/files/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    .local v1, "internalCacheFile":Ljava/io/File;
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDownloadManager;->getInstance()Lcom/nativex/monetization/manager/CacheDownloadManager;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/manager/CacheDownloadManager;->calculateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "MD5":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    const/4 v3, 0x1

    .line 373
    .end local v0    # "MD5":Ljava/lang/String;
    .end local v1    # "internalCacheFile":Ljava/io/File;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private purgeFreeSpace(J)V
    .locals 8
    .param p1, "freeSpaceNeeded"    # J

    .prologue
    .line 146
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nativex/monetization/manager/CacheDBManager;->getCacheFilesForPurging()Ljava/util/List;

    move-result-object v1

    .line 148
    .local v1, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    const-wide/16 v4, 0x0

    .line 149
    .local v4, "spaceFreed":J
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/business/CacheFile;

    .line 150
    .local v0, "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    cmp-long v6, p1, v4

    if-lez v6, :cond_3

    .line 152
    invoke-virtual {v0}, Lcom/nativex/monetization/business/CacheFile;->getFileStatus()Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v2

    .line 153
    .local v2, "fileStatus":Lcom/nativex/monetization/enums/FileStatus;
    sget-object v6, Lcom/nativex/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

    if-eq v2, v6, :cond_0

    .line 155
    sget-object v6, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DOWNLOADING:Lcom/nativex/monetization/enums/FileStatus;

    if-eq v2, v6, :cond_1

    sget-object v6, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PAUSED:Lcom/nativex/monetization/enums/FileStatus;

    if-ne v2, v6, :cond_2

    .line 157
    :cond_1
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDownloadManager;->getInstance()Lcom/nativex/monetization/manager/CacheDownloadManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/nativex/monetization/manager/CacheDownloadManager;->cancelDownload(Lcom/nativex/monetization/business/CacheFile;)V

    .line 158
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v6

    sget-object v7, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v6, v0, v7}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatus(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I

    .line 159
    invoke-virtual {v0}, Lcom/nativex/monetization/business/CacheFile;->getFileSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v0}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/nativex/monetization/tasks/CachingTask;->deleteFromInternalCache(Ljava/lang/String;)Z

    .line 162
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v6

    sget-object v7, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v6, v0, v7}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatus(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I

    .line 163
    invoke-virtual {v0}, Lcom/nativex/monetization/business/CacheFile;->getFileSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_0

    .line 167
    .end local v2    # "fileStatus":Lcom/nativex/monetization/enums/FileStatus;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleared enough space, freeSpaceNeeded:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spacefreed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nativex/common/Log;->v(Ljava/lang/String;)V

    .line 171
    .end local v0    # "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    :cond_4
    return-void
.end method

.method private updateDatabaseWithIncomingData(Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    if-nez p1, :cond_1

    .line 268
    :cond_0
    return-void

    .line 199
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nativex/monetization/business/CacheFile;

    .line 201
    .local v12, "incomingCacheFile":Lcom/nativex/monetization/business/CacheFile;
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/manager/CacheDBManager;->getCacheFile(Lcom/nativex/monetization/business/CacheFile;)Ljava/util/List;

    move-result-object v6

    .line 203
    .local v6, "cacheFilesInDB":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_3

    .line 205
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "File not present in DB, adding for Downloading."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/nativex/common/Log;->v(Ljava/lang/String;)V

    .line 207
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/manager/CacheDBManager;->addCache(Lcom/nativex/monetization/business/CacheFile;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v21

    move-object/from16 v7, v21

    .line 210
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 215
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v17, 0x1

    .line 216
    .local v17, "shouldInsert":Z
    sget-object v18, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/nativex/monetization/enums/FileStatus;

    .line 217
    .local v18, "status":Lcom/nativex/monetization/enums/FileStatus;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nativex/monetization/business/CacheFile;

    .line 219
    .local v3, "cacheFileInDB":Lcom/nativex/monetization/business/CacheFile;
    if-eqz v3, :cond_4

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v8, v21, v23

    .line 221
    .local v8, "epochTime":J
    const-wide/32 v19, 0x93a80

    .line 222
    .local v19, "weekTime":J
    add-long v15, v8, v19

    .line 223
    .local v15, "maxExpirationTime":J
    invoke-virtual {v12}, Lcom/nativex/monetization/business/CacheFile;->getExpiryTime()J

    move-result-wide v13

    .line 224
    .local v13, "incomingCacheFileExpirationTime":J
    invoke-virtual {v3}, Lcom/nativex/monetization/business/CacheFile;->getExpiryTime()J

    move-result-wide v4

    .line 226
    .local v4, "cacheFileInDBExpirationTime":J
    cmp-long v21, v13, v4

    if-lez v21, :cond_7

    .line 230
    cmp-long v21, v13, v15

    if-lez v21, :cond_5

    .line 231
    move-object v0, v12

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 234
    :cond_5
    invoke-virtual {v12}, Lcom/nativex/monetization/business/CacheFile;->getExpiryTime()J

    move-result-wide v21

    move-object v0, v3

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 235
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/manager/CacheDBManager;->updateCacheExpiryTime(Lcom/nativex/monetization/business/CacheFile;)V

    .line 240
    :goto_2
    if-eqz v17, :cond_6

    invoke-virtual {v3}, Lcom/nativex/monetization/business/CacheFile;->getOfferId()J

    move-result-wide v21

    invoke-virtual {v12}, Lcom/nativex/monetization/business/CacheFile;->getOfferId()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-nez v21, :cond_6

    invoke-virtual {v3}, Lcom/nativex/monetization/business/CacheFile;->getRelativeUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v12}, Lcom/nativex/monetization/business/CacheFile;->getRelativeUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 243
    const/16 v17, 0x0

    .line 246
    :cond_6
    invoke-virtual {v3}, Lcom/nativex/monetization/business/CacheFile;->getFileStatus()Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v21

    sget-object v22, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DOWNLOADING:Lcom/nativex/monetization/enums/FileStatus;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 247
    sget-object v18, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DOWNLOADING:Lcom/nativex/monetization/enums/FileStatus;

    goto :goto_1

    .line 237
    :cond_7
    invoke-virtual {v3}, Lcom/nativex/monetization/business/CacheFile;->getExpiryTime()J

    move-result-wide v21

    move-object v0, v12

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/business/CacheFile;->setExpiryTime(J)V

    goto :goto_2

    .line 248
    :cond_8
    invoke-virtual {v3}, Lcom/nativex/monetization/business/CacheFile;->getFileStatus()Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v21

    sget-object v22, Lcom/nativex/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 249
    sget-object v18, Lcom/nativex/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

    goto/16 :goto_1

    .line 250
    :cond_9
    invoke-virtual {v3}, Lcom/nativex/monetization/business/CacheFile;->getFileStatus()Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v21

    sget-object v22, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PAUSED:Lcom/nativex/monetization/enums/FileStatus;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 251
    sget-object v18, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PAUSED:Lcom/nativex/monetization/enums/FileStatus;

    goto/16 :goto_1

    .line 252
    :cond_a
    invoke-virtual {v3}, Lcom/nativex/monetization/business/CacheFile;->getFileStatus()Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v21

    sget-object v22, Lcom/nativex/monetization/enums/FileStatus;->STATUS_READY:Lcom/nativex/monetization/enums/FileStatus;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 253
    sget-object v18, Lcom/nativex/monetization/enums/FileStatus;->STATUS_READY:Lcom/nativex/monetization/enums/FileStatus;

    goto/16 :goto_1

    .line 259
    .end local v3    # "cacheFileInDB":Lcom/nativex/monetization/business/CacheFile;
    .end local v4    # "cacheFileInDBExpirationTime":J
    .end local v8    # "epochTime":J
    .end local v13    # "incomingCacheFileExpirationTime":J
    .end local v15    # "maxExpirationTime":J
    .end local v19    # "weekTime":J
    :cond_b
    if-eqz v17, :cond_2

    .line 261
    :try_start_1
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/manager/CacheDBManager;->addCache(Lcom/nativex/monetization/business/CacheFile;)J

    .line 262
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v12

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatusWithOfferId(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 263
    :catch_1
    move-exception v21

    move-object/from16 v7, v21

    .line 264
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updateOfferIdToCacheFiles(Lcom/nativex/monetization/business/GetOfferCacheResponseData;)V
    .locals 6
    .param p1, "responseData"    # Lcom/nativex/monetization/business/GetOfferCacheResponseData;

    .prologue
    .line 184
    const/4 v1, 0x0

    .end local p0    # "this":Lcom/nativex/monetization/tasks/CachingTask;
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->getOffers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->getOffers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nativex/monetization/business/CacheOffers;

    invoke-virtual {p0}, Lcom/nativex/monetization/business/CacheOffers;->getOfferId()J

    move-result-wide v3

    .line 186
    .local v3, "offerId":J
    invoke-virtual {p1}, Lcom/nativex/monetization/business/GetOfferCacheResponseData;->getOffers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nativex/monetization/business/CacheOffers;

    invoke-virtual {p0}, Lcom/nativex/monetization/business/CacheOffers;->getFiles()Ljava/util/List;

    move-result-object v0

    .line 187
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 188
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nativex/monetization/business/CacheFile;

    invoke-virtual {p0, v3, v4}, Lcom/nativex/monetization/business/CacheFile;->setOfferId(J)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 184
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    .end local v2    # "j":I
    .end local v3    # "offerId":J
    :cond_1
    return-void
.end method

.method private verifyFileStatusForAllRecords()V
    .locals 9

    .prologue
    const-string v8, "Cache.WrongFileStatus"

    .line 275
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nativex/monetization/manager/CacheDBManager;->getAllCacheFiles()Ljava/util/List;

    move-result-object v1

    .line 277
    .local v1, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/business/CacheFile;

    .line 279
    .local v0, "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    invoke-virtual {v0}, Lcom/nativex/monetization/business/CacheFile;->getFileStatus()Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v4

    .line 281
    .local v4, "status":Lcom/nativex/monetization/enums/FileStatus;
    sget-object v6, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    if-ne v4, v6, :cond_1

    .line 283
    invoke-direct {p0, v0}, Lcom/nativex/monetization/tasks/CachingTask;->isCacheFilePresentInCache(Lcom/nativex/monetization/business/CacheFile;)Z

    move-result v2

    .line 284
    .local v2, "fileExits":Z
    if-eqz v2, :cond_0

    .line 287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong file status found for DELETED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 288
    const-string v6, "Cache.WrongFileStatus"

    invoke-static {v8}, Lcom/nativex/common/StatsDManager;->incrementCounter(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/nativex/monetization/tasks/CachingTask;->deleteFromInternalCache(Ljava/lang/String;)Z

    goto :goto_0

    .line 292
    .end local v2    # "fileExits":Z
    :cond_1
    sget-object v6, Lcom/nativex/monetization/enums/FileStatus;->STATUS_READY:Lcom/nativex/monetization/enums/FileStatus;

    if-eq v4, v6, :cond_2

    sget-object v6, Lcom/nativex/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

    if-ne v4, v6, :cond_3

    .line 294
    :cond_2
    invoke-direct {p0, v0}, Lcom/nativex/monetization/tasks/CachingTask;->isCacheFilePresentInCache(Lcom/nativex/monetization/business/CacheFile;)Z

    move-result v2

    .line 295
    .restart local v2    # "fileExits":Z
    const/4 v6, 0x1

    if-eq v2, v6, :cond_0

    .line 298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong file status found for READY | IN_USE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 299
    const-string v6, "Cache.WrongFileStatus"

    invoke-static {v8}, Lcom/nativex/common/StatsDManager;->incrementCounter(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v6

    sget-object v7, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v6, v0, v7}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatus(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I

    goto :goto_0

    .line 305
    .end local v2    # "fileExits":Z
    :cond_3
    invoke-direct {p0, v0}, Lcom/nativex/monetization/tasks/CachingTask;->isCacheFilePresentInCache(Lcom/nativex/monetization/business/CacheFile;)Z

    move-result v2

    .line 307
    .restart local v2    # "fileExits":Z
    if-eqz v2, :cond_0

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong file status found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/nativex/monetization/business/CacheFile;->getFileStatus()Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nativex/monetization/enums/FileStatus;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 311
    const-string v6, "Cache.WrongFileStatus"

    invoke-static {v8}, Lcom/nativex/common/StatsDManager;->incrementCounter(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, v0}, Lcom/nativex/monetization/tasks/CachingTask;->isValidMD5(Lcom/nativex/monetization/business/CacheFile;)Z

    move-result v5

    .line 314
    .local v5, "validMD5":Z
    if-eqz v5, :cond_4

    .line 315
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v6

    sget-object v7, Lcom/nativex/monetization/enums/FileStatus;->STATUS_READY:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v6, v0, v7}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatus(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I

    goto/16 :goto_0

    .line 317
    :cond_4
    invoke-virtual {v0}, Lcom/nativex/monetization/business/CacheFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/nativex/monetization/tasks/CachingTask;->deleteFromInternalCache(Ljava/lang/String;)Z

    .line 318
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v6

    sget-object v7, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v6, v0, v7}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatus(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I

    goto/16 :goto_0

    .line 323
    .end local v0    # "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    .end local v2    # "fileExits":Z
    .end local v4    # "status":Lcom/nativex/monetization/enums/FileStatus;
    .end local v5    # "validMD5":Z
    :cond_5
    return-void
.end method


# virtual methods
.method public downloadOfferCache()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v0

    new-instance v1, Lcom/nativex/monetization/tasks/CachingTask$1;

    invoke-direct {v1, p0}, Lcom/nativex/monetization/tasks/CachingTask$1;-><init>(Lcom/nativex/monetization/tasks/CachingTask;)V

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/communication/ServerRequestManager;->getOfferCache(Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;)V

    .line 44
    return-void
.end method

.method public findFreeSpaceNeeded(IIJJJ)J
    .locals 17
    .param p1, "freespacemin"    # I
    .param p2, "cachesizemax"    # I
    .param p3, "deviceInternalFreeSpace"    # J
    .param p5, "downloadedCacheSize"    # J
    .param p7, "unDownloadedCacheSize"    # J

    .prologue
    .line 102
    if-nez p2, :cond_0

    .line 103
    const-string v15, "CacheSizeMax is zero, deleting all the cached files."

    invoke-static {v15}, Lcom/nativex/common/Log;->v(Ljava/lang/String;)V

    .line 104
    invoke-direct/range {p0 .. p0}, Lcom/nativex/monetization/tasks/CachingTask;->clearAllCache()V

    .line 105
    const-wide/16 v15, 0x0

    .line 136
    :goto_0
    return-wide v15

    .line 108
    :cond_0
    move/from16 v0, p1

    mul-int/lit16 v0, v0, 0x400

    move v15, v0

    mul-int/lit16 v15, v15, 0x400

    int-to-long v7, v15

    .line 109
    .local v7, "freeSpaceMin":J
    move/from16 v0, p2

    mul-int/lit16 v0, v0, 0x400

    move v15, v0

    mul-int/lit16 v15, v15, 0x400

    int-to-long v5, v15

    .line 110
    .local v5, "cacheSizeMax":J
    add-long v13, p5, p7

    .line 111
    .local v13, "totalCacheSize":J
    add-long v3, p3, p7

    .line 112
    .local v3, "beforeCacheFreeSpace":J
    sub-long v1, p3, p7

    .line 113
    .local v1, "afterCacheFreeSpace":J
    const-wide/16 v9, 0x0

    .line 115
    .local v9, "freeSpaceNeeded":J
    cmp-long v15, v7, v3

    if-lez v15, :cond_1

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/nativex/monetization/tasks/CachingTask;->clearCache()V

    move-wide v15, v9

    .line 117
    goto :goto_0

    .line 120
    :cond_1
    cmp-long v15, v7, v1

    if-lez v15, :cond_2

    .line 121
    sub-long v9, v7, v1

    .line 124
    :cond_2
    cmp-long v15, v13, v5

    if-lez v15, :cond_3

    .line 125
    const-wide/16 v11, 0x0

    .line 126
    .local v11, "freeSpaceNeededForCacheSizeMax":J
    sub-long v11, v13, v5

    .line 128
    cmp-long v15, v11, v9

    if-lez v15, :cond_3

    .line 129
    move-wide v9, v11

    .line 133
    .end local v11    # "freeSpaceNeededForCacheSizeMax":J
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CacheSizeMax: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " TotalCacheSize: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Free Space needed to purge "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/nativex/common/Log;->v(Ljava/lang/String;)V

    move-wide v15, v9

    .line 136
    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/nativex/monetization/tasks/CachingTask;->downloadOfferCache()V

    .line 32
    return-void
.end method
