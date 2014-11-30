.class public Lcom/dolphin/browser/language/f;
.super Landroid/widget/BaseAdapter;
.source "LanguageListAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/language/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dolphin/browser/language/f;->a:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/dolphin/browser/language/f;->b()V

    .line 27
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dolphin/browser/language/f;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/language/f;->b:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lcom/dolphin/browser/language/f;->notifyDataSetChanged()V

    .line 33
    return-void
.end method

.method private c()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/language/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/language/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v2, 0x7f07001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/language/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v3, 0x7f07001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 40
    array-length v0, v2

    array-length v4, v3

    if-ne v0, v4, :cond_0

    .line 41
    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 42
    new-instance v4, Lcom/dolphin/browser/language/a;

    aget-object v5, v2, v0

    aget-object v6, v3, v0

    invoke-direct {v4, v5, v6}, Lcom/dolphin/browser/language/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/dolphin/browser/language/b;

    iget-object v1, p0, Lcom/dolphin/browser/language/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/language/b;-><init>(Landroid/content/Context;)V

    .line 70
    return-object v0
.end method

.method protected a(ILandroid/view/View;Landroid/view/ViewParent;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/language/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/language/a;

    .line 76
    check-cast p2, Lcom/dolphin/browser/language/b;

    invoke-virtual {p2, v0}, Lcom/dolphin/browser/language/b;->a(Lcom/dolphin/browser/language/a;)V

    .line 77
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/language/f;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/language/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/language/f;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/language/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/language/a;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 82
    if-nez p2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/dolphin/browser/language/f;->a()Landroid/view/View;

    move-result-object p2

    .line 85
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/language/f;->a(ILandroid/view/View;Landroid/view/ViewParent;)V

    .line 88
    invoke-virtual {p0}, Lcom/dolphin/browser/language/f;->getCount()I

    move-result v0

    .line 90
    if-nez v0, :cond_1

    .line 91
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    .line 94
    :cond_1
    if-nez p1, :cond_2

    .line 95
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020277

    .line 102
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-object p2

    .line 96
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 97
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020274

    goto :goto_0

    .line 99
    :cond_3
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020278

    goto :goto_0
.end method
