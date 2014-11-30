.class public Lorg/c/a/e/k;
.super Ljava/lang/Object;
.source "WebSocketBuffers.java"


# instance fields
.field private final a:I

.field private final b:Lorg/c/a/c/l;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/c/a/e/k;->a:I

    .line 43
    sget-object v0, Lorg/c/a/c/m;->b:Lorg/c/a/c/m;

    sget-object v2, Lorg/c/a/c/m;->c:Lorg/c/a/c/m;

    sget-object v4, Lorg/c/a/c/m;->c:Lorg/c/a/c/m;

    const/4 v5, -0x1

    move v1, p1

    move v3, p1

    invoke-static/range {v0 .. v5}, Lorg/c/a/c/n;->a(Lorg/c/a/c/m;ILorg/c/a/c/m;ILorg/c/a/c/m;I)Lorg/c/a/c/l;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/e/k;->b:Lorg/c/a/c/l;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/c/f;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/c/a/e/k;->b:Lorg/c/a/c/l;

    invoke-interface {v0}, Lorg/c/a/c/l;->f()Lorg/c/a/c/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/c/a/c/f;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/c/a/e/k;->b:Lorg/c/a/c/l;

    invoke-interface {v0, p1}, Lorg/c/a/c/l;->c(Lorg/c/a/c/f;)V

    .line 59
    return-void
.end method

.method public b()Lorg/c/a/c/f;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/c/a/e/k;->b:Lorg/c/a/c/l;

    invoke-interface {v0}, Lorg/c/a/c/l;->e()Lorg/c/a/c/f;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/c/a/e/k;->a:I

    return v0
.end method
