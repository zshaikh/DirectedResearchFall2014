.class Ldolphin/webkit/fz;
.super Ljava/lang/Object;
.source "PopupZoomer.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private a:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p1, p0, Ldolphin/webkit/fz;->a:Landroid/view/animation/Interpolator;

    .line 493
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .prologue
    .line 496
    const/high16 v0, 0x3f800000

    sub-float/2addr v0, p1

    .line 497
    iget-object v1, p0, Ldolphin/webkit/fz;->a:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_0

    .line 499
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Ldolphin/webkit/fz;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0
.end method
