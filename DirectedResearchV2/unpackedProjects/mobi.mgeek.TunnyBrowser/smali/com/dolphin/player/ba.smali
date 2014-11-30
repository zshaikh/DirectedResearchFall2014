.class Lcom/dolphin/player/ba;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Lcom/dolphin/player/g;


# instance fields
.field final synthetic a:Lcom/dolphin/player/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/dolphin/player/VideoPlayerView;)V
    .locals 0

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const-wide/high16 v4, -0x4010000000000000L

    const/4 v1, 0x0

    .line 1372
    iget-object v2, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->H(Lcom/dolphin/player/VideoPlayerView;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/dolphin/player/VideoPlayerView;->f(Lcom/dolphin/player/VideoPlayerView;Z)V

    .line 1374
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->I(Lcom/dolphin/player/VideoPlayerView;)D

    move-result-wide v2

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->n()V

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v0, v0, Lcom/dolphin/player/VideoPlayerView;->b:Lcom/dolphin/player/ag;

    iget-object v2, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v2}, Lcom/dolphin/player/VideoPlayerView;->I(Lcom/dolphin/player/VideoPlayerView;)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/dolphin/player/ag;->a(I)V

    .line 1382
    :cond_1
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->H(Lcom/dolphin/player/VideoPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1383
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->J(Lcom/dolphin/player/VideoPlayerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    :cond_2
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0, v4, v5}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/VideoPlayerView;D)D

    .line 1387
    return v1

    :cond_3
    move v0, v1

    .line 1372
    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/high16 v6, 0x42480000

    const/high16 v5, 0x41f00000

    .line 1392
    iget-object v1, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    iget-object v1, v1, Lcom/dolphin/player/VideoPlayerView;->d:Lcom/dolphin/player/ac;

    invoke-virtual {v1}, Lcom/dolphin/player/ac;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1429
    :goto_0
    return v0

    .line 1396
    :cond_0
    iget-object v1, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1}, Lcom/dolphin/player/VideoPlayerView;->K(Lcom/dolphin/player/VideoPlayerView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1397
    iget-object v1, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v1, v0}, Lcom/dolphin/player/VideoPlayerView;->g(Lcom/dolphin/player/VideoPlayerView;Z)Z

    .line 1400
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1401
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float v1, v0, v1

    .line 1402
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v2, v0, v2

    .line 1407
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->L(Lcom/dolphin/player/VideoPlayerView;)Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1408
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {v0, v3}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/VideoPlayerView;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    .line 1409
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-virtual {v0}, Lcom/dolphin/player/VideoPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v3}, Lcom/dolphin/player/VideoPlayerView;->L(Lcom/dolphin/player/VideoPlayerView;)Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1412
    :cond_2
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0}, Lcom/dolphin/player/VideoPlayerView;->L(Lcom/dolphin/player/VideoPlayerView;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1413
    iget-object v3, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v3}, Lcom/dolphin/player/VideoPlayerView;->L(Lcom/dolphin/player/VideoPlayerView;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1415
    div-int/lit8 v0, v0, 0x2

    .line 1417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    cmpg-float v3, v1, v6

    if-gez v3, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    .line 1419
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0, v2}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/VideoPlayerView;F)V

    .line 1429
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1421
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_5

    cmpg-float v0, v1, v6

    if-gez v0, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    .line 1423
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0, v2}, Lcom/dolphin/player/VideoPlayerView;->b(Lcom/dolphin/player/VideoPlayerView;F)V

    goto :goto_1

    .line 1425
    :cond_5
    cmpg-float v0, v2, v6

    if-gez v0, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    .line 1426
    iget-object v0, p0, Lcom/dolphin/player/ba;->a:Lcom/dolphin/player/VideoPlayerView;

    invoke-static {v0, v1, p4}, Lcom/dolphin/player/VideoPlayerView;->a(Lcom/dolphin/player/VideoPlayerView;FF)V

    goto :goto_1
.end method
