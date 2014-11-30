.class public Ldolphin/webkit/a/a/bf;
.super Ljava/io/FilterOutputStream;
.source "DEROutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 20
    const/16 v0, 0x7f

    if-le p1, v0, :cond_1

    .line 22
    const/4 v0, 0x1

    move v1, v0

    move v0, p1

    .line 25
    :goto_0
    ushr-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_0
    or-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 32
    add-int/lit8 v0, v1, -0x1

    mul-int/lit8 v0, v0, 0x8

    :goto_1
    if-ltz v0, :cond_2

    .line 34
    shr-int v1, p1, v0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 32
    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    .line 39
    :cond_1
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 41
    :cond_2
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 99
    return-void
.end method

.method a(II)V
    .locals 3

    .prologue
    .line 56
    const/16 v0, 0x1f

    if-ge p2, v0, :cond_0

    .line 58
    or-int v0, p1, p2

    invoke-virtual {p0, v0}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 84
    :goto_0
    return-void

    .line 62
    :cond_0
    or-int/lit8 v0, p1, 0x1f

    invoke-virtual {p0, v0}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 63
    const/16 v0, 0x80

    if-ge p2, v0, :cond_1

    .line 65
    invoke-virtual {p0, p2}, Ldolphin/webkit/a/a/bf;->write(I)V

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x5

    new-array v1, v0, [B

    .line 70
    array-length v0, v1

    .line 72
    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 76
    :cond_2
    shr-int/lit8 p2, p2, 0x7

    .line 77
    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 79
    const/16 v2, 0x7f

    if-gt p2, v2, :cond_2

    .line 81
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Ldolphin/webkit/a/a/bf;->write([BII)V

    goto :goto_0
.end method

.method a(II[B)V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/a/a/bf;->a(II)V

    .line 90
    array-length v0, p3

    invoke-direct {p0, v0}, Ldolphin/webkit/a/a/bf;->a(I)V

    .line 91
    invoke-virtual {p0, p3}, Ldolphin/webkit/a/a/bf;->write([B)V

    .line 92
    return-void
.end method

.method a(I[B)V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 49
    array-length v0, p2

    invoke-direct {p0, v0}, Ldolphin/webkit/a/a/bf;->a(I)V

    .line 50
    invoke-virtual {p0, p2}, Ldolphin/webkit/a/a/bf;->write([B)V

    .line 51
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Ldolphin/webkit/a/a/bf;->a()V

    .line 133
    :goto_0
    return-void

    .line 121
    :cond_0
    instance-of v0, p1, Ldolphin/webkit/a/a/bb;

    if-eqz v0, :cond_1

    .line 123
    check-cast p1, Ldolphin/webkit/a/a/bb;

    invoke-virtual {p1, p0}, Ldolphin/webkit/a/a/bb;->a(Ldolphin/webkit/a/a/bf;)V

    goto :goto_0

    .line 125
    :cond_1
    instance-of v0, p1, Ldolphin/webkit/a/a/ap;

    if-eqz v0, :cond_2

    .line 127
    check-cast p1, Ldolphin/webkit/a/a/ap;

    invoke-interface {p1}, Ldolphin/webkit/a/a/ap;->c()Ldolphin/webkit/a/a/bb;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldolphin/webkit/a/a/bb;->a(Ldolphin/webkit/a/a/bf;)V

    goto :goto_0

    .line 131
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "object not DEREncodable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Ldolphin/webkit/a/a/bf;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 105
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ldolphin/webkit/a/a/bf;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    return-void
.end method
