.class Lcom/dolphin/player/q;
.super Landroid/content/BroadcastReceiver;
.source "MainPlayActivity.java"


# instance fields
.field final synthetic a:Lcom/dolphin/player/MainPlayActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/player/MainPlayActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/dolphin/player/q;->a:Lcom/dolphin/player/MainPlayActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 143
    if-eqz p2, :cond_0

    const-string v0, "action.DOWNLOAD_STATE_RES"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "extra_content_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    const-string v0, "extra_original_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    const-string v0, "extra_download_state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 149
    :cond_0
    return-void
.end method
