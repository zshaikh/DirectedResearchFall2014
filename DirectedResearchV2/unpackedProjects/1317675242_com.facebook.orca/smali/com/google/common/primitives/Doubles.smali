.class public final Lcom/google/common/primitives/Doubles;
.super Ljava/lang/Object;
.source "Doubles.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(D)I
    .locals 1

    .prologue
    .line 54
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public static a(DD)I
    .locals 1

    .prologue
    .line 72
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method static synthetic a([DDII)I
    .locals 1

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->c([DDII)I

    move-result v0

    return v0
.end method

.method static synthetic b([DDII)I
    .locals 1

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->d([DDII)I

    move-result v0

    return v0
.end method

.method private static c([DDII)I
    .locals 3

    .prologue
    .line 111
    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_1

    .line 112
    aget-wide v1, p0, v0

    cmpl-double v1, v1, p1

    if-nez v1, :cond_0

    .line 116
    :goto_1
    return v0

    .line 111
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d([DDII)I
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x1

    sub-int v0, p4, v0

    :goto_0
    if-lt v0, p3, :cond_1

    .line 170
    aget-wide v1, p0, v0

    cmpl-double v1, v1, p1

    if-nez v1, :cond_0

    .line 174
    :goto_1
    return v0

    .line 169
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
