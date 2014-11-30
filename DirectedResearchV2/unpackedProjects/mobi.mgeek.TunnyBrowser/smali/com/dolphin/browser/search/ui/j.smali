.class Lcom/dolphin/browser/search/ui/j;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/j;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 909
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/j;->a:Lcom/dolphin/browser/search/ui/c;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/j;->a:Lcom/dolphin/browser/search/ui/c;

    check-cast p1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dolphin/browser/search/ui/j;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v3}, Lcom/dolphin/browser/search/ui/c;->A(Lcom/dolphin/browser/search/ui/c;)I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;Landroid/widget/TextView;I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/search/ui/c;->d(Lcom/dolphin/browser/search/ui/c;Z)Z

    .line 910
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/j;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->z(Lcom/dolphin/browser/search/ui/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 911
    const/4 v0, 0x1

    .line 924
    :cond_0
    :goto_0
    return v0

    .line 913
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/j;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->p(Lcom/dolphin/browser/search/ui/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 914
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/j;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/j;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 915
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/j;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/j;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setSelection(II)V

    .line 918
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/j;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/j;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 921
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/j;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->dismissDropDown()V

    goto :goto_0
.end method
