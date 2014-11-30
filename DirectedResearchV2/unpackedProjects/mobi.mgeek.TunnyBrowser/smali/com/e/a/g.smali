.class Lcom/e/a/g;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;I)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/e/a/g;->b:Lcom/e/a/c;

    iput p2, p0, Lcom/e/a/g;->a:I

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/e/a/g;->a:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 182
    return-void
.end method
