.class public Lcom/dolphin/browser/share/p;
.super Landroid/widget/BaseAdapter;
.source "ShareGridAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/share/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/share/b/k;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dolphin/browser/share/p;->a:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/dolphin/browser/share/p;->b:Ljava/util/List;

    .line 25
    iput p3, p0, Lcom/dolphin/browser/share/p;->c:I

    .line 26
    iput p4, p0, Lcom/dolphin/browser/share/p;->d:I

    .line 27
    iput-boolean p5, p0, Lcom/dolphin/browser/share/p;->e:Z

    .line 28
    return-void
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 5

    .prologue
    .line 55
    new-instance v0, Lcom/dolphin/browser/share/q;

    iget-object v1, p0, Lcom/dolphin/browser/share/p;->a:Landroid/content/Context;

    iget v2, p0, Lcom/dolphin/browser/share/p;->c:I

    iget v3, p0, Lcom/dolphin/browser/share/p;->d:I

    iget-boolean v4, p0, Lcom/dolphin/browser/share/p;->e:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/share/q;-><init>(Landroid/content/Context;IIZ)V

    return-object v0
.end method

.method protected a(ILandroid/view/View;Landroid/view/ViewParent;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/share/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/share/b/k;

    .line 61
    check-cast p2, Lcom/dolphin/browser/share/q;

    invoke-virtual {p2, v0}, Lcom/dolphin/browser/share/q;->a(Lcom/dolphin/browser/share/b/k;)V

    .line 62
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/share/p;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/share/p;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/share/b/k;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/dolphin/browser/share/p;->a()Landroid/view/View;

    move-result-object p2

    .line 50
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/share/p;->a(ILandroid/view/View;Landroid/view/ViewParent;)V

    .line 51
    return-object p2
.end method
