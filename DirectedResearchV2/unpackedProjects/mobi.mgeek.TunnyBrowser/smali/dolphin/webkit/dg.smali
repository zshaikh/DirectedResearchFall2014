.class Ldolphin/webkit/dg;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Ldolphin/webkit/WebChromeClient$CustomViewCallback;


# instance fields
.field final synthetic a:Ldolphin/webkit/dc;


# direct methods
.method constructor <init>(Ldolphin/webkit/dc;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Ldolphin/webkit/dg;->a:Ldolphin/webkit/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Ldolphin/webkit/dg;->a:Ldolphin/webkit/dc;

    iget-object v0, v0, Ldolphin/webkit/dc;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->e()V

    .line 279
    invoke-static {}, Ldolphin/webkit/dc;->e()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/dg;->a:Ldolphin/webkit/dc;

    invoke-static {v1}, Ldolphin/webkit/dc;->f(Ldolphin/webkit/dc;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 281
    invoke-static {}, Ldolphin/webkit/dc;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Ldolphin/webkit/dc;->e()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Ldolphin/webkit/dc;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 283
    invoke-static {v2}, Ldolphin/webkit/dc;->a(Landroid/view/View;)Landroid/view/View;

    .line 285
    :cond_0
    invoke-static {v2}, Ldolphin/webkit/dc;->a(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 287
    iget-object v0, p0, Ldolphin/webkit/dg;->a:Ldolphin/webkit/dc;

    iget-object v0, v0, Ldolphin/webkit/dc;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->n()Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->aa()Ldolphin/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/ViewManager;->f()V

    .line 289
    iget-object v0, p0, Ldolphin/webkit/dg;->a:Ldolphin/webkit/dc;

    iput-object v2, v0, Ldolphin/webkit/dc;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    .line 292
    iget-object v0, p0, Ldolphin/webkit/dg;->a:Ldolphin/webkit/dc;

    invoke-static {v0, v2}, Ldolphin/webkit/dc;->a(Ldolphin/webkit/dc;Landroid/widget/MediaController;)Landroid/widget/MediaController;

    .line 294
    return-void
.end method

.method public onPauseCustomView()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public onResumeCustomView()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method
