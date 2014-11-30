.class public Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;
.super Landroid/widget/FrameLayout;
.source "PrivateModeHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/dolphin/browser/ui/fake/InclickableTextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 49
    const v0, 0x42ce999a

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->setMinimumHeight(I)V

    .line 50
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300c7

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802c7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/fake/InclickableTextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->a:Lcom/dolphin/browser/ui/fake/InclickableTextView;

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->a:Lcom/dolphin/browser/ui/fake/InclickableTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/InclickableTextView;->a(Z)V

    .line 53
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802c8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->b:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200b4

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->a()V

    .line 61
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 64
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->a:Lcom/dolphin/browser/ui/fake/InclickableTextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00c5

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/fake/InclickableTextView;->setTextColor(I)V

    .line 66
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0197

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020251

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x106000d

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/cu;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/PrivateModeHeaderView;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 75
    :cond_0
    return-void
.end method
