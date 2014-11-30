.class public Lcom/dolphin/browser/download/ui/bl;
.super Landroid/widget/BaseAdapter;
.source "FileManagerCategoryAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/download/a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/download/a;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->c:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->d:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/bl;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/dolphin/browser/download/ui/bl;->b:Lcom/dolphin/browser/download/a;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/bl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->c:Ljava/util/List;

    return-object v0
.end method

.method private d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->c:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bl;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/bl;->notifyDataSetChanged()V

    .line 102
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 62
    if-nez p2, :cond_2

    .line 63
    new-instance v2, Lcom/dolphin/browser/download/ui/be;

    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/bl;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/dolphin/browser/download/ui/be;-><init>(Landroid/content/Context;)V

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    move-object v1, v2

    .line 68
    check-cast v1, Lcom/dolphin/browser/download/ui/be;

    .line 69
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/download/ui/be;->a(Ljava/io/File;)V

    .line 70
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    new-instance v1, Lcom/dolphin/browser/download/ui/bm;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/download/ui/bm;-><init>(Lcom/dolphin/browser/download/ui/bl;Ljava/io/File;)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 80
    :cond_1
    return-object v2

    :cond_2
    move-object v2, p2

    goto :goto_0
.end method
