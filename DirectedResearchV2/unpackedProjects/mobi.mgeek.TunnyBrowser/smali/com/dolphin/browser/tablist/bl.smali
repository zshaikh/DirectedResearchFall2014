.class public abstract Lcom/dolphin/browser/tablist/bl;
.super Landroid/widget/BaseAdapter;
.source "TabListAdapter.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/dolphin/browser/core/TabManager;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/bk;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/dolphin/browser/tablist/bo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
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
    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bl;->a:Landroid/content/Context;

    .line 53
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/bl;->b:Lcom/dolphin/browser/core/TabManager;

    .line 54
    iput-object p2, p0, Lcom/dolphin/browser/tablist/bl;->c:Ljava/util/List;

    .line 55
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/f/a/b;->addObserver(Ljava/util/Observer;)V

    .line 56
    return-void
.end method

.method private a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/bl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 301
    invoke-virtual {p2, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 302
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/bl;Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/tablist/bl;->a(Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected abstract a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bl;->b:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 101
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v1

    .line 102
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/bl;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 103
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bl;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v1, v2}, Lcom/dolphin/browser/f/a/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 108
    if-nez v3, :cond_0

    .line 109
    invoke-virtual {v1, v2}, Lcom/dolphin/browser/f/a/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 145
    instance-of v0, p1, Lcom/dolphin/browser/tablist/bn;

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Lcom/dolphin/browser/tablist/bn;

    invoke-virtual {p1}, Lcom/dolphin/browser/tablist/bn;->a()V

    .line 148
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bl;->b:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->setCurrentTab(Lcom/dolphin/browser/core/ITab;)Z

    .line 131
    return-void
.end method

.method protected a(Lcom/dolphin/browser/tablist/bk;ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public a(Lcom/dolphin/browser/tablist/bo;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bl;->d:Lcom/dolphin/browser/tablist/bo;

    .line 61
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bl;->b:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentIndex()I

    move-result v0

    return v0
.end method

.method public b(Lcom/dolphin/browser/core/ITab;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bl;->b:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->removeTab(Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    .line 141
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/f/a/b;->deleteObserver(Ljava/util/Observer;)V

    .line 162
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    if-nez p2, :cond_0

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/tablist/bl;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    new-instance v0, Lcom/dolphin/browser/tablist/bp;

    invoke-direct {v0}, Lcom/dolphin/browser/tablist/bp;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/bk;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/dolphin/browser/tablist/bl;->a(Lcom/dolphin/browser/tablist/bk;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 89
    return-object p2
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/dolphin/browser/tablist/bm;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/bm;-><init>(Lcom/dolphin/browser/tablist/bl;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method
