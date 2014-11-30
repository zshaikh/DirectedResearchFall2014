.class public La/a/a/a/c/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:D

.field public static final b:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const-wide/high16 v0, 0x3ca0000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, La/a/a/a/c/g;->a:D

    .line 77
    const-wide/high16 v0, 0x10000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, La/a/a/a/c/g;->b:D

    .line 78
    return-void
.end method

.method public static a(DDD)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 272
    invoke-static {p0, p1, p2, p3, v0}, La/a/a/a/c/g;->a(DDI)Z

    move-result v1

    if-nez v1, :cond_0

    sub-double v1, p2, p0

    invoke-static {v1, v2}, La/a/a/a/c/b;->d(D)D

    move-result-wide v1

    cmpg-double v1, v1, p4

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(DDI)Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 331
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 332
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 335
    cmp-long v6, v4, v9

    if-gez v6, :cond_0

    .line 336
    sub-long v4, v7, v4

    .line 338
    :cond_0
    cmp-long v6, v0, v9

    if-gez v6, :cond_1

    .line 339
    sub-long v0, v7, v0

    .line 342
    :cond_1
    sub-long v0, v4, v0

    invoke-static {v0, v1}, La/a/a/a/c/b;->a(J)J

    move-result-wide v0

    int-to-long v4, p4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_2

    move v0, v2

    .line 344
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    return v0

    :cond_2
    move v0, v3

    .line 342
    goto :goto_0

    :cond_3
    move v0, v3

    .line 344
    goto :goto_1
.end method
