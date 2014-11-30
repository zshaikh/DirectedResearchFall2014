.class public Lorg/a/a/bt;
.super Lorg/a/a/bd;
.source "DERUnknownTag.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:[B


# direct methods
.method public constructor <init>(ZI[B)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/a/a/bd;-><init>()V

    .line 33
    iput-boolean p1, p0, Lorg/a/a/bt;->a:Z

    .line 34
    iput p2, p0, Lorg/a/a/bt;->b:I

    .line 35
    iput-object p3, p0, Lorg/a/a/bt;->c:[B

    .line 36
    return-void
.end method


# virtual methods
.method a(Lorg/a/a/bh;)V
    .locals 3

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/a/a/bt;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    :goto_0
    iget v1, p0, Lorg/a/a/bt;->b:I

    iget-object v2, p0, Lorg/a/a/bt;->c:[B

    invoke-virtual {p1, v0, v1, v2}, Lorg/a/a/bh;->a(II[B)V

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 63
    instance-of v1, p1, Lorg/a/a/bt;

    if-nez v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    check-cast p1, Lorg/a/a/bt;

    .line 70
    iget-boolean v1, p0, Lorg/a/a/bt;->a:Z

    iget-boolean v2, p1, Lorg/a/a/bt;->a:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/a/a/bt;->b:I

    iget v2, p1, Lorg/a/a/bt;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/a/a/bt;->c:[B

    iget-object v2, p1, Lorg/a/a/bt;->c:[B

    invoke-static {v1, v2}, Lorg/a/b/a;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/a/a/bt;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iget v1, p0, Lorg/a/a/bt;->b:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/a/a/bt;->c:[B

    invoke-static {v1}, Lorg/a/b/a;->a([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
