.class Lcom/dolphin/browser/tablist/al;
.super Lcom/g/a/c;
.source "CurrentTablistView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ac;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ac;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/dolphin/browser/tablist/al;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-direct {p0}, Lcom/g/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method public c(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/dolphin/browser/tablist/al;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->n(Lcom/dolphin/browser/tablist/ac;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/dolphin/browser/tablist/al;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->n(Lcom/dolphin/browser/tablist/ac;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 618
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/al;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->n(Lcom/dolphin/browser/tablist/ac;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public d(Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 623
    return-void
.end method
