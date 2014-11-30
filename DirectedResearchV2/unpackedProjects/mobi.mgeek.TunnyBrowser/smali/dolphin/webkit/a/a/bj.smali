.class public Ldolphin/webkit/a/a/bj;
.super Ldolphin/webkit/a/a/s;
.source "DERSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ldolphin/webkit/a/a/s;-><init>()V

    .line 18
    return-void
.end method

.method constructor <init>(Ldolphin/webkit/a/a/d;Z)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ldolphin/webkit/a/a/s;-><init>()V

    .line 59
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ldolphin/webkit/a/a/d;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Ldolphin/webkit/a/a/d;->a(I)Ldolphin/webkit/a/a/ap;

    move-result-object v1

    invoke-virtual {p0, v1}, Ldolphin/webkit/a/a/bj;->a(Ldolphin/webkit/a/a/ap;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    if-eqz p2, :cond_1

    .line 66
    invoke-virtual {p0}, Ldolphin/webkit/a/a/bj;->g()V

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    new-instance v1, Ldolphin/webkit/a/a/bf;

    invoke-direct {v1, v0}, Ldolphin/webkit/a/a/bf;-><init>(Ljava/io/OutputStream;)V

    .line 85
    invoke-virtual {p0}, Ldolphin/webkit/a/a/bj;->e()Ljava/util/Enumeration;

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
    invoke-virtual {v1, v3}, Ldolphin/webkit/a/a/bf;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v1}, Ldolphin/webkit/a/a/bf;->close()V

    .line 96
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 98
    const/16 v1, 0x31

    invoke-virtual {p1, v1, v0}, Ldolphin/webkit/a/a/bf;->a(I[B)V

    .line 99
    return-void
.end method
