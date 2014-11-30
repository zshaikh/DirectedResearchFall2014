.class public Lcom/acmeaom/android/a/g/w;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(I)B
    .locals 1

    .prologue
    .line 24
    shl-int/lit8 v0, p0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    return v0
.end method

.method public static a(F)F
    .locals 8

    .prologue
    const/high16 v2, 0x40000000

    const-wide v6, 0x400921fb54442d18L

    const-wide v4, 0x401921fb54442d18L

    .line 8
    float-to-double v0, p0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    .line 9
    float-to-double v0, p0

    div-float v2, p0, v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float p0, v0

    .line 16
    :cond_0
    :goto_0
    return p0

    .line 12
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 13
    float-to-double v0, p0

    div-float v2, p0, v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    goto :goto_0
.end method

.method public static b(F)F
    .locals 4

    .prologue
    .line 20
    float-to-double v0, p0

    const-wide v2, 0x401921fb54442d18L

    div-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
