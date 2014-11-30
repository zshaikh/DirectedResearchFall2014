.class Ldolphin/webkit/cy;
.super Ljava/lang/Object;
.source "HTML5FakeVideoPlayer.java"

# interfaces
.implements Ldolphin/webkit/WebChromeClient$CustomViewCallback;


# instance fields
.field final synthetic a:Ldolphin/webkit/cx;


# direct methods
.method constructor <init>(Ldolphin/webkit/cx;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Ldolphin/webkit/cy;->a:Ldolphin/webkit/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Ldolphin/webkit/j;->a()Ldolphin/webkit/j;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/j;->e()V

    .line 25
    iget-object v0, p0, Ldolphin/webkit/cy;->a:Ldolphin/webkit/cx;

    invoke-static {v0}, Ldolphin/webkit/cx;->a(Ldolphin/webkit/cx;)Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Ldolphin/webkit/cy;->a:Ldolphin/webkit/cx;

    invoke-static {v0}, Ldolphin/webkit/cx;->a(Ldolphin/webkit/cx;)Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-static {}, Ldolphin/webkit/cx;->d()Ldolphin/webkit/cx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Ldolphin/webkit/cx;->e()Lcom/dolphin/player/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->e()V

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ldolphin/webkit/cx;->a(Lcom/dolphin/player/VideoPlayerView;)Lcom/dolphin/player/VideoPlayerView;

    .line 33
    iget-object v0, p0, Ldolphin/webkit/cy;->a:Ldolphin/webkit/cx;

    invoke-static {v0}, Ldolphin/webkit/cx;->b(Ldolphin/webkit/cx;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/cy;->a:Ldolphin/webkit/cx;

    invoke-static {v0}, Ldolphin/webkit/cx;->b(Ldolphin/webkit/cx;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Ldolphin/webkit/cy;->a:Ldolphin/webkit/cx;

    invoke-static {v0}, Ldolphin/webkit/cx;->b(Ldolphin/webkit/cx;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->aa()Ldolphin/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/ViewManager;->f()V

    goto :goto_0
.end method

.method public onPauseCustomView()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ldolphin/webkit/cy;->a:Ldolphin/webkit/cx;

    invoke-static {v0}, Ldolphin/webkit/cx;->a(Ldolphin/webkit/cx;)Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Ldolphin/webkit/cy;->a:Ldolphin/webkit/cx;

    invoke-static {v0}, Ldolphin/webkit/cx;->a(Ldolphin/webkit/cx;)Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebChromeClient$CustomViewCallback;->onPauseCustomView()V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Ldolphin/webkit/cx;->d()Ldolphin/webkit/cx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Ldolphin/webkit/cx;->e()Lcom/dolphin/player/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->g()V

    goto :goto_0
.end method

.method public onResumeCustomView()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ldolphin/webkit/cy;->a:Ldolphin/webkit/cx;

    invoke-static {v0}, Ldolphin/webkit/cx;->a(Ldolphin/webkit/cx;)Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Ldolphin/webkit/cy;->a:Ldolphin/webkit/cx;

    invoke-static {v0}, Ldolphin/webkit/cx;->a(Ldolphin/webkit/cx;)Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/WebChromeClient$CustomViewCallback;->onResumeCustomView()V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {}, Ldolphin/webkit/cx;->d()Ldolphin/webkit/cx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Ldolphin/webkit/cx;->e()Lcom/dolphin/player/VideoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->h()V

    goto :goto_0
.end method
