.class Lcom/e/a/j;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:Landroid/graphics/Paint$Cap;

.field final synthetic b:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;Landroid/graphics/Paint$Cap;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/e/a/j;->b:Lcom/e/a/c;

    iput-object p2, p0, Lcom/e/a/j;->a:Landroid/graphics/Paint$Cap;

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/e/a/j;->a:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 212
    return-void
.end method
