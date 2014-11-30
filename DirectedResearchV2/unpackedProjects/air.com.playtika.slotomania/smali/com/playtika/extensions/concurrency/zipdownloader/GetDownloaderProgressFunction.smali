.class public Lcom/playtika/extensions/concurrency/zipdownloader/GetDownloaderProgressFunction;
.super Ljava/lang/Object;
.source "GetDownloaderProgressFunction.java"

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
    .locals 5
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 11
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;

    move-object v1, v0

    .line 12
    .local v1, "context":Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;
    const/4 v3, 0x0

    .line 14
    .local v3, "res":Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->getProgress()I

    move-result v4

    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 18
    :goto_0
    return-object v3

    .line 15
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 16
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
