.class public Lorg/a/a/bl;
.super Lorg/a/a/t;
.source "DERSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/a/a/ar;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lorg/a/a/bl;->a(Lorg/a/a/ar;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/a/a/e;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/a/a/bl;-><init>(Lorg/a/a/e;Z)V

    .line 36
    return-void
.end method

.method constructor <init>(Lorg/a/a/e;Z)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    .line 59
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/a/a/e;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Lorg/a/a/e;->a(I)Lorg/a/a/ar;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/a/a/bl;->a(Lorg/a/a/ar;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    if-eqz p2, :cond_1

    .line 66
    invoke-virtual {p0}, Lorg/a/a/bl;->g()V

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    new-instance v1, Lorg/a/a/bh;

    invoke-direct {v1, v0}, Lorg/a/a/bh;-><init>(Ljava/io/OutputStream;)V

    .line 85
    invoke-virtual {p0}, Lorg/a/a/bl;->e()Ljava/util/Enumeration;

    move-result-object v2

    .line 87
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 91
    invoke-virtual {v1, v3}, Lorg/a/a/bh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v1}, Lorg/a/a/bh;->close()V

    .line 96
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 98
    const/16 v1, 0x31

    invoke-virtual {p1, v1, v0}, Lorg/a/a/bh;->a(I[B)V

    .line 99
    return-void
.end method
