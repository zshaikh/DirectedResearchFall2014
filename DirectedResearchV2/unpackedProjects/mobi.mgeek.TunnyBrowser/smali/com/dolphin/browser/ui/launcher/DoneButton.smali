.class public Lcom/dolphin/browser/ui/launcher/DoneButton;
.super Lcom/dolphin/browser/launcher/DeleteDropTarget;
.source "DoneButton.java"

# interfaces
.implements Lcom/dolphin/browser/ui/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/launcher/DoneButton;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/DoneButton;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/ui/launcher/b;)V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/dolphin/browser/ui/launcher/a;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/ui/launcher/a;-><init>(Lcom/dolphin/browser/ui/launcher/DoneButton;Lcom/dolphin/browser/ui/launcher/b;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/DoneButton;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method


# virtual methods
.method public a([I)V
    .locals 4

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/DeleteDropTarget;->a([I)V

    .line 124
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/DoneButton;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/ui/launcher/DoneButton;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 125
    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 32
    instance-of v1, p1, Lcom/dolphin/browser/launcher/cl;

    if-eqz v1, :cond_0

    .line 33
    check-cast p1, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    sget-object v1, Lcom/dolphin/browser/ui/launcher/b;->a:Lcom/dolphin/browser/ui/launcher/b;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/launcher/DoneButton;->a(Lcom/dolphin/browser/ui/launcher/b;)V

    .line 43
    :goto_0
    return v0

    .line 37
    :cond_0
    instance-of v1, p1, Lcom/dolphin/browser/launcher/be;

    if-eqz v1, :cond_1

    .line 38
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/q;->a()Lcom/dolphin/browser/ui/launcher/q;

    move-result-object v1

    check-cast p1, Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/ui/launcher/q;->a(Lcom/dolphin/browser/launcher/be;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    sget-object v1, Lcom/dolphin/browser/ui/launcher/b;->b:Lcom/dolphin/browser/ui/launcher/b;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/launcher/DoneButton;->a(Lcom/dolphin/browser/ui/launcher/b;)V

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 75
    invoke-super {p0}, Lcom/dolphin/browser/launcher/DeleteDropTarget;->b()V

    .line 76
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/launcher/DoneButton;->setBackgroundColor(I)V

    .line 78
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/DoneButton;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00f0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/DoneButton;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method

.method protected c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 87
    invoke-super {p0}, Lcom/dolphin/browser/launcher/DeleteDropTarget;->c()V

    .line 88
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0062

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/ui/launcher/DoneButton;->setBackgroundColor(I)V

    .line 90
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/DoneButton;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ef

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/DoneButton;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/DeleteDropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/DoneButton;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 114
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 115
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 116
    return-void
.end method

.method protected h(Lcom/dolphin/browser/launcher/aj;)V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/DeleteDropTarget;->h(Lcom/dolphin/browser/launcher/aj;)V

    .line 100
    iget-object v0, p1, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/dolphin/browser/launcher/bi;

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/q;->a()Lcom/dolphin/browser/ui/launcher/q;

    move-result-object v1

    iget-object v0, p1, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/launcher/q;->b(Lcom/dolphin/browser/launcher/bi;)V

    .line 103
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/dolphin/browser/launcher/DeleteDropTarget;->onFinishInflate()V

    .line 49
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/DoneButton;->updateTheme()V

    .line 50
    return-void
.end method

.method public updateTheme()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/DoneButton;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 67
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/DoneButton;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/DoneButton;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ef

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0062

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/DoneButton;->setBackgroundColor(I)V

    .line 71
    return-void
.end method
