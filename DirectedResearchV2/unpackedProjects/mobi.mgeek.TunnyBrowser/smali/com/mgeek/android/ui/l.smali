.class Lcom/mgeek/android/ui/l;
.super Landroid/widget/BaseAdapter;
.source "CrashRestoreView.java"


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/e;


# direct methods
.method private constructor <init>(Lcom/mgeek/android/ui/e;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mgeek/android/ui/l;->a:Lcom/mgeek/android/ui/e;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mgeek/android/ui/e;Lcom/mgeek/android/ui/f;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/l;-><init>(Lcom/mgeek/android/ui/e;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mgeek/android/ui/l;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->d(Lcom/mgeek/android/ui/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mgeek/android/ui/l;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->d(Lcom/mgeek/android/ui/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    iget-object v0, p0, Lcom/mgeek/android/ui/l;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->e(Lcom/mgeek/android/ui/e;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 151
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    iget-object v1, p0, Lcom/mgeek/android/ui/l;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v1}, Lcom/mgeek/android/ui/e;->d(Lcom/mgeek/android/ui/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgeek/android/ui/k;

    iget-object v1, v1, Lcom/mgeek/android/ui/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/mgeek/android/ui/l;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v1}, Lcom/mgeek/android/ui/e;->f(Lcom/mgeek/android/ui/e;)Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00d1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v0, p0, Lcom/mgeek/android/ui/l;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->f(Lcom/mgeek/android/ui/e;)Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02024e

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080071

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 156
    iget-object v1, p0, Lcom/mgeek/android/ui/l;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v1}, Lcom/mgeek/android/ui/e;->d(Lcom/mgeek/android/ui/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgeek/android/ui/k;

    iget-object v2, v1, Lcom/mgeek/android/ui/k;->c:Landroid/graphics/Bitmap;

    .line 158
    if-nez v2, :cond_1

    .line 159
    iget-object v1, p0, Lcom/mgeek/android/ui/l;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v1}, Lcom/mgeek/android/ui/e;->f(Lcom/mgeek/android/ui/e;)Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02024d

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 163
    :goto_0
    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    return-object p2

    .line 161
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
