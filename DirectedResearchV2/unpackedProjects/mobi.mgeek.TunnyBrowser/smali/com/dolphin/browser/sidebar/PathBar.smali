.class public Lcom/dolphin/browser/sidebar/PathBar;
.super Landroid/widget/LinearLayout;
.source "PathBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/dolphin/browser/sidebar/w;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/sidebar/PathBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sidebar/PathBar;->a(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/sidebar/PathBar;->setOrientation(I)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030016

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/PathBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->b:Landroid/view/View;

    .line 45
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/PathBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->c:Landroid/widget/ImageView;

    .line 46
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/PathBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->d:Landroid/widget/TextView;

    .line 47
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/PathBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->e:Landroid/view/View;

    .line 48
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/PathBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->f:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-static {p1}, Lcom/dolphin/browser/sidebar/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->g:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/PathBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00ab

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 58
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00ac

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->g:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/sidebar/PathBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/PathBar;->a()V

    .line 62
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const v6, 0x7f0a0062

    const v5, 0x7f0a0036

    .line 65
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    .line 68
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0035

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/dolphin/browser/sidebar/PathBar;->setBackgroundColor(I)V

    .line 69
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/PathBar;->d:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00e1

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/PathBar;->c:Landroid/widget/ImageView;

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060001

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3, v5, v6, v5}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/PathBar;->f:Landroid/widget/ImageView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0201e4

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3, v5, v6, v5}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/PathBar;->g:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c3

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public a(Lcom/dolphin/browser/sidebar/w;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/PathBar;->a:Lcom/dolphin/browser/sidebar/w;

    .line 116
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    int-to-long v0, v0

    .line 102
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const-wide/32 v2, 0x7f0800b8

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const-wide/32 v2, 0x7f0800b9

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const-wide/32 v2, 0x7f080035

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->a:Lcom/dolphin/browser/sidebar/w;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->a:Lcom/dolphin/browser/sidebar/w;

    invoke-interface {v0}, Lcom/dolphin/browser/sidebar/w;->b()V

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const-wide/32 v2, 0x7f0800ba

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const-wide/32 v2, 0x7f0800bb

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->a:Lcom/dolphin/browser/sidebar/w;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/PathBar;->a:Lcom/dolphin/browser/sidebar/w;

    invoke-interface {v0}, Lcom/dolphin/browser/sidebar/w;->a()V

    goto :goto_0
.end method
