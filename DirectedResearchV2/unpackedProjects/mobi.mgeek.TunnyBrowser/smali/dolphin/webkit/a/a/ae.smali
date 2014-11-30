.class public Ldolphin/webkit/a/a/ae;
.super Ldolphin/webkit/a/a/bh;
.source "BERSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ldolphin/webkit/a/a/bh;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ldolphin/webkit/a/a/d;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ldolphin/webkit/a/a/bh;-><init>(Ldolphin/webkit/a/a/d;)V

    .line 32
    return-void
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    instance-of v0, p1, Ldolphin/webkit/a/a/o;

    if-nez v0, :cond_0

    instance-of v0, p1, Ldolphin/webkit/a/a/ad;

    if-eqz v0, :cond_2

    .line 42
    :cond_0
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 43
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 45
    invoke-virtual {p0}, Ldolphin/webkit/a/a/ae;->e()Ljava/util/Enumeration;

    move-result-object v0

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ldolphin/webkit/a/a/bf;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1, v2}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 52
    invoke-virtual {p1, v2}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 58
    :goto_1
    return-void

    .line 56
    :cond_2
    invoke-super {p0, p1}, Ldolphin/webkit/a/a/bh;->a(Ldolphin/webkit/a/a/bf;)V

    goto :goto_1
.end method
