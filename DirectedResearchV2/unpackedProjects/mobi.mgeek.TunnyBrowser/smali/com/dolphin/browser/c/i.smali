.class Lcom/dolphin/browser/c/i;
.super Ljava/lang/Object;
.source "CloseCurrentTabCommand.java"

# interfaces
.implements Lcom/g/a/b;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/dolphin/browser/c/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/c/h;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dolphin/browser/c/i;->b:Lcom/dolphin/browser/c/h;

    iput-object p2, p0, Lcom/dolphin/browser/c/i;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/c/i;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dolphin/browser/c/i;->b:Lcom/dolphin/browser/c/h;

    invoke-static {v1}, Lcom/dolphin/browser/c/h;->a(Lcom/dolphin/browser/c/h;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public b(Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public c(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/c/i;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dolphin/browser/c/i;->b:Lcom/dolphin/browser/c/h;

    invoke-static {v1}, Lcom/dolphin/browser/c/h;->a(Lcom/dolphin/browser/c/h;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/c/i;->b:Lcom/dolphin/browser/c/h;

    invoke-static {v0}, Lcom/dolphin/browser/c/h;->b(Lcom/dolphin/browser/c/h;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/c/i;->b:Lcom/dolphin/browser/c/h;

    invoke-static {v0}, Lcom/dolphin/browser/c/h;->c(Lcom/dolphin/browser/c/h;)V

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/c/i;->b:Lcom/dolphin/browser/c/h;

    invoke-static {v0}, Lcom/dolphin/browser/c/h;->d(Lcom/dolphin/browser/c/h;)V

    .line 70
    return-void
.end method

.method public d(Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
