.class public final Lcom/google/common/primitives/Shorts;
.super Ljava/lang/Object;
.source "Shorts.java"


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

.method public static a(S)I
    .locals 0

    .prologue
    .line 61
    return p0
.end method

.method public static a(SS)I
    .locals 1

    .prologue
    .line 107
    sub-int v0, p0, p1

    return v0
.end method

.method static synthetic a([SSII)I
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->c([SSII)I

    move-result v0

    return v0
.end method

.method static synthetic b([SSII)I
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->d([SSII)I

    move-result v0

    return v0
.end method

.method private static c([SSII)I
    .locals 2

    .prologue
    .line 144
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 145
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 149
    :goto_1
    return v0

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d([SSII)I
    .locals 2

    .prologue
    .line 198
    const/4 v0, 0x1

    sub-int v0, p3, v0

    :goto_0
    if-lt v0, p2, :cond_1

    .line 199
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 203
    :goto_1
    return v0

    .line 198
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
