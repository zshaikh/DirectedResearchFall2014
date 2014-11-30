.class Lcom/dolphin/browser/tablist/ce;
.super Ljava/lang/Object;
.source "TabListSwipeGuide.java"

# interfaces
.implements Lcom/g/a/b;


# instance fields
.field a:Z

.field final synthetic b:Lcom/dolphin/browser/tablist/cd;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/cd;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ce;->b:Lcom/dolphin/browser/tablist/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/a;)V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/ce;->a:Z

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ce;->b:Lcom/dolphin/browser/tablist/cd;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/cd;->c(Lcom/dolphin/browser/tablist/cd;)Lcom/dolphin/browser/tablist/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ce;->b:Lcom/dolphin/browser/tablist/cd;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/cd;->a(Lcom/dolphin/browser/tablist/cd;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/tablist/ce;->b:Lcom/dolphin/browser/tablist/cd;

    invoke-static {v2}, Lcom/dolphin/browser/tablist/cd;->b(Lcom/dolphin/browser/tablist/cd;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/tablist/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void
.end method

.method public b(Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public c(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ce;->b:Lcom/dolphin/browser/tablist/cd;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/cd;->c(Lcom/dolphin/browser/tablist/cd;)Lcom/dolphin/browser/tablist/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ce;->b:Lcom/dolphin/browser/tablist/cd;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/cd;->a(Lcom/dolphin/browser/tablist/cd;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/ac;->removeView(Landroid/view/View;)V

    .line 62
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/ce;->a:Z

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ce;->b:Lcom/dolphin/browser/tablist/cd;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/cd;->c(Lcom/dolphin/browser/tablist/cd;)Lcom/dolphin/browser/tablist/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/ac;->g()V

    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/tablist/cc;->b(Z)V

    .line 66
    :cond_0
    return-void
.end method

.method public d(Lcom/g/a/a;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/ce;->a:Z

    .line 71
    return-void
.end method
