.class public Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;
.super Lcom/adobe/fre/FREContext;
.source "ZipDownloaderContext.java"


# static fields
.field public static final EVENT_ZIP_COMPLETE:Ljava/lang/String; = "zip_complete"

.field public static final EVENT_ZIP_LOAD_FAIL:Ljava/lang/String; = "zip_load_fail"

.field public static final EVENT_ZIP_OPEN_FAIL:Ljava/lang/String; = "zip_open_fail"

.field public static final EVENT_ZIP_PROGRESS:Ljava/lang/String; = "zip_progress"


# instance fields
.field private downloadManager:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;

.field private volatile progress:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method private getListener()Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext$1;

    invoke-direct {v0, p0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext$1;-><init>(Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public downloadZip(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "timeout"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "destinationDirectory"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;

    invoke-direct {p0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->getListener()Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;-><init>(ILcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->downloadManager:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;

    .line 35
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->downloadManager:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;

    invoke-virtual {v0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->start()V

    .line 36
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "downloadZip"

    new-instance v2, Lcom/playtika/extensions/concurrency/zipdownloader/DownloadZipFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/concurrency/zipdownloader/DownloadZipFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "getProgress"

    new-instance v2, Lcom/playtika/extensions/concurrency/zipdownloader/GetDownloaderProgressFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/concurrency/zipdownloader/GetDownloaderProgressFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "stopDownloadZip"

    new-instance v2, Lcom/playtika/extensions/concurrency/zipdownloader/StopDownloadFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/concurrency/zipdownloader/StopDownloadFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->progress:I

    return v0
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->progress:I

    .line 45
    return-void
.end method

.method public stopDownloadZip()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->downloadManager:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;

    invoke-virtual {v0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->stop()V

    .line 40
    return-void
.end method
