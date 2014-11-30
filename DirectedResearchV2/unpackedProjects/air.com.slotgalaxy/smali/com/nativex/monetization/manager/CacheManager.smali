.class public Lcom/nativex/monetization/manager/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field public static CACHING_FREQUENCY_MILLIS:Ljava/lang/String; = null

.field private static CACHING_TASK:Ljava/lang/String; = null

.field public static final CACHING_UPDATE:I = 0x1

.field public static JOB_TYPE:Ljava/lang/String;

.field public static cacheTaskCanRun:Z

.field private static instance:Lcom/nativex/monetization/manager/CacheManager;


# instance fields
.field private CACHING_UPDATE_CODE:I

.field private alarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private final mUpdateCacheReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "job_type"

    sput-object v0, Lcom/nativex/monetization/manager/CacheManager;->JOB_TYPE:Ljava/lang/String;

    .line 30
    const-string v0, "caching_frequency_millis"

    sput-object v0, Lcom/nativex/monetization/manager/CacheManager;->CACHING_FREQUENCY_MILLIS:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nativex/monetization/manager/CacheManager;->cacheTaskCanRun:Z

    .line 36
    const-string v0, "caching_task"

    sput-object v0, Lcom/nativex/monetization/manager/CacheManager;->CACHING_TASK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0xbba

    iput v0, p0, Lcom/nativex/monetization/manager/CacheManager;->CACHING_UPDATE_CODE:I

    .line 43
    new-instance v0, Lcom/nativex/monetization/receivers/ScheduleCachingReceiver;

    invoke-direct {v0}, Lcom/nativex/monetization/receivers/ScheduleCachingReceiver;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/manager/CacheManager;->mUpdateCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/nativex/monetization/manager/CacheManager;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nativex/monetization/manager/CacheManager;->mUpdateCacheReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/nativex/monetization/manager/CacheManager;->CACHING_TASK:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/nativex/monetization/manager/CacheManager;->alarmManager:Landroid/app/AlarmManager;

    .line 49
    return-void
.end method

.method public static getInstance()Lcom/nativex/monetization/manager/CacheManager;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/nativex/monetization/manager/CacheManager;->instance:Lcom/nativex/monetization/manager/CacheManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/nativex/monetization/manager/CacheManager;

    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nativex/monetization/manager/CacheManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nativex/monetization/manager/CacheManager;->instance:Lcom/nativex/monetization/manager/CacheManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/nativex/monetization/manager/CacheManager;->instance:Lcom/nativex/monetization/manager/CacheManager;

    return-object v0
.end method


# virtual methods
.method public deleteCachedFiles()V
    .locals 9

    .prologue
    .line 125
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nativex/monetization/manager/CacheDBManager;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 127
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/files"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v4, "internalFilesdir":Ljava/io/File;
    if-eqz v4, :cond_0

    .line 129
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v0, v3

    .line 130
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "internalFilesdir":Ljava/io/File;
    .end local v5    # "len$":I
    :cond_0
    return-void
.end method

.method public getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 115
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 116
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 117
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v0, v6

    .line 118
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public isOfferCacheAvailable()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 91
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v3

    const-string v4, "free_space_min"

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/manager/CacheDBManager;->getCacheUtilInteger(Ljava/lang/String;)J

    move-result-wide v0

    .line 92
    .local v0, "freeSpaceMin":J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "state":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-gt v3, v4, :cond_0

    move v3, v5

    .line 105
    :goto_0
    return v3

    .line 96
    :cond_0
    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "shared"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v3, v5

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    move v3, v6

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p0}, Lcom/nativex/monetization/manager/CacheManager;->getAvailableInternalMemorySize()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_4

    move v3, v6

    .line 103
    goto :goto_0

    :cond_4
    move v3, v5

    .line 105
    goto :goto_0
.end method

.method public startCaching(J)V
    .locals 8
    .param p1, "cachingFrequencyInMillis"    # J

    .prologue
    const/4 v1, 0x0

    .line 59
    sput-boolean v1, Lcom/nativex/monetization/manager/CacheManager;->cacheTaskCanRun:Z

    .line 60
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatusToReady()I

    .line 61
    new-instance v7, Landroid/content/Intent;

    sget-object v0, Lcom/nativex/monetization/manager/CacheManager;->CACHING_TASK:Ljava/lang/String;

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v7, "intent":Landroid/content/Intent;
    sget-object v0, Lcom/nativex/monetization/manager/CacheManager;->JOB_TYPE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    sget-object v0, Lcom/nativex/monetization/manager/CacheManager;->CACHING_FREQUENCY_MILLIS:Ljava/lang/String;

    invoke-virtual {v7, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 64
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/nativex/monetization/manager/CacheManager;->CACHING_UPDATE_CODE:I

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 66
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/nativex/monetization/manager/CacheManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 68
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDownloadManager;->getInstance()Lcom/nativex/monetization/manager/CacheDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/manager/CacheDownloadManager;->registerReceiver()V

    .line 69
    const-string v0, "Start Caching"

    invoke-static {v0}, Lcom/nativex/common/Log;->v(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public stopCaching()V
    .locals 5

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/nativex/monetization/manager/CacheManager;->CACHING_TASK:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/nativex/monetization/manager/CacheManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/nativex/monetization/manager/CacheManager;->CACHING_UPDATE_CODE:I

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 76
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/nativex/monetization/manager/CacheManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 78
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDownloadManager;->getInstance()Lcom/nativex/monetization/manager/CacheDownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nativex/monetization/manager/CacheDownloadManager;->unregisterReceiver()V

    .line 79
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nativex/monetization/manager/CacheDBManager;->updateFileStatusToReady()I

    .line 80
    const-string v2, "Stop Caching"

    invoke-static {v2}, Lcom/nativex/common/Log;->v(Ljava/lang/String;)V

    .line 81
    return-void
.end method
