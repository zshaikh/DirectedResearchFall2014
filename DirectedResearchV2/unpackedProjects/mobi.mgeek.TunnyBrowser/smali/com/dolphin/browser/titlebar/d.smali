.class Lcom/dolphin/browser/titlebar/d;
.super Ljava/lang/Object;
.source "HorizontalProgressBar.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/titlebar/HorizontalProgressBar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/titlebar/HorizontalProgressBar;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/d;->a:Lcom/dolphin/browser/titlebar/HorizontalProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000

    .line 294
    const/high16 v0, 0x3f800000

    const/high16 v1, 0x40800000

    sub-float v2, p1, v3

    mul-float/2addr v1, v2

    sub-float v2, p1, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method
