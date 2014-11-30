.class public Lorg/a/a/au;
.super Lorg/a/a/l;
.source "DERExternal.java"


# instance fields
.field private a:Lorg/a/a/be;

.field private b:Lorg/a/a/ba;

.field private c:Lorg/a/a/l;

.field private d:I

.field private e:Lorg/a/a/bd;


# direct methods
.method public constructor <init>(Lorg/a/a/e;)V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 20
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, v1}, Lorg/a/a/au;->a(Lorg/a/a/e;I)Lorg/a/a/bd;

    move-result-object v0

    .line 23
    instance-of v2, v0, Lorg/a/a/be;

    if-eqz v2, :cond_0

    .line 25
    check-cast v0, Lorg/a/a/be;

    iput-object v0, p0, Lorg/a/a/au;->a:Lorg/a/a/be;

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0, p1, v1}, Lorg/a/a/au;->a(Lorg/a/a/e;I)Lorg/a/a/bd;

    move-result-object v0

    .line 29
    :cond_0
    instance-of v2, v0, Lorg/a/a/ba;

    if-eqz v2, :cond_1

    .line 31
    check-cast v0, Lorg/a/a/ba;

    iput-object v0, p0, Lorg/a/a/au;->b:Lorg/a/a/ba;

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    invoke-direct {p0, p1, v1}, Lorg/a/a/au;->a(Lorg/a/a/e;I)Lorg/a/a/bd;

    move-result-object v0

    .line 35
    :cond_1
    instance-of v2, v0, Lorg/a/a/bp;

    if-nez v2, :cond_2

    .line 37
    check-cast v0, Lorg/a/a/l;

    iput-object v0, p0, Lorg/a/a/au;->c:Lorg/a/a/l;

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    invoke-direct {p0, p1, v1}, Lorg/a/a/au;->a(Lorg/a/a/e;I)Lorg/a/a/bd;

    move-result-object v0

    .line 42
    :cond_2
    invoke-virtual {p1}, Lorg/a/a/e;->a()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    if-eq v2, v1, :cond_3

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input vector too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_3
    instance-of v1, v0, Lorg/a/a/bp;

    if-nez v1, :cond_4

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_4
    check-cast v0, Lorg/a/a/bp;

    .line 52
    invoke-virtual {v0}, Lorg/a/a/bp;->e()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/a/a/au;->a(I)V

    .line 53
    invoke-virtual {v0}, Lorg/a/a/bp;->h()Lorg/a/a/bd;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/au;->e:Lorg/a/a/bd;

    .line 54
    return-void
.end method

.method private a(Lorg/a/a/e;I)Lorg/a/a/bd;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p1}, Lorg/a/a/e;->a()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few objects in input vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p1, p2}, Lorg/a/a/e;->a(I)Lorg/a/a/ar;

    move-result-object v0

    invoke-interface {v0}, Lorg/a/a/ar;->c()Lorg/a/a/bd;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 259
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    iput p1, p0, Lorg/a/a/au;->d:I

    .line 264
    return-void
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 4

    .prologue
    .line 124
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    iget-object v1, p0, Lorg/a/a/au;->a:Lorg/a/a/be;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lorg/a/a/au;->a:Lorg/a/a/be;

    invoke-virtual {v1}, Lorg/a/a/be;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 129
    :cond_0
    iget-object v1, p0, Lorg/a/a/au;->b:Lorg/a/a/ba;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lorg/a/a/au;->b:Lorg/a/a/ba;

    invoke-virtual {v1}, Lorg/a/a/ba;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 133
    :cond_1
    iget-object v1, p0, Lorg/a/a/au;->c:Lorg/a/a/l;

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lorg/a/a/au;->c:Lorg/a/a/l;

    invoke-virtual {v1}, Lorg/a/a/l;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    :cond_2
    new-instance v1, Lorg/a/a/bp;

    iget v2, p0, Lorg/a/a/au;->d:I

    iget-object v3, p0, Lorg/a/a/au;->e:Lorg/a/a/bd;

    invoke-direct {v1, v2, v3}, Lorg/a/a/bp;-><init>(ILorg/a/a/ar;)V

    .line 138
    invoke-virtual {v1}, Lorg/a/a/bp;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    const/16 v1, 0x20

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lorg/a/a/bh;->a(II[B)V

    .line 140
    return-void
.end method

.method a(Lorg/a/a/bd;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 147
    instance-of v1, p1, Lorg/a/a/au;

    if-nez v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    if-ne p0, p1, :cond_2

    .line 153
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :cond_2
    check-cast p1, Lorg/a/a/au;

    .line 156
    iget-object v1, p0, Lorg/a/a/au;->a:Lorg/a/a/be;

    if-eqz v1, :cond_3

    .line 158
    iget-object v1, p1, Lorg/a/a/au;->a:Lorg/a/a/be;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/a/a/au;->a:Lorg/a/a/be;

    iget-object v2, p0, Lorg/a/a/au;->a:Lorg/a/a/be;

    invoke-virtual {v1, v2}, Lorg/a/a/be;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    :cond_3
    iget-object v1, p0, Lorg/a/a/au;->b:Lorg/a/a/ba;

    if-eqz v1, :cond_4

    .line 165
    iget-object v1, p1, Lorg/a/a/au;->b:Lorg/a/a/ba;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/a/a/au;->b:Lorg/a/a/ba;

    iget-object v2, p0, Lorg/a/a/au;->b:Lorg/a/a/ba;

    invoke-virtual {v1, v2}, Lorg/a/a/ba;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :cond_4
    iget-object v1, p0, Lorg/a/a/au;->c:Lorg/a/a/l;

    if-eqz v1, :cond_5

    .line 172
    iget-object v1, p1, Lorg/a/a/au;->c:Lorg/a/a/l;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/a/a/au;->c:Lorg/a/a/l;

    iget-object v2, p0, Lorg/a/a/au;->c:Lorg/a/a/l;

    invoke-virtual {v1, v2}, Lorg/a/a/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    :cond_5
    iget-object v0, p0, Lorg/a/a/au;->e:Lorg/a/a/bd;

    iget-object v1, p1, Lorg/a/a/au;->e:Lorg/a/a/bd;

    invoke-virtual {v0, v1}, Lorg/a/a/bd;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lorg/a/a/au;->a:Lorg/a/a/be;

    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Lorg/a/a/au;->a:Lorg/a/a/be;

    invoke-virtual {v0}, Lorg/a/a/be;->hashCode()I

    move-result v0

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/a/a/au;->b:Lorg/a/a/ba;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lorg/a/a/au;->b:Lorg/a/a/ba;

    invoke-virtual {v1}, Lorg/a/a/ba;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 110
    :cond_1
    iget-object v1, p0, Lorg/a/a/au;->c:Lorg/a/a/l;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lorg/a/a/au;->c:Lorg/a/a/l;

    invoke-virtual {v1}, Lorg/a/a/l;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 114
    :cond_2
    iget-object v1, p0, Lorg/a/a/au;->e:Lorg/a/a/bd;

    invoke-virtual {v1}, Lorg/a/a/bd;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 115
    return v0
.end method
