.class Ldolphin/webkit/kd;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/jj;)V
    .locals 0

    .prologue
    .line 877
    invoke-direct {p0}, Ldolphin/webkit/kd;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 885
    invoke-static {}, Ldolphin/util/l;->a()V

    .line 886
    sget-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 887
    const-class v1, Ldolphin/webkit/WebViewCore;

    monitor-enter v1

    .line 889
    :try_start_0
    new-instance v0, Ldolphin/webkit/ke;

    invoke-direct {v0, p0}, Ldolphin/webkit/ke;-><init>(Ldolphin/webkit/kd;)V

    sput-object v0, Ldolphin/webkit/WebViewCore;->sWebCoreHandler:Ldolphin/util/j;

    .line 957
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    # setter for: Ldolphin/webkit/WebViewCore;->sWebCoreTid:I
    invoke-static {v0}, Ldolphin/webkit/WebViewCore;->access$702(I)I

    .line 958
    invoke-static {}, Ldolphin/webkit/Predictor;->getInstance()Ldolphin/webkit/Predictor;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/Predictor;->initWebCoreHandler()V

    .line 959
    invoke-static {}, Ldolphin/webkit/Downloader;->getInstance()Ldolphin/webkit/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/Downloader;->initWebCoreHandler()V

    .line 960
    invoke-static {}, Ldolphin/webkit/Downloader;->getInstance()Ldolphin/webkit/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/Downloader;->initDownloadWebFrame()V

    .line 961
    const-class v0, Ldolphin/webkit/WebViewCore;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 962
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    invoke-static {}, Ldolphin/util/l;->b()V

    .line 964
    return-void

    .line 962
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
