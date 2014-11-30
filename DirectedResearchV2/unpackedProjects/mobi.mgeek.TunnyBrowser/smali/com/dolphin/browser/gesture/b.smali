.class public Lcom/dolphin/browser/gesture/b;
.super Ljava/lang/Object;
.source "ER22.java"


# instance fields
.field private a:I

.field private b:[F

.field private c:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([F[F)F
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/gesture/b;->b([F[F)F

    move-result v0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/gesture/b;->c([F[F)F

    move-result v1

    .line 31
    div-float/2addr v0, v1

    return v0
.end method

.method private a([F)[F
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 16
    iget v0, p0, Lcom/dolphin/browser/gesture/b;->a:I

    new-array v3, v0, [F

    .line 17
    array-length v0, p1

    iget v2, p0, Lcom/dolphin/browser/gesture/b;->a:I

    div-int v4, v0, v2

    move v2, v1

    .line 18
    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    .line 19
    :goto_1
    iget v5, p0, Lcom/dolphin/browser/gesture/b;->a:I

    if-ge v0, v5, :cond_0

    .line 20
    aget v5, v3, v0

    iget v6, p0, Lcom/dolphin/browser/gesture/b;->a:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v0

    aget v6, p1, v6

    add-float/2addr v5, v6

    aput v5, v3, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 23
    :cond_1
    :goto_2
    iget v0, p0, Lcom/dolphin/browser/gesture/b;->a:I

    if-ge v1, v0, :cond_2

    .line 24
    aget v0, v3, v1

    int-to-float v2, v4

    div-float/2addr v0, v2

    aput v0, v3, v1

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25
    :cond_2
    return-object v3
.end method

.method private b([F[F)F
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 35
    iget v0, p0, Lcom/dolphin/browser/gesture/b;->a:I

    new-array v3, v0, [F

    .line 36
    array-length v0, p1

    iget v2, p0, Lcom/dolphin/browser/gesture/b;->a:I

    div-int v4, v0, v2

    move v2, v1

    .line 37
    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    .line 38
    :goto_1
    iget v5, p0, Lcom/dolphin/browser/gesture/b;->a:I

    if-ge v0, v5, :cond_0

    .line 39
    iget v5, p0, Lcom/dolphin/browser/gesture/b;->a:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v0

    .line 40
    aget v6, v3, v0

    aget v7, p1, v5

    iget-object v8, p0, Lcom/dolphin/browser/gesture/b;->b:[F

    aget v8, v8, v0

    sub-float/2addr v7, v8

    aget v5, p2, v5

    iget-object v8, p0, Lcom/dolphin/browser/gesture/b;->c:[F

    aget v8, v8, v0

    sub-float/2addr v5, v8

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    aput v5, v3, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_2
    iget v2, p0, Lcom/dolphin/browser/gesture/b;->a:I

    if-ge v1, v2, :cond_2

    .line 46
    aget v2, v3, v1

    add-float/2addr v0, v2

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 49
    :cond_2
    mul-float/2addr v0, v0

    return v0
.end method

.method private c([F[F)F
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 53
    array-length v0, p1

    iget v2, p0, Lcom/dolphin/browser/gesture/b;->a:I

    div-int v5, v0, v2

    .line 55
    iget v0, p0, Lcom/dolphin/browser/gesture/b;->a:I

    new-array v4, v0, [F

    move v2, v1

    .line 56
    :goto_0
    if-ge v2, v5, :cond_1

    move v0, v1

    .line 57
    :goto_1
    iget v6, p0, Lcom/dolphin/browser/gesture/b;->a:I

    if-ge v0, v6, :cond_0

    .line 58
    iget v6, p0, Lcom/dolphin/browser/gesture/b;->a:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v0

    .line 59
    aget v7, v4, v0

    aget v8, p1, v6

    iget-object v9, p0, Lcom/dolphin/browser/gesture/b;->b:[F

    aget v9, v9, v0

    sub-float/2addr v8, v9

    aget v6, p1, v6

    iget-object v9, p0, Lcom/dolphin/browser/gesture/b;->b:[F

    aget v9, v9, v0

    sub-float/2addr v6, v9

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    aput v6, v4, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v3

    .line 63
    :goto_2
    iget v6, p0, Lcom/dolphin/browser/gesture/b;->a:I

    if-ge v0, v6, :cond_2

    .line 64
    aget v6, v4, v0

    add-float/2addr v2, v6

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 67
    :cond_2
    iget v0, p0, Lcom/dolphin/browser/gesture/b;->a:I

    new-array v6, v0, [F

    move v4, v1

    .line 68
    :goto_3
    if-ge v4, v5, :cond_4

    move v0, v1

    .line 69
    :goto_4
    iget v7, p0, Lcom/dolphin/browser/gesture/b;->a:I

    if-ge v0, v7, :cond_3

    .line 70
    iget v7, p0, Lcom/dolphin/browser/gesture/b;->a:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v0

    .line 71
    aget v8, v6, v0

    aget v9, p2, v7

    iget-object v10, p0, Lcom/dolphin/browser/gesture/b;->c:[F

    aget v10, v10, v0

    sub-float/2addr v9, v10

    aget v7, p2, v7

    iget-object v10, p0, Lcom/dolphin/browser/gesture/b;->c:[F

    aget v10, v10, v0

    sub-float/2addr v7, v10

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    aput v7, v6, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 68
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    .line 75
    :cond_4
    :goto_5
    iget v0, p0, Lcom/dolphin/browser/gesture/b;->a:I

    if-ge v1, v0, :cond_5

    .line 76
    aget v0, v6, v1

    add-float/2addr v3, v0

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 79
    :cond_5
    mul-float v0, v2, v3

    return v0
.end method


# virtual methods
.method public a([F[FI)F
    .locals 1

    .prologue
    .line 9
    iput p3, p0, Lcom/dolphin/browser/gesture/b;->a:I

    .line 10
    invoke-direct {p0, p1}, Lcom/dolphin/browser/gesture/b;->a([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/b;->b:[F

    .line 11
    invoke-direct {p0, p2}, Lcom/dolphin/browser/gesture/b;->a([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/b;->c:[F

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/gesture/b;->a([F[F)F

    move-result v0

    return v0
.end method
