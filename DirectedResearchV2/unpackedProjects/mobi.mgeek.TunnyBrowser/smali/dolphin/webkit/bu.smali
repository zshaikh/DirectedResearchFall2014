.class Ldolphin/webkit/bu;
.super Ljava/lang/Thread;
.source "Downloader.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    const-string v0, "webpage-download"

    invoke-virtual {p0, v0}, Ldolphin/webkit/bu;->setName(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ldolphin/webkit/bu;->setPriority(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 32
    # getter for: Ldolphin/webkit/Downloader;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Ldolphin/webkit/Downloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DownloadThread::run]"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Ldolphin/webkit/WebViewCore;->initWebCoreThread()V

    .line 35
    # getter for: Ldolphin/webkit/Downloader;->sWebCoreHandler:Ldolphin/util/j;
    invoke-static {}, Ldolphin/webkit/Downloader;->access$100()Ldolphin/util/j;

    move-result-object v0

    # getter for: Ldolphin/webkit/Downloader;->sWebCoreHandler:Ldolphin/util/j;
    invoke-static {}, Ldolphin/webkit/Downloader;->access$100()Ldolphin/util/j;

    move-result-object v1

    const/16 v2, 0x7d0

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ldolphin/util/j;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/util/j;->sendMessage(Landroid/os/Message;)Z

    .line 36
    return-void
.end method
