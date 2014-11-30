.class Lcom/dolphin/browser/downloads/l;
.super Landroid/database/ContentObserver;
.source "DownloadService.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/downloads/DownloadService;)V
    .locals 1

    .prologue
    .line 130
    iput-object p1, p0, Lcom/dolphin/browser/downloads/l;->a:Lcom/dolphin/browser/downloads/DownloadService;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 139
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "DownloadManager"

    const-string v1, "Service ContentObserver received notification"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/downloads/l;->a:Lcom/dolphin/browser/downloads/DownloadService;

    invoke-static {v0}, Lcom/dolphin/browser/downloads/DownloadService;->a(Lcom/dolphin/browser/downloads/DownloadService;)V

    .line 143
    return-void
.end method
