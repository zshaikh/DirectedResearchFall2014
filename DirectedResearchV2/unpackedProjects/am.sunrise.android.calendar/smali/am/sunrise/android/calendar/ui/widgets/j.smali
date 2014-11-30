.class public Lam/sunrise/android/calendar/ui/widgets/j;
.super Ljava/lang/Object;
.source "ColorsUtils.java"


# direct methods
.method public static a(IF)I
    .locals 6

    .prologue
    const/high16 v5, 0x437f0000

    const/high16 v4, 0x3f800000

    .line 28
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 29
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 30
    and-int/lit16 v2, p0, 0xff

    .line 32
    int-to-float v0, v0

    mul-float/2addr v0, p1

    sub-float v3, v4, p1

    mul-float/2addr v3, v5

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 33
    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float v3, v4, p1

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 34
    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float v3, v4, p1

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 36
    const/high16 v3, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method public static a(IFF)I
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 42
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p0, 0xff

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 44
    aget v1, v0, v4

    aget v2, v0, v4

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 46
    aget v1, v0, v4

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v4

    .line 53
    aget v1, v0, v4

    cmpg-float v1, v1, v6

    if-gez v1, :cond_0

    .line 54
    aput v6, v0, v4

    .line 56
    :cond_0
    aget v1, v0, v4

    cmpl-float v1, v1, v7

    if-lez v1, :cond_1

    .line 57
    aput v7, v0, v4

    .line 60
    :cond_1
    aget v1, v0, v5

    aget v2, v0, v5

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 62
    aget v1, v0, v5

    cmpg-float v1, v1, v6

    if-gez v1, :cond_2

    .line 63
    aput v6, v0, v5

    .line 65
    :cond_2
    aget v1, v0, v5

    cmpl-float v1, v1, v7

    if-lez v1, :cond_3

    .line 66
    aput v7, v0, v5

    .line 69
    :cond_3
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0

    .line 40
    nop

    :array_0
    .array-data 4
        0x3f800000
        0x3f800000
        0x3f800000
    .end array-data
.end method
