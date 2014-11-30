.class Lcom/dolphin/player/u;
.super Ljava/lang/Object;
.source "MainPlayActivity.java"

# interfaces
.implements Lcom/dolphin/player/a/f;


# instance fields
.field final synthetic a:Lcom/dolphin/player/MainPlayActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/player/MainPlayActivity;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/dolphin/player/u;->a:Lcom/dolphin/player/MainPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    iget-object v1, p0, Lcom/dolphin/player/u;->a:Lcom/dolphin/player/MainPlayActivity;

    invoke-static {v1}, Lcom/dolphin/player/MainPlayActivity;->c(Lcom/dolphin/player/MainPlayActivity;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 243
    const-string v1, "action.DOWNLOAD_VIDEO_MSG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v1, "extra_content_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v1, "extra_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v1, "extra_original_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/dolphin/player/u;->a:Lcom/dolphin/player/MainPlayActivity;

    invoke-virtual {v1, v0}, Lcom/dolphin/player/MainPlayActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    return-void
.end method
