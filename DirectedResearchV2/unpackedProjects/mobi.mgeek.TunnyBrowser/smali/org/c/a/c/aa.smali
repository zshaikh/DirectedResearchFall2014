.class public Lorg/c/a/c/aa;
.super Lorg/c/a/c/z;
.source "View.java"

# interfaces
.implements Lorg/c/a/c/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lorg/c/a/c/z;-><init>()V

    .line 233
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 248
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/c/a/c/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/c/a/c/f;

    invoke-interface {v0, p0}, Lorg/c/a/c/f;->a(Lorg/c/a/c/f;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lorg/c/a/c/z;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
