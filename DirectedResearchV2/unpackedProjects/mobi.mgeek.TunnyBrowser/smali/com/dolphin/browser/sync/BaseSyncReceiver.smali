.class public abstract Lcom/dolphin/browser/sync/BaseSyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseSyncReceiver.java"


# instance fields
.field private a:Lcom/dolphin/browser/sync/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/sync/BaseSyncReceiver;->a:Lcom/dolphin/browser/sync/f;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(Lcom/dolphin/browser/sync/f;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/dolphin/browser/sync/BaseSyncReceiver;->a:Lcom/dolphin/browser/sync/f;

    .line 20
    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/BaseSyncReceiver;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    const-string v0, "BaseSyncReceiver"

    const-string v1, "BaseSyncReceiver.onReceive"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/dolphin/browser/sync/BaseSyncReceiver;->a:Lcom/dolphin/browser/sync/f;

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/sync/f;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/BaseSyncReceiver;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "BaseSyncReceiver"

    const-string v1, "BaseSyncReceiver.onReceive.autoupload"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/sync/BaseSyncReceiver;->a:Lcom/dolphin/browser/sync/f;

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/sync/f;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    goto :goto_0
.end method
