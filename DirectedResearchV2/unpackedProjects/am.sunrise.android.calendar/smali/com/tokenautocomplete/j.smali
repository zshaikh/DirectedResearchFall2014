.class Lcom/tokenautocomplete/j;
.super Lcom/tokenautocomplete/p;
.source "TokenCompleteTextView.java"


# instance fields
.field final synthetic a:Lcom/tokenautocomplete/TokenCompleteTextView;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/tokenautocomplete/j;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 852
    invoke-direct {p0, p1, p2}, Lcom/tokenautocomplete/p;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;)V

    .line 853
    iput-object p3, p0, Lcom/tokenautocomplete/j;->b:Ljava/lang/Object;

    .line 854
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/tokenautocomplete/j;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 861
    iput-object p1, p0, Lcom/tokenautocomplete/j;->b:Ljava/lang/Object;

    .line 862
    iget-object v0, p0, Lcom/tokenautocomplete/j;->c:Landroid/view/View;

    instance-of v0, v0, Lcom/tokenautocomplete/k;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/tokenautocomplete/j;->c:Landroid/view/View;

    check-cast v0, Lcom/tokenautocomplete/k;

    iget-object v1, p0, Lcom/tokenautocomplete/j;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/tokenautocomplete/k;->setToken(Ljava/lang/Object;)V

    .line 865
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/tokenautocomplete/j;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 869
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 872
    iget-object v0, p0, Lcom/tokenautocomplete/j;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 873
    if-nez v0, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    sget-object v1, Lcom/tokenautocomplete/d;->b:[I

    iget-object v2, p0, Lcom/tokenautocomplete/j;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->g(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tokenautocomplete/h;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 892
    iget-object v1, p0, Lcom/tokenautocomplete/j;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getSelectionStart()I

    move-result v1

    invoke-interface {v0, p0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_0

    .line 894
    iget-object v1, p0, Lcom/tokenautocomplete/j;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-interface {v0, p0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 877
    :pswitch_0
    iget-object v0, p0, Lcom/tokenautocomplete/j;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 878
    iget-object v0, p0, Lcom/tokenautocomplete/j;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->h(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 879
    iget-object v0, p0, Lcom/tokenautocomplete/j;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->i(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tokenautocomplete/j;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tokenautocomplete/l;->c(Ljava/lang/Object;)V

    .line 880
    iget-object v0, p0, Lcom/tokenautocomplete/j;->c:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 885
    :cond_2
    :pswitch_1
    iget-object v0, p0, Lcom/tokenautocomplete/j;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 886
    iget-object v0, p0, Lcom/tokenautocomplete/j;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->i(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tokenautocomplete/j;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tokenautocomplete/l;->d(Ljava/lang/Object;)V

    .line 888
    :cond_3
    iget-object v0, p0, Lcom/tokenautocomplete/j;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0, p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/j;)V

    goto :goto_0

    .line 875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
