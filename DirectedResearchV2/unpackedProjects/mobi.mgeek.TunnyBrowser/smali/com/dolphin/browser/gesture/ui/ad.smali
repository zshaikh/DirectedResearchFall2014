.class Lcom/dolphin/browser/gesture/ui/ad;
.super Lcom/dolphin/browser/gesture/ui/ag;
.source "GesturePannelView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V
    .locals 2

    .prologue
    .line 423
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/ad;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/gesture/ui/ag;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;Lcom/dolphin/browser/gesture/ui/y;)V

    .line 424
    invoke-static {p1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->h(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/i;->a(Z)V

    .line 425
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 429
    invoke-super {p0}, Lcom/dolphin/browser/gesture/ui/ag;->a()V

    .line 430
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ad;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureAnimationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureAnimationView;->a(Lcom/dolphin/browser/gesture/Gesture;)V

    .line 431
    return-void
.end method

.method public a(Lcom/dolphin/browser/gesture/Gesture;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ad;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->i(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureOverlayView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Z)V

    .line 436
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ad;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->h(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/gesture/i;->a(Lcom/dolphin/browser/gesture/Gesture;Z)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ad;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ad;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->d(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a(Lcom/dolphin/browser/gesture/ui/GesturePannelView;Ljava/lang/CharSequence;)V

    .line 443
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ad;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ad;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e()Lcom/dolphin/browser/vg/ui/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/vg/ui/a;->finish()V

    goto :goto_0
.end method
