.class Lcom/e/a/q;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;FFF)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/e/a/q;->d:Lcom/e/a/c;

    iput p2, p0, Lcom/e/a/q;->a:F

    iput p3, p0, Lcom/e/a/q;->b:F

    iput p4, p0, Lcom/e/a/q;->c:F

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .prologue
    .line 115
    iget v0, p0, Lcom/e/a/q;->a:F

    iget v1, p0, Lcom/e/a/q;->b:F

    iget v2, p0, Lcom/e/a/q;->c:F

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 116
    return-void
.end method
