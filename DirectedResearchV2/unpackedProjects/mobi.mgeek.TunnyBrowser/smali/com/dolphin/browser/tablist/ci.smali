.class Lcom/dolphin/browser/tablist/ci;
.super Ljava/lang/Object;
.source "TabThumbLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Canvas;

.field final synthetic b:Lcom/dolphin/browser/tablist/ch;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ch;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ci;->b:Lcom/dolphin/browser/tablist/ch;

    iput-object p2, p0, Lcom/dolphin/browser/tablist/ci;->a:Landroid/graphics/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 236
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v0

    .line 237
    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ci;->b:Lcom/dolphin/browser/tablist/ch;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/ch;->d(Lcom/dolphin/browser/tablist/ch;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 242
    iget-object v2, p0, Lcom/dolphin/browser/tablist/ci;->b:Lcom/dolphin/browser/tablist/ch;

    invoke-static {v2}, Lcom/dolphin/browser/tablist/ch;->e(Lcom/dolphin/browser/tablist/ch;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 244
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 246
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ci;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 250
    :goto_1
    invoke-static {}, Lcom/dolphin/browser/theme/bf;->a()Lcom/dolphin/browser/theme/bf;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/tablist/ci;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 251
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ci;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/tablist/ci;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1
.end method
