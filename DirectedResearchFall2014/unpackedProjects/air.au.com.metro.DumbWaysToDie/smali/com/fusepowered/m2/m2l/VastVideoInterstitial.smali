.class Lcom/fusepowered/m2/m2l/VastVideoInterstitial;
.super Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;
.source "VastVideoInterstitial.java"

# interfaces
.implements Lcom/fusepowered/m2/m2l/util/vast/VastManager$VastManagerListener;
.implements Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;


# static fields
.field public static final CACHE_MAX_SIZE:I = 0x5f5e100

.field public static final VIDEO_CACHE_DIRECTORY_NAME:Ljava/lang/String; = "mopub_vast_video_cache"


# instance fields
.field private mClickThroughUrl:Ljava/lang/String;

.field private mClickTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

.field private mImpressionTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

.field private mVastResponse:Ljava/lang/String;

.field private mVastVideoDownloadTask:Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;

.field private mVideoCache:Lcom/fusepowered/m2/m2l/DiskLruCache;

.field private mVideoCompleteTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoFirstQuartileTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoMidpointTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoStartTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoThirdQuartileTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractExtras(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, serverExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastResponse:Ljava/lang/String;

    .line 65
    return-void
.end method

.method getVastResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastResponse:Ljava/lang/String;

    return-object v0
.end method

.method getVideoCache()Lcom/fusepowered/m2/m2l/DiskLruCache;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoCache:Lcom/fusepowered/m2/m2l/DiskLruCache;

    return-object v0
.end method

.method public onComplete(Lcom/fusepowered/m2/m2l/util/vast/VastManager;)V
    .locals 5
    .parameter "vastManager"

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->getMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoUrl:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoCache:Lcom/fusepowered/m2/m2l/DiskLruCache;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/m2l/DiskLruCache;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 118
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->onDownloadSuccess()V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoCache:Lcom/fusepowered/m2/m2l/DiskLruCache;

    invoke-static {p0, v1}, Lcom/fusepowered/m2/m2l/factories/VastVideoDownloadTaskFactory;->create(Lcom/fusepowered/m2/m2l/VastVideoDownloadTask$OnDownloadCompleteListener;Lcom/fusepowered/m2/m2l/DiskLruCache;)Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastVideoDownloadTask:Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;

    .line 122
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastVideoDownloadTask:Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/m2l/VastVideoDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onDownloadFailed()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    .line 149
    return-void
.end method

.method public onDownloadSuccess()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->getVideoStartTrackers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Lists;->asStringArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoStartTrackers:Ljava/util/ArrayList;

    .line 133
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->getVideoFirstQuartileTrackers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Lists;->asStringArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoFirstQuartileTrackers:Ljava/util/ArrayList;

    .line 134
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->getVideoMidpointTrackers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Lists;->asStringArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoMidpointTrackers:Ljava/util/ArrayList;

    .line 135
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->getVideoThirdQuartileTrackers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Lists;->asStringArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoThirdQuartileTrackers:Ljava/util/ArrayList;

    .line 136
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->getVideoCompleteTrackers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Lists;->asStringArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoCompleteTrackers:Ljava/util/ArrayList;

    .line 138
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->getImpressionTrackers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Lists;->asStringArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mImpressionTrackers:Ljava/util/ArrayList;

    .line 140
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mClickThroughUrl:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->getClickTrackers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Lists;->asStringArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mClickTrackers:Ljava/util/ArrayList;

    .line 143
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 144
    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->cancel()V

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/fusepowered/m2/m2l/ResponseBodyInterstitial;->onInvalidate()V

    .line 107
    return-void
.end method

.method protected preRenderHtml(Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 5
    .parameter "customEventInterstitialListener"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 71
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoCache:Lcom/fusepowered/m2/m2l/DiskLruCache;

    if-nez v1, :cond_0

    .line 73
    :try_start_0
    new-instance v1, Lcom/fusepowered/m2/m2l/DiskLruCache;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mContext:Landroid/content/Context;

    const-string v3, "mopub_vast_video_cache"

    const v4, 0x5f5e100

    invoke-direct {v1, v2, v3, v4}, Lcom/fusepowered/m2/m2l/DiskLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoCache:Lcom/fusepowered/m2/m2l/DiskLruCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/fusepowered/m2/m2l/factories/VastManagerFactory;->create()Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    .line 82
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastResponse:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->processVast(Ljava/lang/String;Lcom/fusepowered/m2/m2l/util/vast/VastManager$VastManagerListener;)V

    .line 83
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 75
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MoPub"

    const-string v2, "Unable to create VAST video cache."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v2, Lcom/fusepowered/m2/m2l/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/fusepowered/m2/m2l/MoPubErrorCode;

    invoke-interface {v1, v2}, Lcom/fusepowered/m2/m2l/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/fusepowered/m2/m2l/MoPubErrorCode;)V

    goto :goto_0
.end method

.method setVastManager(Lcom/fusepowered/m2/m2l/util/vast/VastManager;)V
    .locals 0
    .parameter "vastManager"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVastManager:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    .line 164
    return-void
.end method

.method protected showInterstitial()V
    .locals 10

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mContext:Landroid/content/Context;

    .line 88
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoUrl:Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoStartTrackers:Ljava/util/ArrayList;

    .line 90
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoFirstQuartileTrackers:Ljava/util/ArrayList;

    .line 91
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoMidpointTrackers:Ljava/util/ArrayList;

    .line 92
    iget-object v5, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoThirdQuartileTrackers:Ljava/util/ArrayList;

    .line 93
    iget-object v6, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mVideoCompleteTrackers:Ljava/util/ArrayList;

    .line 94
    iget-object v7, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mImpressionTrackers:Ljava/util/ArrayList;

    .line 95
    iget-object v8, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mClickThroughUrl:Ljava/lang/String;

    .line 96
    iget-object v9, p0, Lcom/fusepowered/m2/m2l/VastVideoInterstitial;->mClickTrackers:Ljava/util/ArrayList;

    .line 87
    invoke-static/range {v0 .. v9}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->startVast(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 98
    return-void
.end method
