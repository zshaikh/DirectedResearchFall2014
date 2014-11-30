.class Lcom/dolphin/player/bc;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lcom/dolphin/player/ab;


# instance fields
.field final synthetic a:Lcom/dolphin/player/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/dolphin/player/bc;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/dolphin/player/bc;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->b(Lcom/dolphin/player/VideoPlayerView;)V

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/bc;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->c()V

    goto :goto_0
.end method
