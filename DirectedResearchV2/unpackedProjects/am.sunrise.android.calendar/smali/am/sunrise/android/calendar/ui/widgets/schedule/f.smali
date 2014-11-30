.class public Lam/sunrise/android/calendar/ui/widgets/schedule/f;
.super Landroid/view/ViewGroup;
.source "ScheduleView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

.field private l:I

.field private m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

.field private n:Landroid/widget/AbsListView$OnScrollListener;

.field private o:Landroid/graphics/Rect;

.field private p:Landroid/view/View$OnTouchListener;

.field private q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 731
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 708
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->a:I

    .line 709
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->b:I

    .line 711
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->d:Z

    .line 728
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->o:Landroid/graphics/Rect;

    .line 901
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/schedule/g;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/g;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->p:Landroid/view/View$OnTouchListener;

    .line 1009
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/schedule/i;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/i;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->q:Ljava/lang/Runnable;

    .line 732
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->a()V

    .line 733
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/schedule/f;I)I
    .locals 0

    .prologue
    .line 702
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->a:I

    return p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)Lam/sunrise/android/calendar/ui/widgets/schedule/a;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 920
    invoke-virtual {p0, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->setWillNotDraw(Z)V

    .line 922
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->setBackgroundColor(I)V

    .line 923
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 925
    const v1, 0x7f0c0107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->f:I

    .line 926
    const v1, 0x7f0c0104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->g:I

    .line 927
    const v1, 0x7f0c0105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->h:I

    .line 929
    const v1, 0x7f0c00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0c00fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->i:I

    .line 931
    const/high16 v0, 0x40000000

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->i:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 933
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->l:I

    .line 935
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    .line 936
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/aj;->setBackgroundColor(I)V

    .line 937
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/aj;->setCacheColorHint(I)V

    .line 938
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/aj;->setVerticalScrollBarEnabled(Z)V

    .line 939
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/aj;->setHorizontalScrollBarEnabled(Z)V

    .line 940
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, v5}, Lam/sunrise/android/calendar/ui/widgets/aj;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 941
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    new-instance v2, Lam/sunrise/android/calendar/ui/widgets/schedule/h;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/h;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)V

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 961
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/aj;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 963
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    .line 964
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/aj;->setBackgroundColor(I)V

    .line 965
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/aj;->setCacheColorHint(I)V

    .line 966
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/aj;->setVerticalScrollBarEnabled(Z)V

    .line 967
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/aj;->setHorizontalScrollBarEnabled(Z)V

    .line 968
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, v5}, Lam/sunrise/android/calendar/ui/widgets/aj;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 969
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, p0}, Lam/sunrise/android/calendar/ui/widgets/aj;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 970
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/aj;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 972
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 973
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    return-void
.end method

.method private a(III)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 989
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    .line 990
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 991
    if-eqz v1, :cond_0

    .line 993
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 996
    iget-wide v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 997
    const/4 v2, 0x1

    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->d:Z

    .line 1004
    :goto_0
    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->c:J

    .line 1005
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->a:I

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->b:I

    .line 1007
    :cond_0
    return-void

    .line 998
    :cond_1
    iget-wide v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->c:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 999
    iput-boolean v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->d:Z

    goto :goto_0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/schedule/f;I)I
    .locals 0

    .prologue
    .line 702
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->b:I

    return p1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)Lam/sunrise/android/calendar/ui/widgets/schedule/d;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 977
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 978
    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->a:I

    .line 979
    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->b:I

    .line 980
    return-void
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->e:I

    return v0
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 983
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->e:I

    .line 984
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 985
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->q:Ljava/lang/Runnable;

    const-wide/16 v1, 0x28

    invoke-virtual {p0, v0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 986
    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->b:I

    return v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)Z
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->d:Z

    return v0
.end method


# virtual methods
.method a(I)V
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a(I)V

    .line 747
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->requestLayout()V

    .line 748
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 780
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->b()V

    .line 781
    int-to-long v0, p1

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->c:J

    .line 782
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getAllDayEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lam/sunrise/android/calendar/ui/widgets/aj;->smoothScrollBy(II)V

    .line 783
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getAllDayEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/aj;->setSelection(I)V

    .line 784
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lam/sunrise/android/calendar/ui/widgets/aj;->smoothScrollBy(II)V

    .line 785
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/aj;->setSelection(I)V

    .line 786
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 800
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 802
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v2

    .line 804
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 805
    if-nez v3, :cond_1

    .line 826
    :cond_0
    return-void

    .line 811
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 812
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    .line 815
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getBottom()I

    move-result v4

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 817
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v5

    .line 818
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 819
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getTop()I

    move-result v6

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v6

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->b:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getScrollY()I

    move-result v6

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getLeft()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->f:I

    add-int/2addr v6, v7

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->g:I

    sub-int/2addr v6, v7

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->h:I

    sub-int/2addr v6, v7

    iget-object v7, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->b:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 823
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->b:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 824
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 811
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getAllDayEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    return-object v0
.end method

.method public getAllDayEventsScrollY()I
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getCurrentScrollY()I

    move-result v0

    return v0
.end method

.method public getAllDayListContainer()Lam/sunrise/android/calendar/ui/widgets/schedule/a;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    return-object v0
.end method

.method public getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 795
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 796
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 856
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->f:I

    .line 858
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v4, v0, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->layout(IIII)V

    .line 862
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->l:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 864
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v4, v0, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->layout(IIII)V

    .line 867
    return-void
.end method

.method public onMeasure(II)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000

    const/4 v4, 0x0

    .line 830
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 831
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 833
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 838
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->j:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 847
    invoke-virtual {p0, v6, v7}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->setMeasuredDimension(II)V

    .line 848
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 880
    invoke-direct {p0, p2, p3, p4}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->a(III)V

    .line 882
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->f:I

    invoke-static {p0, v3, v3, v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/View;IIII)V

    .line 884
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 885
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    .line 886
    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 888
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 889
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 891
    :cond_0
    invoke-virtual {v0, p2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 896
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->n:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 897
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->n:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 899
    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 871
    invoke-direct {p0, p2}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->c(I)V

    .line 872
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->n:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->n:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 875
    :cond_0
    return-void
.end method

.method public setAllDayEventsScrollY(I)V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->k:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->setScrollY(I)V

    .line 756
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->n:Landroid/widget/AbsListView$OnScrollListener;

    .line 790
    return-void
.end method

.method setRegularEventsListHeight(I)V
    .locals 0

    .prologue
    .line 751
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->j:I

    .line 752
    return-void
.end method

.method public setRegularEventsScrollY(I)V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->setScrollY(I)V

    .line 765
    return-void
.end method
