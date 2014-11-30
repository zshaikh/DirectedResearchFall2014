.class public Lcom/sgn/mobile/OpenPushActivity;
.super Landroid/app/Activity;
.source "OpenPushActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 7

    .prologue
    const-string v6, "pushId"

    const-string v5, ""

    .line 11
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 14
    invoke-virtual {p0}, Lcom/sgn/mobile/OpenPushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 15
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 17
    const-string v3, "pushId"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "pushId":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/sgn/mobile/OpenPushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pushId"

    const-string v4, ""

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-static {}, Lcom/sgn/mobile/ServerNotification;->get()Lcom/sgn/mobile/ServerNotification;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/sgn/mobile/ServerNotification;->sendPushOpenTracking(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    :cond_0
    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 27
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/sgn/mobile/OpenPushActivity;->startActivity(Landroid/content/Intent;)V

    .line 29
    .end local v1    # "pushId":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method
