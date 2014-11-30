.class public Lcom/playhaven/src/utils/PHConversionUtils;
.super Ljava/lang/Object;
.source "PHConversionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dipToPixels(F)F
    .locals 1
    .param p0, "pixels"    # F

    .prologue
    .line 8
    sget v0, Lcom/playhaven/src/common/PHConfig;->screen_density:F

    mul-float/2addr v0, p0

    return v0
.end method
