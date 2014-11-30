.class Lcom/dolphin/browser/downloads/k;
.super Landroid/content/BroadcastReceiver;
.source "DownloadService.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/downloads/DownloadService;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/downloads/DownloadService;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/dolphin/browser/downloads/k;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/dolphin/browser/downloads/o;->f()Lcom/dolphin/browser/downloads/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/downloads/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/downloads/k;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v0, p1}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/content/Context;)V

    .line 259
    :cond_0
    const-string v0, "com.dolphin.browser.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-class v0, Lcom/dolphin/browser/downloads/DownloadReceiver;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    return-void
.end method
