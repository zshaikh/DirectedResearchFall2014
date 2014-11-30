.class Lcom/dolphin/player/az;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lcom/dolphin/player/h;


# instance fields
.field final synthetic a:Lcom/dolphin/player/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/dolphin/player/az;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/dolphin/player/az;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->w(Lcom/dolphin/player/VideoPlayerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/player/az;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->x(Lcom/dolphin/player/VideoPlayerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/az;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->u(Lcom/dolphin/player/VideoPlayerView;)V

    .line 1360
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/dolphin/player/az;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->r(Lcom/dolphin/player/VideoPlayerView;)V

    goto :goto_0
.end method
