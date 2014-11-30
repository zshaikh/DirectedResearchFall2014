.class public Lcom/dolphin/browser/ui/launcher/MoveDropTarget;
.super Lcom/dolphin/browser/launcher/SendToHomeDropTarget;
.source "MoveDropTarget.java"

# interfaces
.implements Lcom/dolphin/browser/ui/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/SendToHomeDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a([I)V
    .locals 4

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/SendToHomeDropTarget;->a([I)V

    .line 112
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/MoveDropTarget;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/ui/launcher/MoveDropTarget;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 113
    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 47
    instance-of v0, p1, Lcom/dolphin/browser/launcher/cl;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 63
    invoke-super {p0}, Lcom/dolphin/browser/launcher/SendToHomeDropTarget;->b()V

    .line 64
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/MoveDropTarget;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020264

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/MoveDropTarget;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method

.method protected c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 74
    invoke-super {p0}, Lcom/dolphin/browser/launcher/SendToHomeDropTarget;->c()V

    .line 75
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/MoveDropTarget;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ef

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020265

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/MoveDropTarget;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/SendToHomeDropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/MoveDropTarget;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 102
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 103
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 104
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/dolphin/browser/launcher/SendToHomeDropTarget;->onFinishInflate()V

    .line 58
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/MoveDropTarget;->updateTheme()V

    .line 59
    return-void
.end method

.method public updateTheme()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/MoveDropTarget;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 87
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/MoveDropTarget;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/MoveDropTarget;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ef

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0062

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/MoveDropTarget;->setBackgroundColor(I)V

    .line 91
    return-void
.end method
