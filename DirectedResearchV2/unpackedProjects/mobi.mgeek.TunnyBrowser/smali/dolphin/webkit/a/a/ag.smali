.class public Ldolphin/webkit/a/a/ag;
.super Ldolphin/webkit/a/a/bj;
.source "BERSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ldolphin/webkit/a/a/bj;-><init>()V

    .line 14
    return-void
.end method

.method constructor <init>(Ldolphin/webkit/a/a/d;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ldolphin/webkit/a/a/bj;-><init>(Ldolphin/webkit/a/a/d;Z)V

    .line 42
    return-void
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    instance-of v0, p1, Ldolphin/webkit/a/a/o;

    if-nez v0, :cond_0

    instance-of v0, p1, Ldolphin/webkit/a/a/ad;

    if-eqz v0, :cond_2

    .line 52
    :cond_0
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 53
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 55
    invoke-virtual {p0}, Ldolphin/webkit/a/a/ag;->e()Ljava/util/Enumeration;

    move-result-object v0

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ldolphin/webkit/a/a/bf;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1, v2}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 62
    invoke-virtual {p1, v2}, Ldolphin/webkit/a/a/bf;->write(I)V

    .line 68
    :goto_1
    return-void

    .line 66
    :cond_2
    invoke-super {p0, p1}, Ldolphin/webkit/a/a/bj;->a(Ldolphin/webkit/a/a/bf;)V

    goto :goto_1
.end method
