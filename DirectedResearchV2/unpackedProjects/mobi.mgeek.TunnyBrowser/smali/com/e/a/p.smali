.class Lcom/e/a/p;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;FFFF)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/e/a/p;->e:Lcom/e/a/c;

    iput p2, p0, Lcom/e/a/p;->a:F

    iput p3, p0, Lcom/e/a/p;->b:F

    iput p4, p0, Lcom/e/a/p;->c:F

    iput p5, p0, Lcom/e/a/p;->d:F

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .prologue
    .line 105
    iget v1, p0, Lcom/e/a/p;->a:F

    iget v2, p0, Lcom/e/a/p;->b:F

    iget v3, p0, Lcom/e/a/p;->c:F

    iget v4, p0, Lcom/e/a/p;->d:F

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 106
    return-void
.end method
