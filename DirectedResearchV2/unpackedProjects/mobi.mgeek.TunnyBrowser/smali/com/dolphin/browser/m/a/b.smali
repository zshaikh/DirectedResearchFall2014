.class public Lcom/dolphin/browser/m/a/b;
.super Lcom/dolphin/browser/m/a/c;
.source "CommunityFansAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/dolphin/browser/m/a/c;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected a(ILandroid/view/View;Landroid/view/ViewParent;)V
    .locals 2

    .prologue
    .line 34
    check-cast p2, Lcom/dolphin/browser/m/a/g;

    .line 36
    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/dolphin/browser/m/a/g;->a(Ljava/lang/String;)V

    .line 39
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/dolphin/browser/m/a/g;->a(Ljava/lang/String;)V

    .line 43
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/m/a/b;->a(ILcom/dolphin/browser/m/a/e;)V

    .line 44
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 30
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/dolphin/browser/m/a/g;

    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/m/a/g;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0, p1, v0, p3}, Lcom/dolphin/browser/m/a/b;->a(ILandroid/view/View;Landroid/view/ViewParent;)V

    .line 50
    return-object v0
.end method
