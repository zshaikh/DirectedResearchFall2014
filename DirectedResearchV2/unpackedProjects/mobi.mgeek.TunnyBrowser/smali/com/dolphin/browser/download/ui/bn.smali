.class public Lcom/dolphin/browser/download/ui/bn;
.super Landroid/widget/BaseAdapter;
.source "FileManagerCategoryGridAdapter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/download/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/bn;->b:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Lcom/dolphin/browser/download/e;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/bn;->a:Ljava/util/List;

    .line 28
    return-void
.end method

.method private d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bn;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/dolphin/browser/download/b;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bn;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/b;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/download/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bn;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/download/a;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bn;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/dolphin/browser/download/e;->a(Ljava/util/List;Lcom/dolphin/browser/download/a;)Lcom/dolphin/browser/download/b;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/dolphin/browser/download/b;->a()V

    .line 46
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/b;

    .line 89
    invoke-virtual {v0}, Lcom/dolphin/browser/download/b;->b()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bn;->notifyDataSetChanged()V

    .line 92
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/b;

    .line 101
    invoke-virtual {v0}, Lcom/dolphin/browser/download/b;->h()V

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bn;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/download/ui/bn;->a(I)Lcom/dolphin/browser/download/b;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 80
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 58
    new-instance v1, Lcom/dolphin/browser/download/ui/q;

    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/bn;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dolphin/browser/download/ui/q;-><init>(Landroid/content/Context;)V

    .line 61
    :goto_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/download/ui/bn;->a(I)Lcom/dolphin/browser/download/b;

    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 65
    check-cast v0, Lcom/dolphin/browser/download/ui/q;

    .line 66
    invoke-virtual {v0, v2}, Lcom/dolphin/browser/download/ui/q;->a(Lcom/dolphin/browser/download/b;)V

    .line 68
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
