.class public Lcom/stuv/ane/pushnotif/LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalBroadcastReceiver.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "LclBrRec"

    sput-object v0, Lcom/stuv/ane/pushnotif/LocalBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v7, "contentTitle"

    const-string v6, "contentText"

    .line 15
    sget-boolean v4, Lcom/stuv/ane/pushnotif/Extension;->isInForeground:Z

    if-eqz v4, :cond_0

    .line 30
    :goto_0
    return-void

    .line 20
    :cond_0
    sget-object v4, Lcom/stuv/ane/pushnotif/LocalBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v5, "receive local notification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 23
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "contentTitle"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "title":Ljava/lang/String;
    const-string v4, "contentText"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/stuv/ane/pushnotif/LocalNotificationService;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v2, "newIntent":Landroid/content/Intent;
    const-string v4, "contentTitle"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v4, "contentText"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
