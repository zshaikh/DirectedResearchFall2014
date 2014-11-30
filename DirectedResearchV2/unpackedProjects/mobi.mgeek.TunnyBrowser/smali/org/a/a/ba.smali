.class public Lorg/a/a/ba;
.super Lorg/a/a/l;
.source "DERInteger.java"


# instance fields
.field a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/a/a/ba;->a:[B

    .line 70
    return-void
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/a/a/ba;->a:[B

    invoke-virtual {p1, v0, v1}, Lorg/a/a/bh;->a(I[B)V

    .line 91
    return-void
.end method

.method a(Lorg/a/a/bd;)Z
    .locals 2

    .prologue
    .line 108
    instance-of v0, p1, Lorg/a/a/ba;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 113
    :cond_0
    check-cast p1, Lorg/a/a/ba;

    .line 115
    iget-object v0, p0, Lorg/a/a/ba;->a:[B

    iget-object v1, p1, Lorg/a/a/ba;->a:[B

    invoke-static {v0, v1}, Lorg/a/b/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public e()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/a/a/ba;->a:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 95
    move v1, v0

    .line 97
    :goto_0
    iget-object v2, p0, Lorg/a/a/ba;->a:[B

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 99
    iget-object v2, p0, Lorg/a/a/ba;->a:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v3, v0, 0x4

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/a/a/ba;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
