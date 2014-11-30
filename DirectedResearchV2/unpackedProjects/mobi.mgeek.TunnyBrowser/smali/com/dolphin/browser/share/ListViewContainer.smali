.class public Lcom/dolphin/browser/share/ListViewContainer;
.super Landroid/widget/LinearLayout;
.source "ListViewContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ListViewContainer;->a()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ListViewContainer;->a()V

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/share/ListViewContainer;->setOrientation(I)V

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/dolphin/browser/share/ListViewContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ListViewContainer;->b()V

    .line 44
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02029f

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/ListViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .prologue
    const/high16 v7, 0x40c00000

    const/4 v1, 0x0

    .line 59
    if-nez p2, :cond_0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 63
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 64
    invoke-virtual {p0}, Lcom/dolphin/browser/share/ListViewContainer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 68
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/dolphin/browser/share/ListViewContainer;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/dolphin/browser/share/ListViewContainer;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 72
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 74
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {v3, v4, v5, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 77
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v7, v7, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    :try_start_0
    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 54
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 55
    return-void
.end method
