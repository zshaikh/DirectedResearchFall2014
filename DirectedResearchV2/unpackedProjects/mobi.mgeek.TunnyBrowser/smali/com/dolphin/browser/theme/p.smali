.class public Lcom/dolphin/browser/theme/p;
.super Lcom/dolphin/browser/theme/q;
.source "SkinAddItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/theme/q;-><init>(Landroid/content/Context;I)V

    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/theme/p;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/theme/p;->e:Lcom/dolphin/browser/theme/ProgressTextView;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ProgressTextView;->setVisibility(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/theme/data/a;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/p;->updateTheme()V

    .line 46
    return-void
.end method

.method public updateTheme()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/dolphin/browser/theme/p;->g:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0008

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 32
    iget-object v1, p0, Lcom/dolphin/browser/theme/p;->b:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 33
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0202f6

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/p;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 40
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/theme/p;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    return-void

    .line 38
    :cond_0
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method
