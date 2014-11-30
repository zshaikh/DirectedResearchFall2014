.class public Lam/sunrise/android/calendar/ui/widgets/schedule/a;
.super Landroid/view/ViewGroup;
.source "ScheduleAllDayEventsView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:I

.field private b:Lam/sunrise/android/calendar/ui/widgets/schedule/c;

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->a()V

    .line 39
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/schedule/a;)Lam/sunrise/android/calendar/ui/widgets/schedule/c;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 82
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    const v1, 0x7f0c00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0c00fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->a:I

    .line 85
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    .line 86
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/aj;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 87
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    return-void
.end method

.method private a(II)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 112
    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;

    invoke-direct {v0, p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/schedule/b;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/a;II)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->d:Ljava/lang/Runnable;

    .line 139
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->d:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method


# virtual methods
.method public getCurrentScrollY()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 105
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->layout(IIII)V

    .line 79
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 71
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x40000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move-object v0, p0

    move v3, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 74
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    const/high16 v0, 0x40000000

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 146
    const/high16 v0, 0x40600000

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 147
    const/4 v1, -0x1

    .line 148
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 149
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;

    .line 150
    iget v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->d:I

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->a:I

    mul-int/2addr v0, v5

    .line 151
    if-le v0, v2, :cond_0

    move v2, v0

    .line 148
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 158
    :cond_1
    if-ge v2, v3, :cond_4

    move v2, v3

    .line 167
    :goto_1
    invoke-direct {p0, v3, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->a(II)V

    .line 170
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 173
    :cond_3
    return-void

    .line 161
    :cond_4
    if-le v2, v4, :cond_5

    move v3, v2

    move v2, v4

    .line 162
    goto :goto_1

    :cond_5
    move v3, v2

    .line 164
    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 95
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->c:Landroid/widget/AbsListView$OnScrollListener;

    .line 53
    return-void
.end method

.method public setScrollY(I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->setScrollY(I)V

    .line 62
    return-void
.end method
