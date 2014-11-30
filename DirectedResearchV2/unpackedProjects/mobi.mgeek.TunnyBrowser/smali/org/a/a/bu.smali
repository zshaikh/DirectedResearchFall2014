.class public Lorg/a/a/bu;
.super Lorg/a/a/l;
.source "DERVisibleString.java"

# interfaces
.implements Lorg/a/a/bn;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 62
    array-length v0, p1

    new-array v1, v0, [C

    .line 64
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 66
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/a/a/bu;->a:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 2

    .prologue
    .line 108
    const/16 v0, 0x1a

    invoke-virtual {p0}, Lorg/a/a/bu;->e()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/a/a/bh;->a(I[B)V

    .line 109
    return-void
.end method

.method a(Lorg/a/a/bd;)Z
    .locals 2

    .prologue
    .line 114
    instance-of v0, p1, Lorg/a/a/bu;

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/a/a/bu;->s_()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/a/a/bu;

    invoke-virtual {p1}, Lorg/a/a/bu;->s_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()[B
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lorg/a/a/bu;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 94
    array-length v0, v1

    new-array v2, v0, [B

    .line 96
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_0

    .line 98
    aget-char v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/a/a/bu;->s_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public s_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/a/a/bu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/a/a/bu;->a:Ljava/lang/String;

    return-object v0
.end method
