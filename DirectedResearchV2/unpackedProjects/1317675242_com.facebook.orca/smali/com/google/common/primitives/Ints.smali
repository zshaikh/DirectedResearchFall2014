.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(BBBB)I
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 314
    shl-int/lit8 v0, p0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(I)I
    .locals 0

    .prologue
    .line 61
    return p0
.end method

.method public static a(II)I
    .locals 1

    .prologue
    .line 106
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(J)I
    .locals 2

    .prologue
    .line 87
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 88
    const v0, 0x7fffffff

    .line 93
    :goto_0
    return v0

    .line 90
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 91
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 93
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method

.method static synthetic a([IIII)I
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->c([IIII)I

    move-result v0

    return v0
.end method

.method static synthetic b([IIII)I
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->d([IIII)I

    move-result v0

    return v0
.end method

.method private static c([IIII)I
    .locals 2

    .prologue
    .line 143
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 144
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 148
    :goto_1
    return v0

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d([IIII)I
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x1

    sub-int v0, p3, v0

    :goto_0
    if-lt v0, p2, :cond_1

    .line 198
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 202
    :goto_1
    return v0

    .line 197
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 202
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
