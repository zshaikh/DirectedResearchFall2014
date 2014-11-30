.class Lcom/e/a/k;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:Landroid/graphics/Paint$Join;

.field final synthetic b:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;Landroid/graphics/Paint$Join;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/e/a/k;->b:Lcom/e/a/c;

    iput-object p2, p0, Lcom/e/a/k;->a:Landroid/graphics/Paint$Join;

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/e/a/k;->a:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 222
    return-void
.end method
