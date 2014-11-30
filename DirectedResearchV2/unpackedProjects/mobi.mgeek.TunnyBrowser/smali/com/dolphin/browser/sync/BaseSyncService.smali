.class public Lcom/dolphin/browser/sync/BaseSyncService;
.super Landroid/app/Service;
.source "BaseSyncService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 10
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/sync/BaseSyncService;->startForeground(ILandroid/app/Notification;)V

    .line 11
    const/4 v0, 0x2

    return v0
.end method
