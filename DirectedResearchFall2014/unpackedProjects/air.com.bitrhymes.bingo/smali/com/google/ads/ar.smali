.class public Lcom/google/ads/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>([B)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/google/ads/ar;->a:[B

    move v0, v5

    .line 13
    :goto_0
    if-ge v0, v6, :cond_0

    .line 14
    iget-object v1, p0, Lcom/google/ads/ar;->a:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    .line 13
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    move v1, v5

    .line 16
    :goto_1
    if-ge v1, v6, :cond_1

    .line 17
    iget-object v2, p0, Lcom/google/ads/ar;->a:[B

    aget-byte v2, v2, v1

    add-int/2addr v0, v2

    array-length v2, p1

    rem-int v2, v1, v2

    aget-byte v2, p1, v2

    add-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 19
    iget-object v2, p0, Lcom/google/ads/ar;->a:[B

    aget-byte v2, v2, v1

    .line 20
    iget-object v3, p0, Lcom/google/ads/ar;->a:[B

    iget-object v4, p0, Lcom/google/ads/ar;->a:[B

    aget-byte v4, v4, v0

    aput-byte v4, v3, v1

    .line 21
    iget-object v3, p0, Lcom/google/ads/ar;->a:[B

    aput-byte v2, v3, v0

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 23
    :cond_1
    iput v5, p0, Lcom/google/ads/ar;->b:I

    .line 24
    iput v5, p0, Lcom/google/ads/ar;->c:I

    .line 25
    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 8
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/google/ads/ar;->b:I

    .line 29
    iget v1, p0, Lcom/google/ads/ar;->c:I

    .line 30
    const/4 v2, 0x0

    move v7, v2

    move v2, v0

    move v0, v7

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 31
    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    .line 32
    iget-object v3, p0, Lcom/google/ads/ar;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 34
    iget-object v3, p0, Lcom/google/ads/ar;->a:[B

    aget-byte v3, v3, v2

    .line 35
    iget-object v4, p0, Lcom/google/ads/ar;->a:[B

    iget-object v5, p0, Lcom/google/ads/ar;->a:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v2

    .line 36
    iget-object v4, p0, Lcom/google/ads/ar;->a:[B

    aput-byte v3, v4, v1

    .line 38
    aget-byte v3, p1, v0

    iget-object v4, p0, Lcom/google/ads/ar;->a:[B

    iget-object v5, p0, Lcom/google/ads/ar;->a:[B

    aget-byte v5, v5, v2

    iget-object v6, p0, Lcom/google/ads/ar;->a:[B

    aget-byte v6, v6, v1

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    iput v2, p0, Lcom/google/ads/ar;->b:I

    .line 41
    iput v1, p0, Lcom/google/ads/ar;->c:I

    .line 42
    return-void
.end method
