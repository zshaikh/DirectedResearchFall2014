.class Lcom/dolphin/browser/gesture/m;
.super Ljava/lang/Object;
.source "GestureOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Lcom/dolphin/browser/gesture/GestureOverlayView;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/gesture/GestureOverlayView;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/gesture/GestureOverlayView;Lcom/dolphin/browser/gesture/l;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/m;-><init>(Lcom/dolphin/browser/gesture/GestureOverlayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/high16 v6, 0x3f800000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 794
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/GestureOverlayView;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 795
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 796
    iget-object v2, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->b(Lcom/dolphin/browser/gesture/GestureOverlayView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 798
    iget-object v2, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->c(Lcom/dolphin/browser/gesture/GestureOverlayView;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    .line 799
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/m;->a:Z

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(Lcom/dolphin/browser/gesture/GestureOverlayView;)V

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/GestureOverlayView;Z)Z

    .line 804
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Lcom/dolphin/browser/gesture/GestureOverlayView;->b(Lcom/dolphin/browser/gesture/GestureOverlayView;Z)Z

    .line 805
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Lcom/dolphin/browser/gesture/GestureOverlayView;->c(Lcom/dolphin/browser/gesture/GestureOverlayView;Z)Z

    .line 806
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->e(Lcom/dolphin/browser/gesture/GestureOverlayView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->f(Lcom/dolphin/browser/gesture/GestureOverlayView;)F

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->g(Lcom/dolphin/browser/gesture/GestureOverlayView;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->e()V

    .line 811
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0, v7}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/GestureOverlayView;I)V

    .line 835
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->e(Lcom/dolphin/browser/gesture/GestureOverlayView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->f(Lcom/dolphin/browser/gesture/GestureOverlayView;)F

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->g(Lcom/dolphin/browser/gesture/GestureOverlayView;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->invalidate()V

    .line 838
    :cond_3
    return-void

    .line 809
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0, v5}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(Lcom/dolphin/browser/gesture/GestureOverlayView;Z)Z

    goto :goto_0

    .line 813
    :cond_5
    iget-object v2, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v2, v5}, Lcom/dolphin/browser/gesture/GestureOverlayView;->c(Lcom/dolphin/browser/gesture/GestureOverlayView;Z)Z

    .line 814
    const/4 v2, 0x0

    long-to-float v0, v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->c(Lcom/dolphin/browser/gesture/GestureOverlayView;)J

    move-result-wide v3

    long-to-float v1, v3

    div-float/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 816
    iget-object v1, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    iget-object v2, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->h(Lcom/dolphin/browser/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v6, v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/GestureOverlayView;F)F

    .line 817
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    const/high16 v1, 0x437f0000

    iget-object v2, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->i(Lcom/dolphin/browser/gesture/GestureOverlayView;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/GestureOverlayView;I)V

    .line 818
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lcom/dolphin/browser/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 820
    :cond_6
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/m;->b:Z

    if-eqz v0, :cond_7

    .line 821
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0, v5}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(Lcom/dolphin/browser/gesture/GestureOverlayView;Z)Z

    goto :goto_1

    .line 823
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(Lcom/dolphin/browser/gesture/GestureOverlayView;)V

    .line 825
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Lcom/dolphin/browser/gesture/GestureOverlayView;->c(Lcom/dolphin/browser/gesture/GestureOverlayView;Z)Z

    .line 826
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->e(Lcom/dolphin/browser/gesture/GestureOverlayView;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->f(Lcom/dolphin/browser/gesture/GestureOverlayView;)F

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/GestureOverlayView;->g(Lcom/dolphin/browser/gesture/GestureOverlayView;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_9

    .line 827
    :cond_8
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/GestureOverlayView;->e()V

    .line 832
    :goto_2
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/GestureOverlayView;Z)Z

    .line 833
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0, v7}, Lcom/dolphin/browser/gesture/GestureOverlayView;->a(Lcom/dolphin/browser/gesture/GestureOverlayView;I)V

    goto/16 :goto_1

    .line 829
    :cond_9
    iget-object v0, p0, Lcom/dolphin/browser/gesture/m;->c:Lcom/dolphin/browser/gesture/GestureOverlayView;

    invoke-static {v0, v5}, Lcom/dolphin/browser/gesture/GestureOverlayView;->d(Lcom/dolphin/browser/gesture/GestureOverlayView;Z)Z

    goto :goto_2
.end method
