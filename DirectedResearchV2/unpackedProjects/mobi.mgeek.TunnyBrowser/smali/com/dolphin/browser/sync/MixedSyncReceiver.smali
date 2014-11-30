.class public Lcom/dolphin/browser/sync/MixedSyncReceiver;
.super Lcom/dolphin/browser/sync/BaseSyncReceiver;
.source "MixedSyncReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/dolphin/browser/sync/BaseSyncReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "com.dolphin.browser.MixedSync.SYNC_ACTION"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "com.dolphin.browser.MixedSync.UPLOAD_ACTION"

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/MixedSyncReceiver;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-static {}, Lcom/dolphin/browser/sync/ad;->s()Lcom/dolphin/browser/sync/ad;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/sync/ad;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/MixedSyncReceiver;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/dolphin/browser/sync/ad;->s()Lcom/dolphin/browser/sync/ad;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/sync/ad;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    goto :goto_0
.end method
