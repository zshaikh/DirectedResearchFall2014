.class public Lcom/dolphin/browser/menu/i;
.super Landroid/widget/ScrollView;
.source "FloatingMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/menu/j;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/menu/j;

    check-cast v0, Lcom/dolphin/browser/menu/j;

    .line 101
    invoke-virtual {v0}, Lcom/dolphin/browser/menu/j;->a()Lcom/dolphin/browser/menu/k;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0}, Lcom/dolphin/browser/menu/k;->a()V

    .line 104
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/i;->setVisibility(I)V

    .line 107
    :cond_0
    return-void
.end method
