.class Lcom/e/a/i;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;F)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/e/a/i;->b:Lcom/e/a/c;

    iput p2, p0, Lcom/e/a/i;->a:F

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/e/a/i;->a:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    return-void
.end method
