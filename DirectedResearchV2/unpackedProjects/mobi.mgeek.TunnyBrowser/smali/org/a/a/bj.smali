.class public Lorg/a/a/bj;
.super Lorg/a/a/r;
.source "DERSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/a/a/r;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lorg/a/a/ar;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/a/a/r;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lorg/a/a/bj;->a(Lorg/a/a/ar;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/a/a/e;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/a/a/r;-><init>()V

    .line 32
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/a/a/e;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 34
    invoke-virtual {p1, v0}, Lorg/a/a/e;->a(I)Lorg/a/a/ar;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/a/a/bj;->a(Lorg/a/a/ar;)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/a/a/d;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/a/a/r;-><init>()V

    .line 44
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 46
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/a/a/bj;->a(Lorg/a/a/ar;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 4

    .prologue
    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    new-instance v1, Lorg/a/a/bh;

    invoke-direct {v1, v0}, Lorg/a/a/bh;-><init>(Ljava/io/OutputStream;)V

    .line 65
    invoke-virtual {p0}, Lorg/a/a/bj;->e()Ljava/util/Enumeration;

    move-result-object v2

    .line 67
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Lorg/a/a/bh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v1}, Lorg/a/a/bh;->close()V

    .line 76
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 78
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lorg/a/a/bh;->a(I[B)V

    .line 79
    return-void
.end method
