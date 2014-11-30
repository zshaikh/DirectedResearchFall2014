.class public Lam/sunrise/android/calendar/ui/widgets/schedule/c;
.super Landroid/view/ViewGroup;
.source "ScheduleHorizontalListView.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/widgets/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->a()V

    .line 30
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 81
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/aj;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/aj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->a:Lam/sunrise/android/calendar/ui/widgets/aj;

    .line 82
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->a:Lam/sunrise/android/calendar/ui/widgets/aj;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->a:Lam/sunrise/android/calendar/ui/widgets/aj;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/high16 v5, -0x3d4c0000

    .line 61
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->getMeasuredWidth()I

    move-result v0

    .line 62
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->getMeasuredHeight()I

    move-result v1

    .line 68
    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->a:Lam/sunrise/android/calendar/ui/widgets/aj;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/aj;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 69
    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->a:Lam/sunrise/android/calendar/ui/widgets/aj;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/aj;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 71
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->a:Lam/sunrise/android/calendar/ui/widgets/aj;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->a:Lam/sunrise/android/calendar/ui/widgets/aj;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/aj;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->a:Lam/sunrise/android/calendar/ui/widgets/aj;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/aj;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/aj;->layout(IIII)V

    .line 75
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->a:Lam/sunrise/android/calendar/ui/widgets/aj;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->getRotation()F

    move-result v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->a:Lam/sunrise/android/calendar/ui/widgets/aj;

    invoke-virtual {v0, v5}, Lam/sunrise/android/calendar/ui/widgets/aj;->setRotation(F)V

    .line 78
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    .prologue
    const/high16 v0, 0x40000000

    const/4 v4, 0x0

    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 49
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 51
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->a:Lam/sunrise/android/calendar/ui/widgets/aj;

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 56
    invoke-virtual {p0, v6, v7}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->setMeasuredDimension(II)V

    .line 57
    return-void
.end method
