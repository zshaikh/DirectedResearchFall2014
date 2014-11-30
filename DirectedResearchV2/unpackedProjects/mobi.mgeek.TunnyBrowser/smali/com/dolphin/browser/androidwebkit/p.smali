.class Lcom/dolphin/browser/androidwebkit/p;
.super Landroid/view/View;
.source "MyWebView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/androidwebkit/MyWebView;

.field private final b:I

.field private final c:F

.field private final d:I

.field private final e:Landroid/graphics/Bitmap;

.field private final f:Lcom/dolphin/browser/ui/view/PopupWindow;

.field private g:I

.field private h:I

.field private final i:I


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebView;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 682
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    .line 683
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 673
    const/16 v0, 0x32

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/p;->b:I

    .line 675
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/p;->d:I

    .line 680
    const/16 v0, 0x96

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/p;->i:I

    .line 684
    new-instance v0, Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-direct {v0, p2}, Lcom/dolphin/browser/ui/view/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    .line 685
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/view/PopupWindow;->e(Z)V

    .line 686
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/view/PopupWindow;->d(Z)V

    .line 687
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/view/PopupWindow;->f(Z)V

    .line 688
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(I)V

    .line 689
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/ui/view/PopupWindow;->c(Z)V

    .line 690
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Z)V

    .line 691
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/view/PopupWindow;->b(Z)V

    .line 692
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$drawable;->panel_background:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/p;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 694
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3fc00000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/androidwebkit/p;->c:F

    .line 695
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/p;->getPaddingLeft()I

    move-result v0

    .line 696
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/p;->getPaddingTop()I

    move-result v1

    .line 697
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/p;->getPaddingRight()I

    move-result v2

    .line 698
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/p;->getPaddingBottom()I

    move-result v3

    .line 699
    iget v4, p0, Lcom/dolphin/browser/androidwebkit/p;->i:I

    sub-int v0, v4, v0

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/dolphin/browser/androidwebkit/p;->d:I

    sub-int v1, v2, v1

    sub-int/2addr v1, v3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->e:Landroid/graphics/Bitmap;

    .line 701
    return-void
.end method

.method private a([I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 704
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Lcom/dolphin/browser/androidwebkit/MyWebView;)[I

    move-result-object v0

    .line 705
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getLocationInWindow([I)V

    .line 706
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 707
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 708
    aget v2, v0, v1

    .line 709
    aget v4, v0, v7

    .line 710
    iget v0, p0, Lcom/dolphin/browser/androidwebkit/p;->g:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/dolphin/browser/androidwebkit/p;->i:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 711
    iget v2, p0, Lcom/dolphin/browser/androidwebkit/p;->h:I

    add-int/2addr v2, v4

    iget v5, p0, Lcom/dolphin/browser/androidwebkit/p;->d:I

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/dolphin/browser/androidwebkit/p;->b:I

    sub-int/2addr v2, v5

    .line 712
    if-gez v0, :cond_2

    move v0, v1

    .line 717
    :cond_0
    :goto_0
    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 718
    iget v2, p0, Lcom/dolphin/browser/androidwebkit/p;->h:I

    add-int/2addr v2, v4

    iget v3, p0, Lcom/dolphin/browser/androidwebkit/p;->d:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/dolphin/browser/androidwebkit/p;->b:I

    add-int/2addr v2, v3

    .line 720
    :cond_1
    aput v0, p1, v1

    .line 721
    aput v2, p1, v7

    .line 722
    return-void

    .line 714
    :cond_2
    iget v5, p0, Lcom/dolphin/browser/androidwebkit/p;->i:I

    add-int/2addr v5, v0

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_0

    .line 715
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/dolphin/browser/androidwebkit/p;->i:I

    sub-int/2addr v0, v5

    goto :goto_0
.end method

.method private b(II)V
    .locals 6

    .prologue
    .line 742
    iput p1, p0, Lcom/dolphin/browser/androidwebkit/p;->g:I

    .line 743
    iput p2, p0, Lcom/dolphin/browser/androidwebkit/p;->h:I

    .line 744
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/p;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/p;->c()V

    .line 748
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 749
    invoke-direct {p0, v0}, Lcom/dolphin/browser/androidwebkit/p;->a([I)V

    .line 750
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/p;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/p;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/p;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/p;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(IIII)V

    .line 752
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/p;->invalidate()V

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/p;->a()V

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    const/4 v0, 0x1

    .line 734
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->b()V

    .line 726
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 792
    add-int/lit8 v0, p2, -0x14

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/androidwebkit/p;->b(II)V

    .line 793
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 796
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/view/View;)V

    .line 797
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/p;->i:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->c(I)V

    .line 798
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/p;->d:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/PopupWindow;->b(I)V

    .line 799
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 800
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/p;->f:Lcom/dolphin/browser/ui/view/PopupWindow;

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    aget v3, v0, v5

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v1, v2, v5, v3, v0}, Lcom/dolphin/browser/ui/view/PopupWindow;->a(Landroid/view/View;III)V

    .line 801
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 760
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/p;->getPaddingLeft()I

    move-result v6

    .line 761
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/p;->getPaddingTop()I

    move-result v7

    .line 762
    iget v2, p0, Lcom/dolphin/browser/androidwebkit/p;->g:I

    .line 763
    iget v3, p0, Lcom/dolphin/browser/androidwebkit/p;->h:I

    .line 764
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScale()F

    move-result v4

    .line 765
    iget v0, p0, Lcom/dolphin/browser/androidwebkit/p;->i:I

    div-int/lit8 v0, v0, 0x2

    sub-int v5, v0, v2

    .line 766
    iget v0, p0, Lcom/dolphin/browser/androidwebkit/p;->d:I

    div-int/lit8 v0, v0, 0x2

    sub-int v8, v0, v3

    .line 767
    iget v0, p0, Lcom/dolphin/browser/androidwebkit/p;->c:F

    div-float v9, v0, v4

    .line 769
    iget-object v10, p0, Lcom/dolphin/browser/androidwebkit/p;->e:Landroid/graphics/Bitmap;

    .line 770
    const/4 v0, -0x1

    invoke-virtual {v10, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 771
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 772
    int-to-float v5, v5

    int-to-float v8, v8

    invoke-virtual {v0, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 773
    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v0, v9, v9, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 774
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v3}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 775
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 776
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 778
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->a(Landroid/graphics/Canvas;)V

    .line 779
    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iget-object v2, v2, Lcom/dolphin/browser/androidwebkit/MyWebView;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-virtual {v2}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->getContentWidth()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v2}, Lcom/dolphin/browser/androidwebkit/MyWebView;->getContentHeight()I

    move-result v2

    int-to-float v4, v2

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 780
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/p;->a:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->b(Landroid/graphics/Canvas;)V

    .line 782
    int-to-float v0, v6

    int-to-float v1, v7

    const/4 v2, 0x0

    invoke-virtual {p1, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 784
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 788
    iget v0, p0, Lcom/dolphin/browser/androidwebkit/p;->i:I

    iget v1, p0, Lcom/dolphin/browser/androidwebkit/p;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/androidwebkit/p;->setMeasuredDimension(II)V

    .line 789
    return-void
.end method
