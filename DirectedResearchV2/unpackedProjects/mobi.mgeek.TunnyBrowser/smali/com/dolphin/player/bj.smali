.class Lcom/dolphin/player/bj;
.super Landroid/content/BroadcastReceiver;
.source "VideoPlayerView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/player/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lcom/dolphin/player/bj;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/16 v5, 0x46

    const/16 v4, 0x32

    const/16 v3, 0x1e

    const/4 v2, 0x5

    .line 991
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 992
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 993
    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 995
    if-lez v0, :cond_1

    if-gt v0, v2, :cond_1

    .line 996
    iget-object v0, p0, Lcom/dolphin/player/bj;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->D(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$drawable;->ic_battery_0:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    if-ge v2, v0, :cond_2

    if-gt v0, v3, :cond_2

    .line 998
    iget-object v0, p0, Lcom/dolphin/player/bj;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->D(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$drawable;->ic_battery_10:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 999
    :cond_2
    if-ge v3, v0, :cond_3

    if-gt v0, v4, :cond_3

    .line 1000
    iget-object v0, p0, Lcom/dolphin/player/bj;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->D(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$drawable;->ic_battery_20:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1001
    :cond_3
    if-ge v4, v0, :cond_4

    if-gt v0, v5, :cond_4

    .line 1002
    iget-object v0, p0, Lcom/dolphin/player/bj;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->D(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$drawable;->ic_battery_30:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1003
    :cond_4
    if-ge v5, v0, :cond_5

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_5

    .line 1004
    iget-object v0, p0, Lcom/dolphin/player/bj;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->D(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$drawable;->ic_battery_40:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1006
    :cond_5
    iget-object v0, p0, Lcom/dolphin/player/bj;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->D(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$drawable;->ic_battery_50:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1009
    :cond_6
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1010
    iget-object v0, p0, Lcom/dolphin/player/bj;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->D(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/dolphin/player/R$drawable;->ic_battery_0:I

    invoke-static {v1}, Lcom/dolphin/player/ae;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1012
    :cond_7
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1013
    const-string v1, "update_playlist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method
