.class public Lorg/a/a/ai;
.super Lorg/a/a/bl;
.source "BERSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/a/a/bl;-><init>()V

    .line 14
    return-void
.end method

.method constructor <init>(Lorg/a/a/e;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/a/a/bl;-><init>(Lorg/a/a/e;Z)V

    .line 42
    return-void
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    instance-of v0, p1, Lorg/a/a/p;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/a/a/af;

    if-eqz v0, :cond_2

    .line 52
    :cond_0
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lorg/a/a/bh;->write(I)V

    .line 53
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/a/a/bh;->write(I)V

    .line 55
    invoke-virtual {p0}, Lorg/a/a/ai;->e()Ljava/util/Enumeration;

    move-result-object v0

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/a/a/bh;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1, v2}, Lorg/a/a/bh;->write(I)V

    .line 62
    invoke-virtual {p1, v2}, Lorg/a/a/bh;->write(I)V

    .line 68
    :goto_1
    return-void

    .line 66
    :cond_2
    invoke-super {p0, p1}, Lorg/a/a/bl;->a(Lorg/a/a/bh;)V

    goto :goto_1
.end method
