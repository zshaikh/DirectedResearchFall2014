.class Lcom/dolphin/player/bb;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lcom/dolphin/player/f;


# instance fields
.field final synthetic a:Lcom/dolphin/player/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/dolphin/player/bb;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/dolphin/player/bb;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->K(Lcom/dolphin/player/VideoPlayerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1622
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
