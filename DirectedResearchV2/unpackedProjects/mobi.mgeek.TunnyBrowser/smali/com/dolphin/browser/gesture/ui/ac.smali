.class Lcom/dolphin/browser/gesture/ui/ac;
.super Lcom/dolphin/browser/gesture/ui/ag;
.source "GesturePannelView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V
    .locals 1

    .prologue
    .line 303
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/gesture/ui/ag;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;Lcom/dolphin/browser/gesture/ui/y;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;Lcom/dolphin/browser/gesture/ui/y;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/ui/ac;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 309
    invoke-super {p0}, Lcom/dolphin/browser/gesture/ui/ag;->a()V

    .line 310
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureAnimationView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/gesture/GestureAnimationView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ac;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->h(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/i;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/ac;->e:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ac;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->h(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ac;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureAnimationView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/gesture/GestureAnimationView;->a(Lcom/dolphin/browser/gesture/Gesture;Z)V

    .line 316
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->f(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/gesture/Gesture;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->h(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/i;->b(Lcom/dolphin/browser/gesture/Gesture;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ac;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e()Lcom/dolphin/browser/vg/ui/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/vg/ui/a;->finish()V

    .line 327
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->h(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/gesture/i;->a(Z)V

    .line 336
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->i(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureOverlayView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Z)V

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    const-string v0, "gesture"

    const-string v1, "action"

    const-string v2, "recoginzefailed"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->d(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a(Lcom/dolphin/browser/gesture/ui/GesturePannelView;Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ac;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ac;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ac;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 341
    return-void
.end method
