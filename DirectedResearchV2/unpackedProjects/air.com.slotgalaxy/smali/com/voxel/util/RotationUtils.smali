.class public Lcom/voxel/util/RotationUtils;
.super Ljava/lang/Object;
.source "RotationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyRotation(Landroid/view/View;I)Z
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "degrees"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    .line 21
    invoke-static {p1}, Lcom/voxel/util/RotationUtils;->normalizeDegrees(I)I

    move-result p1

    .line 22
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    move v1, v7

    .line 37
    :goto_0
    return v1

    .line 28
    :cond_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, p1

    int-to-float v2, p1

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 31
    .local v0, "rotate":Landroid/view/animation/RotateAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 32
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 33
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    move v1, v3

    .line 37
    goto :goto_0
.end method

.method public static isLandscape(I)Z
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    .line 17
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalizeDegrees(I)I
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    .line 9
    const/16 v0, 0x168

    if-lt p0, v0, :cond_1

    .line 10
    add-int/lit16 p0, p0, -0x168

    .line 13
    :cond_0
    :goto_0
    return p0

    .line 11
    :cond_1
    if-gez p0, :cond_0

    .line 12
    add-int/lit16 p0, p0, 0x168

    goto :goto_0
.end method
