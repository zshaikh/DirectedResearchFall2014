.class public La/a/a/a/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(D)D
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 67
    invoke-static {p0, p1}, La/a/a/a/c/b;->d(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4044000000000000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 68
    cmpl-double v0, p0, v7

    if-lez v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L

    .line 71
    :cond_0
    :goto_0
    return-wide v0

    .line 68
    :cond_1
    const-wide/high16 v0, -0x4010000000000000L

    goto :goto_0

    .line 70
    :cond_2
    const-wide/high16 v0, 0x3fe0000000000000L

    mul-double v2, p0, p0

    const-wide v4, 0x3cd203af9ee75616L

    const/16 v6, 0x2710

    invoke-static/range {v0 .. v6}, La/a/a/a/b/b;->a(DDDI)D

    move-result-wide v0

    .line 71
    cmpg-double v2, p0, v7

    if-gez v2, :cond_0

    neg-double v0, v0

    goto :goto_0
.end method

.method public static b(D)D
    .locals 11

    .prologue
    const-wide/high16 v9, 0x4000000000000000L

    const-wide/16 v7, 0x0

    .line 98
    invoke-static {p0, p1}, La/a/a/a/c/b;->d(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4044000000000000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 99
    cmpl-double v0, p0, v7

    if-lez v0, :cond_1

    move-wide v0, v7

    .line 102
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v9

    .line 99
    goto :goto_0

    .line 101
    :cond_2
    const-wide/high16 v0, 0x3fe0000000000000L

    mul-double v2, p0, p0

    const-wide v4, 0x3cd203af9ee75616L

    const/16 v6, 0x2710

    invoke-static/range {v0 .. v6}, La/a/a/a/b/b;->b(DDDI)D

    move-result-wide v0

    .line 102
    cmpg-double v2, p0, v7

    if-gez v2, :cond_0

    sub-double v0, v9, v0

    goto :goto_0
.end method
