.class public Lcom/fusepowered/util/FuseAnimationController;
.super Ljava/lang/Object;
.source "FuseAnimationController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdLayoutAnimationController(Landroid/view/animation/AnimationSet;)Landroid/view/animation/LayoutAnimationController;
    .locals 2
    .parameter "set"

    .prologue
    .line 19
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    const/high16 v1, 0x3e80

    invoke-direct {v0, p0, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    return-object v0
.end method

.method public static getAlphaAnimation(I)Landroid/view/animation/Animation;
    .locals 3
    .parameter "duration"

    .prologue
    .line 25
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 26
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 27
    return-object v0
.end method

.method public static getFancyTransitionAnimation(I)Landroid/view/animation/AnimationSet;
    .locals 11
    .parameter "duration"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 46
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 48
    .local v9, animSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x4080

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 53
    .local v0, translate:Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3e90

    invoke-direct {v10, v1, v4}, Landroid/view/animation/RotateAnimation;-><init>(FF)V

    .line 55
    .local v10, rotate:Landroid/view/animation/Animation;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 56
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 57
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 58
    int-to-long v1, p0

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 60
    return-object v9
.end method

.method public static getSlideInAnimation(I)Landroid/view/animation/Animation;
    .locals 9
    .parameter "duration"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 65
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x4080

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 70
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 71
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 72
    return-object v0
.end method

.method public static getSlideOutAnimation(I)Landroid/view/animation/Animation;
    .locals 9
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 77
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 81
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 82
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 83
    return-object v0
.end method

.method public static getTranslateAnimation(I)Landroid/view/animation/Animation;
    .locals 9
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 34
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 39
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 40
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 41
    return-object v0
.end method
