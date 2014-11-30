.class Lcom/inmobi/androidsdk/a;
.super Ljava/lang/Object;
.source "IMAnimationController.java"


# instance fields
.field private a:Lcom/inmobi/androidsdk/IMAdView;

.field private b:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Lcom/inmobi/androidsdk/IMAdView;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    .line 23
    iput-object p2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/androidsdk/IMAdView$AnimationType;)V
    .locals 8

    .prologue
    .line 29
    sget-object v0, Lcom/inmobi/androidsdk/IMAdView$AnimationType;->ANIMATION_ALPHA:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    if-ne p1, v0, :cond_1

    .line 30
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 31
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f000000

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 33
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 34
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 35
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 36
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 37
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 38
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 39
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 40
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 41
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v2, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Landroid/view/animation/Animation;)V

    .line 42
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->b(Landroid/view/animation/Animation;)V

    .line 126
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdView;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 127
    return-void

    .line 43
    :cond_1
    sget-object v0, Lcom/inmobi/androidsdk/IMAdView$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    if-ne p1, v0, :cond_2

    .line 44
    new-instance v0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000

    .line 45
    iget-object v3, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/IMAdView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/IMAdView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x1

    .line 44
    invoke-direct/range {v0 .. v6}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;-><init>(FFFFFZ)V

    .line 47
    new-instance v1, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;

    const/high16 v2, 0x43870000

    const/high16 v3, 0x43b40000

    .line 48
    iget-object v4, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/IMAdView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v5}, Lcom/inmobi/androidsdk/IMAdView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x1

    .line 47
    invoke-direct/range {v1 .. v7}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;-><init>(FFFFFZ)V

    .line 51
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->setDuration(J)V

    .line 52
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->setFillAfter(Z)V

    .line 53
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 54
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 55
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->setDuration(J)V

    .line 56
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->setFillAfter(Z)V

    .line 57
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 58
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 59
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v2, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Landroid/view/animation/Animation;)V

    .line 60
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->b(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 62
    :cond_2
    sget-object v0, Lcom/inmobi/androidsdk/IMAdView$AnimationType;->ROTATE_VERTICAL_AXIS:Lcom/inmobi/androidsdk/IMAdView$AnimationType;

    if-ne p1, v0, :cond_0

    .line 63
    new-instance v0, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimationVert;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000

    .line 64
    iget-object v3, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/IMAdView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/IMAdView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x1

    .line 63
    invoke-direct/range {v0 .. v6}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimationVert;-><init>(FFFFFZ)V

    .line 66
    new-instance v1, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimationVert;

    const/high16 v2, 0x43870000

    const/high16 v3, 0x43b40000

    .line 67
    iget-object v4, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/IMAdView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v5}, Lcom/inmobi/androidsdk/IMAdView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x1

    .line 66
    invoke-direct/range {v1 .. v7}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimationVert;-><init>(FFFFFZ)V

    .line 70
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimationVert;->setDuration(J)V

    .line 71
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimationVert;->setFillAfter(Z)V

    .line 72
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimationVert;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 73
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimationVert;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 74
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimationVert;->setDuration(J)V

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimationVert;->setFillAfter(Z)V

    .line 76
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimationVert;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 77
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/anim/IMRotate3dAnimationVert;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 78
    iget-object v2, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v2, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Landroid/view/animation/Animation;)V

    .line 79
    iget-object v0, p0, Lcom/inmobi/androidsdk/a;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->b(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method
