.class public Lcom/facebook/orca/activity/CustomViewGroup;
.super Landroid/view/ViewGroup;
.source "CustomViewGroup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 165
    return-void
.end method

.method protected a(IIIILandroid/view/View;)V
    .locals 5

    .prologue
    .line 83
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 86
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 91
    iget v2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 94
    and-int/lit8 v3, v2, 0x7

    .line 95
    and-int/lit8 v2, v2, 0x70

    .line 97
    packed-switch v3, :pswitch_data_0

    .line 109
    :pswitch_0
    iget v3, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, p1

    .line 112
    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 124
    iget v2, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p3

    .line 128
    :goto_1
    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-virtual {p5, v3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 129
    return-void

    .line 99
    :pswitch_1
    iget v3, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, p1

    .line 100
    goto :goto_0

    .line 102
    :pswitch_2
    sub-int v3, p2, p1

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    iget v4, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    .line 104
    goto :goto_0

    .line 106
    :pswitch_3
    sub-int v3, p2, v0

    iget v4, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    .line 107
    goto :goto_0

    .line 114
    :sswitch_0
    iget v2, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p3

    .line 115
    goto :goto_1

    .line 117
    :sswitch_1
    sub-int v2, p4, p3

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    iget v4, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    .line 119
    goto :goto_1

    .line 121
    :sswitch_2
    sub-int v2, p4, v1

    iget v4, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    .line 122
    goto :goto_1

    :cond_0
    move v2, p3

    move v3, p1

    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public b()Lcom/facebook/orca/app/OrcaInjector;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 154
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 138
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getChildCount()I

    move-result v6

    .line 67
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingLeft()I

    move-result v1

    .line 68
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    .line 70
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingTop()I

    move-result v3

    .line 71
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int v4, v0, v4

    .line 73
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_1

    .line 74
    invoke-virtual {p0, v7}, Lcom/facebook/orca/activity/CustomViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 75
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v8, 0x8

    if-eq v0, v8, :cond_0

    move-object v0, p0

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/activity/CustomViewGroup;->a(IIIILandroid/view/View;)V

    .line 73
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getChildCount()I

    move-result v6

    move v7, v3

    move v8, v3

    move v9, v3

    .line 43
    :goto_0
    if-ge v7, v6, :cond_0

    .line 44
    invoke-virtual {p0, v7}, Lcom/facebook/orca/activity/CustomViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/activity/CustomViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 43
    :goto_1
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v0

    move v9, v1

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v9

    .line 56
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 57
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 58
    invoke-static {v0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/activity/CustomViewGroup;->setMeasuredDimension(II)V

    .line 61
    return-void

    :cond_1
    move v0, v8

    move v1, v9

    goto :goto_1
.end method
