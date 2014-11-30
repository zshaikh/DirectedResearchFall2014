.class public Lcom/dolphin/browser/search/suggestions/k;
.super Landroid/app/Dialog;
.source "SearchItemLongPressedOptionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcom/dolphin/browser/search/suggestions/l;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f0041

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300da

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/k;->setContentView(I)V

    .line 37
    iput-object p2, p0, Lcom/dolphin/browser/search/suggestions/k;->h:Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/suggestions/k;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->a:Landroid/view/ViewGroup;

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802fd

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->b:Landroid/widget/TextView;

    .line 50
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802fe

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->c:Landroid/widget/TextView;

    .line 51
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802ff

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->d:Landroid/widget/TextView;

    .line 52
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080140

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->e:Landroid/view/View;

    .line 53
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->f:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/k;->setCanceledOnTouchOutside(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/k;->a()V

    .line 60
    invoke-direct {p0}, Lcom/dolphin/browser/search/suggestions/k;->b()V

    .line 61
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 96
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const v6, 0x7f0a014d

    const v5, 0x7f0a01b9

    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 65
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->a:Landroid/view/ViewGroup;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020303

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e04af

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 71
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ad

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 75
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0131

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 78
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ab

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 82
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e01b2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 84
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ac

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 88
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->e:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 90
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/k;->f:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    return-void
.end method

.method public a(Lcom/dolphin/browser/search/suggestions/l;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/k;->g:Lcom/dolphin/browser/search/suggestions/l;

    .line 44
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 103
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802fd

    if-ne v0, v1, :cond_2

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->g:Lcom/dolphin/browser/search/suggestions/l;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->g:Lcom/dolphin/browser/search/suggestions/l;

    invoke-interface {v0}, Lcom/dolphin/browser/search/suggestions/l;->a()V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/k;->dismiss()V

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802fe

    if-ne v0, v1, :cond_4

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->g:Lcom/dolphin/browser/search/suggestions/l;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->g:Lcom/dolphin/browser/search/suggestions/l;

    invoke-interface {v0}, Lcom/dolphin/browser/search/suggestions/l;->b()V

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/k;->dismiss()V

    goto :goto_0

    .line 115
    :cond_4
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0802ff

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->g:Lcom/dolphin/browser/search/suggestions/l;

    if-eqz v0, :cond_5

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/k;->g:Lcom/dolphin/browser/search/suggestions/l;

    invoke-interface {v0}, Lcom/dolphin/browser/search/suggestions/l;->c()V

    .line 119
    :cond_5
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/k;->dismiss()V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 127
    return-void
.end method
