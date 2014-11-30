.class Lcom/dolphin/player/bd;
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
    .line 336
    iput-object p1, p0, Lcom/dolphin/player/bd;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/dolphin/player/bd;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->c(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bq;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dolphin/player/bq;->i:Z

    .line 341
    iget-object v0, p0, Lcom/dolphin/player/bd;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->c(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/bq;

    move-result-object v0

    iput-object v2, v0, Lcom/dolphin/player/bq;->e:Lcom/dolphin/player/aj;

    .line 342
    iget-object v0, p0, Lcom/dolphin/player/bd;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, p0, Lcom/dolphin/player/bd;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->d(Lcom/dolphin/player/VideoPlayerView;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/bq;Z)V

    .line 343
    return-void
.end method
