.class Lam/sunrise/android/calendar/ui/widgets/calendar/d;
.super Landroid/widget/ListView;
.source "CalendarView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Typeface;

.field private g:I

.field private h:Landroid/graphics/Typeface;

.field private i:Z

.field private j:Landroid/widget/AbsListView$OnScrollListener;

.field private final k:[Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:Lam/sunrise/android/calendar/ui/widgets/calendar/g;

.field private o:I

.field private p:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

.field private q:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

.field private r:Landroid/animation/AnimatorSet;

.field private s:[Lam/sunrise/android/calendar/ui/widgets/calendar/h;

.field private final t:[Ljava/lang/String;

.field private u:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 576
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    .line 577
    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 615
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "IDLE"

    aput-object v1, v0, v2

    const-string v1, "TOUCH_SCROLL"

    aput-object v1, v0, v4

    const-string v1, "FLING"

    aput-object v1, v0, v5

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->k:[Ljava/lang/String;

    .line 619
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->l:Z

    .line 620
    iput v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->m:I

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->n:Lam/sunrise/android/calendar/ui/widgets/calendar/g;

    .line 708
    iput v3, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->o:I

    .line 714
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->r:Landroid/animation/AnimatorSet;

    .line 782
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "January"

    aput-object v1, v0, v2

    const-string v1, "February"

    aput-object v1, v0, v4

    const-string v1, "March"

    aput-object v1, v0, v5

    const-string v1, "April"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "May"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "June"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "July"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "August"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "September"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "October"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "November"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "December"

    aput-object v2, v0, v1

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->t:[Ljava/lang/String;

    .line 797
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->u:Landroid/graphics/Rect;

    .line 578
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->d()V

    .line 579
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/calendar/d;I)I
    .locals 0

    .prologue
    .line 562
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->m:I

    return p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/calendar/d;Lam/sunrise/android/calendar/ui/widgets/calendar/g;)Lam/sunrise/android/calendar/ui/widgets/calendar/g;
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->n:Lam/sunrise/android/calendar/ui/widgets/calendar/g;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 653
    if-ne p1, v0, :cond_0

    .line 654
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->l:Z

    .line 657
    :cond_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->m:I

    if-ne v0, p1, :cond_3

    .line 658
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->n:Lam/sunrise/android/calendar/ui/widgets/calendar/g;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->n:Lam/sunrise/android/calendar/ui/widgets/calendar/g;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 660
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->n:Lam/sunrise/android/calendar/ui/widgets/calendar/g;

    .line 663
    :cond_1
    if-nez p1, :cond_2

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->l:Z

    .line 684
    :cond_2
    :goto_0
    return-void

    .line 670
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->n:Lam/sunrise/android/calendar/ui/widgets/calendar/g;

    if-eqz v0, :cond_4

    .line 671
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->n:Lam/sunrise/android/calendar/ui/widgets/calendar/g;

    iget v0, v0, Lam/sunrise/android/calendar/ui/widgets/calendar/g;->a:I

    if-eq v0, p1, :cond_2

    .line 674
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->n:Lam/sunrise/android/calendar/ui/widgets/calendar/g;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 675
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->n:Lam/sunrise/android/calendar/ui/widgets/calendar/g;

    .line 678
    :cond_4
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/g;

    invoke-direct {v0, p0, p1}, Lam/sunrise/android/calendar/ui/widgets/calendar/g;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/d;I)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->n:Lam/sunrise/android/calendar/ui/widgets/calendar/g;

    .line 680
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->n:Lam/sunrise/android/calendar/ui/widgets/calendar/g;

    if-nez p1, :cond_5

    const-wide/16 v0, 0xc8

    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x64

    goto :goto_1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/calendar/d;)Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->l:Z

    return v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/calendar/d;Z)Z
    .locals 0

    .prologue
    .line 562
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->l:Z

    return p1
.end method

.method private b(I)I
    .locals 3

    .prologue
    .line 800
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getFirstVisiblePosition()I

    move-result v0

    .line 801
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 803
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 805
    if-gt p1, v0, :cond_0

    .line 806
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, p1

    mul-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 809
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v0, p1, v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/calendar/d;I)I
    .locals 0

    .prologue
    .line 562
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->o:I

    return p1
.end method

.method private b()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 717
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->o:I

    if-eqz v0, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->o:I

    if-ne v0, v7, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 724
    iput v6, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->o:I

    .line 726
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->r:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->p:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    const-string v3, "fraction"

    new-array v4, v8, [F

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->p:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    invoke-virtual {v5}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->getFraction()F

    move-result v5

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->q:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    const-string v3, "fraction"

    new-array v4, v8, [F

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->q:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    invoke-virtual {v5}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->getFraction()F

    move-result v5

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 731
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->r:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 732
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->r:Landroid/animation/AnimatorSet;

    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/calendar/e;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/e;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 739
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/calendar/d;)V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b()V

    return-void
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 743
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->o:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 750
    iput v6, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->o:I

    .line 752
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->r:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->p:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    const-string v3, "fraction"

    new-array v4, v6, [F

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->p:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    invoke-virtual {v5}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->getFraction()F

    move-result v5

    aput v5, v4, v7

    aput v9, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->q:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    const-string v3, "fraction"

    new-array v4, v6, [F

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->q:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    invoke-virtual {v5}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->getFraction()F

    move-result v5

    aput v5, v4, v7

    aput v9, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 757
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->r:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 758
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->r:Landroid/animation/AnimatorSet;

    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/calendar/f;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/f;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 765
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/widgets/calendar/d;)V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->c()V

    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const v4, 0x7f0a0033

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v5, 0xff

    .line 937
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 939
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    .line 940
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 941
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 943
    const v2, 0x7f0a0032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->c:I

    .line 944
    const v2, 0x7f0c005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->d:I

    .line 945
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->e:I

    .line 946
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->f:Landroid/graphics/Typeface;

    .line 947
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->g:I

    .line 948
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->h:Landroid/graphics/Typeface;

    .line 950
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->d:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 952
    const/4 v0, 0x3

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/widgets/calendar/h;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->s:[Lam/sunrise/android/calendar/ui/widgets/calendar/h;

    move v0, v1

    .line 953
    :goto_0
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->s:[Lam/sunrise/android/calendar/ui/widgets/calendar/h;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 954
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->s:[Lam/sunrise/android/calendar/ui/widgets/calendar/h;

    new-instance v3, Lam/sunrise/android/calendar/ui/widgets/calendar/h;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lam/sunrise/android/calendar/ui/widgets/calendar/h;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/d;Lam/sunrise/android/calendar/ui/widgets/calendar/b;)V

    aput-object v3, v2, v0

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 957
    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-static {v1, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->c:I

    invoke-direct {v0, v2, p0, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Landroid/view/View;II)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->p:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    .line 958
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-static {v1, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->e:I

    invoke-direct {v0, v2, p0, v1, v3}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Landroid/view/View;II)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->q:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    .line 960
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 961
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->i:Z

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 814
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 816
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 934
    :cond_0
    return-void

    .line 820
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->o:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 822
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->p:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 823
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 825
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->s:[Lam/sunrise/android/calendar/ui/widgets/calendar/h;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 826
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->s:[Lam/sunrise/android/calendar/ui/widgets/calendar/h;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->a()V

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 829
    :cond_2
    const/4 v3, 0x0

    .line 831
    const/4 v2, -0x1

    .line 832
    const/4 v1, -0x1

    .line 834
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 835
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 837
    const/4 v0, 0x0

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 838
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/calendar/o;

    .line 839
    if-nez v0, :cond_4

    .line 837
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 843
    :cond_4
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/o;->getFirstDay()Ljava/util/Calendar;

    move-result-object v7

    .line 844
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 846
    if-eq v3, v0, :cond_3

    .line 849
    const/4 v8, -0x1

    if-eq v3, v8, :cond_5

    .line 850
    const/4 v8, 0x1

    invoke-virtual {v6, v2, v3, v8}, Ljava/util/Calendar;->set(III)V

    .line 852
    iget-object v8, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-static {v8, v6}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Ljava/util/Calendar;)I

    move-result v8

    .line 854
    const/4 v9, 0x5

    const/4 v10, 0x5

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 855
    iget-object v9, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-static {v9, v6}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Ljava/util/Calendar;)I

    move-result v9

    .line 857
    iget-object v10, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->s:[Lam/sunrise/android/calendar/ui/widgets/calendar/h;

    aget-object v10, v10, v4

    .line 858
    iput v3, v10, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->a:I

    .line 859
    iput v2, v10, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->b:I

    .line 860
    invoke-direct {p0, v8}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b(I)I

    move-result v2

    iput v2, v10, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->c:I

    .line 861
    invoke-direct {p0, v9}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b(I)I

    move-result v2

    iput v2, v10, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->d:I

    .line 863
    add-int/lit8 v4, v4, 0x1

    .line 867
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move v3, v0

    goto :goto_2

    .line 871
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {v6, v2, v3, v0}, Ljava/util/Calendar;->set(III)V

    .line 873
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-static {v0, v6}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    .line 875
    const/4 v1, 0x5

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Ljava/util/Calendar;->set(II)V

    .line 876
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-static {v1, v6}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Ljava/util/Calendar;)I

    move-result v1

    .line 878
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->s:[Lam/sunrise/android/calendar/ui/widgets/calendar/h;

    aget-object v4, v6, v4

    .line 879
    iput v3, v4, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->a:I

    .line 880
    iput v2, v4, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->b:I

    .line 881
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b(I)I

    move-result v0

    iput v0, v4, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->c:I

    .line 882
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b(I)I

    move-result v0

    iput v0, v4, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->d:I

    .line 884
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 886
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 887
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->s:[Lam/sunrise/android/calendar/ui/widgets/calendar/h;

    aget-object v2, v2, v0

    iget v2, v2, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->a:I

    if-ltz v2, :cond_7

    .line 888
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->s:[Lam/sunrise/android/calendar/ui/widgets/calendar/h;

    aget-object v2, v2, v0

    .line 890
    iget v3, v2, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->b:I

    if-ne v1, v3, :cond_8

    .line 891
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->t:[Ljava/lang/String;

    iget v4, v2, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->a:I

    aget-object v3, v3, v4

    .line 893
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->f:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 894
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->u:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 896
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->q:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    invoke-virtual {v5}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 898
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->u:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v2, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->c:I

    iget v6, v2, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->d:I

    iget v2, v2, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->c:I

    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->u:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 886
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 905
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->t:[Ljava/lang/String;

    iget v5, v2, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->a:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 906
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->f:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 907
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->u:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 909
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->u:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 910
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->u:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 912
    iget v5, v2, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 913
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->h:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 914
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->u:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 916
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->u:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 918
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v7, v6

    .line 919
    iget v7, v2, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->c:I

    iget v8, v2, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->d:I

    iget v9, v2, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->c:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    .line 923
    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    iget-object v8, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->q:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    invoke-virtual {v8}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->getColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 924
    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    iget-object v8, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->f:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 925
    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->t:[Ljava/lang/String;

    iget v2, v2, Lam/sunrise/android/calendar/ui/widgets/calendar/h;->a:I

    aget-object v2, v7, v2

    int-to-float v7, v6

    int-to-float v8, v4

    iget-object v9, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 927
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->q:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;

    invoke-virtual {v7}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView$ColorAnimator;->getColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 928
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->h:Landroid/graphics/Typeface;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 929
    add-int v2, v6, v3

    int-to-float v2, v2

    int-to-float v3, v4

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->j:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->j:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 701
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 689
    invoke-direct {p0, p2}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->a(I)V

    .line 691
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->j:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->j:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 694
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 602
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 604
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 606
    :cond_0
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->i:Z

    .line 612
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 607
    :cond_2
    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 609
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->i:Z

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->j:Landroid/widget/AbsListView$OnScrollListener;

    .line 594
    return-void
.end method
