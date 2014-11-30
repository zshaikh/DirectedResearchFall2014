.class public Lcom/dolphin/browser/bookmark/b/a;
.super Landroid/widget/LinearLayout;
.source "BaseItemView.java"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/CheckedTextView;

.field protected c:Landroid/view/View;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/ImageView;

.field protected f:I

.field protected g:Landroid/graphics/drawable/Drawable;

.field protected h:I

.field protected i:I

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/dolphin/browser/bookmark/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030015

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/bookmark/b/a;->setOrientation(I)V

    .line 40
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/a;->setGravity(I)V

    .line 42
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->a:Landroid/view/View;

    .line 43
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->b:Landroid/widget/CheckedTextView;

    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->a:Landroid/view/View;

    new-instance v1, Lcom/dolphin/browser/bookmark/b/b;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/bookmark/b/b;-><init>(Lcom/dolphin/browser/bookmark/b/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->c:Landroid/view/View;

    .line 52
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->d:Landroid/widget/ImageView;

    .line 53
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->e:Landroid/widget/ImageView;

    .line 54
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->j:Landroid/widget/ImageView;

    .line 55
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->k:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/a;->setMinimumHeight(I)V

    .line 59
    invoke-direct {p0, v2}, Lcom/dolphin/browser/bookmark/b/a;->f(Z)V

    .line 60
    return-void
.end method

.method private f(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 98
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 100
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/b/a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    add-int/2addr v0, v1

    .line 104
    :cond_0
    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/dolphin/browser/bookmark/b/a;->setPadding(IIII)V

    .line 105
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const v6, 0x7f0a0025

    const v5, 0x7f0a0024

    .line 108
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 109
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->b:Landroid/widget/CheckedTextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v5}, Lcom/dolphin/browser/util/bb;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0201d1

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->g:Landroid/graphics/drawable/Drawable;

    .line 116
    iget v3, p0, Lcom/dolphin/browser/bookmark/b/a;->f:I

    if-eqz v3, :cond_0

    .line 117
    iget v0, p0, Lcom/dolphin/browser/bookmark/b/a;->f:I

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v0, v5, v5, v6}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/dolphin/browser/bookmark/b/a;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget v0, p0, Lcom/dolphin/browser/bookmark/b/a;->h:I

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->k:Landroid/widget/TextView;

    iget v3, p0, Lcom/dolphin/browser/bookmark/b/a;->h:I

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 132
    :goto_0
    iget v0, p0, Lcom/dolphin/browser/bookmark/b/a;->i:I

    if-eqz v0, :cond_1

    .line 133
    iget v0, p0, Lcom/dolphin/browser/bookmark/b/a;->i:I

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0062

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v0, v5, v3, v6}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/b/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/b/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0201b8

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->k:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a016b

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 161
    iput p1, p0, Lcom/dolphin/browser/bookmark/b/a;->f:I

    .line 162
    return-void
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/b/a;->g:Landroid/graphics/drawable/Drawable;

    .line 166
    return-void
.end method

.method public a(Lcom/dolphin/browser/bookmark/n;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/b/a;->l:Lcom/dolphin/browser/bookmark/n;

    .line 189
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 64
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->l:Lcom/dolphin/browser/bookmark/n;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/b/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/dolphin/browser/bookmark/a/a;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/a;->l:Lcom/dolphin/browser/bookmark/n;

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/b/a;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    check-cast v0, Lcom/dolphin/browser/bookmark/a/a;

    invoke-interface {v1, v2, v0}, Lcom/dolphin/browser/bookmark/n;->a(ZLcom/dolphin/browser/bookmark/a/a;)V

    .line 77
    :cond_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->b:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/a;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 92
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/b/a;->a()V

    .line 149
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/b/a;->f(Z)V

    .line 150
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/a;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 178
    return-void

    .line 177
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/a;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 182
    return-void

    .line 181
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
