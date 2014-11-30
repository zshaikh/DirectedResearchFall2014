.class public Lcom/playtika/extensions/concurrency/zipdownloader/DownloadZipFunction;
.super Ljava/lang/Object;
.source "DownloadZipFunction.java"

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
    .locals 7
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 12
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;

    move-object v1, v0

    .line 14
    .local v1, "context":Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;
    const/16 v4, 0x3e8

    .line 15
    .local v4, "timeout":I
    const/4 v5, 0x0

    .line 16
    .local v5, "url":Ljava/lang/String;
    const/4 v2, 0x0

    .line 18
    .local v2, "destinationDirectory":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    .line 19
    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 20
    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 24
    :goto_0
    invoke-virtual {v1, v4, v5, v2}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->downloadZip(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v6, 0x0

    return-object v6

    .line 21
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 22
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
