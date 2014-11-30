.class public Lcom/nativex/monetization/manager/ImageCacheManager;
.super Ljava/lang/Object;
.source "ImageCacheManager.java"

# interfaces
.implements Lcom/nativex/monetization/interfaces/IImageCacheManager;


# static fields
.field private static final MSG_PURGE:I = 0x926

.field private static final PURGE_PERIOD:I = 0x493e0

.field private static instance:Lcom/nativex/monetization/interfaces/IImageCacheManager;


# instance fields
.field private handler:Landroid/os/Handler;

.field private isCacheCleared:Z

.field private storage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/manager/ImageCacheManager;->instance:Lcom/nativex/monetization/interfaces/IImageCacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->storage:Ljava/util/Map;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->isCacheCleared:Z

    .line 41
    new-instance v0, Lcom/nativex/monetization/manager/ImageCacheManager$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/manager/ImageCacheManager$1;-><init>(Lcom/nativex/monetization/manager/ImageCacheManager;)V

    iput-object v0, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->handler:Landroid/os/Handler;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->storage:Ljava/util/Map;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/nativex/monetization/manager/ImageCacheManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/manager/ImageCacheManager;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->isCacheCleared:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;
    .locals 2

    .prologue
    .line 65
    const-class v0, Lcom/nativex/monetization/manager/ImageCacheManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nativex/monetization/manager/ImageCacheManager;->instance:Lcom/nativex/monetization/interfaces/IImageCacheManager;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/nativex/monetization/manager/ImageCacheManager;

    invoke-direct {v1}, Lcom/nativex/monetization/manager/ImageCacheManager;-><init>()V

    sput-object v1, Lcom/nativex/monetization/manager/ImageCacheManager;->instance:Lcom/nativex/monetization/interfaces/IImageCacheManager;

    .line 68
    :cond_0
    sget-object v1, Lcom/nativex/monetization/manager/ImageCacheManager;->instance:Lcom/nativex/monetization/interfaces/IImageCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->storage:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->storage:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ImageCacheManager: Unexpected exception caught in add()"

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 83
    iget-object v2, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->storage:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->storage:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 85
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 89
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->storage:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 91
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->storage:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/nativex/monetization/manager/ImageCacheManager;->stopReleasingCache()V

    .line 76
    iget-object v0, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->storage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/nativex/monetization/manager/ImageCacheManager;
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    .line 78
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/nativex/monetization/manager/ImageCacheManager;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseLater()V
    .locals 4

    .prologue
    const/16 v3, 0x926

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->isCacheCleared:Z

    .line 124
    iget-object v0, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->handler:Landroid/os/Handler;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    return-void
.end method

.method public releaseNow()V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/nativex/monetization/manager/ImageCacheManager;->clear()V

    .line 97
    iget-object v1, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->handler:Landroid/os/Handler;

    const/16 v2, 0x926

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/nativex/monetization/manager/ImageCacheManager;->instance:Lcom/nativex/monetization/interfaces/IImageCacheManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ImageCacheManager: Unexpected exception caught in release()"

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopReleasingCache()V
    .locals 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->isCacheCleared:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/nativex/monetization/manager/ImageCacheManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x926

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    :cond_0
    return-void
.end method
