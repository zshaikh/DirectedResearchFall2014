.class public Lcom/dolphin/browser/account/ui/b;
.super Landroid/widget/RelativeLayout;
.source "AccountItem.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/dolphin/browser/account/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/dolphin/browser/account/ui/b;->a(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const/high16 v0, 0x7f030000

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/b;->a:Landroid/widget/TextView;

    .line 29
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/b;->b:Landroid/widget/TextView;

    .line 30
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/account/ui/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/b;->c:Landroid/widget/ImageView;

    .line 31
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/b;->b()V

    .line 32
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/b;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0166

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 38
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/b;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0165

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 40
    iget-object v1, p0, Lcom/dolphin/browser/account/ui/b;->c:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02027b

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/account/a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/b;->d:Lcom/dolphin/browser/account/a;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/account/a;)V
    .locals 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/dolphin/browser/account/ui/b;->d:Lcom/dolphin/browser/account/a;

    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/account/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dolphin/browser/account/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p1}, Lcom/dolphin/browser/account/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/b;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/b;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
