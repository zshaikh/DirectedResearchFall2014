.class public Lcom/dolphin/browser/ui/fake/q;
.super Landroid/widget/LinearLayout;
.source "ExtensionItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/ui/z;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/dolphin/browser/extensions/n;

.field private f:Landroid/view/View;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/BaseAdapter;

.field private r:Z

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/fake/q;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 365
    if-nez p1, :cond_0

    .line 366
    const/4 p1, 0x0

    .line 374
    :goto_0
    return-object p1

    .line 368
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->c()Z

    move-result v0

    .line 369
    if-eqz v0, :cond_1

    .line 370
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 372
    :cond_1
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private a()V
    .locals 6

    .prologue
    const v5, 0x7f0201c0

    const v4, 0x7f0a0192

    const v3, 0x7f0201b8

    .line 103
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->f:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->g:Landroid/view/ViewGroup;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00c0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 106
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->h:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->i:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->j:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->k:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->h:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 111
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->i:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 112
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->j:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 113
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->k:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 114
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->n:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ba

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0194

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 116
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00bd

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/fake/q;->setBackgroundColor(I)V

    .line 118
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->l:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->m:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->o:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0078

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 121
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300af

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->a:Landroid/widget/TextView;

    .line 70
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->b:Landroid/widget/TextView;

    .line 71
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801ea

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->c:Landroid/widget/ImageView;

    .line 72
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08002c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->d:Landroid/widget/ImageView;

    .line 73
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->l:Landroid/view/View;

    .line 74
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080129

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->m:Landroid/view/View;

    .line 75
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08029d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->o:Landroid/view/View;

    .line 76
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08029f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->p:Landroid/view/View;

    .line 78
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08003d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->n:Landroid/view/View;

    .line 81
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08029e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->f:Landroid/view/View;

    .line 82
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->g:Landroid/view/ViewGroup;

    .line 83
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->h:Landroid/widget/Button;

    .line 84
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->i:Landroid/widget/Button;

    .line 85
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->j:Landroid/widget/Button;

    .line 86
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->k:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->g:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/ui/fake/q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-direct {p0}, Lcom/dolphin/browser/ui/fake/q;->a()V

    .line 100
    return-void
.end method

.method private a(Lcom/dolphin/browser/extensions/n;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->i:Landroid/widget/Button;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0454

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 192
    :goto_0
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/extensions/s;

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/s;

    .line 194
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    :goto_1
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/fake/q;->a(Lcom/dolphin/browser/extensions/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->j:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    :goto_2
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->l()Landroid/content/Intent;

    move-result-object v0

    .line 221
    if-nez v0, :cond_4

    .line 223
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->h:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    :goto_3
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->i:Landroid/widget/Button;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0455

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->i:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->j:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method private a(Ljava/util/HashMap;Lcom/dolphin/browser/extensions/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/dolphin/browser/extensions/n;",
            ")V"
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v1, p2}, Lcom/dolphin/browser/extensions/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->q:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 259
    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 262
    if-eqz p1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->n:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200bb

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->n:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ba

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->l:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/extensions/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 327
    instance-of v2, p1, Lcom/dolphin/browser/extensions/s;

    if-eqz v2, :cond_2

    .line 328
    check-cast p1, Lcom/dolphin/browser/extensions/s;

    .line 329
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/s;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 333
    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/a;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 237
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 238
    :goto_0
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/fake/q;->a(Z)V

    .line 239
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->s:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->s:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/q;->e:Lcom/dolphin/browser/extensions/n;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->q:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->s:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/q;->e:Lcom/dolphin/browser/extensions/n;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/ui/fake/q;->a(Ljava/util/HashMap;Lcom/dolphin/browser/extensions/n;)V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/q;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dolphin/browser/ui/fake/q;->r:Z

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/q;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 247
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 249
    :cond_1
    return-void

    .line 237
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/extensions/n;)V
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->l()Landroid/content/Intent;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 302
    :cond_0
    return-void
.end method

.method private c(Lcom/dolphin/browser/extensions/n;)V
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    .line 306
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/fake/q;->a(Lcom/dolphin/browser/extensions/a;)Z

    move-result v1

    .line 307
    if-eqz v1, :cond_0

    .line 308
    instance-of v1, v0, Lcom/dolphin/browser/extensions/s;

    if-eqz v1, :cond_2

    .line 309
    check-cast v0, Lcom/dolphin/browser/extensions/s;

    .line 310
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/s;->a(Landroid/content/Context;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/al;->g(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->j()V

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private d(Lcom/dolphin/browser/extensions/n;)V
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v0

    .line 346
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/extensions/n;->c(Z)V

    .line 347
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lcom/dolphin/browser/extensions/n;)V
    .locals 6

    .prologue
    .line 351
    :try_start_0
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->m()Lcom/dolphin/browser/extensions/c;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/extensions/c;->c:Lcom/dolphin/browser/extensions/c;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e065f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->h()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/extensions/n;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    const-string v1, "BrowserPluginList"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/BaseAdapter;Lcom/dolphin/browser/extensions/n;ILjava/util/HashMap;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/BaseAdapter;",
            "Lcom/dolphin/browser/extensions/n;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/extensions/n;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 130
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/q;->q:Landroid/widget/BaseAdapter;

    .line 131
    iput-object p4, p0, Lcom/dolphin/browser/ui/fake/q;->s:Ljava/util/HashMap;

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 133
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/fake/q;->a(Z)V

    .line 134
    if-nez p3, :cond_0

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :goto_0
    invoke-virtual {p0, p2, p5}, Lcom/dolphin/browser/ui/fake/q;->a(Lcom/dolphin/browser/extensions/n;Z)V

    .line 144
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/extensions/n;Z)V
    .locals 4

    .prologue
    .line 147
    iput-boolean p2, p0, Lcom/dolphin/browser/ui/fake/q;->r:Z

    .line 148
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/q;->e:Lcom/dolphin/browser/extensions/n;

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/fake/q;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->i()Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 153
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->m()Lcom/dolphin/browser/extensions/c;

    move-result-object v2

    .line 155
    sget-object v3, Lcom/dolphin/browser/extensions/c;->a:Lcom/dolphin/browser/extensions/c;

    if-ne v2, v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/q;->m:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/q;->b:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/q;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->d:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020194

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/fake/q;->setTag(Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/fake/q;->a(Lcom/dolphin/browser/extensions/n;)V

    .line 180
    return-void

    .line 161
    :cond_1
    sget-object v3, Lcom/dolphin/browser/extensions/c;->b:Lcom/dolphin/browser/extensions/c;

    if-ne v2, v3, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/q;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03c2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_2
    sget-object v3, Lcom/dolphin/browser/extensions/c;->c:Lcom/dolphin/browser/extensions/c;

    if-ne v2, v3, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/q;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e03c3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->e:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->o()Ljava/lang/String;

    move-result-object v1

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->f:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/dolphin/browser/ui/fake/q;->b()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->e:Lcom/dolphin/browser/extensions/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "disable"

    .line 283
    :goto_1
    const-string v2, "addons"

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->e:Lcom/dolphin/browser/extensions/n;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/fake/q;->d(Lcom/dolphin/browser/extensions/n;)V

    goto :goto_0

    .line 282
    :cond_2
    const-string v0, "enable"

    goto :goto_1

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 286
    const-string v0, "addons"

    const-string v2, "option"

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->e:Lcom/dolphin/browser/extensions/n;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/fake/q;->b(Lcom/dolphin/browser/extensions/n;)V

    goto :goto_0

    .line 288
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 289
    const-string v0, "addons"

    const-string v2, "uninstall"

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->e:Lcom/dolphin/browser/extensions/n;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/fake/q;->c(Lcom/dolphin/browser/extensions/n;)V

    goto :goto_0

    .line 291
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->k:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 292
    const-string v0, "addons"

    const-string v2, "detail"

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/q;->e:Lcom/dolphin/browser/extensions/n;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/fake/q;->e(Lcom/dolphin/browser/extensions/n;)V

    goto :goto_0
.end method
