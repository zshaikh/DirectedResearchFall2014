.class public Lcom/dolphin/browser/mostvisit/a;
.super Ljava/lang/Object;
.source "FrencencyCountUtil.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static d:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/mostvisit/a;->a:[I

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dolphin/browser/mostvisit/a;->b:[I

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/dolphin/browser/mostvisit/a;->c:[I

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/mostvisit/a;->d:[J

    return-void

    .line 18
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x78
        0xc8
        0x8c
        0x0
        0x0
        0x0
    .end array-data

    .line 25
    :array_1
    .array-data 4
        0x4
        0xe
        0x1f
        0x5a
    .end array-data

    .line 26
    :array_2
    .array-data 4
        0x64
        0x46
        0x32
        0x1e
        0xa
    .end array-data
.end method

.method public static a(III)I
    .locals 1

    .prologue
    .line 31
    if-gtz p2, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_0
    mul-int v0, p0, p1

    div-int/2addr v0, p2

    goto :goto_0
.end method

.method public static a(IJ)I
    .locals 2

    .prologue
    .line 39
    .line 41
    if-ltz p0, :cond_0

    sget-object v0, Lcom/dolphin/browser/mostvisit/a;->a:[I

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 44
    :cond_1
    sget-object v0, Lcom/dolphin/browser/mostvisit/a;->a:[I

    aget v0, v0, p0

    .line 45
    invoke-static {p1, p2}, Lcom/dolphin/browser/mostvisit/a;->a(J)I

    move-result v1

    .line 47
    div-int/lit8 v0, v0, 0x64

    mul-int/2addr v0, v1

    .line 49
    return v0
.end method

.method private static a(J)I
    .locals 6

    .prologue
    .line 53
    sget-object v0, Lcom/dolphin/browser/mostvisit/a;->d:[J

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/dolphin/browser/mostvisit/a;->a()[J

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/mostvisit/a;->d:[J

    .line 57
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p0

    .line 59
    const/4 v1, -0x1

    .line 60
    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/dolphin/browser/mostvisit/a;->d:[J

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 61
    sget-object v4, Lcom/dolphin/browser/mostvisit/a;->d:[J

    aget-wide v4, v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 67
    :goto_1
    if-ltz v0, :cond_2

    sget-object v1, Lcom/dolphin/browser/mostvisit/a;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 68
    sget-object v1, Lcom/dolphin/browser/mostvisit/a;->c:[I

    aget v0, v1, v0

    .line 70
    :goto_2
    return v0

    .line 60
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_2
    sget-object v0, Lcom/dolphin/browser/mostvisit/a;->c:[I

    sget-object v1, Lcom/dolphin/browser/mostvisit/a;->c:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static a(I)J
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 88
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 89
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 90
    sub-int/2addr v3, p0

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 92
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 94
    return-wide v0
.end method

.method private static a()[J
    .locals 5

    .prologue
    .line 75
    sget-object v0, Lcom/dolphin/browser/mostvisit/a;->b:[I

    array-length v1, v0

    .line 76
    new-array v2, v1, [J

    .line 77
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 78
    sget-object v3, Lcom/dolphin/browser/mostvisit/a;->b:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/dolphin/browser/mostvisit/a;->a(I)J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-object v2
.end method
