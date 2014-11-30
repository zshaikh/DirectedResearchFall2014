.class public Lorg/a/a/bq;
.super Lorg/a/a/l;
.source "DERUTCTime.java"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method constructor <init>([B)V
    .locals 3

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 101
    array-length v0, p1

    new-array v1, v0, [C

    .line 103
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 105
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/a/a/bq;->a:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private e()[B
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lorg/a/a/bq;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 221
    array-length v0, v1

    new-array v2, v0, [B

    .line 223
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_0

    .line 225
    aget-char v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return-object v2
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 2

    .prologue
    .line 235
    const/16 v0, 0x17

    invoke-direct {p0}, Lorg/a/a/bq;->e()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/a/a/bh;->a(I[B)V

    .line 236
    return-void
.end method

.method a(Lorg/a/a/bd;)Z
    .locals 2

    .prologue
    .line 241
    instance-of v0, p1, Lorg/a/a/bq;

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/bq;->a:Ljava/lang/String;

    check-cast p1, Lorg/a/a/bq;

    iget-object v1, p1, Lorg/a/a/bq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/a/a/bq;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/a/a/bq;->a:Ljava/lang/String;

    return-object v0
.end method
