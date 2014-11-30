.class public Lcom/nativex/monetization/receivers/ScheduleCachingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleCachingReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x0

    .line 25
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, "state":Ljava/lang/String;
    const-string v6, "shared"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 27
    :cond_0
    const-string v6, "SDCard is not accessible. Ignoring this caching cycle."

    invoke-static {v6}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 31
    :cond_1
    sget-object v6, Lcom/nativex/monetization/manager/CacheManager;->JOB_TYPE:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 32
    .local v2, "jobType":I
    sget-object v6, Lcom/nativex/monetization/manager/CacheManager;->CACHING_FREQUENCY_MILLIS:Ljava/lang/String;

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 34
    .local v0, "cachingFrequencyInMillis":J
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 36
    :pswitch_0
    sget-boolean v6, Lcom/nativex/monetization/manager/CacheManager;->cacheTaskCanRun:Z

    if-nez v6, :cond_4

    .line 37
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v6

    const-string v7, "previous_cached_time"

    invoke-virtual {v6, v7}, Lcom/nativex/monetization/manager/CacheDBManager;->getCacheUtilInteger(Ljava/lang/String;)J

    move-result-wide v3

    .line 38
    .local v3, "previousCachedTime":J
    cmp-long v6, v3, v8

    if-eqz v6, :cond_2

    add-long v6, v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 41
    :cond_2
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/nativex/monetization/tasks/CachingTask;

    invoke-direct {v7}, Lcom/nativex/monetization/tasks/CachingTask;-><init>()V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 42
    const/4 v6, 0x1

    sput-boolean v6, Lcom/nativex/monetization/manager/CacheManager;->cacheTaskCanRun:Z

    goto :goto_0

    .line 44
    :cond_3
    const-string v6, " PreviousCacheTime + CachingFrequency less than current system time.. Ignoring this caching cycle."

    invoke-static {v6}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v3    # "previousCachedTime":J
    :cond_4
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/nativex/monetization/tasks/CachingTask;

    invoke-direct {v7}, Lcom/nativex/monetization/tasks/CachingTask;-><init>()V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
