.class public Lcom/google/android/gms/internal/iv;
.super Ljava/lang/Object;


# instance fields
.field private final Hm:[B

.field private Hn:I

.field private Ho:I


# direct methods
.method public constructor <init>([B)V
    .locals 7

    const/16 v6, 0x100

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v6, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    move v0, v5

    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    move v1, v5

    :goto_1
    if-ge v1, v6, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    aget-byte v2, v2, v1

    add-int/2addr v0, v2

    array-length v2, p1

    rem-int v2, v1, v2

    aget-byte v2, p1, v2

    add-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    aget-byte v2, v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    iget-object v4, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    aget-byte v4, v4, v0

    aput-byte v4, v3, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    aput-byte v2, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput v5, p0, Lcom/google/android/gms/internal/iv;->Hn:I

    iput v5, p0, Lcom/google/android/gms/internal/iv;->Ho:I

    return-void
.end method


# virtual methods
.method public h([B)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/iv;->Hn:I

    iget v1, p0, Lcom/google/android/gms/internal/iv;->Ho:I

    const/4 v2, 0x0

    move v7, v2

    move v2, v0

    move v0, v7

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    aget-byte v3, v3, v2

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    iget-object v3, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    aput-byte v3, v4, v1

    aget-byte v3, p1, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    aget-byte v5, v5, v2

    iget-object v6, p0, Lcom/google/android/gms/internal/iv;->Hm:[B

    aget-byte v6, v6, v1

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/iv;->Hn:I

    iput v1, p0, Lcom/google/android/gms/internal/iv;->Ho:I

    return-void
.end method
