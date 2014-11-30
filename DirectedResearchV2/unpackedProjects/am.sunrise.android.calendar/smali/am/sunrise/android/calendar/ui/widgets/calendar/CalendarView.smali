.class public Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;
.super Landroid/view/ViewGroup;
.source "CalendarView.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/widgets/calendar/n;

.field private b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

.field private c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

.field private d:Lam/sunrise/android/calendar/ui/widgets/a/b;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lam/sunrise/android/calendar/ui/widgets/calendar/c;

.field private i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

.field private j:Landroid/widget/AbsListView$OnScrollListener;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 96
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    .line 105
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/j;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Lam/sunrise/android/calendar/ui/widgets/calendar/b;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->n:Landroid/content/BroadcastReceiver;

    .line 109
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->d()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    .line 105
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/j;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Lam/sunrise/android/calendar/ui/widgets/calendar/b;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->n:Landroid/content/BroadcastReceiver;

    .line 114
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->d()V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    .line 105
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/j;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Lam/sunrise/android/calendar/ui/widgets/calendar/b;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->n:Landroid/content/BroadcastReceiver;

    .line 119
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->d()V

    .line 120
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Ljava/util/Calendar;)I
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;)Lam/sunrise/android/calendar/ui/widgets/calendar/d;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    return-object v0
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v0, v1, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->smoothScrollBy(II)V

    .line 261
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getFirstVisiblePosition()I

    move-result v0

    .line 263
    if-lt p1, v0, :cond_0

    if-eqz p2, :cond_2

    .line 264
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->setSelection(I)V

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getVisibleRowsForViewMode()F

    move-result v1

    .line 269
    int-to-float v2, p1

    int-to-float v0, v0

    add-float/2addr v0, v1

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    .line 270
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    int-to-float v2, p1

    sub-float v1, v2, v1

    const/high16 v2, 0x3f800000

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->setSelection(I)V

    goto :goto_0
.end method

.method private b(Ljava/util/Calendar;)I
    .locals 5

    .prologue
    .line 508
    invoke-static {p1}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 509
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->c()Ljava/util/Calendar;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 511
    new-instance v3, Lc/a/a/b;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v0, Lc/a/a/b;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v3, v0}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->e()V

    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 414
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->d:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 431
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 433
    const v1, 0x7f0c0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->f:I

    .line 435
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/n;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/n;

    .line 437
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    .line 438
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/a/b;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/a/b;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->d:Lam/sunrise/android/calendar/ui/widgets/a/b;

    .line 439
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->setBackgroundColor(I)V

    .line 440
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->setCacheColorHint(I)V

    .line 441
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->setHorizontalScrollBarEnabled(Z)V

    .line 442
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->setVerticalScrollBarEnabled(Z)V

    .line 443
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->setChoiceMode(I)V

    .line 444
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 445
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->setOverScrollMode(I)V

    .line 446
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 447
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->setDividerHeight(I)V

    .line 449
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    .line 450
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 452
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/n;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->addView(Landroid/view/View;)V

    .line 453
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->e()V

    goto :goto_0
.end method

.method private getVisibleRowsForViewMode()F
    .locals 3

    .prologue
    .line 465
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->d:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    if-eq v0, v1, :cond_0

    .line 466
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a()F

    move-result v0

    .line 483
    :goto_0
    return v0

    .line 469
    :cond_0
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->m:Z

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a()F

    move-result v0

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 474
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 475
    int-to-float v0, v0

    const/high16 v2, 0x40e00000

    div-float/2addr v0, v2

    .line 477
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 479
    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2

    .line 480
    const/high16 v0, 0x40600000

    goto :goto_0

    .line 483
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a()F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/widgets/calendar/k;)V
    .locals 10

    .prologue
    const/high16 v3, 0x40000000

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 205
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->h:Lam/sunrise/android/calendar/ui/widgets/calendar/c;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->h:Lam/sunrise/android/calendar/ui/widgets/calendar/c;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->h:Lam/sunrise/android/calendar/ui/widgets/calendar/c;

    .line 210
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    if-ne v0, p1, :cond_1

    .line 256
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getVisibleRowsForViewMode()F

    move-result v8

    .line 215
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    .line 217
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getVisibleRowsForViewMode()F

    move-result v9

    .line 219
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->e:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    .line 220
    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->d:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    if-eq p1, v1, :cond_8

    .line 221
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->f:I

    sub-int/2addr v0, v1

    move v7, v0

    .line 224
    :goto_1
    cmpg-float v0, v8, v9

    if-gez v0, :cond_2

    .line 225
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 231
    :cond_2
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->d:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    if-ne v0, v1, :cond_5

    .line 232
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/n;

    invoke-virtual {v0, v6}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->setEmbedMode(Z)V

    .line 233
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/n;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 235
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->requestLayout()V

    .line 255
    :goto_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->g:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    if-eq v1, v2, :cond_4

    :cond_3
    move v4, v6

    :cond_4
    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a(Z)V

    goto :goto_0

    .line 237
    :cond_5
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->k:Z

    if-eqz v0, :cond_6

    .line 238
    iput-boolean v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->l:Z

    .line 239
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->clearAnimation()V

    .line 242
    :cond_6
    cmpl-float v0, v8, v9

    if-lez v0, :cond_7

    .line 243
    iput-boolean v6, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->l:Z

    .line 246
    :cond_7
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/a/a;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/n;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getHeight()I

    move-result v2

    add-int/2addr v2, v7

    invoke-direct {v0, p0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/a/a;-><init>(Landroid/view/View;II)V

    .line 247
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 248
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_8
    move v7, v0

    goto :goto_1
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    .line 123
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->c()Ljava/util/Calendar;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 125
    new-instance v4, Lc/a/a/b;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v5, Lc/a/a/b;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v4, v5}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v4

    invoke-virtual {v4}, Lc/a/a/k;->c()I

    move-result v4

    div-int/lit8 v4, v4, 0x7

    .line 130
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {v5}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a()Ljava/util/Calendar;

    move-result-object v5

    .line 134
    if-eqz v5, :cond_0

    .line 135
    new-instance v6, Lc/a/a/b;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v1

    invoke-direct {v6, v2, v3, v1}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v1, Lc/a/a/b;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v6, v1}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/a/k;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x7

    .line 139
    if-eq v1, v4, :cond_2

    .line 144
    :cond_0
    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {v1, p1}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a(Ljava/util/Calendar;)V

    .line 146
    if-eqz v0, :cond_1

    .line 147
    invoke-static {p1}, Lam/sunrise/android/calendar/b/d;->d(Ljava/util/Calendar;)Z

    move-result v0

    invoke-direct {p0, v4, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(IZ)V

    .line 149
    :cond_1
    return-void

    .line 139
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 180
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->m:Z

    .line 181
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->k:Z

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    if-eq v0, v1, :cond_0

    .line 420
    sget-object v0, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->setViewMode(Lam/sunrise/android/calendar/ui/widgets/calendar/k;)V

    .line 422
    :cond_0
    return-void
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->d()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->c()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getViewMode()Lam/sunrise/android/calendar/ui/widgets/calendar/k;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    return-object v0
.end method

.method getWrappedListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    return-object v0
.end method

.method public onAnimationEnd()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000

    const/4 v4, 0x0

    .line 314
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationEnd()V

    .line 315
    iput-boolean v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->k:Z

    .line 316
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->l:Z

    if-eqz v0, :cond_2

    .line 317
    iput-boolean v4, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->l:Z

    .line 319
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->c()Ljava/util/Calendar;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 322
    new-instance v5, Lc/a/a/b;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v1

    invoke-direct {v5, v2, v3, v1}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v1, Lc/a/a/b;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v5, v1}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    .line 327
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getFirstVisiblePosition()I

    move-result v1

    .line 329
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getVisibleRowsForViewMode()F

    move-result v2

    .line 331
    int-to-float v3, v0

    int-to-float v1, v1

    add-float/2addr v1, v2

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_0

    .line 332
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    new-instance v3, Lam/sunrise/android/calendar/ui/widgets/calendar/b;

    invoke-direct {v3, p0, v0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/b;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;IF)V

    invoke-virtual {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->post(Ljava/lang/Runnable;)Z

    .line 340
    :cond_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->e:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 341
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->d:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    if-eq v1, v2, :cond_1

    .line 342
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->f:I

    sub-int/2addr v0, v1

    .line 345
    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 350
    :cond_2
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationStart()V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->k:Z

    .line 310
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 284
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 286
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 289
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->n:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->n:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->n:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 299
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 302
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 383
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getMeasuredHeight()I

    move-result v0

    .line 384
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/n;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/n;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v4, v4, v2, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->layout(IIII)V

    .line 385
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v4, v0, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->layout(IIII)V

    .line 388
    return-void
.end method

.method public onMeasure(II)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 354
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->k:Z

    if-eqz v0, :cond_0

    .line 355
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->setMeasuredDimension(II)V

    .line 379
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 365
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/n;

    const/high16 v1, -0x80000000

    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->measure(II)V

    .line 367
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/n;->getMeasuredHeight()I

    move-result v8

    .line 369
    div-int/lit8 v0, v7, 0x7

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->e:I

    .line 370
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->e:I

    int-to-float v0, v0

    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getVisibleRowsForViewMode()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 371
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->d:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    if-eq v1, v2, :cond_1

    .line 372
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->f:I

    sub-int/2addr v0, v1

    move v6, v0

    .line 375
    :goto_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    const/high16 v0, 0x40000000

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, p0

    move v2, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 378
    add-int v0, v8, v6

    invoke-virtual {p0, v7, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    move v6, v0

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b()V

    .line 406
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->d:Lam/sunrise/android/calendar/ui/widgets/a/b;

    invoke-virtual {v0, p2, p3, p4}, Lam/sunrise/android/calendar/ui/widgets/a/b;->a(III)V

    .line 408
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->j:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->j:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 411
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->d:Lam/sunrise/android/calendar/ui/widgets/a/b;

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/widgets/a/b;->a(I)V

    .line 393
    if-eqz p2, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->g:Z

    .line 394
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->g:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    if-eq v3, v4, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a(Z)V

    .line 396
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->j:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->j:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 399
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 393
    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 459
    invoke-static {p2}, Lam/sunrise/android/calendar/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->b()V

    .line 462
    :cond_0
    return-void
.end method

.method public setOnDayClickListener(Lam/sunrise/android/calendar/ui/widgets/calendar/i;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/i;)V

    .line 173
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->j:Landroid/widget/AbsListView$OnScrollListener;

    .line 177
    return-void
.end method

.method public setViewMode(Lam/sunrise/android/calendar/ui/widgets/calendar/k;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->i:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    if-ne v0, p1, :cond_1

    .line 185
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->h:Lam/sunrise/android/calendar/ui/widgets/calendar/c;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->h:Lam/sunrise/android/calendar/ui/widgets/calendar/c;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 187
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->h:Lam/sunrise/android/calendar/ui/widgets/calendar/c;

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->h:Lam/sunrise/android/calendar/ui/widgets/calendar/c;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->h:Lam/sunrise/android/calendar/ui/widgets/calendar/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/c;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/c;)Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 196
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->h:Lam/sunrise/android/calendar/ui/widgets/calendar/c;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->h:Lam/sunrise/android/calendar/ui/widgets/calendar/c;

    .line 200
    :cond_2
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/calendar/c;

    invoke-direct {v0, p0, p1}, Lam/sunrise/android/calendar/ui/widgets/calendar/c;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Lam/sunrise/android/calendar/ui/widgets/calendar/k;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->h:Lam/sunrise/android/calendar/ui/widgets/calendar/c;

    .line 201
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->h:Lam/sunrise/android/calendar/ui/widgets/calendar/c;

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
