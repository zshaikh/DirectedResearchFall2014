.class Ldolphin/webkit/dp;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreenEx.java"

# interfaces
.implements Ldolphin/webkit/WebChromeClient$CustomViewCallback;


# instance fields
.field final synthetic a:Ldolphin/webkit/dk;


# direct methods
.method constructor <init>(Ldolphin/webkit/dk;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Ldolphin/webkit/dp;->a:Ldolphin/webkit/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Ldolphin/webkit/dk;->g()Lcom/dolphin/player/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->j()Z

    move-result v0

    .line 203
    invoke-static {}, Ldolphin/webkit/dk;->g()Lcom/dolphin/player/VideoPlayerView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    invoke-static {}, Ldolphin/webkit/dk;->g()Lcom/dolphin/player/VideoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/player/VideoPlayerView;->e()V

    .line 208
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/dp;->a:Ldolphin/webkit/dk;

    invoke-static {v1, v0}, Ldolphin/webkit/dk;->a(Ldolphin/webkit/dk;Z)V

    .line 214
    iget-object v0, p0, Ldolphin/webkit/dp;->a:Ldolphin/webkit/dk;

    iget-object v0, v0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->e()V

    .line 216
    const/4 v0, 0x0

    invoke-static {v0}, Ldolphin/webkit/dk;->a(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/VideoPlayerView;

    .line 219
    iget-object v0, p0, Ldolphin/webkit/dp;->a:Ldolphin/webkit/dk;

    invoke-static {v0}, Ldolphin/webkit/dk;->a(Ldolphin/webkit/dk;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->aa()Ldolphin/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/ViewManager;->f()V

    .line 220
    return-void
.end method

.method public onPauseCustomView()V
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Ldolphin/webkit/dk;->g()Lcom/dolphin/player/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {}, Ldolphin/webkit/dk;->g()Lcom/dolphin/player/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->g()V

    .line 226
    :cond_0
    return-void
.end method

.method public onResumeCustomView()V
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Ldolphin/webkit/dk;->g()Lcom/dolphin/player/VideoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Ldolphin/webkit/dk;->g()Lcom/dolphin/player/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->h()V

    .line 232
    :cond_0
    return-void
.end method
