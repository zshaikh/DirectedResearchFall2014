.class public Lam/sunrise/android/calendar/ui/SRViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SRViewPager.java"


# instance fields
.field private a:I

.field private b:Lam/sunrise/android/calendar/ui/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/SRViewPager;->g()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/SRViewPager;->g()V

    .line 44
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/SRViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/SRViewPager;->a:I

    .line 75
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/SRViewPager;->getCurrentItem()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 63
    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/SRViewPager;->a:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/SRViewPager;->b:Lam/sunrise/android/calendar/ui/t;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/SRViewPager;->b:Lam/sunrise/android/calendar/ui/t;

    invoke-interface {v0, p1}, Lam/sunrise/android/calendar/ui/t;->c(I)V

    .line 55
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 56
    return-void
.end method

.method public setOnScrollListener(Lam/sunrise/android/calendar/ui/t;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/SRViewPager;->b:Lam/sunrise/android/calendar/ui/t;

    .line 48
    return-void
.end method
