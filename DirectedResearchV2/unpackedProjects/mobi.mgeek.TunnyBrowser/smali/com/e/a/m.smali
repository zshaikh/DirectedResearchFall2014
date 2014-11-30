.class Lcom/e/a/m;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;FF)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/e/a/m;->c:Lcom/e/a/c;

    iput p2, p0, Lcom/e/a/m;->a:F

    iput p3, p0, Lcom/e/a/m;->b:F

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/e/a/m;->a:F

    iget v1, p0, Lcom/e/a/m;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 76
    return-void
.end method
