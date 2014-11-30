.class Lcom/dolphin/player/aw;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lcom/dolphin/player/a/d;


# instance fields
.field final synthetic a:Lcom/dolphin/player/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/dolphin/player/aw;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/dolphin/player/aw;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->E(Lcom/dolphin/player/VideoPlayerView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/dolphin/player/ax;

    invoke-direct {v1, p0, p1, p2}, Lcom/dolphin/player/ax;-><init>(Lcom/dolphin/player/aw;J)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1064
    return-void
.end method
