.class Lcom/e/a/f;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;I)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/e/a/f;->b:Lcom/e/a/c;

    iput p2, p0, Lcom/e/a/f;->a:I

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/e/a/f;->b:Lcom/e/a/c;

    invoke-static {v0}, Lcom/e/a/c;->a(Lcom/e/a/c;)Lcom/e/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/e/a/f;->b:Lcom/e/a/c;

    invoke-static {v0}, Lcom/e/a/c;->a(Lcom/e/a/c;)Lcom/e/a/a;

    move-result-object v0

    iget v1, p0, Lcom/e/a/f;->a:I

    invoke-interface {v0, v1}, Lcom/e/a/a;->a(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget v0, p0, Lcom/e/a/f;->a:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
