.class Lcom/dolphin/player/av;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lcom/dolphin/player/aa;


# instance fields
.field final synthetic a:Lcom/dolphin/player/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/dolphin/player/av;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/dolphin/player/av;->a:Lcom/dolphin/player/VideoPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/VideoPlayerView;Z)Z

    .line 319
    iget-object v0, p0, Lcom/dolphin/player/av;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/VideoPlayerView;)V

    .line 320
    return-void
.end method
