.class public Lcom/dolphin/browser/tablist/cs;
.super Lcom/dolphin/browser/tablist/bl;
.source "VerticalTablistAdapter.java"


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
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/tablist/bl;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/dolphin/browser/tablist/ct;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/cs;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/tablist/ct;-><init>(Lcom/dolphin/browser/tablist/cs;Landroid/content/Context;)V

    .line 27
    return-object v0
.end method

.method protected a(Lcom/dolphin/browser/tablist/bk;ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 33
    instance-of v0, p3, Lcom/dolphin/browser/tablist/ct;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 34
    check-cast v0, Lcom/dolphin/browser/tablist/ct;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/tablist/ct;->a(Lcom/dolphin/browser/tablist/bk;I)V

    .line 35
    check-cast p3, Lcom/dolphin/browser/tablist/ct;

    invoke-virtual {p0, p2}, Lcom/dolphin/browser/tablist/cs;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/dolphin/browser/tablist/ct;->a(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method
