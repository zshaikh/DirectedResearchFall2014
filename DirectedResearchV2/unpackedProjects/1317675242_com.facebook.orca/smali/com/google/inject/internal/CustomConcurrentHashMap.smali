.class final Lcom/google/inject/internal/CustomConcurrentHashMap;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1

    .prologue
    .line 125
    invoke-static {p0}, Lcom/google/inject/internal/CustomConcurrentHashMap;->rehash(I)I

    move-result v0

    return v0
.end method

.method private static rehash(I)I
    .locals 3

    .prologue
    .line 512
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 513
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 514
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 515
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 516
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 517
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method
