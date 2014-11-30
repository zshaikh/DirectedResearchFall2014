.class public Lcom/dolphin/browser/theme/WallpaperTitleView;
.super Landroid/widget/RelativeLayout;
.source "WallpaperTitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/ui/aa;


# instance fields
.field private a:Lcom/dolphin/browser/theme/bf;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/dolphin/browser/theme/bi;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/WallpaperTitleView;->a(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/WallpaperTitleView;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/WallpaperTitleView;->a(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/dolphin/browser/theme/bf;->a()Lcom/dolphin/browser/theme/bf;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->a:Lcom/dolphin/browser/theme/bf;

    .line 76
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030122

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/theme/WallpaperTitleView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08019f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/WallpaperTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->c:Landroid/widget/TextView;

    .line 78
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080388

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/WallpaperTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->b:Landroid/widget/ImageView;

    .line 79
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/WallpaperTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/theme/bi;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->d:Lcom/dolphin/browser/theme/bi;

    .line 48
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->e:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->a:Lcom/dolphin/browser/theme/bf;

    invoke-virtual {v0, p0, p1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 118
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 119
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0800a3

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->d:Lcom/dolphin/browser/theme/bi;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->d:Lcom/dolphin/browser/theme/bi;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/bi;->a()V

    .line 129
    :cond_0
    return-void
.end method

.method public updateTheme()V
    .locals 6

    .prologue
    .line 88
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->e:Z

    .line 90
    iget-object v1, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0135

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v1, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->c:Landroid/widget/TextView;

    const/high16 v2, 0x40800000

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000

    sget-object v5, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v5, 0x7f0a012e

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 94
    iget-boolean v1, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->e:Z

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->a:Lcom/dolphin/browser/theme/bf;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->a:Lcom/dolphin/browser/theme/bf;

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/bf;->updateTheme()V

    .line 103
    :cond_0
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    .line 104
    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0012

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    .line 105
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0013

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    .line 106
    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0011

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    .line 107
    iget-object v4, p0, Lcom/dolphin/browser/theme/WallpaperTitleView;->b:Landroid/widget/ImageView;

    sget-object v5, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v5, 0x7f020020

    invoke-virtual {v1, v5, v2, v3, v0}, Lcom/dolphin/browser/util/bb;->c(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/WallpaperTitleView;->invalidate()V

    .line 110
    return-void

    .line 99
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0062

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/theme/WallpaperTitleView;->setBackgroundColor(I)V

    goto :goto_0
.end method
