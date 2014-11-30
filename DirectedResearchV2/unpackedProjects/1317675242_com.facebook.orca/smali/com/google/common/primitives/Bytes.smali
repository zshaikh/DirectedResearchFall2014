.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(B)I
    .locals 0

    .prologue
    .line 56
    return p0
.end method

.method static synthetic a([BBII)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->c([BBII)I

    move-result v0

    return v0
.end method

.method static synthetic b([BBII)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->d([BBII)I

    move-result v0

    return v0
.end method

.method private static c([BBII)I
    .locals 2

    .prologue
    .line 93
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 94
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 98
    :goto_1
    return v0

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d([BBII)I
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x1

    sub-int v0, p3, v0

    :goto_0
    if-lt v0, p2, :cond_1

    .line 148
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 152
    :goto_1
    return v0

    .line 147
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
