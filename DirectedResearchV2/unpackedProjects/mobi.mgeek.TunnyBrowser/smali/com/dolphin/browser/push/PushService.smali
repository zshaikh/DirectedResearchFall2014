.class public Lcom/dolphin/browser/push/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 15
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 37
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->b()Lcom/dolphin/browser/push/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 19
    invoke-static {p0}, Lcom/dolphin/browser/push/t;->a(Landroid/content/Context;)Lcom/dolphin/browser/push/t;

    .line 20
    if-eqz p1, :cond_0

    const-string v0, "restart"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->b()Lcom/dolphin/browser/push/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->c()V

    .line 25
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 23
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->b()Lcom/dolphin/browser/push/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->b()V

    goto :goto_0
.end method
