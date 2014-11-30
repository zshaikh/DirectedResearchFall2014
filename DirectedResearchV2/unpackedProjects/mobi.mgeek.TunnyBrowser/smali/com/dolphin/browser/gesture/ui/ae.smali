.class Lcom/dolphin/browser/gesture/ui/ae;
.super Lcom/dolphin/browser/gesture/ui/ag;
.source "GesturePannelView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

.field private e:Lcom/dolphin/browser/gesture/Gesture;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)V
    .locals 3

    .prologue
    .line 348
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/gesture/ui/ag;-><init>(Lcom/dolphin/browser/gesture/ui/GesturePannelView;Lcom/dolphin/browser/gesture/ui/y;)V

    .line 405
    new-instance v0, Lcom/dolphin/browser/gesture/ui/af;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/gesture/ui/af;-><init>(Lcom/dolphin/browser/gesture/ui/ae;)V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->f:Ljava/lang/Runnable;

    .line 349
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 354
    invoke-super {p0}, Lcom/dolphin/browser/gesture/ui/ag;->a()V

    .line 355
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureAnimationView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/gesture/GestureAnimationView;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->e:Lcom/dolphin/browser/gesture/Gesture;

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->h(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/i;->h()Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->e:Lcom/dolphin/browser/gesture/Gesture;

    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureAnimationView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ae;->e:Lcom/dolphin/browser/gesture/Gesture;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/GestureAnimationView;->a(Lcom/dolphin/browser/gesture/Gesture;)V

    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->f(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/gesture/Gesture;)V
    .locals 5

    .prologue
    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->h(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureAnimationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/gesture/GestureAnimationView;->c()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/gesture/i;->a(Lcom/dolphin/browser/gesture/Gesture;Z)Ljava/lang/String;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_0

    .line 372
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->h(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/i;->d(Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->i(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureOverlayView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Z)V

    .line 374
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e()Lcom/dolphin/browser/vg/ui/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/vg/ui/a;->finish()V

    .line 376
    const-string v0, "gesture"

    const-string v1, "action"

    const-string v2, "duration"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Normal:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackDuration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 393
    :goto_0
    return-void

    .line 378
    :cond_0
    const-string v0, "gesture"

    const-string v1, "action"

    const-string v2, "duration"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->clearStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/GestureAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/GestureAnimationView;->d()V

    .line 381
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->h(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/gesture/i;->a(Lcom/dolphin/browser/gesture/Gesture;)Ljava/util/Set;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 383
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->j(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/ui/aj;

    move-result-object v1

    if-nez v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    new-instance v2, Lcom/dolphin/browser/gesture/ui/aj;

    iget-object v3, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v3}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->d(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-virtual {v4}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->e()Lcom/dolphin/browser/vg/ui/a;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/gesture/ui/aj;-><init>(Landroid/content/Context;Lcom/dolphin/browser/vg/ui/a;)V

    invoke-static {v1, v2}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a(Lcom/dolphin/browser/gesture/ui/GesturePannelView;Lcom/dolphin/browser/gesture/ui/aj;)Lcom/dolphin/browser/gesture/ui/aj;

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->j(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/ui/aj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/ui/aj;->a(Ljava/util/Set;)V

    .line 387
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ae;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 389
    :cond_2
    const-string v0, "gesture"

    const-string v1, "action"

    const-string v2, "recoginzefailed"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->d(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e02f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->a(Lcom/dolphin/browser/gesture/ui/GesturePannelView;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ae;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 418
    return-void
.end method

.method protected c()V
    .locals 5

    .prologue
    .line 365
    const-string v0, "gesture"

    const-string v1, "action"

    const-string v2, "duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->recordStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 366
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Lcom/dolphin/browser/gesture/ui/ag;->d()V

    .line 399
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/ae;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 400
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->j(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/ui/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->j(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/ui/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/aj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/ae;->a:Lcom/dolphin/browser/gesture/ui/GesturePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GesturePannelView;->j(Lcom/dolphin/browser/gesture/ui/GesturePannelView;)Lcom/dolphin/browser/gesture/ui/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/aj;->a()V

    .line 403
    :cond_0
    return-void
.end method
