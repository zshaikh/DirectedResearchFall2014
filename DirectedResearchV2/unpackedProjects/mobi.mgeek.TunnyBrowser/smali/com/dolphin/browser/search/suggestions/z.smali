.class public Lcom/dolphin/browser/search/suggestions/z;
.super Landroid/support/v4/view/ae;
.source "SearchTabPageAdapter.java"

# interfaces
.implements Lcom/dolphin/browser/search/suggestions/h;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Z

.field private e:Lcom/dolphin/browser/search/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/search/p;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Landroid/support/v4/view/ae;-><init>()V

    .line 19
    iput-boolean v2, p0, Lcom/dolphin/browser/search/suggestions/z;->d:Z

    .line 25
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/z;->b:Landroid/content/Context;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e030b

    invoke-direct {p0, p1, v1}, Lcom/dolphin/browser/search/suggestions/z;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e00bf

    invoke-direct {p0, p1, v2}, Lcom/dolphin/browser/search/suggestions/z;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0386

    invoke-direct {p0, p1, v2}, Lcom/dolphin/browser/search/suggestions/z;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/z;->a:[Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/z;->a:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/dolphin/browser/search/suggestions/z;->c:I

    .line 32
    iput-object p2, p0, Lcom/dolphin/browser/search/suggestions/z;->e:Lcom/dolphin/browser/search/p;

    .line 33
    return-void
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/dolphin/browser/search/suggestions/z;->c:I

    return v0
.end method

.method public a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 107
    const/4 v0, -0x2

    return v0
.end method

.method public a(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/z;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/z;->a:[Ljava/lang/String;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/search/suggestions/z;->c(I)Landroid/view/View;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setId(I)V

    .line 72
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    return-object v1
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    check-cast p3, Landroid/view/View;

    .line 80
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 81
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 83
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/dolphin/browser/search/suggestions/z;->d:Z

    .line 114
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 101
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/z;->c()V

    .line 119
    return-void
.end method

.method public c(I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/z;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/dolphin/browser/search/suggestions/s;->a(Landroid/content/Context;I)Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->setId(I)V

    .line 90
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-boolean v1, p0, Lcom/dolphin/browser/search/suggestions/z;->d:Z

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(Z)V

    .line 92
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/z;->e:Lcom/dolphin/browser/search/p;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(Lcom/dolphin/browser/search/p;)V

    .line 93
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(Lcom/dolphin/browser/search/suggestions/h;)V

    .line 94
    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->o()V

    .line 95
    return-object v0
.end method
