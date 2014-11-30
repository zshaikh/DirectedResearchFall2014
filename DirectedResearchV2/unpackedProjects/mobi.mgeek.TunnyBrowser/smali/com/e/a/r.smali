.class Lcom/e/a/r;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:Landroid/graphics/RectF;

.field final synthetic b:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/e/a/r;->b:Lcom/e/a/c;

    iput-object p2, p0, Lcom/e/a/r;->a:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/e/a/r;->a:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 127
    return-void
.end method
