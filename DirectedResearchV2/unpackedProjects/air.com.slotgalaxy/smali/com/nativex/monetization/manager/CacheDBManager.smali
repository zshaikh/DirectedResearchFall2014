.class public Lcom/nativex/monetization/manager/CacheDBManager;
.super Ljava/lang/Object;
.source "CacheDBManager.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static instance:Lcom/nativex/monetization/manager/CacheDBManager;


# instance fields
.field private cacheDB:Landroid/database/sqlite/SQLiteDatabase;

.field private cacheDBCreator:Lcom/nativex/monetization/database/CacheDatabase;

.field private fileStatusIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nativex/monetization/enums/FileStatus;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/nativex/monetization/manager/CacheDBManager;->context:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/nativex/monetization/database/CacheDatabase;

    sget-object v1, Lcom/nativex/monetization/manager/CacheDBManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nativex/monetization/database/CacheDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDBCreator:Lcom/nativex/monetization/database/CacheDatabase;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    .line 53
    invoke-virtual {p0}, Lcom/nativex/monetization/manager/CacheDBManager;->open()V

    .line 54
    return-void
.end method

.method private getFileStatus(J)Lcom/nativex/monetization/enums/FileStatus;
    .locals 4
    .param p1, "id"    # J

    .prologue
    .line 587
    iget-object v2, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nativex/monetization/enums/FileStatus;

    .line 588
    .local v1, "s":Lcom/nativex/monetization/enums/FileStatus;
    iget-object v2, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    move-object v2, v1

    .line 592
    .end local v1    # "s":Lcom/nativex/monetization/enums/FileStatus;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/nativex/monetization/manager/CacheDBManager;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/nativex/monetization/manager/CacheDBManager;->instance:Lcom/nativex/monetization/manager/CacheDBManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/nativex/monetization/manager/CacheDBManager;

    invoke-direct {v0}, Lcom/nativex/monetization/manager/CacheDBManager;-><init>()V

    sput-object v0, Lcom/nativex/monetization/manager/CacheDBManager;->instance:Lcom/nativex/monetization/manager/CacheDBManager;

    .line 46
    :cond_0
    sget-object v0, Lcom/nativex/monetization/manager/CacheDBManager;->instance:Lcom/nativex/monetization/manager/CacheDBManager;

    return-object v0
.end method


# virtual methods
.method public addCache(Lcom/nativex/monetization/business/CacheFile;)J
    .locals 14
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v7, "values":Landroid/content/ContentValues;
    const-string v10, "OfferId"

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getOfferId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string v11, "FileStatus"

    iget-object v10, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v12, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v0, v10, v12

    .line 109
    .local v0, "epochTime":J
    const-wide/32 v8, 0x93a80

    .line 110
    .local v8, "weekTime":J
    add-long v5, v0, v8

    .line 112
    .local v5, "maxExpirationTime":J
    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getExpiryTime()J

    move-result-wide v10

    cmp-long v10, v10, v5

    if-lez v10, :cond_0

    .line 113
    invoke-virtual {p1, v8, v9}, Lcom/nativex/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 116
    :cond_0
    const-string v10, "ExpirationDateUTC"

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getExpiryTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v10, "FileSize"

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getFileSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v10, "RelativeUrl"

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getRelativeUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v10, "MD5"

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v10, "Ext"

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getExt()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v10, "CDN"

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getCDN()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-wide/16 v3, 0x0

    .line 126
    .local v3, "insertId":J
    :try_start_0
    iget-object v10, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "cache_files"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 131
    return-wide v3

    .line 127
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 128
    .local v2, "ex":Ljava/lang/Exception;
    throw v2
.end method

.method public addCacheError(Lcom/nativex/monetization/enums/CacheError;Ljava/lang/String;)J
    .locals 7
    .param p1, "error"    # Lcom/nativex/monetization/enums/CacheError;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 869
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 870
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "error_code"

    invoke-virtual {p1}, Lcom/nativex/monetization/enums/CacheError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string v4, "cdn_url"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-wide/16 v1, 0x0

    .line 875
    .local v1, "insertId":J
    :try_start_0
    iget-object v4, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "cache_error"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 879
    :goto_0
    return-wide v1

    .line 876
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 877
    .local v0, "e":Landroid/database/sqlite/SQLiteConstraintException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConstraintException;->printStackTrace()V

    goto :goto_0
.end method

.method public addCacheUtil(Ljava/lang/String;J)J
    .locals 7
    .param p1, "cacheutil"    # Ljava/lang/String;
    .param p2, "intvalue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 678
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 679
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "cache_util"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v4, "cache_util_value_int"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 682
    const-wide/16 v1, 0x0

    .line 685
    .local v1, "insertId":J
    :try_start_0
    iget-object v4, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "cache_utils"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 691
    return-wide v1

    .line 686
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 687
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 688
    throw v0
.end method

.method public addDownloadId(JLcom/nativex/monetization/business/CacheFile;)J
    .locals 6
    .param p1, "downloadid"    # J
    .param p3, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;

    .prologue
    .line 736
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 737
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "download_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 738
    const-string v3, "cachefile"

    invoke-virtual {p3}, Lcom/nativex/monetization/business/CacheFile;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-wide/16 v0, 0x0

    .line 741
    .local v0, "insertId":J
    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "download_map"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 742
    return-wide v0
.end method

.method public addDownloadedFile(Ljava/lang/String;)J
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 809
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 810
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "downloaded_file_name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-wide/16 v1, 0x0

    .line 814
    .local v1, "insertId":J
    :try_start_0
    iget-object v4, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "downloaded_files"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 818
    :goto_0
    return-wide v1

    .line 815
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 816
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addPackageName(Ljava/lang/String;)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 805
    invoke-virtual {p0, p1}, Lcom/nativex/monetization/manager/CacheDBManager;->addDownloadedFile(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public checkFileStatusDeletedForOffer(J)V
    .locals 14
    .param p1, "offerId"    # J

    .prologue
    .line 622
    const-string v3, "OfferId=?"

    .line 623
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 625
    .local v4, "args":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v9, "cacheIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v13, 0x0

    .line 628
    .local v13, "statusOtherThanDelete":Z
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 630
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 631
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    :cond_0
    const-string v0, "FileStatus"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/nativex/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v12

    .line 634
    .local v12, "status":Lcom/nativex/monetization/enums/FileStatus;
    sget-object v0, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    if-ne v12, v0, :cond_2

    .line 635
    const-string v0, "cache_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    .end local v12    # "status":Lcom/nativex/monetization/enums/FileStatus;
    :cond_1
    if-nez v13, :cond_3

    .line 645
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 646
    .local v8, "cacheId":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/manager/CacheDBManager;->deleteCacheFileWithCacheId(J)I

    goto :goto_1

    .line 637
    .end local v8    # "cacheId":Ljava/lang/Long;
    .end local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "status":Lcom/nativex/monetization/enums/FileStatus;
    :cond_2
    const/4 v13, 0x1

    goto :goto_0

    .line 650
    .end local v12    # "status":Lcom/nativex/monetization/enums/FileStatus;
    :cond_3
    if-eqz v10, :cond_4

    .line 651
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 652
    :cond_4
    return-void
.end method

.method public checkToDeleteOffers()V
    .locals 4

    .prologue
    .line 602
    iget-object v1, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT DISTINCT OfferId FROM cache_files"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 603
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 604
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    :cond_0
    const-string v1, "OfferId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/nativex/monetization/manager/CacheDBManager;->checkFileStatusDeletedForOffer(J)V

    .line 607
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 611
    :cond_1
    if-eqz v0, :cond_2

    .line 612
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 614
    :cond_2
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDBCreator:Lcom/nativex/monetization/database/CacheDatabase;

    invoke-virtual {v0}, Lcom/nativex/monetization/database/CacheDatabase;->close()V

    .line 64
    return-void
.end method

.method public deleteAllCacheErrors()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 907
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_error"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteAllCacheFiles()I
    .locals 7

    .prologue
    .line 671
    const-string v0, "FileStatus=?"

    .line 672
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 673
    .local v1, "args":[Ljava/lang/String;
    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache_files"

    invoke-virtual {v3, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 674
    .local v2, "id":I
    return v2
.end method

.method public deleteCacheFile(Lcom/nativex/monetization/business/CacheFile;)I
    .locals 6
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;

    .prologue
    .line 663
    const-string v0, "OfferId=? AND MD5=?"

    .line 664
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getOfferId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 666
    .local v1, "args":[Ljava/lang/String;
    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache_files"

    invoke-virtual {v3, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 667
    .local v2, "id":I
    return v2
.end method

.method public deleteCacheFileWithCacheId(J)I
    .locals 5
    .param p1, "cacheId"    # J

    .prologue
    .line 655
    const-string v0, "cache_id=?"

    .line 656
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 658
    .local v1, "args":[Ljava/lang/String;
    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache_files"

    invoke-virtual {v3, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 659
    .local v2, "id":I
    return v2
.end method

.method public deleteDownloadId(J)J
    .locals 5
    .param p1, "downloadid"    # J

    .prologue
    .line 746
    const-string v0, "download_id=?"

    .line 747
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 749
    .local v1, "args":[Ljava/lang/String;
    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "download_map"

    invoke-virtual {v3, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 750
    .local v2, "id":I
    int-to-long v3, v2

    return-wide v3
.end method

.method public deleteDownloadedFile(Ljava/lang/String;)J
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 822
    const-string v0, "downloaded_file_name=?"

    .line 823
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 825
    .local v1, "args":[Ljava/lang/String;
    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "downloaded_files"

    invoke-virtual {v3, v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 826
    .local v2, "id":I
    int-to-long v3, v2

    return-wide v3
.end method

.method public fillPackageName()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloaded_files"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 97
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/manager/CacheDBManager;->addPackageName(Ljava/lang/String;)J

    .line 102
    :cond_0
    return-void
.end method

.method public fillStatusTable()V
    .locals 20

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "file_status"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 74
    .local v13, "cursor":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    invoke-static {}, Lcom/nativex/monetization/enums/FileStatus;->values()[Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v12

    .local v12, "arr$":[Lcom/nativex/monetization/enums/FileStatus;
    move-object v0, v12

    array-length v0, v0

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_0
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    aget-object v18, v12, v14

    .line 77
    .local v18, "status":Lcom/nativex/monetization/enums/FileStatus;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v19, "values":Landroid/content/ContentValues;
    const-string v4, "status"

    invoke-virtual/range {v18 .. v18}, Lcom/nativex/monetization/enums/FileStatus;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "file_status"

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 80
    .local v15, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    move-object v4, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, v4

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 84
    .end local v12    # "arr$":[Lcom/nativex/monetization/enums/FileStatus;
    .end local v14    # "i$":I
    .end local v15    # "id":J
    .end local v17    # "len$":I
    .end local v18    # "status":Lcom/nativex/monetization/enums/FileStatus;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string v4, "status_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 85
    .restart local v15    # "id":J
    const-string v4, "status"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 86
    .local v18, "status":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    move-object v4, v0

    invoke-static/range {v18 .. v18}, Lcom/nativex/monetization/enums/FileStatus;->fromString(Ljava/lang/String;)Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 89
    .end local v15    # "id":J
    .end local v18    # "status":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getAllCacheFiles()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v5, "MD5"

    .line 243
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v9, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    const-string v3, "MD5"

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 248
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 249
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    new-instance v8, Lcom/nativex/monetization/business/CacheFile;

    invoke-direct {v8}, Lcom/nativex/monetization/business/CacheFile;-><init>()V

    .line 252
    .local v8, "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    const-string v0, "cache_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setCacheId(J)V

    .line 253
    const-string v0, "CDN"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 254
    const-string v0, "Ext"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 255
    const-string v0, "MD5"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 256
    const-string v0, "FileStatus"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/nativex/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setFileStatus(Lcom/nativex/monetization/enums/FileStatus;)V

    .line 257
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 258
    const-string v0, "FileSize"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setFileSize(J)V

    .line 259
    const-string v0, "RelativeUrl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setRelaiveUrl(Ljava/lang/String;)V

    .line 260
    const-string v0, "OfferId"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setOfferId(J)V

    .line 261
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    .end local v8    # "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    :cond_1
    if-eqz v10, :cond_2

    .line 267
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_2
    return-object v9
.end method

.method public getApplicationPackageName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 855
    const/4 v1, 0x0

    .line 856
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM downloaded_files LIMIT 1"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 857
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 858
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 860
    :cond_0
    const-string v2, "downloaded_file_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 861
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 865
    :cond_1
    return-object v1
.end method

.method public getCacheErrors()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheErrorData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 883
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 884
    .local v8, "cacheErrorList":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheErrorData;>;"
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_error"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 886
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 887
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    :cond_0
    const-string v0, "error_code"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 890
    .local v9, "code":Ljava/lang/String;
    const-string v0, "cdn_url"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 891
    .local v12, "url":Ljava/lang/String;
    new-instance v11, Lcom/nativex/monetization/business/CacheErrorData;

    invoke-direct {v11}, Lcom/nativex/monetization/business/CacheErrorData;-><init>()V

    .line 892
    .local v11, "error":Lcom/nativex/monetization/business/CacheErrorData;
    invoke-virtual {v11, v9}, Lcom/nativex/monetization/business/CacheErrorData;->setCode(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v11, v12}, Lcom/nativex/monetization/business/CacheErrorData;->setUrl(Ljava/lang/String;)V

    .line 894
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    .end local v9    # "code":Ljava/lang/String;
    .end local v11    # "error":Lcom/nativex/monetization/business/CacheErrorData;
    .end local v12    # "url":Ljava/lang/String;
    :cond_1
    if-eqz v10, :cond_2

    .line 900
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 902
    :cond_2
    return-object v8
.end method

.method public getCacheFile(J)Ljava/util/List;
    .locals 11
    .param p1, "offerId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 399
    const-string v3, "OfferId=? AND FileStatus=? OR FileStatus=?"

    .line 400
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_READY:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 403
    .local v4, "args":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v9, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 408
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 409
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    new-instance v8, Lcom/nativex/monetization/business/CacheFile;

    invoke-direct {v8}, Lcom/nativex/monetization/business/CacheFile;-><init>()V

    .line 412
    .local v8, "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    const-string v0, "cache_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setCacheId(J)V

    .line 413
    const-string v0, "CDN"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 414
    const-string v0, "Ext"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 415
    const-string v0, "MD5"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 416
    const-string v0, "FileStatus"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/nativex/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setFileStatus(Lcom/nativex/monetization/enums/FileStatus;)V

    .line 417
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 418
    const-string v0, "FileSize"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setFileSize(J)V

    .line 419
    const-string v0, "RelativeUrl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setRelaiveUrl(Ljava/lang/String;)V

    .line 420
    const-string v0, "OfferId"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setOfferId(J)V

    .line 421
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    .end local v8    # "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    :cond_1
    if-eqz v10, :cond_2

    .line 427
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_2
    return-object v9
.end method

.method public getCacheFile(Lcom/nativex/monetization/business/CacheFile;)Ljava/util/List;
    .locals 11
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nativex/monetization/business/CacheFile;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 356
    const-string v3, "MD5=? AND FileStatus<>? AND FileStatus<>?"

    .line 359
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_FAILED:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 362
    .local v4, "args":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v8, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 366
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 368
    .local v10, "file":Lcom/nativex/monetization/business/CacheFile;
    if-eqz v9, :cond_1

    .line 369
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    new-instance v10, Lcom/nativex/monetization/business/CacheFile;

    .end local v10    # "file":Lcom/nativex/monetization/business/CacheFile;
    invoke-direct {v10}, Lcom/nativex/monetization/business/CacheFile;-><init>()V

    .line 372
    .restart local v10    # "file":Lcom/nativex/monetization/business/CacheFile;
    const-string v0, "cache_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setCacheId(J)V

    .line 373
    const-string v0, "CDN"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/nativex/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 374
    const-string v0, "Ext"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/nativex/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 375
    const-string v0, "MD5"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/nativex/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 376
    const-string v0, "FileStatus"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/nativex/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/nativex/monetization/business/CacheFile;->setFileStatus(Lcom/nativex/monetization/enums/FileStatus;)V

    .line 377
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 378
    const-string v0, "FileSize"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setFileSize(J)V

    .line 379
    const-string v0, "RelativeUrl"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/nativex/monetization/business/CacheFile;->setRelaiveUrl(Ljava/lang/String;)V

    .line 380
    const-string v0, "OfferId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setOfferId(J)V

    .line 381
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    :cond_1
    if-eqz v9, :cond_2

    .line 387
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 389
    :cond_2
    return-object v8
.end method

.method public getCacheFileForDownloadId(J)Lcom/nativex/monetization/business/CacheFile;
    .locals 12
    .param p1, "downloadid"    # J

    .prologue
    const/4 v2, 0x0

    .line 754
    const-string v3, "download_id=?"

    .line 755
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 757
    .local v4, "args":[Ljava/lang/String;
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_map"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 760
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 761
    .local v10, "file":Lcom/nativex/monetization/business/CacheFile;
    if-eqz v9, :cond_2

    .line 762
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 764
    :cond_0
    const-string v0, "cachefile"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 765
    .local v8, "cacheFileJson":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 766
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 767
    .local v11, "gson":Lcom/google/gson/Gson;
    const-class v0, Lcom/nativex/monetization/business/CacheFile;

    invoke-virtual {v11, v8, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "file":Lcom/nativex/monetization/business/CacheFile;
    check-cast v10, Lcom/nativex/monetization/business/CacheFile;

    .line 769
    .end local v11    # "gson":Lcom/google/gson/Gson;
    .restart local v10    # "file":Lcom/nativex/monetization/business/CacheFile;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    .end local v8    # "cacheFileJson":Ljava/lang/String;
    :cond_2
    if-eqz v9, :cond_3

    .line 774
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 776
    :cond_3
    return-object v10
.end method

.method public getCacheFilesForDownload()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v5, "MD5"

    .line 317
    const-string v3, "FileStatus=?"

    .line 318
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v6, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 320
    .local v4, "args":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v9, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    const-string v6, "MD5"

    const-string v7, "ExpirationDateUTC DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 325
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 326
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    :cond_0
    new-instance v8, Lcom/nativex/monetization/business/CacheFile;

    invoke-direct {v8}, Lcom/nativex/monetization/business/CacheFile;-><init>()V

    .line 329
    .local v8, "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    const-string v0, "cache_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setCacheId(J)V

    .line 330
    const-string v0, "CDN"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 331
    const-string v0, "Ext"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 332
    const-string v0, "MD5"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 333
    const-string v0, "FileStatus"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/nativex/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setFileStatus(Lcom/nativex/monetization/enums/FileStatus;)V

    .line 334
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 335
    const-string v0, "FileSize"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setFileSize(J)V

    .line 336
    const-string v0, "RelativeUrl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setRelaiveUrl(Ljava/lang/String;)V

    .line 337
    const-string v0, "OfferId"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setOfferId(J)V

    .line 338
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    .end local v8    # "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    :cond_1
    if-eqz v10, :cond_2

    .line 344
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_2
    return-object v9
.end method

.method public getCacheFilesForPurging()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/CacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v5, "MD5"

    .line 278
    const-string v3, "FileStatus<>?"

    .line 279
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v6, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 281
    .local v4, "args":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v9, "cacheFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheFile;>;"
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    const-string v6, "MD5"

    const-string v7, "ExpirationDateUTC ASC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 286
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 287
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    new-instance v8, Lcom/nativex/monetization/business/CacheFile;

    invoke-direct {v8}, Lcom/nativex/monetization/business/CacheFile;-><init>()V

    .line 290
    .local v8, "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    const-string v0, "cache_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setCacheId(J)V

    .line 291
    const-string v0, "CDN"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setCDN(Ljava/lang/String;)V

    .line 292
    const-string v0, "Ext"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setExt(Ljava/lang/String;)V

    .line 293
    const-string v0, "MD5"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setMD5(Ljava/lang/String;)V

    .line 294
    const-string v0, "FileStatus"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/nativex/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setFileStatus(Lcom/nativex/monetization/enums/FileStatus;)V

    .line 295
    const-string v0, "ExpirationDateUTC"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setExpiryTime(J)V

    .line 296
    const-string v0, "FileSize"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setFileSize(J)V

    .line 297
    const-string v0, "RelativeUrl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nativex/monetization/business/CacheFile;->setRelaiveUrl(Ljava/lang/String;)V

    .line 298
    const-string v0, "OfferId"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/nativex/monetization/business/CacheFile;->setOfferId(J)V

    .line 299
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    .end local v8    # "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    :cond_1
    if-eqz v10, :cond_2

    .line 305
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_2
    return-object v9
.end method

.method public getCacheUtilInteger(Ljava/lang/String;)J
    .locals 11
    .param p1, "cacheutil"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 714
    const-string v3, "cache_util=?"

    .line 715
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 717
    .local v4, "args":[Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 718
    .local v9, "value":J
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_utils"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 721
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 722
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    :cond_0
    const-string v0, "cache_util_value_int"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 725
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    :cond_1
    if-eqz v8, :cond_2

    .line 730
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 732
    :cond_2
    return-wide v9
.end method

.method public getDownloadMap()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/DownloadMap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 781
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 782
    .local v11, "downloadMapList":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/DownloadMap;>;"
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_map"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 784
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 785
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    :cond_0
    new-instance v13, Lcom/nativex/monetization/business/DownloadMap;

    invoke-direct {v13}, Lcom/nativex/monetization/business/DownloadMap;-><init>()V

    .line 788
    .local v13, "map":Lcom/nativex/monetization/business/DownloadMap;
    const-string v0, "download_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/nativex/monetization/business/DownloadMap;->setDownloadId(Ljava/lang/Long;)V

    .line 789
    const-string v0, "cachefile"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 790
    .local v9, "cacheFileJson":Ljava/lang/String;
    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    .line 791
    .local v12, "gson":Lcom/google/gson/Gson;
    const-class v0, Lcom/nativex/monetization/business/CacheFile;

    invoke-virtual {v12, v9, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nativex/monetization/business/CacheFile;

    .line 792
    .local v8, "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    invoke-virtual {v13, v8}, Lcom/nativex/monetization/business/DownloadMap;->setCacheFile(Lcom/nativex/monetization/business/CacheFile;)V

    .line 793
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    .end local v8    # "cacheFile":Lcom/nativex/monetization/business/CacheFile;
    .end local v9    # "cacheFileJson":Ljava/lang/String;
    .end local v12    # "gson":Lcom/google/gson/Gson;
    .end local v13    # "map":Lcom/nativex/monetization/business/DownloadMap;
    :cond_1
    if-eqz v10, :cond_2

    .line 799
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 801
    :cond_2
    return-object v11
.end method

.method public getDownloadedFiles()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 831
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 832
    .local v9, "downloadedFilesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloaded_files"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 834
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x1

    .line 835
    .local v11, "skipCount":I
    if-eqz v8, :cond_2

    .line 836
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 838
    :cond_0
    const/4 v0, 0x1

    if-le v11, v0, :cond_1

    .line 839
    const-string v0, "downloaded_file_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 840
    .local v10, "fileName":Ljava/lang/String;
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    .end local v10    # "fileName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 843
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    :cond_2
    if-eqz v8, :cond_3

    .line 848
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 850
    :cond_3
    return-object v9
.end method

.method public getOffersCachedList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v3, "offersCachedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT DISTINCT OfferId FROM cache_files"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 442
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 443
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 445
    :cond_0
    const-string v4, "OfferId"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 446
    .local v1, "offerId":J
    invoke-virtual {p0, v1, v2}, Lcom/nativex/monetization/manager/CacheDBManager;->isOfferCached(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 453
    .end local v1    # "offerId":J
    :cond_2
    if-eqz v0, :cond_3

    .line 454
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_3
    return-object v3
.end method

.method public getSizeOfDownloadedCacheFiles()J
    .locals 5

    .prologue
    .line 573
    iget-object v1, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT SUM(FileSize) FROM cache_files WHERE FileStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v4, Lcom/nativex/monetization/enums/FileStatus;->STATUS_READY:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FileStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v4, Lcom/nativex/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GROUP BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MD5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 579
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 583
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getTotalSizeOfCacheFiles()J
    .locals 5

    .prologue
    .line 556
    iget-object v1, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT SUM(FileSize) FROM cache_files WHERE FileStatus<>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v4, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GROUP BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MD5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 559
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 563
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public incrementRetryCount(Lcom/nativex/monetization/business/CacheFile;)V
    .locals 0
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;

    .prologue
    .line 548
    return-void
.end method

.method public isFileCached(Lcom/nativex/monetization/business/CacheFile;)Z
    .locals 10
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;

    .prologue
    const/4 v2, 0x0

    .line 466
    const-string v3, "MD5=? AND FileStatus<>? AND FileStatus<>? AND FileStatus<>? AND FileStatus<>?"

    .line 471
    .local v3, "WHERE":Ljava/lang/String;
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PAUSED:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_FAILED:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 476
    .local v4, "args":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 477
    .local v9, "found":Z
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 480
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 481
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    :cond_0
    const/4 v9, 0x1

    .line 484
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    :cond_1
    if-eqz v8, :cond_2

    .line 489
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 491
    :cond_2
    return v9
.end method

.method public isOfferCached(J)Z
    .locals 13
    .param p1, "offerId"    # J

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 500
    const-string v3, "OfferId=?"

    .line 501
    .local v3, "WHERE":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 503
    .local v4, "args":[Ljava/lang/String;
    const/4 v10, 0x1

    .line 504
    .local v10, "offerCached":Z
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_files"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 507
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 508
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    :cond_0
    const-string v0, "FileStatus"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 511
    .local v9, "fileStatus":I
    int-to-long v0, v9

    invoke-direct {p0, v0, v1}, Lcom/nativex/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/enums/FileStatus;->STATUS_READY:Lcom/nativex/monetization/enums/FileStatus;

    if-eq v0, v1, :cond_1

    int-to-long v0, v9

    invoke-direct {p0, v0, v1}, Lcom/nativex/monetization/manager/CacheDBManager;->getFileStatus(J)Lcom/nativex/monetization/enums/FileStatus;

    move-result-object v0

    sget-object v1, Lcom/nativex/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

    if-ne v0, v1, :cond_4

    :cond_1
    move v0, v12

    :goto_0
    if-nez v0, :cond_5

    .line 513
    const/4 v10, 0x0

    .line 520
    .end local v9    # "fileStatus":I
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 521
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 523
    :cond_3
    return v10

    .restart local v9    # "fileStatus":I
    :cond_4
    move v0, v11

    .line 511
    goto :goto_0

    .line 516
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDBCreator:Lcom/nativex/monetization/database/CacheDatabase;

    invoke-virtual {v0}, Lcom/nativex/monetization/database/CacheDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    invoke-virtual {p0}, Lcom/nativex/monetization/manager/CacheDBManager;->fillStatusTable()V

    .line 59
    invoke-virtual {p0}, Lcom/nativex/monetization/manager/CacheDBManager;->fillPackageName()V

    .line 60
    return-void
.end method

.method public updateCacheExpiryTime(Lcom/nativex/monetization/business/CacheFile;)V
    .locals 6
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;

    .prologue
    .line 139
    const-string v0, "OfferId=? AND MD5=? AND ExpirationDateUTC=?"

    .line 142
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getOfferId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getExpiryTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 146
    .local v1, "args":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 147
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "ExpirationDateUTC"

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getExpiryTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache_files"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public updateCacheForDeletedFile(Lcom/nativex/monetization/business/CacheFile;)I
    .locals 7
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;

    .prologue
    .line 158
    const-string v0, "OfferId=? AND MD5=? AND FileStatus=?"

    .line 161
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getOfferId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v4, 0x2

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 163
    .local v1, "args":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "FileStatus"

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache_files"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updateCacheUtil(Ljava/lang/String;J)V
    .locals 8
    .param p1, "cacheutil"    # Ljava/lang/String;
    .param p2, "intvalue"    # J

    .prologue
    .line 695
    const-string v0, "cache_util=?"

    .line 696
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v1, v6

    .line 698
    .local v1, "args":[Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 699
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "cache_util_value_int"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 701
    iget-object v6, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "cache_utils"

    invoke-virtual {v6, v7, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v3, v6

    .line 702
    .local v3, "rowsAffected":J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-nez v6, :cond_0

    .line 704
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/nativex/monetization/manager/CacheDBManager;->addCacheUtil(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v2

    .line 706
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateFileStatus(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I
    .locals 7
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;
    .param p2, "status"    # Lcom/nativex/monetization/enums/FileStatus;

    .prologue
    .line 198
    const-string v0, "MD5=?"

    .line 199
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 201
    .local v1, "args":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "FileStatus"

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache_files"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updateFileStatusToReady()I
    .locals 7

    .prologue
    .line 228
    const-string v0, "FileStatus=?"

    .line 229
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 231
    .local v1, "args":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "FileStatus"

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_READY:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache_files"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updateFileStatusWithOfferId(Lcom/nativex/monetization/business/CacheFile;Lcom/nativex/monetization/enums/FileStatus;)I
    .locals 7
    .param p1, "cacheFile"    # Lcom/nativex/monetization/business/CacheFile;
    .param p2, "status"    # Lcom/nativex/monetization/enums/FileStatus;

    .prologue
    .line 214
    const-string v0, "MD5=? AND OfferId=?"

    .line 215
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getMD5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/nativex/monetization/business/CacheFile;->getOfferId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 217
    .local v1, "args":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "FileStatus"

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache_files"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updateOffersToIN_USE(JLcom/nativex/monetization/enums/FileStatus;)I
    .locals 7
    .param p1, "offerId"    # J
    .param p3, "status"    # Lcom/nativex/monetization/enums/FileStatus;

    .prologue
    .line 176
    const-string v0, "OfferId=? AND FileStatus<>? AND FileStatus<>? AND FileStatus<>? AND FileStatus<>? AND FileStatus<>?"

    .line 180
    .local v0, "WHERE":Ljava/lang/String;
    const/4 v3, 0x6

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v4, 0x2

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DOWNLOADING:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v4, 0x3

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_FAILED:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v4, 0x4

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v4, 0x5

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    sget-object v5, Lcom/nativex/monetization/enums/FileStatus;->STATUS_PAUSED:Lcom/nativex/monetization/enums/FileStatus;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 184
    .local v1, "args":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 185
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "FileStatus"

    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->fileStatusIds:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/nativex/monetization/manager/CacheDBManager;->cacheDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache_files"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method
