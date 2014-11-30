.class Lcom/mgeek/android/ui/bk;
.super Ljava/lang/Object;
.source "VerticalSearchGridView.java"


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/VerticalSearchGridView;


# direct methods
.method private constructor <init>(Lcom/mgeek/android/ui/VerticalSearchGridView;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mgeek/android/ui/bk;->a:Lcom/mgeek/android/ui/VerticalSearchGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mgeek/android/ui/VerticalSearchGridView;Lcom/mgeek/android/ui/bj;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/bk;-><init>(Lcom/mgeek/android/ui/VerticalSearchGridView;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mgeek/android/ui/bk;->a:Lcom/mgeek/android/ui/VerticalSearchGridView;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/VerticalSearchGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 159
    return-object v0
.end method

.method private a(ILandroid/view/View;)V
    .locals 7

    .prologue
    .line 164
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 165
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802f7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 167
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v4

    .line 168
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f0802f5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020259

    invoke-virtual {v4, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v2, p0, Lcom/mgeek/android/ui/bk;->a:Lcom/mgeek/android/ui/VerticalSearchGridView;

    invoke-static {v2}, Lcom/mgeek/android/ui/VerticalSearchGridView;->a(Lcom/mgeek/android/ui/VerticalSearchGridView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/search/b/b;

    .line 171
    invoke-virtual {v2}, Lcom/dolphin/browser/search/b/b;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 172
    if-nez v3, :cond_0

    .line 173
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v3

    sget-object v5, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v5, 0x7f060015

    invoke-virtual {v3, v5}, Lcom/dolphin/browser/util/bb;->g(I)Lcom/e/a/z;

    move-result-object v3

    .line 174
    invoke-static {}, Lcom/dolphin/browser/search/a/e;->a()Lcom/dolphin/browser/search/a/e;

    move-result-object v5

    new-instance v6, Lcom/mgeek/android/ui/bl;

    invoke-direct {v6, p0, v2, v4, v0}, Lcom/mgeek/android/ui/bl;-><init>(Lcom/mgeek/android/ui/bk;Lcom/dolphin/browser/search/b/b;Lcom/dolphin/browser/extensions/ThemeManager;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v6}, Lcom/dolphin/browser/search/a/e;->addObserver(Ljava/util/Observer;)V

    .line 193
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    iget-object v5, p0, Lcom/mgeek/android/ui/bk;->a:Lcom/mgeek/android/ui/VerticalSearchGridView;

    invoke-virtual {v5}, Lcom/mgeek/android/ui/VerticalSearchGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v6, 0x7f0c001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 199
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a00dc

    invoke-virtual {v4, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    invoke-virtual {v2}, Lcom/dolphin/browser/search/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-void

    .line 197
    :cond_1
    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0, p2}, Lcom/mgeek/android/ui/bk;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/mgeek/android/ui/bk;->a(ILandroid/view/View;)V

    .line 152
    return-object v0
.end method
