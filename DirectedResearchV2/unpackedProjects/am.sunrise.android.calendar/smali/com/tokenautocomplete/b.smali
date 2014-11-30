.class Lcom/tokenautocomplete/b;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/tokenautocomplete/b;->c:Lcom/tokenautocomplete/TokenCompleteTextView;

    iput-object p2, p0, Lcom/tokenautocomplete/b;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/tokenautocomplete/b;->b:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 604
    iget-object v0, p0, Lcom/tokenautocomplete/b;->c:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->b(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tokenautocomplete/b;->c:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->c(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tokenautocomplete/b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/tokenautocomplete/b;->c:Lcom/tokenautocomplete/TokenCompleteTextView;

    iget-object v1, p0, Lcom/tokenautocomplete/b;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 607
    iget-object v0, p0, Lcom/tokenautocomplete/b;->c:Lcom/tokenautocomplete/TokenCompleteTextView;

    iget-object v2, p0, Lcom/tokenautocomplete/b;->a:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;)Lcom/tokenautocomplete/j;

    move-result-object v2

    .line 609
    iget-object v0, p0, Lcom/tokenautocomplete/b;->c:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 610
    if-eqz v3, :cond_0

    .line 611
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    .line 613
    iget-object v4, p0, Lcom/tokenautocomplete/b;->c:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->d(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 615
    iget-object v0, p0, Lcom/tokenautocomplete/b;->c:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 616
    invoke-interface {v3, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 620
    :goto_1
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x21

    invoke-interface {v3, v2, v0, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 624
    iget-object v4, p0, Lcom/tokenautocomplete/b;->c:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->c(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/tokenautocomplete/b;->a:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 625
    iget-object v4, p0, Lcom/tokenautocomplete/b;->c:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->e(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/m;

    move-result-object v4

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v3, v2, v0, v1}, Lcom/tokenautocomplete/m;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/tokenautocomplete/b;->c:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 618
    :cond_3
    invoke-interface {v3, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method
