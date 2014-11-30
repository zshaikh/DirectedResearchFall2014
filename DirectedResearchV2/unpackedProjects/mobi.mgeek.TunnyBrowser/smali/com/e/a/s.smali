.class Lcom/e/a/s;
.super Lcom/e/a/b;
.source "DrawCommand.java"


# instance fields
.field final synthetic a:Landroid/graphics/Path;

.field final synthetic b:Lcom/e/a/c;


# direct methods
.method constructor <init>(Lcom/e/a/c;Landroid/graphics/Path;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/e/a/s;->b:Lcom/e/a/c;

    iput-object p2, p0, Lcom/e/a/s;->a:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/e/a/s;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 137
    return-void
.end method
