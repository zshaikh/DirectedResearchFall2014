.class final Lcom/google/inject/internal/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static chooseTableSize(I)I
    .locals 3

    .prologue
    const/high16 v2, 0x40000000

    .line 46
    const/high16 v0, 0x20000000

    if-ge p0, v0, :cond_0

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 52
    :goto_0
    return v0

    .line 51
    :cond_0
    if-ge p0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v1, "collection too large"

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v2

    .line 52
    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static smear(I)I
    .locals 2

    .prologue
    .line 34
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr v0, p0

    .line 35
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method
