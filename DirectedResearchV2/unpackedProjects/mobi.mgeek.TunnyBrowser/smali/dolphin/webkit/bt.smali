.class Ldolphin/webkit/bt;
.super Ldolphin/util/j;
.source "Downloader.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/Downloader;


# direct methods
.method constructor <init>(Ldolphin/webkit/Downloader;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Ldolphin/webkit/bt;->a:Ldolphin/webkit/Downloader;

    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    # getter for: Ldolphin/webkit/Downloader;->sDownloadFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {}, Ldolphin/webkit/Downloader;->access$200()Ldolphin/webkit/BrowserFrame;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ldolphin/webkit/BrowserFrame;

    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getWorkingContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/webkit/BrowserFrame;-><init>(Landroid/content/Context;)V

    # setter for: Ldolphin/webkit/Downloader;->sDownloadFrame:Ldolphin/webkit/BrowserFrame;
    invoke-static {v0}, Ldolphin/webkit/Downloader;->access$202(Ldolphin/webkit/BrowserFrame;)Ldolphin/webkit/BrowserFrame;

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
    .end packed-switch
.end method
