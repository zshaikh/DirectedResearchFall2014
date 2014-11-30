.class public Lcom/mgeek/android/ui/NoScrollGridView;
.super Landroid/widget/GridView;
.source "NoScrollGridView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, p1, v1}, Landroid/widget/GridView;->onMeasure(II)V

    .line 38
    invoke-virtual {p0}, Lcom/mgeek/android/ui/NoScrollGridView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/mgeek/android/ui/NoScrollGridView;->getListPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/mgeek/android/ui/NoScrollGridView;->getListPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/mgeek/android/ui/NoScrollGridView;->getVerticalFadingEdgeLength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 40
    invoke-virtual {p0}, Lcom/mgeek/android/ui/NoScrollGridView;->getListPaddingTop()I

    move-result v2

    .line 41
    invoke-virtual {p0}, Lcom/mgeek/android/ui/NoScrollGridView;->getListPaddingBottom()I

    move-result v3

    .line 42
    invoke-virtual {p0}, Lcom/mgeek/android/ui/NoScrollGridView;->getCount()I

    move-result v4

    .line 45
    rem-int/lit8 v5, v4, 0x3

    if-eqz v5, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 48
    :cond_0
    div-int/lit8 v4, v4, 0x3

    add-int/2addr v0, v4

    .line 50
    invoke-virtual {p0}, Lcom/mgeek/android/ui/NoScrollGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 51
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 53
    add-int/2addr v2, v3

    mul-int/2addr v1, v0

    add-int/2addr v1, v2

    const/high16 v2, 0x41000000

    mul-float/2addr v2, v4

    float-to-int v2, v2

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 56
    invoke-virtual {p0}, Lcom/mgeek/android/ui/NoScrollGridView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/mgeek/android/ui/NoScrollGridView;->setMeasuredDimension(II)V

    .line 57
    return-void
.end method
