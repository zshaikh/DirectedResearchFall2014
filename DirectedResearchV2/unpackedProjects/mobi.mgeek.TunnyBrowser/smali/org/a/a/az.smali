.class public Lorg/a/a/az;
.super Lorg/a/a/l;
.source "DERIA5String.java"

# interfaces
.implements Lorg/a/a/bn;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 61
    array-length v0, p1

    new-array v1, v0, [C

    .line 63
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 65
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/a/a/az;->a:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lorg/a/a/az;
    .locals 3

    .prologue
    .line 22
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/a/a/az;

    if-eqz v0, :cond_1

    .line 24
    :cond_0
    check-cast p0, Lorg/a/a/az;

    return-object p0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lorg/a/a/x;Z)Lorg/a/a/az;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/a/a/x;->h()Lorg/a/a/bd;

    move-result-object v0

    .line 45
    if-nez p1, :cond_0

    instance-of v1, v0, Lorg/a/a/az;

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    invoke-static {v0}, Lorg/a/a/az;->a(Ljava/lang/Object;)Lorg/a/a/az;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lorg/a/a/az;

    check-cast v0, Lorg/a/a/n;

    invoke-virtual {v0}, Lorg/a/a/n;->f()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/a/a/az;-><init>([B)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 2

    .prologue
    .line 131
    const/16 v0, 0x16

    invoke-virtual {p0}, Lorg/a/a/az;->e()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/a/a/bh;->a(I[B)V

    .line 132
    return-void
.end method

.method a(Lorg/a/a/bd;)Z
    .locals 2

    .prologue
    .line 142
    instance-of v0, p1, Lorg/a/a/az;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    .line 147
    :cond_0
    check-cast p1, Lorg/a/a/az;

    .line 149
    invoke-virtual {p0}, Lorg/a/a/az;->s_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/az;->s_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()[B
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lorg/a/a/az;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 117
    array-length v0, v1

    new-array v2, v0, [B

    .line 119
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_0

    .line 121
    aget-char v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/a/a/az;->s_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public s_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/a/a/az;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/a/a/az;->a:Ljava/lang/String;

    return-object v0
.end method
