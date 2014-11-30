.class Lcom/dolphin/browser/downloads/j;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/downloads/DownloadService;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/downloads/DownloadService;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/dolphin/browser/downloads/j;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 2

    .prologue
    .line 155
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "DownloadManager"

    const-string v1, "Connected to Media Scanner"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/downloads/j;->a:Lcom/dolphin/browser/downloads/DownloadService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;Z)Z

    .line 159
    iget-object v1, p0, Lcom/dolphin/browser/downloads/j;->a:Lcom/dolphin/browser/downloads/DownloadService;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/downloads/j;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v0}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;)V

    .line 161
    monitor-exit v1

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method
