.class public Ldolphin/webkit/a/a/bh;
.super Ldolphin/webkit/a/a/q;
.source "DERSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ldolphin/webkit/a/a/q;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ldolphin/webkit/a/a/d;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ldolphin/webkit/a/a/q;-><init>()V

    .line 32
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ldolphin/webkit/a/a/d;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 34
    invoke-virtual {p1, v0}, Ldolphin/webkit/a/a/d;->a(I)Ldolphin/webkit/a/a/ap;

    move-result-object v1

    invoke-virtual {p0, v1}, Ldolphin/webkit/a/a/bh;->a(Ldolphin/webkit/a/a/ap;)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 4

    .prologue
    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    new-instance v1, Ldolphin/webkit/a/a/bf;

    invoke-direct {v1, v0}, Ldolphin/webkit/a/a/bf;-><init>(Ljava/io/OutputStream;)V

    .line 65
    invoke-virtual {p0}, Ldolphin/webkit/a/a/bh;->e()Ljava/util/Enumeration;

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
    invoke-virtual {v1, v3}, Ldolphin/webkit/a/a/bf;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v1}, Ldolphin/webkit/a/a/bf;->close()V

    .line 76
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 78
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Ldolphin/webkit/a/a/bf;->a(I[B)V

    .line 79
    return-void
.end method
