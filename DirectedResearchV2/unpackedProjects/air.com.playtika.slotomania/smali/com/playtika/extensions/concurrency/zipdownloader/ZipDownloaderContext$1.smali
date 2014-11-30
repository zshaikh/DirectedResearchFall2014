.class Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext$1;
.super Ljava/lang/Object;
.source "ZipDownloaderContext.java"

# interfaces
.implements Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->getListener()Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;


# direct methods
.method constructor <init>(Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext$1;->this$0:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFail(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext$1;->this$0:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;

    const-string v1, "zip_load_fail"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onOpenFail(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext$1;->this$0:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;

    const-string v1, "zip_open_fail"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onProgress(I)V
    .locals 1
    .param p1, "persantage"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext$1;->this$0:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;

    invoke-virtual {v0, p1}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->setProgress(I)V

    .line 62
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext$1;->this$0:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;

    const-string v1, "zip_complete"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
