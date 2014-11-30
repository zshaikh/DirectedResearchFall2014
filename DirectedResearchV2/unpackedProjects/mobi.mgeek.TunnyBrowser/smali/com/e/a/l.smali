.class Lcom/e/a/l;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:Landroid/graphics/Matrix;

.field final synthetic b:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/e/a/l;->b:Lcom/e/a/c;

    iput-object p2, p0, Lcom/e/a/l;->a:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/e/a/l;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 66
    return-void
.end method
