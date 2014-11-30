.class public Lcom/dolphin/browser/share/c;
.super Landroid/widget/BaseAdapter;
.source "FriendsListAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/q/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/dolphin/browser/share/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/share/r;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dolphin/browser/share/c;->a:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/dolphin/browser/share/c;->c:Lcom/dolphin/browser/share/r;

    .line 24
    invoke-virtual {p0}, Lcom/dolphin/browser/share/c;->a()V

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/share/c;->c:Lcom/dolphin/browser/share/r;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/r;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/c;->b:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, Lcom/dolphin/browser/share/c;->notifyDataSetChanged()V

    .line 30
    return-void
.end method

.method protected a(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 52
    if-eqz p2, :cond_0

    .line 53
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08033e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcom/dolphin/browser/share/c;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/q/a;

    .line 56
    invoke-virtual {v1}, Lcom/dolphin/browser/q/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0187

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 63
    :cond_0
    return-void
.end method

.method protected b()Landroid/view/View;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/share/c;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300ed

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/share/c;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/share/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 67
    if-nez p2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/dolphin/browser/share/c;->b()Landroid/view/View;

    move-result-object p2

    .line 71
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/share/c;->a(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 73
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020280

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-object p2
.end method
