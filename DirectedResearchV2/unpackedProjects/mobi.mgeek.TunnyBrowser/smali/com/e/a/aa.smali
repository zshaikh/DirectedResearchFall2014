.class Lcom/e/a/aa;
.super Ljava/lang/Object;
.source "SVGDrawable.java"

# interfaces
.implements Lcom/e/a/a;


# instance fields
.field final synthetic a:Lcom/e/a/z;


# direct methods
.method constructor <init>(Lcom/e/a/z;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/e/a/aa;->a:Lcom/e/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/e/a/aa;->a:Lcom/e/a/z;

    invoke-static {v0}, Lcom/e/a/z;->a(Lcom/e/a/z;)Lcom/e/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/e/a/aa;->a:Lcom/e/a/z;

    invoke-static {v0}, Lcom/e/a/z;->a(Lcom/e/a/z;)Lcom/e/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/e/a/a;->a(I)I

    move-result p1

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/e/a/aa;->a:Lcom/e/a/z;

    invoke-static {v0}, Lcom/e/a/z;->b(Lcom/e/a/z;)Lcom/e/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/e/a/aa;->a:Lcom/e/a/z;

    invoke-static {v0}, Lcom/e/a/z;->b(Lcom/e/a/z;)Lcom/e/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/e/a/a;->a(I)I

    move-result p1

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/e/a/aa;->a:Lcom/e/a/z;

    invoke-static {v0}, Lcom/e/a/z;->c(Lcom/e/a/z;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/e/a/z;->a(II)I

    move-result v0

    return v0
.end method
