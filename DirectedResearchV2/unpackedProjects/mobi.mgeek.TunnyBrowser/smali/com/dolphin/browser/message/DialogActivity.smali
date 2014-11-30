.class public Lcom/dolphin/browser/message/DialogActivity;
.super Landroid/app/Activity;
.source "DialogActivity.java"

# interfaces
.implements Lcom/dolphin/browser/message/model/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 56
    const-string v0, "is_deleting_intent"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    const-string v1, "push notificaotion"

    const-string v2, "clear"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    const-string v1, "command_action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    const-string v1, "command_action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "command_value"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-static {v1, v2}, Lcom/dolphin/browser/message/model/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/dolphin/browser/message/model/a;

    move-result-object v1

    .line 65
    if-nez v0, :cond_1

    .line 66
    const-string v0, "push notificaotion"

    const-string v2, "dolphin"

    invoke-virtual {v1}, Lcom/dolphin/browser/message/model/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/message/model/a;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, p0}, Lcom/dolphin/browser/message/model/a;->a(Lcom/dolphin/browser/message/model/i;)V

    .line 70
    invoke-virtual {v1, p0}, Lcom/dolphin/browser/message/model/a;->a(Landroid/content/Context;)V

    .line 71
    const-string v0, "message_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 72
    if-lez v0, :cond_2

    .line 73
    invoke-static {}, Lcom/dolphin/browser/message/e;->a()Lcom/dolphin/browser/message/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/message/e;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_2
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 77
    invoke-virtual {p0}, Lcom/dolphin/browser/message/DialogActivity;->finish()V

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/message/DialogActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/dolphin/browser/message/DialogActivity;->finish()V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/dolphin/browser/message/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Lcom/dolphin/browser/message/DialogActivity;->a(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/dolphin/browser/message/DialogActivity;->a(Landroid/content/Intent;)V

    .line 53
    return-void
.end method
