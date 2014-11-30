.class Lcom/dolphin/browser/search/ui/g;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 800
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 802
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v0, v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->isPerformingCompletion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getImeOptions()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    or-int/lit8 v0, v0, 0x2

    .line 812
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->x(Lcom/dolphin/browser/search/ui/c;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 813
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1, v0}, Lcom/dolphin/browser/search/ui/c;->b(Lcom/dolphin/browser/search/ui/c;I)I

    .line 814
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setImeOptions(I)V

    .line 816
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getInputType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setInputType(I)V

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->y(Lcom/dolphin/browser/search/ui/c;)V

    .line 821
    return-void

    .line 800
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->w(Lcom/dolphin/browser/search/ui/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 796
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 744
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0, p1, p4}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->q(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    if-lez p4, :cond_6

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->length()I

    move-result v1

    if-eq p4, v1, :cond_6

    .line 750
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->q(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;Ljava/lang/String;)Ljava/lang/String;

    .line 751
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1, v0}, Lcom/dolphin/browser/search/ui/c;->b(Lcom/dolphin/browser/search/ui/c;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 752
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->t(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 762
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 763
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->a(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0, v3}, Lcom/dolphin/browser/search/ui/c;->b(Lcom/dolphin/browser/search/ui/c;Z)Z

    .line 767
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 768
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->r(Lcom/dolphin/browser/search/ui/c;)Landroid/text/style/BackgroundColorSpan;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-le v0, v5, :cond_2

    .line 769
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 770
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 771
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->r(Lcom/dolphin/browser/search/ui/c;)Landroid/text/style/BackgroundColorSpan;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 772
    if-eq v0, v5, :cond_2

    .line 773
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->o(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->o(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setSelection(I)V

    .line 780
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 781
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->a(Z)V

    .line 782
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 783
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->dismissDropDown()V

    .line 785
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->b(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a;->h()V

    .line 789
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0, v4}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;Z)Z

    goto/16 :goto_0

    .line 753
    :cond_5
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->n(Lcom/dolphin/browser/search/ui/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 754
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->o(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 755
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->o(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setSelection(I)V

    .line 756
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1, v3}, Lcom/dolphin/browser/search/ui/c;->b(Lcom/dolphin/browser/search/ui/c;Z)Z

    goto/16 :goto_1

    .line 758
    :cond_6
    if-ne p4, v4, :cond_1

    if-nez p3, :cond_1

    .line 759
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->t(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1

    .line 786
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->u(Lcom/dolphin/browser/search/ui/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->v(Lcom/dolphin/browser/search/ui/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 787
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/g;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->a(Z)V

    goto :goto_2
.end method
