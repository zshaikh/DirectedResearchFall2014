.class public Ldolphin/webkit/a/a/as;
.super Ldolphin/webkit/a/a/k;
.source "DERExternal.java"


# instance fields
.field private a:Ldolphin/webkit/a/a/bc;

.field private b:Ldolphin/webkit/a/a/ay;

.field private c:Ldolphin/webkit/a/a/k;

.field private d:I

.field private e:Ldolphin/webkit/a/a/bb;


# direct methods
.method public constructor <init>(Ldolphin/webkit/a/a/d;)V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 20
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, v1}, Ldolphin/webkit/a/a/as;->a(Ldolphin/webkit/a/a/d;I)Ldolphin/webkit/a/a/bb;

    move-result-object v0

    .line 23
    instance-of v2, v0, Ldolphin/webkit/a/a/bc;

    if-eqz v2, :cond_0

    .line 25
    check-cast v0, Ldolphin/webkit/a/a/bc;

    iput-object v0, p0, Ldolphin/webkit/a/a/as;->a:Ldolphin/webkit/a/a/bc;

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0, p1, v1}, Ldolphin/webkit/a/a/as;->a(Ldolphin/webkit/a/a/d;I)Ldolphin/webkit/a/a/bb;

    move-result-object v0

    .line 29
    :cond_0
    instance-of v2, v0, Ldolphin/webkit/a/a/ay;

    if-eqz v2, :cond_1

    .line 31
    check-cast v0, Ldolphin/webkit/a/a/ay;

    iput-object v0, p0, Ldolphin/webkit/a/a/as;->b:Ldolphin/webkit/a/a/ay;

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    invoke-direct {p0, p1, v1}, Ldolphin/webkit/a/a/as;->a(Ldolphin/webkit/a/a/d;I)Ldolphin/webkit/a/a/bb;

    move-result-object v0

    .line 35
    :cond_1
    instance-of v2, v0, Ldolphin/webkit/a/a/bm;

    if-nez v2, :cond_2

    .line 37
    check-cast v0, Ldolphin/webkit/a/a/k;

    iput-object v0, p0, Ldolphin/webkit/a/a/as;->c:Ldolphin/webkit/a/a/k;

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    invoke-direct {p0, p1, v1}, Ldolphin/webkit/a/a/as;->a(Ldolphin/webkit/a/a/d;I)Ldolphin/webkit/a/a/bb;

    move-result-object v0

    .line 42
    :cond_2
    invoke-virtual {p1}, Ldolphin/webkit/a/a/d;->a()I

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
    instance-of v1, v0, Ldolphin/webkit/a/a/bm;

    if-nez v1, :cond_4

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_4
    check-cast v0, Ldolphin/webkit/a/a/bm;

    .line 52
    invoke-virtual {v0}, Ldolphin/webkit/a/a/bm;->e()I

    move-result v1

    invoke-direct {p0, v1}, Ldolphin/webkit/a/a/as;->a(I)V

    .line 53
    invoke-virtual {v0}, Ldolphin/webkit/a/a/bm;->f()Ldolphin/webkit/a/a/bb;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/a/a/as;->e:Ldolphin/webkit/a/a/bb;

    .line 54
    return-void
.end method

.method private a(Ldolphin/webkit/a/a/d;I)Ldolphin/webkit/a/a/bb;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p1}, Ldolphin/webkit/a/a/d;->a()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few objects in input vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p1, p2}, Ldolphin/webkit/a/a/d;->a(I)Ldolphin/webkit/a/a/ap;

    move-result-object v0

    invoke-interface {v0}, Ldolphin/webkit/a/a/ap;->c()Ldolphin/webkit/a/a/bb;

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
    iput p1, p0, Ldolphin/webkit/a/a/as;->d:I

    .line 264
    return-void
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 4

    .prologue
    .line 124
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->a:Ldolphin/webkit/a/a/bc;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->a:Ldolphin/webkit/a/a/bc;

    invoke-virtual {v1}, Ldolphin/webkit/a/a/bc;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 129
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->b:Ldolphin/webkit/a/a/ay;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->b:Ldolphin/webkit/a/a/ay;

    invoke-virtual {v1}, Ldolphin/webkit/a/a/ay;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 133
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->c:Ldolphin/webkit/a/a/k;

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->c:Ldolphin/webkit/a/a/k;

    invoke-virtual {v1}, Ldolphin/webkit/a/a/k;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    :cond_2
    new-instance v1, Ldolphin/webkit/a/a/bm;

    iget v2, p0, Ldolphin/webkit/a/a/as;->d:I

    iget-object v3, p0, Ldolphin/webkit/a/a/as;->e:Ldolphin/webkit/a/a/bb;

    invoke-direct {v1, v2, v3}, Ldolphin/webkit/a/a/bm;-><init>(ILdolphin/webkit/a/a/ap;)V

    .line 138
    invoke-virtual {v1}, Ldolphin/webkit/a/a/bm;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    const/16 v1, 0x20

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Ldolphin/webkit/a/a/bf;->a(II[B)V

    .line 140
    return-void
.end method

.method a(Ldolphin/webkit/a/a/bb;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 147
    instance-of v1, p1, Ldolphin/webkit/a/a/as;

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
    check-cast p1, Ldolphin/webkit/a/a/as;

    .line 156
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->a:Ldolphin/webkit/a/a/bc;

    if-eqz v1, :cond_3

    .line 158
    iget-object v1, p1, Ldolphin/webkit/a/a/as;->a:Ldolphin/webkit/a/a/bc;

    if-eqz v1, :cond_0

    iget-object v1, p1, Ldolphin/webkit/a/a/as;->a:Ldolphin/webkit/a/a/bc;

    iget-object v2, p0, Ldolphin/webkit/a/a/as;->a:Ldolphin/webkit/a/a/bc;

    invoke-virtual {v1, v2}, Ldolphin/webkit/a/a/bc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    :cond_3
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->b:Ldolphin/webkit/a/a/ay;

    if-eqz v1, :cond_4

    .line 165
    iget-object v1, p1, Ldolphin/webkit/a/a/as;->b:Ldolphin/webkit/a/a/ay;

    if-eqz v1, :cond_0

    iget-object v1, p1, Ldolphin/webkit/a/a/as;->b:Ldolphin/webkit/a/a/ay;

    iget-object v2, p0, Ldolphin/webkit/a/a/as;->b:Ldolphin/webkit/a/a/ay;

    invoke-virtual {v1, v2}, Ldolphin/webkit/a/a/ay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :cond_4
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->c:Ldolphin/webkit/a/a/k;

    if-eqz v1, :cond_5

    .line 172
    iget-object v1, p1, Ldolphin/webkit/a/a/as;->c:Ldolphin/webkit/a/a/k;

    if-eqz v1, :cond_0

    iget-object v1, p1, Ldolphin/webkit/a/a/as;->c:Ldolphin/webkit/a/a/k;

    iget-object v2, p0, Ldolphin/webkit/a/a/as;->c:Ldolphin/webkit/a/a/k;

    invoke-virtual {v1, v2}, Ldolphin/webkit/a/a/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    :cond_5
    iget-object v0, p0, Ldolphin/webkit/a/a/as;->e:Ldolphin/webkit/a/a/bb;

    iget-object v1, p1, Ldolphin/webkit/a/a/as;->e:Ldolphin/webkit/a/a/bb;

    invoke-virtual {v0, v1}, Ldolphin/webkit/a/a/bb;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->a:Ldolphin/webkit/a/a/bc;

    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Ldolphin/webkit/a/a/as;->a:Ldolphin/webkit/a/a/bc;

    invoke-virtual {v0}, Ldolphin/webkit/a/a/bc;->hashCode()I

    move-result v0

    .line 106
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->b:Ldolphin/webkit/a/a/ay;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->b:Ldolphin/webkit/a/a/ay;

    invoke-virtual {v1}, Ldolphin/webkit/a/a/ay;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 110
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->c:Ldolphin/webkit/a/a/k;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->c:Ldolphin/webkit/a/a/k;

    invoke-virtual {v1}, Ldolphin/webkit/a/a/k;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 114
    :cond_2
    iget-object v1, p0, Ldolphin/webkit/a/a/as;->e:Ldolphin/webkit/a/a/bb;

    invoke-virtual {v1}, Ldolphin/webkit/a/a/bb;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 115
    return v0
.end method
