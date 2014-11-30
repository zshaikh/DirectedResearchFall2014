.class public Lorg/c/a/c/p;
.super Lorg/c/a/c/o;
.source "ByteArrayBuffer.java"

# interfaces
.implements Lorg/c/a/c/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lorg/c/a/c/o;-><init>(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/c/a/c/o;-><init>([BIII)V

    .line 430
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 435
    instance-of v0, p1, Lorg/c/a/c/f;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/c/a/c/f;

    invoke-virtual {p0, p1}, Lorg/c/a/c/p;->a(Lorg/c/a/c/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
