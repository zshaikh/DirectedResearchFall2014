.class Lcom/tokenautocomplete/m;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# instance fields
.field final synthetic a:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .prologue
    .line 909
    iput-object p1, p0, Lcom/tokenautocomplete/m;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/a;)V
    .locals 0

    .prologue
    .line 909
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/m;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 2

    .prologue
    .line 912
    instance-of v0, p2, Lcom/tokenautocomplete/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tokenautocomplete/m;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->j(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    check-cast p2, Lcom/tokenautocomplete/j;

    .line 914
    iget-object v0, p0, Lcom/tokenautocomplete/m;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->c(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tokenautocomplete/j;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    iget-object v0, p0, Lcom/tokenautocomplete/m;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->i(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/tokenautocomplete/m;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->i(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/l;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tokenautocomplete/j;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tokenautocomplete/l;->a(Ljava/lang/Object;)V

    .line 918
    :cond_0
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 0

    .prologue
    .line 931
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 2

    .prologue
    .line 922
    instance-of v0, p2, Lcom/tokenautocomplete/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tokenautocomplete/m;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->j(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 923
    check-cast p2, Lcom/tokenautocomplete/j;

    .line 924
    iget-object v0, p0, Lcom/tokenautocomplete/m;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->c(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tokenautocomplete/j;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 925
    iget-object v0, p0, Lcom/tokenautocomplete/m;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->i(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/tokenautocomplete/m;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->i(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/l;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tokenautocomplete/j;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tokenautocomplete/l;->b(Ljava/lang/Object;)V

    .line 928
    :cond_0
    return-void
.end method
