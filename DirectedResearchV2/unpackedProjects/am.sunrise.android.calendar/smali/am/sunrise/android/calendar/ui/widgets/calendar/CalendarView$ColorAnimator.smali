.class Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;
.super Ljava/lang/Object;
.source "CalendarView.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:F

.field private f:I


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 525
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->b:Ljava/lang/ref/WeakReference;

    .line 527
    iput p3, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->c:I

    .line 528
    iput p4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->d:I

    .line 529
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->f:I

    return v0
.end method

.method public getFraction()F
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->e:F

    return v0
.end method

.method public setFraction(F)V
    .locals 8

    .prologue
    .line 532
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->e:F

    .line 534
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->c:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 535
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->c:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 536
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->c:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 537
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->c:I

    and-int/lit16 v3, v3, 0xff

    .line 539
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->d:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    .line 540
    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->d:I

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 541
    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->d:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 542
    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->d:I

    and-int/lit16 v7, v7, 0xff

    .line 544
    sub-int/2addr v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x18

    sub-int v4, v5, v1

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int v1, v6, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sub-int v1, v7, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v1, v3

    or-int/2addr v0, v1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->f:I

    .line 549
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 552
    :cond_0
    return-void
.end method
