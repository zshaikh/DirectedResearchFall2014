.class Lcom/tokenautocomplete/o;
.super Lcom/tokenautocomplete/n;
.source "TokenCompleteTextView.java"


# instance fields
.field final synthetic b:Lcom/tokenautocomplete/TokenCompleteTextView;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tokenautocomplete/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 1

    .prologue
    .line 990
    iput-object p1, p0, Lcom/tokenautocomplete/o;->b:Lcom/tokenautocomplete/TokenCompleteTextView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tokenautocomplete/n;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/a;)V

    .line 991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tokenautocomplete/o;->c:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/a;)V
    .locals 0

    .prologue
    .line 990
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/o;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/tokenautocomplete/j;Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/tokenautocomplete/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 996
    invoke-super {p0, p1, p2}, Lcom/tokenautocomplete/n;->a(Lcom/tokenautocomplete/j;Landroid/text/Editable;)V

    .line 997
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .prologue
    .line 1013
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/tokenautocomplete/j;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/j;

    .line 1014
    iget-object v1, p0, Lcom/tokenautocomplete/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tokenautocomplete/j;

    .line 1015
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1016
    iget-object v3, p0, Lcom/tokenautocomplete/o;->b:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->e(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/m;

    move-result-object v3

    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3, p1, v1, v4, v5}, Lcom/tokenautocomplete/m;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_0

    .line 1019
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/tokenautocomplete/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1003
    iget-object v0, p0, Lcom/tokenautocomplete/o;->b:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1004
    if-nez v0, :cond_0

    .line 1009
    :goto_0
    return-void

    .line 1007
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/tokenautocomplete/j;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/j;

    .line 1008
    iget-object v1, p0, Lcom/tokenautocomplete/o;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
