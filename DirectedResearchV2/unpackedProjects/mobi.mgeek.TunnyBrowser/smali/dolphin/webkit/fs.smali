.class Ldolphin/webkit/fs;
.super Landroid/widget/FrameLayout;
.source "PluginFullScreenHolder.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/fp;


# direct methods
.method constructor <init>(Ldolphin/webkit/fp;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Ldolphin/webkit/fs;->a:Ldolphin/webkit/fp;

    .line 255
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 256
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 265
    :goto_0
    return v0

    .line 263
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/fs;->a:Ldolphin/webkit/fp;

    invoke-static {v0}, Ldolphin/webkit/fp;->a(Ldolphin/webkit/fp;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/WebViewClassic;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 265
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 275
    :goto_0
    return v0

    .line 273
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/fs;->a:Ldolphin/webkit/fp;

    invoke-static {v0}, Ldolphin/webkit/fp;->a(Ldolphin/webkit/fp;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/WebViewClassic;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 275
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Ldolphin/webkit/fs;->a:Ldolphin/webkit/fp;

    invoke-static {v0}, Ldolphin/webkit/fp;->a(Ldolphin/webkit/fp;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 288
    const/4 v0, 0x1

    return v0
.end method
