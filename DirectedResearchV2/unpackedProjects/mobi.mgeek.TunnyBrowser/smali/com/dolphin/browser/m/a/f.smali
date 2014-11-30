.class public Lcom/dolphin/browser/m/a/f;
.super Lcom/dolphin/browser/m/a/c;
.source "PromotedAppAdapter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/promoted/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/dolphin/browser/m/a/c;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lcom/dolphin/browser/promoted/f;->a()Lcom/dolphin/browser/promoted/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/f;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/m/a/f;->a:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method protected a(ILandroid/view/View;Landroid/view/ViewParent;)V
    .locals 2

    .prologue
    .line 42
    check-cast p2, Lcom/dolphin/browser/m/a/a;

    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/m/a/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/promoted/e;

    invoke-virtual {p2, v0}, Lcom/dolphin/browser/m/a/a;->a(Lcom/dolphin/browser/promoted/e;)V

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/m/a/f;->a(ILcom/dolphin/browser/m/a/e;)V

    .line 47
    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/f;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/f;->getCount()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00d7

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/f;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/dolphin/browser/m/a/a;->setMinimumHeight(I)V

    .line 57
    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00d6

    goto :goto_0

    .line 54
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00d5

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/m/a/f;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/m/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/m/a/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/dolphin/browser/m/a/a;

    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/f;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/m/a/a;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0, p1, v0, p3}, Lcom/dolphin/browser/m/a/f;->a(ILandroid/view/View;Landroid/view/ViewParent;)V

    .line 63
    return-object v0
.end method
