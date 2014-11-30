.class Lcom/tokenautocomplete/n;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .prologue
    .line 938
    iput-object p1, p0, Lcom/tokenautocomplete/n;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/a;)V
    .locals 0

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/n;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/tokenautocomplete/j;Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 941
    invoke-interface {p2, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 942
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 948
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 945
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8

    .prologue
    const/16 v7, 0x2c

    .line 952
    iget-object v0, p0, Lcom/tokenautocomplete/n;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 953
    if-nez v2, :cond_1

    .line 983
    :cond_0
    return-void

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/tokenautocomplete/n;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->h(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 957
    iget-object v0, p0, Lcom/tokenautocomplete/n;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->k(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 959
    sub-int v0, p2, p3

    sub-int v1, p2, p3

    add-int/2addr v1, p4

    const-class v3, Lcom/tokenautocomplete/j;

    invoke-interface {v2, v0, v1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/j;

    .line 961
    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 963
    add-int v5, p2, p4

    .line 964
    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-ge v6, v5, :cond_3

    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-gt v5, v6, :cond_3

    .line 966
    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 967
    invoke-interface {v2, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 969
    invoke-virtual {p0, v4, v2}, Lcom/tokenautocomplete/n;->a(Lcom/tokenautocomplete/j;Landroid/text/Editable;)V

    .line 972
    add-int/lit8 v4, v6, -0x1

    .line 974
    if-ltz v4, :cond_2

    invoke-interface {v2, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_2

    .line 975
    add-int/lit8 v6, v4, 0x1

    invoke-interface {v2, v4, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 978
    :cond_2
    if-ltz v5, :cond_3

    invoke-interface {v2, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_3

    .line 979
    add-int/lit8 v4, v5, 0x1

    invoke-interface {v2, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 961
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
