.class public Lcom/dolphin/browser/titlebar/TitleBarItem;
.super Landroid/widget/FrameLayout;
.source "TitleBarItem.java"


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/dolphin/browser/titlebar/TitleBarItem;->a(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/dolphin/browser/titlebar/TitleBarItem;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 32
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/TitleBarItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 33
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 34
    invoke-virtual {v2, v1, v4, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 35
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/TitleBarItem;->a:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/TitleBarItem;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/titlebar/TitleBarItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/TitleBarItem;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/TitleBarItem;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 49
    return-void
.end method
