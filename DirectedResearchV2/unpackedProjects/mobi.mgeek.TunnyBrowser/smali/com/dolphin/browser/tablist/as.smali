.class public Lcom/dolphin/browser/tablist/as;
.super Lcom/dolphin/browser/tablist/bl;
.source "HorizontalTabListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/bk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/tablist/bl;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/dolphin/browser/tablist/at;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/as;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/tablist/at;-><init>(Lcom/dolphin/browser/tablist/as;Landroid/content/Context;)V

    .line 26
    return-object v0
.end method

.method protected a(Lcom/dolphin/browser/tablist/bk;ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 32
    instance-of v0, p3, Lcom/dolphin/browser/tablist/at;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 33
    check-cast v0, Lcom/dolphin/browser/tablist/at;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/tablist/at;->a(Lcom/dolphin/browser/tablist/bk;I)V

    .line 34
    check-cast p3, Lcom/dolphin/browser/tablist/at;

    invoke-virtual {p0, p2}, Lcom/dolphin/browser/tablist/as;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/dolphin/browser/tablist/at;->a(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method
