.class public Lcom/facebook/orca/common/ui/overlay/OverlayLayout;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "OverlayLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected a()Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 100
    new-instance v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected a(IIIILandroid/view/View;)V
    .locals 8

    .prologue
    .line 44
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    .line 45
    invoke-static {v0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->a(Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    invoke-super/range {p0 .. p5}, Lcom/facebook/orca/activity/CustomViewGroup;->a(IIIILandroid/view/View;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->b(Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;)I

    move-result v1

    .line 51
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 54
    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    .line 59
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 60
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 61
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 62
    invoke-virtual {p0, v3}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 63
    iget v1, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 65
    invoke-static {v0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->c(Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;)I

    move-result v1

    .line 66
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 67
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 71
    and-int/lit8 v5, v1, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 72
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    .line 83
    :goto_1
    and-int/lit8 v6, v1, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_6

    .line 84
    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v0, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->rightMargin:I

    sub-int v0, v1, v0

    .line 95
    :goto_2
    add-int v1, v0, v3

    add-int v2, v5, v4

    invoke-virtual {p5, v0, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 73
    :cond_2
    and-int/lit8 v5, v1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 74
    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v4

    iget v6, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    goto :goto_1

    .line 75
    :cond_3
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 76
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    goto :goto_1

    .line 77
    :cond_4
    and-int/lit8 v5, v1, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5

    .line 78
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v4

    iget v6, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    goto :goto_1

    :cond_5
    move v5, p3

    .line 80
    goto :goto_1

    .line 85
    :cond_6
    and-int/lit8 v6, v1, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_7

    .line 86
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v0, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    goto :goto_2

    .line 87
    :cond_7
    and-int/lit8 v6, v1, 0x40

    const/16 v7, 0x40

    if-ne v6, v7, :cond_8

    .line 88
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v0, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    goto :goto_2

    .line 89
    :cond_8
    and-int/lit16 v1, v1, 0x80

    const/16 v6, 0x80

    if-ne v1, v6, :cond_9

    .line 90
    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget v0, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->rightMargin:I

    sub-int v0, v1, v0

    goto :goto_2

    :cond_9
    move v0, p1

    .line 92
    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 110
    instance-of v0, p1, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->a()Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->a(Landroid/util/AttributeSet;)Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method
