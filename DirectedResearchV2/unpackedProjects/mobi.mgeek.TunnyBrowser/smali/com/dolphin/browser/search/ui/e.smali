.class Lcom/dolphin/browser/search/ui/e;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/e;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 660
    check-cast p1, Landroid/widget/TextView;

    .line 662
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/e;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->k(Lcom/dolphin/browser/search/ui/c;)V

    goto :goto_0
.end method
