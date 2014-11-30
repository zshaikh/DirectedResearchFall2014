.class Lcom/dolphin/browser/gesture/z;
.super Ljava/lang/Object;
.source "Instance.java"


# static fields
.field private static final d:[F


# instance fields
.field final a:[F

.field final b:Ljava/lang/String;

.field final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/gesture/z;->d:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f490fdb
        0x3fc90fdb
        0x4016cbe4
        0x40490fdb
        0x0
        -0x40b6f025
        -0x4036f025
        -0x3fe9341c
        -0x3fb6f025
    .end array-data
.end method

.method private constructor <init>(J[FLjava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/dolphin/browser/gesture/z;->c:J

    .line 45
    iput-object p3, p0, Lcom/dolphin/browser/gesture/z;->a:[F

    .line 46
    iput-object p4, p0, Lcom/dolphin/browser/gesture/z;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static a(IILcom/dolphin/browser/gesture/Gesture;Ljava/lang/String;)Lcom/dolphin/browser/gesture/z;
    .locals 4

    .prologue
    .line 75
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 76
    invoke-static {p1, p2}, Lcom/dolphin/browser/gesture/z;->a(ILcom/dolphin/browser/gesture/Gesture;)[F

    move-result-object v1

    .line 77
    new-instance v0, Lcom/dolphin/browser/gesture/z;

    invoke-virtual {p2}, Lcom/dolphin/browser/gesture/Gesture;->f()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1, p3}, Lcom/dolphin/browser/gesture/z;-><init>(J[FLjava/lang/String;)V

    .line 78
    invoke-direct {v0}, Lcom/dolphin/browser/gesture/z;->a()V

    .line 83
    :goto_0
    return-object v0

    .line 80
    :cond_0
    invoke-static {p2}, Lcom/dolphin/browser/gesture/z;->a(Lcom/dolphin/browser/gesture/Gesture;)[F

    move-result-object v1

    .line 81
    new-instance v0, Lcom/dolphin/browser/gesture/z;

    invoke-virtual {p2}, Lcom/dolphin/browser/gesture/Gesture;->f()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1, p3}, Lcom/dolphin/browser/gesture/z;-><init>(J[FLjava/lang/String;)V

    goto :goto_0
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 50
    iget-object v3, p0, Lcom/dolphin/browser/gesture/z;->a:[F

    .line 51
    const/4 v1, 0x0

    .line 53
    array-length v4, v3

    move v2, v1

    move v1, v0

    .line 54
    :goto_0
    if-ge v1, v4, :cond_0

    .line 55
    aget v5, v3, v1

    aget v6, v3, v1

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 59
    :goto_1
    if-ge v0, v4, :cond_1

    .line 60
    aget v2, v3, v0

    div-float/2addr v2, v1

    aput v2, v3, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method

.method private static a(ILcom/dolphin/browser/gesture/Gesture;)[F
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 91
    invoke-virtual {p1}, Lcom/dolphin/browser/gesture/Gesture;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/v;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/w;->a(Lcom/dolphin/browser/gesture/v;I)[F

    move-result-object v4

    .line 93
    invoke-static {v4}, Lcom/dolphin/browser/gesture/w;->a([F)[F

    move-result-object v5

    .line 94
    aget v0, v4, v10

    aget v1, v5, v10

    sub-float/2addr v0, v1

    float-to-double v0, v0

    aget v2, v4, v3

    aget v6, v5, v3

    sub-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v6, v0

    .line 96
    neg-float v1, v6

    .line 97
    if-eq p0, v10, :cond_0

    .line 98
    sget-object v0, Lcom/dolphin/browser/gesture/z;->d:[F

    array-length v7, v0

    move v2, v3

    .line 99
    :goto_0
    if-ge v2, v7, :cond_0

    .line 100
    sget-object v0, Lcom/dolphin/browser/gesture/z;->d:[F

    aget v0, v0, v2

    sub-float/2addr v0, v6

    .line 101
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 99
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_0
    aget v0, v5, v3

    neg-float v0, v0

    aget v2, v5, v10

    neg-float v2, v2

    invoke-static {v4, v0, v2}, Lcom/dolphin/browser/gesture/w;->a([FFF)[F

    .line 108
    invoke-static {v4, v1}, Lcom/dolphin/browser/gesture/w;->a([FF)[F

    .line 110
    return-object v4

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/dolphin/browser/gesture/Gesture;)[F
    .locals 2

    .prologue
    .line 87
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/gesture/w;->a(Lcom/dolphin/browser/gesture/Gesture;IZ)[F

    move-result-object v0

    return-object v0
.end method
