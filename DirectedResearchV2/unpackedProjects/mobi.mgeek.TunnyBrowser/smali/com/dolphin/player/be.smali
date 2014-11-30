.class Lcom/dolphin/player/be;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lcom/dolphin/player/z;


# instance fields
.field final synthetic a:Lcom/dolphin/player/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/dolphin/player/be;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 349
    iget-object v0, p0, Lcom/dolphin/player/be;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->e(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/dolphin/player/be;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->e(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bp;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/player/bp;->a()V

    .line 352
    iget-object v0, p0, Lcom/dolphin/player/be;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Lcom/dolphin/player/be;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->f(Lcom/dolphin/player/VideoPlayerView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/VideoPlayerView;J)J

    .line 353
    iget-object v0, p0, Lcom/dolphin/player/be;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0, v4, v5}, Lcom/dolphin/player/VideoPlayerView;->b(Lcom/dolphin/player/VideoPlayerView;J)J

    .line 354
    iget-object v0, p0, Lcom/dolphin/player/be;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0, v4, v5}, Lcom/dolphin/player/VideoPlayerView;->c(Lcom/dolphin/player/VideoPlayerView;J)J

    .line 355
    iget-object v0, p0, Lcom/dolphin/player/be;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0, v3}, Lcom/dolphin/player/VideoPlayerView;->b(Lcom/dolphin/player/VideoPlayerView;Z)Z

    .line 356
    iget-object v0, p0, Lcom/dolphin/player/be;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0, v3}, Lcom/dolphin/player/VideoPlayerView;->c(Lcom/dolphin/player/VideoPlayerView;Z)Z

    .line 358
    :cond_0
    return-void
.end method
