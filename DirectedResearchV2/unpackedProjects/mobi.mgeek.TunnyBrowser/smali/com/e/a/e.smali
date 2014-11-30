.class Lcom/e/a/e;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:Landroid/graphics/Paint$Style;

.field final synthetic b:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;Landroid/graphics/Paint$Style;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/e/a/e;->b:Lcom/e/a/c;

    iput-object p2, p0, Lcom/e/a/e;->a:Landroid/graphics/Paint$Style;

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/e/a/e;->a:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 158
    return-void
.end method
