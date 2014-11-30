.class Lmobi/mgeek/TunnyBrowser/bn;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BrowserActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method private constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 5406
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lmobi/mgeek/TunnyBrowser/x;)V
    .locals 0

    .prologue
    .line 5406
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/bn;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 5409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 5413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, -0x3db80000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/bn;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 5418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42480000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/bn;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5453
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ai()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5461
    :cond_0
    :goto_0
    return v0

    .line 5457
    :cond_1
    const/high16 v1, 0x447a0000

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/bn;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5458
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->x(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 5459
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5425
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->K()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 5446
    :goto_0
    return v0

    .line 5429
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/high16 v3, 0x41f00000

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/bn;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5431
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Z)V

    .line 5435
    :cond_2
    :goto_1
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->ai()Z

    move-result v1

    if-nez v1, :cond_5

    .line 5436
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/bn;->c(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5437
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->w(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    goto :goto_0

    .line 5432
    :cond_3
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/bn;->c(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5433
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v2, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Z)V

    goto :goto_1

    .line 5440
    :cond_4
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 5441
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v2, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lcom/dolphin/browser/core/ITab;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/bn;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5442
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/bn;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->x(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    goto :goto_0

    .line 5446
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method
