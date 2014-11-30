.class public Lcom/dolphin/browser/gesture/ad;
.super Ljava/lang/Object;
.source "OrientedBoundingBox.java"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F


# direct methods
.method constructor <init>(FFFFF)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/dolphin/browser/gesture/ad;->d:F

    .line 38
    iput p4, p0, Lcom/dolphin/browser/gesture/ad;->b:F

    .line 39
    iput p5, p0, Lcom/dolphin/browser/gesture/ad;->c:F

    .line 40
    iput p2, p0, Lcom/dolphin/browser/gesture/ad;->e:F

    .line 41
    iput p3, p0, Lcom/dolphin/browser/gesture/ad;->f:F

    .line 42
    div-float v0, p4, p5

    .line 43
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 44
    div-float v0, v2, v0

    iput v0, p0, Lcom/dolphin/browser/gesture/ad;->a:F

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iput v0, p0, Lcom/dolphin/browser/gesture/ad;->a:F

    goto :goto_0
.end method
