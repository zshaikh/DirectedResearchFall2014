.class Lcom/e/a/o;
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
    .line 92
    iput-object p1, p0, Lcom/e/a/o;->e:Lcom/e/a/c;

    iput p2, p0, Lcom/e/a/o;->a:F

    iput p3, p0, Lcom/e/a/o;->b:F

    iput p4, p0, Lcom/e/a/o;->c:F

    iput p5, p0, Lcom/e/a/o;->d:F

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .prologue
    .line 95
    iget v1, p0, Lcom/e/a/o;->a:F

    iget v2, p0, Lcom/e/a/o;->b:F

    iget v3, p0, Lcom/e/a/o;->c:F

    iget v4, p0, Lcom/e/a/o;->d:F

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 96
    return-void
.end method
