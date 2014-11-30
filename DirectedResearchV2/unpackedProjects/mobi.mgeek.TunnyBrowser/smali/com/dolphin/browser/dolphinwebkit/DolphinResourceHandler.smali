.class public final Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;
.super Ljava/lang/Object;
.source "DolphinResourceHandler.java"

# interfaces
.implements Lcom/dolphin/browser/core/IResourceHandler;


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field public static final COMPRESSION_LEVEL_BALANCE:I = 0x2

.field public static final COMPRESSION_LEVEL_DISABLED:I = 0x0

.field public static final COMPRESSION_LEVEL_QUALITY_FIRST:I = 0x1

.field public static final COMPRESSION_LEVEL_SIZE_FIRST:I = 0x3

.field public static final RESOURCE_TYPE_IMAGE:Ljava/lang/String; = "image"

.field private static sInstance:Lcom/dolphin/browser/core/IResourceHandler;

.field private static sResourceStopwatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;

    invoke-direct {v0}, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;-><init>()V

    sput-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->sInstance:Lcom/dolphin/browser/core/IResourceHandler;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->sResourceStopwatches:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/dolphin/browser/core/IResourceHandler;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->sInstance:Lcom/dolphin/browser/core/IResourceHandler;

    return-object v0
.end method

.method public static getResourceHandlerFromUrl(Ljava/lang/String;)Ldolphin/net/resource/ResourceHandler;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Ldolphin/net/resource/ResourceHandlers;->getResourceHandlerFromUrl(Ljava/lang/String;)Ldolphin/net/resource/ResourceHandler;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Ldolphin/net/resource/ResourceHandlers;->init(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->imageCompressionServerLocale()I

    move-result v0

    invoke-static {v0}, Ldolphin/net/resource/ResourceHandlers;->setLocale(I)V

    .line 47
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->updateSettings()V

    .line 48
    return-void
.end method

.method public static isImageUrl(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->getResourceHandlerFromUrl(Ljava/lang/String;)Ldolphin/net/resource/ResourceHandler;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    const-string v1, "image"

    invoke-interface {v0}, Ldolphin/net/resource/ResourceHandler;->resourceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static trackResourceLoadTimeFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 66
    const-wide/16 v0, -0x1

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 68
    sget-object v4, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->sResourceStopwatches:Ljava/util/HashMap;

    monitor-enter v4

    .line 69
    :try_start_0
    sget-object v5, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->sResourceStopwatches:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->sResourceStopwatches:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 72
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 74
    sub-long v0, v2, v0

    .line 75
    if-eq v6, p2, :cond_1

    const/4 v0, 0x5

    if-ne v0, p2, :cond_2

    .line 76
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "Track"

    const-string v2, "HIT? %s -> %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    if-ne v6, p2, :cond_3

    const-string v0, "1"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    :cond_2
    return-void

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 77
    :cond_3
    const-string v0, "0"

    goto :goto_0
.end method

.method public static trackResourceLoadTimeStart(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 60
    sget-object v1, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->sResourceStopwatches:Ljava/util/HashMap;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinResourceHandler;->sResourceStopwatches:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public updateSettings()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 85
    const-string v1, "image"

    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->getImageCompressionLevel()I

    move-result v0

    invoke-static {v1, v0}, Ldolphin/net/resource/ResourceHandlers;->setResourceCompressionLevel(Ljava/lang/String;I)V

    .line 86
    return-void
.end method
