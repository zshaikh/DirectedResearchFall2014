.class Lcom/dolphin/player/bi;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lcom/dolphin/player/ad;


# instance fields
.field final synthetic a:Lcom/dolphin/player/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/dolphin/player/bi;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/dolphin/player/bi;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/dolphin/player/bi;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->n()V

    .line 946
    :cond_0
    return-void
.end method
