.class final Lcom/dolphin/browser/sidebar/aa;
.super Landroid/view/ViewGroup;
.source "RightBarController.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sidebar/x;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/sidebar/x;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/aa;->a:Lcom/dolphin/browser/sidebar/x;

    .line 83
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 84
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/aa;->getChildCount()I

    move-result v3

    move v1, v2

    .line 150
    :goto_0
    if-ge v1, v3, :cond_2

    .line 151
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/sidebar/aa;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 152
    instance-of v4, v0, Lcom/dolphin/browser/menu/ac;

    if-eqz v4, :cond_1

    .line 153
    check-cast v0, Lcom/dolphin/browser/menu/ac;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ac;->a()V

    .line 150
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 154
    :cond_1
    instance-of v4, v0, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    .line 155
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 156
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/menu/ac;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ac;->a()V

    goto :goto_1

    .line 159
    :cond_2
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 90
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 145
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 95
    iget v5, p0, Lcom/dolphin/browser/sidebar/aa;->b:I

    .line 96
    iget v6, p0, Lcom/dolphin/browser/sidebar/aa;->c:I

    move v3, v1

    move v4, v1

    .line 98
    :goto_0
    const/4 v0, 0x2

    if-ge v3, v0, :cond_1

    move v0, v1

    move v2, v1

    .line 100
    :goto_1
    const/4 v7, 0x3

    if-ge v0, v7, :cond_0

    .line 101
    mul-int/lit8 v7, v3, 0x3

    add-int/2addr v7, v0

    .line 102
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/aa;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 103
    invoke-virtual {p0, v7}, Lcom/dolphin/browser/sidebar/aa;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 104
    add-int v8, v2, v5

    add-int v9, v4, v6

    invoke-virtual {v7, v2, v4, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 108
    add-int/2addr v2, v5

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_0
    add-int v2, v4, v6

    .line 98
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    goto :goto_0

    .line 112
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v2, -0x80000000

    const/4 v0, 0x0

    const/high16 v3, 0x40000000

    .line 117
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 121
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 122
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/aa;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/dolphin/browser/sidebar/aa;->getDefaultSize(II)I

    move-result v1

    .line 126
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/aa;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/dolphin/browser/sidebar/aa;->getDefaultSize(II)I

    move-result v2

    .line 127
    div-int/lit8 v1, v1, 0x3

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/dolphin/browser/sidebar/aa;->measureChildren(II)V

    .line 131
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/aa;->getChildCount()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 132
    :goto_0
    if-ge v0, v3, :cond_2

    .line 133
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sidebar/aa;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 134
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 135
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_2
    iput v1, p0, Lcom/dolphin/browser/sidebar/aa;->b:I

    .line 138
    iput v2, p0, Lcom/dolphin/browser/sidebar/aa;->c:I

    .line 139
    iget v0, p0, Lcom/dolphin/browser/sidebar/aa;->b:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/dolphin/browser/sidebar/aa;->c:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/sidebar/aa;->setMeasuredDimension(II)V

    .line 140
    return-void
.end method
