.class Ldolphin/webkit/fr;
.super Ljava/lang/Object;
.source "PluginFullScreenHolder.java"

# interfaces
.implements Ldolphin/webkit/WebChromeClient$CustomViewCallback;


# instance fields
.field final synthetic a:Ldolphin/webkit/fp;


# direct methods
.method constructor <init>(Ldolphin/webkit/fp;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Ldolphin/webkit/fr;->a:Ldolphin/webkit/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Ldolphin/webkit/fr;->a:Ldolphin/webkit/fp;

    invoke-static {v0}, Ldolphin/webkit/fp;->a(Ldolphin/webkit/fp;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->l:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 299
    iget-object v0, p0, Ldolphin/webkit/fr;->a:Ldolphin/webkit/fp;

    invoke-static {v0}, Ldolphin/webkit/fp;->a(Ldolphin/webkit/fp;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->Y()Ldolphin/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0xb6

    iget-object v2, p0, Ldolphin/webkit/fr;->a:Ldolphin/webkit/fp;

    invoke-static {v2}, Ldolphin/webkit/fp;->b(Ldolphin/webkit/fp;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/WebViewCore;->sendMessage(III)V

    .line 302
    iget-object v0, p0, Ldolphin/webkit/fr;->a:Ldolphin/webkit/fp;

    invoke-static {v0}, Ldolphin/webkit/fp;->a(Ldolphin/webkit/fp;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 304
    iget-object v1, p0, Ldolphin/webkit/fr;->a:Ldolphin/webkit/fp;

    invoke-static {v1}, Ldolphin/webkit/fp;->c(Ldolphin/webkit/fp;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 307
    const/4 v0, 0x0

    invoke-static {v0}, Ldolphin/webkit/fp;->a(Ldolphin/webkit/fs;)Ldolphin/webkit/fs;

    .line 310
    iget-object v0, p0, Ldolphin/webkit/fr;->a:Ldolphin/webkit/fp;

    invoke-static {v0}, Ldolphin/webkit/fp;->a(Ldolphin/webkit/fp;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->aa()Ldolphin/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/ViewManager;->f()V

    .line 311
    return-void
.end method

.method public onPauseCustomView()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public onResumeCustomView()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method
