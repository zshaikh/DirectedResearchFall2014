.class public Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
.super Lcom/playhaven/src/common/PHAPIRequest;
.source "PHPublisherContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;,
        Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHRequestState:[I

.field private static dismissedStamps:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private applicationContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private cache:Lcom/jakewharton/DiskLruCache;

.field private content:Lcom/playhaven/src/publishersdk/content/PHContent;

.field public contentTag:Ljava/lang/String;

.field private content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

.field private currentState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

.field private customize_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

.field private failure_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

.field public placement:Ljava/lang/String;

.field private purchase_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

.field private reward_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

.field private showsOverlayImmediately:Z

.field private targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;


# direct methods
.method static synthetic $SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHRequestState()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHRequestState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->values()[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->DisplayingContent:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Done:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Initialized:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloaded:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloading:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHRequestState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->dismissedStamps:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "delegate"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;
    .param p3, "placement"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0, p1, p3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 226
    iput-object p2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .line 227
    invoke-virtual {p0, p2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setDelegates(Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "placement"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->showsOverlayImmediately:Z

    .line 106
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    .line 112
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->reward_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    .line 118
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->purchase_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    .line 124
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    .line 130
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->failure_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    .line 210
    iput-object p2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->applicationContext:Ljava/lang/ref/WeakReference;

    .line 214
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->activityContext:Ljava/lang/ref/WeakReference;

    .line 216
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->cache:Lcom/jakewharton/DiskLruCache;

    .line 218
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->registerReceiver()V

    .line 220
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Initialized:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setCurrentState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V

    .line 221
    return-void
.end method

.method static synthetic access$1(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    return-object v0
.end method

.method static synthetic access$2(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->failure_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    return-object v0
.end method

.method static synthetic access$3(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->reward_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    return-object v0
.end method

.method static synthetic access$4(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->purchase_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    return-object v0
.end method

.method private static cacheImage(Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 467
    if-nez p0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const-string v2, "url"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending cache request for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 474
    new-instance v0, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;

    invoke-direct {v0}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;-><init>()V

    .line 475
    .local v0, "task":Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;
    invoke-virtual {v0, v1}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->setURL(Ljava/lang/String;)V

    .line 476
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/playhaven/src/publishersdk/open/PHPrefetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private continueLoading()V
    .locals 2

    .prologue
    .line 342
    invoke-static {}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->$SWITCH_TABLE$com$playhaven$src$publishersdk$content$PHPublisherContentRequest$PHRequestState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->currentState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 352
    :goto_0
    :pswitch_0
    return-void

    .line 344
    :pswitch_1
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->loadContent()V

    goto :goto_0

    .line 347
    :pswitch_2
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->showContent()V

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static didDismissContentWithin(J)Z
    .locals 6
    .param p0, "range"    # J

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 148
    .local v0, "curTime":J
    const-wide/16 v2, 0x0

    .line 154
    .local v2, "stampTime":J
    :goto_0
    sub-long v4, v0, v2

    cmp-long v4, v4, p0

    if-lez v4, :cond_0

    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->dismissedStamps:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 159
    :cond_0
    sub-long v4, v0, v2

    cmp-long v4, v4, p0

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 155
    :cond_1
    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->dismissedStamps:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 159
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static dismissedContent()V
    .locals 3

    .prologue
    .line 164
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->dismissedStamps:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method private static fetchImageFromCache(Lorg/json/JSONObject;)V
    .locals 8
    .param p0, "config"    # Lorg/json/JSONObject;

    .prologue
    const-string v6, "url"

    .line 436
    if-nez p0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const-string v5, "url"

    const/4 v5, 0x0

    invoke-virtual {p0, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "url":Ljava/lang/String;
    invoke-static {}, Lcom/jakewharton/DiskLruCache;->getSharedDiskCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v0

    .line 443
    .local v0, "cache":Lcom/jakewharton/DiskLruCache;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 445
    :try_start_0
    invoke-virtual {v0, v4}, Lcom/jakewharton/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Snapshot;

    move-result-object v3

    .line 447
    .local v3, "precached_snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    if-eqz v3, :cond_0

    .line 451
    sget-object v5, Lcom/playhaven/src/common/PHAPIRequest;->PRECACHE_FILE_KEY_INDEX:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStreamFile(I)Ljava/io/File;

    move-result-object v2

    .line 452
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v3}, Lcom/jakewharton/DiskLruCache$Snapshot;->close()V

    .line 454
    if-eqz v2, :cond_0

    .line 458
    const-string v5, "url"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "file://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "precached_snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "PHPublisherContentRequest - checkCacheForImage"

    sget-object v6, Lcom/playhaven/src/common/PHCrashReport$Urgency;->high:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v1, v5, v6}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method private loadContent()V
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloading:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setCurrentState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V

    .line 301
    invoke-super {p0}, Lcom/playhaven/src/common/PHAPIRequest;->send()V

    .line 304
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    invoke-interface {v0, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;->willGetContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V

    .line 307
    :cond_0
    return-void
.end method

.method private static processResponse(Lorg/json/JSONArray;Z)V
    .locals 3
    .param p0, "array"    # Lorg/json/JSONArray;
    .param p1, "cache"    # Z

    .prologue
    .line 481
    if-nez p0, :cond_1

    .line 493
    :cond_0
    return-void

    .line 485
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 486
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 487
    .local v1, "object":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 488
    invoke-static {v1, p1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->processResponse(Lorg/json/JSONObject;Z)V

    .line 485
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    :cond_2
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->processResponse(Lorg/json/JSONArray;Z)V

    goto :goto_1
.end method

.method public static processResponse(Lorg/json/JSONObject;Z)V
    .locals 8
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "cache"    # Z

    .prologue
    const-string v7, "PH_PORTRAIT"

    const-string v6, "PH_LANDSCAPE"

    .line 496
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_1

    .line 526
    :cond_0
    return-void

    .line 500
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    .line 502
    .local v4, "keys":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 503
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "k":Ljava/lang/String;
    const-string v5, "image"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 505
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 506
    .local v2, "image":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 507
    if-eqz p1, :cond_3

    .line 508
    const-string v5, "PH_PORTRAIT"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->cacheImage(Lorg/json/JSONObject;)V

    .line 509
    const-string v5, "PH_LANDSCAPE"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->cacheImage(Lorg/json/JSONObject;)V

    .line 502
    .end local v2    # "image":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .restart local v2    # "image":Lorg/json/JSONObject;
    :cond_3
    const-string v5, "PH_PORTRAIT"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->fetchImageFromCache(Lorg/json/JSONObject;)V

    .line 512
    const-string v5, "PH_LANDSCAPE"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->fetchImageFromCache(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 516
    .end local v2    # "image":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 517
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_5

    .line 519
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->processResponse(Lorg/json/JSONObject;Z)V

    goto :goto_1

    .line 521
    :cond_5
    invoke-static {v0, p1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->processResponse(Lorg/json/JSONArray;Z)V

    goto :goto_1
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 535
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->applicationContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->applicationContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;

    invoke-direct {v1, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$1;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V

    .line 589
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.playhaven.src.publishersdk.content.PHContentViewEvent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 591
    :cond_0
    return-void
.end method

.method private showContent()V
    .locals 6

    .prologue
    .line 310
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    sget-object v5, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->DisplayingContent:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    sget-object v5, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Done:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    if-ne v4, v5, :cond_3

    .line 312
    :cond_0
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v4, :cond_1

    .line 313
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-interface {v4, p0, v5}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;->willDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V

    .line 316
    :cond_1
    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->DisplayingContent:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {p0, v4}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setCurrentState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V

    .line 318
    const/4 v2, 0x0

    .line 319
    .local v2, "inactive":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v0, 0x0

    .line 320
    .local v0, "active":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v1, "customClose":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    if-eqz v4, :cond_2

    .line 323
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "inactive":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    sget-object v5, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Up:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-interface {v4, p0, v5}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;->closeButton(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 324
    .restart local v2    # "inactive":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "active":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    sget-object v5, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Up:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-interface {v4, p0, v5}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;->closeButton(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 326
    .restart local v0    # "active":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Up:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-virtual {v4}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Down:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-virtual {v4}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PHContentView: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "tag":Ljava/lang/String;
    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->activityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v5, v4, v1, v3}, Lcom/playhaven/src/publishersdk/content/PHContentView;->pushContent(Lcom/playhaven/src/publishersdk/content/PHContent;Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->contentTag:Ljava/lang/String;

    .line 335
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v4, :cond_3

    .line 336
    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    iget-object v5, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-interface {v4, p0, v5}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;->didDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V

    .line 339
    .end local v0    # "active":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "customClose":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v2    # "inactive":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public baseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string v0, "/v3/publisher/content/"

    invoke-super {p0, v0}, Lcom/playhaven/src/common/PHAPIRequest;->createAPIURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Done:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setCurrentState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V

    .line 377
    invoke-super {p0}, Lcom/playhaven/src/common/PHAPIRequest;->finish()V

    .line 378
    return-void
.end method

.method public getAdditionalParams()Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 387
    .local v1, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "placement_id"

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v2, "preload"

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloaded:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    if-ne v3, v4, :cond_1

    const-string v3, "1"

    :goto_1
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->activityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/playhaven/src/common/PHSession;->getInstance(Landroid/content/Context;)Lcom/playhaven/src/common/PHSession;

    move-result-object v0

    .line 391
    .local v0, "session":Lcom/playhaven/src/common/PHSession;
    const-string v2, "stime"

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHSession;->getSessionTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    return-object v1

    .line 387
    .end local v0    # "session":Lcom/playhaven/src/common/PHSession;
    .restart local p0    # "this":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 388
    :cond_1
    const-string v3, "0"

    goto :goto_1
.end method

.method public getContent()Lcom/playhaven/src/publishersdk/content/PHContent;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    return-object v0
.end method

.method public getCurrentState()Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->currentState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    return-object v0
.end method

.method public getOverlayImmediately()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->showsOverlayImmediately:Z

    return v0
.end method

.method public getTargetState()Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    return-object v0
.end method

.method public handleRequestSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 398
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    new-instance v3, Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-direct {v3, p1}, Lcom/playhaven/src/publishersdk/content/PHContent;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    .line 402
    iget-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    iget-object v3, v3, Lcom/playhaven/src/publishersdk/content/PHContent;->url:Landroid/net/Uri;

    if-nez v3, :cond_2

    .line 403
    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Done:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {p0, v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setCurrentState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V

    .line 429
    :goto_1
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->continueLoading()V

    goto :goto_0

    .line 405
    :cond_2
    sget-boolean v3, Lcom/playhaven/src/common/PHConfig;->precache:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    sget-object v4, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloaded:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    if-ne v3, v4, :cond_3

    .line 406
    iget-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->cache:Lcom/jakewharton/DiskLruCache;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->cache:Lcom/jakewharton/DiskLruCache;

    invoke-virtual {v3}, Lcom/jakewharton/DiskLruCache;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 408
    :try_start_0
    iget-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->cache:Lcom/jakewharton/DiskLruCache;

    iget-object v4, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    iget-object v4, v4, Lcom/playhaven/src/publishersdk/content/PHContent;->url:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jakewharton/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Snapshot;

    move-result-object v2

    .line 410
    .local v2, "precached_snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    if-eqz v2, :cond_3

    .line 411
    sget-object v3, Lcom/playhaven/src/common/PHAPIRequest;->PRECACHE_FILE_KEY_INDEX:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStreamFile(I)Ljava/io/File;

    move-result-object v1

    .line 412
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v2}, Lcom/jakewharton/DiskLruCache$Snapshot;->close()V

    .line 414
    if-eqz v1, :cond_3

    .line 415
    const-string v3, "context"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->processResponse(Lorg/json/JSONObject;Z)V

    .line 418
    iget-object v3, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content:Lcom/playhaven/src/publishersdk/content/PHContent;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/playhaven/src/publishersdk/content/PHContent;->preloaded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "precached_snapshot":Lcom/jakewharton/DiskLruCache$Snapshot;
    :cond_3
    :goto_2
    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloaded:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {p0, v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setCurrentState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V

    goto :goto_1

    .line 421
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 422
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "PHPublisherContentRequest - handleRequestSuccess"

    sget-object v4, Lcom/playhaven/src/common/PHCrashReport$Urgency;->high:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v3, v4}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_2
.end method

.method public preload()V
    .locals 7

    .prologue
    .line 270
    sget-boolean v1, Lcom/playhaven/src/common/PHConfig;->precache:Z

    if-eqz v1, :cond_1

    .line 271
    const-class v2, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    monitor-enter v2

    .line 273
    :try_start_0
    invoke-static {}, Lcom/jakewharton/DiskLruCache;->getSharedDiskCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->cache:Lcom/jakewharton/DiskLruCache;

    .line 275
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->cache:Lcom/jakewharton/DiskLruCache;

    if-nez v1, :cond_2

    .line 277
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->activityContext:Ljava/lang/ref/WeakReference;

    .line 278
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 279
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "apicache"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->APP_CACHE_VERSION:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 282
    const/4 v4, 0x1

    .line 283
    sget v5, Lcom/playhaven/src/common/PHConfig;->precache_size:I

    int-to-long v5, v5

    .line 277
    invoke-static {v3, v1, v4, v5, v6}, Lcom/jakewharton/DiskLruCache;->createSharedDiskCache(Ljava/io/File;IIJ)V

    .line 284
    invoke-static {}, Lcom/jakewharton/DiskLruCache;->getSharedDiskCache()Lcom/jakewharton/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->cache:Lcom/jakewharton/DiskLruCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    :cond_1
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->Preloaded:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .line 296
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->continueLoading()V

    .line 297
    return-void

    .line 285
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->cache:Lcom/jakewharton/DiskLruCache;

    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->cache:Lcom/jakewharton/DiskLruCache;

    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache;->open()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "PHPublisherContentRequest - preload"

    sget-object v3, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v3}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public send()V
    .locals 3

    .prologue
    .line 361
    :try_start_0
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->DisplayingContent:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .line 363
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    invoke-interface {v1, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;->willGetContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->continueLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHPublisherContentRequest - send"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public setCurrentState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V
    .locals 2
    .param p1, "state"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .prologue
    .line 240
    if-nez p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->currentState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->currentState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .line 244
    :cond_2
    invoke-virtual {p1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->currentState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 245
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->currentState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    goto :goto_0
.end method

.method public setDelegates(Ljava/lang/Object;)V
    .locals 3
    .param p1, "delegate"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 170
    instance-of v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    if-eqz v1, :cond_0

    .line 171
    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    move-object v1, v0

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->reward_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    .line 177
    :goto_0
    instance-of v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    if-eqz v1, :cond_1

    .line 178
    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    move-object v1, v0

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->purchase_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    .line 184
    :goto_1
    instance-of v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    if-eqz v1, :cond_2

    .line 185
    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    move-object v1, v0

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    .line 191
    :goto_2
    instance-of v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    if-eqz v1, :cond_3

    .line 192
    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    move-object v1, v0

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->failure_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    .line 198
    :goto_3
    instance-of v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v1, :cond_4

    .line 199
    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    .end local p1    # "delegate":Ljava/lang/Object;
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    .line 205
    :goto_4
    return-void

    .line 173
    .restart local p1    # "delegate":Ljava/lang/Object;
    :cond_0
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->reward_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    .line 174
    const-string v1, "*** RewardDelegate is not implemented. If you are using rewards this needs to be implemented."

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->purchase_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    .line 181
    const-string v1, "*** PurchaseDelegate is not implemented. If you are using VGP this needs to be implemented."

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_2
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    .line 188
    const-string v1, "*** CustomizeDelegate is not implemented, using Play Haven close button bitmap. Implement to use own close button bitmap."

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 194
    :cond_3
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->failure_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    .line 195
    const-string v1, "*** FailureDelegate is not implemented. Implement if want to be notified of failed content downloads."

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 201
    :cond_4
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    .line 202
    const-string v1, "*** ContentDelegate is not implemented. Implement if want to be notified of content request states."

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setOnContentListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;)V
    .locals 0
    .param p1, "content_listener"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->content_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    .line 110
    return-void
.end method

.method public setOnContentListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;)V
    .locals 0
    .param p1, "reward_listener"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->reward_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$RewardDelegate;

    .line 116
    return-void
.end method

.method public setOnCustomizeListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;)V
    .locals 0
    .param p1, "customize_listener"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->customize_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$CustomizeDelegate;

    .line 128
    return-void
.end method

.method public setOnFailureListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;)V
    .locals 0
    .param p1, "failure_listener"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->failure_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    .line 134
    return-void
.end method

.method public setOnPurchaseListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;)V
    .locals 0
    .param p1, "purchase_listener"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->purchase_listener:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PurchaseDelegate;

    .line 122
    return-void
.end method

.method public setOverlayImmediately(Z)V
    .locals 0
    .param p1, "doOverlay"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->showsOverlayImmediately:Z

    .line 237
    return-void
.end method

.method public setTargetState(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;)V
    .locals 0
    .param p1, "targetState"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->targetState:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRequestState;

    .line 263
    return-void
.end method
