.class public Lcom/playtika/extensions/concurrency/zipdownloader/StopDownloadFunction;
.super Ljava/lang/Object;
.source "StopDownloadFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 11
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;

    move-object v1, v0

    .line 12
    .local v1, "context":Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;
    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->stopDownloadZip()V

    .line 13
    const/4 v2, 0x0

    return-object v2
.end method
