.class public Lcom/dolphin/browser/feedback/f;
.super Landroid/widget/BaseAdapter;
.source "EmailListAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/feedback/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/feedback/f;->b:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/dolphin/browser/feedback/f;->a:Landroid/content/Context;

    .line 21
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 22
    iget-object v7, p0, Lcom/dolphin/browser/feedback/f;->b:Ljava/util/List;

    new-instance v0, Lcom/dolphin/browser/feedback/e;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/feedback/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/feedback/f;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/feedback/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/feedback/f;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/feedback/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/feedback/e;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v2, Lcom/dolphin/browser/feedback/d;

    iget-object v0, p0, Lcom/dolphin/browser/feedback/f;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/feedback/d;-><init>(Landroid/content/Context;)V

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/feedback/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/feedback/e;

    move-object v1, v2

    .line 55
    check-cast v1, Lcom/dolphin/browser/feedback/d;

    .line 56
    iget-object v3, p0, Lcom/dolphin/browser/feedback/f;->a:Landroid/content/Context;

    invoke-virtual {v1, v3, v0}, Lcom/dolphin/browser/feedback/d;->a(Landroid/content/Context;Lcom/dolphin/browser/feedback/e;)V

    .line 58
    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method
