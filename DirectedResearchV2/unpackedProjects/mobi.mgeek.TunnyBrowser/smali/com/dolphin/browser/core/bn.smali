.class Lcom/dolphin/browser/core/bn;
.super Ljava/lang/Object;
.source "WebViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Canvas;

.field final synthetic b:Lcom/dolphin/browser/core/bl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/bl;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/dolphin/browser/core/bn;->b:Lcom/dolphin/browser/core/bl;

    iput-object p2, p0, Lcom/dolphin/browser/core/bn;->a:Landroid/graphics/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/dolphin/browser/core/bn;->b:Lcom/dolphin/browser/core/bl;

    invoke-static {v0}, Lcom/dolphin/browser/core/bl;->a(Lcom/dolphin/browser/core/bl;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/core/bn;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 730
    return-void
.end method
