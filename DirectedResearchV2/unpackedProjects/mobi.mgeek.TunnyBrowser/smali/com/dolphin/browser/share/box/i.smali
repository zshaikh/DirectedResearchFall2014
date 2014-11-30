.class public Lcom/dolphin/browser/share/box/i;
.super Landroid/widget/BaseAdapter;
.source "UploadPathAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/b/a/a/b;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/b/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/b/a/a/b;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/dolphin/browser/share/box/i;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/dolphin/browser/share/box/i;->b:Lcom/b/a/a/b;

    .line 22
    invoke-virtual {p0}, Lcom/dolphin/browser/share/box/i;->a()V

    .line 23
    return-void
.end method

.method private b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/share/box/i;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dolphin/browser/share/box/i;->b:Lcom/b/a/a/b;

    invoke-virtual {v0}, Lcom/b/a/a/b;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/box/i;->c:Ljava/util/List;

    .line 31
    invoke-virtual {p0}, Lcom/dolphin/browser/share/box/i;->notifyDataSetChanged()V

    .line 32
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/share/box/i;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/box/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/share/box/i;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/box/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 51
    if-nez p2, :cond_0

    .line 52
    new-instance v2, Lcom/dolphin/browser/share/box/a;

    invoke-direct {p0}, Lcom/dolphin/browser/share/box/i;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/dolphin/browser/share/box/a;-><init>(Landroid/content/Context;)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/share/box/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b;

    move-object v1, v2

    .line 56
    check-cast v1, Lcom/dolphin/browser/share/box/a;

    .line 57
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/share/box/a;->a(Lcom/b/a/a/b;)V

    .line 59
    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method
