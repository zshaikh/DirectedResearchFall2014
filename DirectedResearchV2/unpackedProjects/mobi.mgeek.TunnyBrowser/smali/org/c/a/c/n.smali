.class public Lorg/c/a/c/n;
.super Ljava/lang/Object;
.source "BuffersFactory.java"


# direct methods
.method public static a(Lorg/c/a/c/m;ILorg/c/a/c/m;ILorg/c/a/c/m;I)Lorg/c/a/c/l;
    .locals 7

    .prologue
    .line 25
    if-ltz p5, :cond_0

    .line 26
    new-instance v0, Lorg/c/a/c/u;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/c/a/c/u;-><init>(Lorg/c/a/c/m;ILorg/c/a/c/m;ILorg/c/a/c/m;I)V

    .line 27
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/c/a/c/w;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/c/a/c/w;-><init>(Lorg/c/a/c/m;ILorg/c/a/c/m;ILorg/c/a/c/m;)V

    goto :goto_0
.end method
