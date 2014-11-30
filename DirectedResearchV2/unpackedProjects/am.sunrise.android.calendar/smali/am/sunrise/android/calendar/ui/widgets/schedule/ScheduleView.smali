.class public Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;
.super Landroid/view/ViewGroup;
.source "ScheduleView.java"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final w:[Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/widgets/schedule/o;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private i:I

.field private j:Landroid/view/VelocityTracker;

.field private k:I

.field private l:I

.field private m:Lam/sunrise/android/calendar/ui/widgets/schedule/l;

.field private n:Landroid/graphics/Paint;

.field private o:I

.field private p:I

.field private q:I

.field private r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

.field private s:I

.field private t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

.field private u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

.field private v:Lam/sunrise/android/calendar/ui/widgets/schedule/k;

.field private x:Z

.field private y:Lam/sunrise/android/calendar/ui/widgets/schedule/j;

.field private z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a:I

    .line 49
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->b:I

    .line 241
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ACTION_DOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ACTION_UP"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ACTION_MOVE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ACTION_CANCEL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ACTION_OUTSIDE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ACTION_POINTER_DOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ACTION_POINTER_UP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ACTION_HOVER_MOVE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ACTION_SCROLL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ACTION_HOVER_ENTER"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ACTION_HOVER_EXIT"

    aput-object v2, v0, v1

    sput-object v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->w:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    .line 265
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/j;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;Lam/sunrise/android/calendar/ui/widgets/schedule/e;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    .line 526
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->z:Landroid/graphics/Rect;

    .line 85
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    .line 265
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/j;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;Lam/sunrise/android/calendar/ui/widgets/schedule/e;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    .line 526
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->z:Landroid/graphics/Rect;

    .line 90
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    .line 265
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/j;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;Lam/sunrise/android/calendar/ui/widgets/schedule/e;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    .line 526
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->z:Landroid/graphics/Rect;

    .line 95
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g()V

    .line 96
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->e:F

    return v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 645
    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 646
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 647
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    if-ne v1, v2, :cond_0

    .line 648
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 649
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->e:F

    .line 650
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    .line 651
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 655
    :cond_0
    return-void

    .line 648
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(F)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const v4, 0x38d1b717

    const/4 v0, 0x0

    .line 191
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->f:F

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getAllDayListContainer()Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    move-result-object v2

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 192
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    sub-float/2addr v1, p1

    .line 193
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    .line 195
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getAllDayEventsScrollY()I

    move-result v2

    int-to-float v2, v2

    .line 196
    add-float/2addr v2, v1

    .line 199
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getAllDayEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/aj;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getAllDayListContainer()Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    move-result-object v3

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 202
    cmpg-float v3, v2, v4

    if-gez v3, :cond_0

    .line 209
    :goto_0
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    .line 211
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->setAllDayEventsScrollY(I)V

    .line 238
    :goto_1
    return v5

    .line 204
    :cond_0
    cmpl-float v0, v2, v1

    if-lez v0, :cond_4

    move v0, v1

    .line 205
    goto :goto_0

    .line 216
    :cond_1
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    sub-float/2addr v1, p1

    .line 217
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    .line 219
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    .line 220
    add-float/2addr v2, v1

    .line 223
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->o:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->s:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    .line 226
    cmpg-float v3, v2, v4

    if-gez v3, :cond_2

    .line 233
    :goto_2
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    .line 235
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->setScrollY(I)V

    .line 236
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->setRegularEventsScrollY(I)V

    goto :goto_1

    .line 228
    :cond_2
    cmpl-float v0, v2, v1

    if-lez v0, :cond_3

    move v0, v1

    .line 229
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    return p1
.end method

.method private a(Landroid/view/View;ZIII)Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    return v0
.end method

.method private b(FF)Lam/sunrise/android/calendar/ui/widgets/schedule/o;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 530
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getAllDayListContainer()Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    move-result-object v1

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getBottom()I

    move-result v3

    .line 531
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    int-to-float v1, v3

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 532
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getRight()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, p1, v1

    .line 533
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    move v2, v1

    move v1, v0

    .line 534
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 535
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    .line 537
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->z:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 538
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->z:Landroid/graphics/Rect;

    float-to-int v6, v4

    float-to-int v7, p2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 544
    :goto_1
    return-object v0

    .line 541
    :cond_0
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v2, v0

    .line 534
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 544
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)Lam/sunrise/android/calendar/ui/widgets/schedule/y;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->o:I

    return v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    .line 279
    :cond_0
    return-void
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)Lam/sunrise/android/calendar/ui/widgets/schedule/p;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    .line 286
    :cond_0
    return-void
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->s:I

    return v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->h:Z

    .line 660
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    .line 664
    :cond_0
    return-void
.end method

.method static synthetic g(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)Lam/sunrise/android/calendar/ui/widgets/schedule/f;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    return-object v0
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 668
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->setWillNotDraw(Z)V

    .line 670
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->setBackgroundColor(I)V

    .line 672
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 674
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c:I

    .line 677
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->k:I

    .line 678
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->l:I

    .line 680
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->n:Landroid/graphics/Paint;

    .line 681
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->n:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 683
    const v1, 0x7f0c0107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->o:I

    .line 684
    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->p:I

    .line 685
    const v1, 0x7f0c0105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->q:I

    .line 687
    const v1, 0x7f0c0108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->s:I

    .line 689
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    .line 690
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    .line 691
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    .line 692
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    iget v2, v2, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->b:I

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->setRegularEventsListHeight(I)V

    .line 694
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    iget v3, v3, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->a:I

    const/high16 v4, 0x40000000

    const v5, 0x7f0c00fc

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0c00fe

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v5

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v2, v3, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    iget v2, v2, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->a:I

    invoke-direct {v1, v2, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->c()I

    move-result v0

    .line 111
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->b(I)V

    .line 112
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->b()V

    .line 113
    return-void
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 178
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->requestLayout()V

    .line 181
    return-void
.end method

.method public a(III)V
    .locals 5

    .prologue
    .line 120
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->a(II)I

    move-result v1

    .line 121
    const v2, 0x38d1b717

    .line 122
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getMeasuredHeight()I

    move-result v0

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->o:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->s:I

    sub-int v3, v0, v3

    .line 123
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 125
    packed-switch p3, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 127
    :pswitch_0
    int-to-float v1, v1

    .line 142
    :goto_1
    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 143
    const/4 v0, 0x0

    .line 147
    :cond_0
    :goto_2
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->setScrollY(I)V

    .line 148
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->setRegularEventsScrollY(I)V

    goto :goto_0

    .line 131
    :pswitch_1
    int-to-float v1, v1

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 132
    goto :goto_1

    .line 135
    :pswitch_2
    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 136
    goto :goto_1

    .line 144
    :cond_1
    cmpl-float v2, v1, v0

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_2

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(FF)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 548
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->b(FF)Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    move-result-object v5

    .line 549
    if-nez v5, :cond_2

    .line 550
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->A:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    .line 551
    :goto_0
    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a()V

    move v1, v3

    .line 595
    :cond_0
    :goto_1
    return v1

    :cond_1
    move-object v0, v4

    .line 550
    goto :goto_0

    .line 558
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getAllDayListContainer()Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getBottom()I

    move-result v6

    .line 560
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getScrollY()I

    move-result v0

    .line 561
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v6

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_6

    .line 562
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v2

    .line 567
    :cond_3
    :goto_2
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 569
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v2, v7

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->o:I

    add-int/2addr v2, v7

    iget-object v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    invoke-virtual {v7}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v2, v7

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->s:I

    add-int/2addr v2, v7

    .line 572
    if-ge v0, v1, :cond_7

    move v0, v1

    .line 577
    :cond_4
    :goto_3
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->setScrollY(I)V

    .line 578
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->setRegularEventsScrollY(I)V

    .line 581
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getScrollY()I

    move-result v0

    sub-int/2addr v0, v6

    int-to-float v0, v0

    add-float v1, p2, v0

    .line 583
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->A:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    .line 585
    :goto_4
    if-ne v0, v5, :cond_9

    .line 586
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a(FF)V

    :goto_5
    move v1, v3

    .line 595
    goto :goto_1

    .line 563
    :cond_6
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getMeasuredHeight()I

    move-result v2

    iget v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c:I

    mul-int/lit8 v7, v7, 0x4

    sub-int/2addr v2, v7

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_3

    .line 564
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    goto :goto_2

    .line 574
    :cond_7
    if-le v0, v2, :cond_4

    move v0, v2

    .line 575
    goto :goto_3

    :cond_8
    move-object v0, v4

    .line 583
    goto :goto_4

    .line 588
    :cond_9
    if-eqz v0, :cond_a

    .line 589
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a()V

    .line 591
    :cond_a
    invoke-virtual {v5}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a(FF)V

    .line 592
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->A:Ljava/lang/ref/WeakReference;

    goto :goto_5
.end method

.method public b()V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 153
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a(III)V

    .line 154
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 637
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 639
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->n:Landroid/graphics/Paint;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 640
    const/4 v1, 0x0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->o:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->q:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->o:I

    int-to-float v4, v0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->n:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 642
    return-void
.end method

.method public getAllDayEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getAllDayEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    return-object v0
.end method

.method public getFirstVisibleDate()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->getFirstVisiblePosition()I

    move-result v1

    .line 106
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->c(I)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 171
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/l;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->g()V

    .line 174
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    .line 296
    const/4 v0, 0x3

    if-eq v0, v1, :cond_0

    if-ne v6, v1, :cond_3

    .line 297
    :cond_0
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->h:Z

    .line 298
    iput v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    .line 299
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->e()V

    .line 300
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 301
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    if-eqz v0, :cond_2

    .line 302
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    .line 303
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->A:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    .line 305
    if-eqz v0, :cond_2

    .line 306
    if-ne v6, v1, :cond_1

    .line 307
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->v:Lam/sunrise/android/calendar/ui/widgets/schedule/k;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    move-result-object v3

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getNewEventSlot()Ljava/util/Calendar;

    move-result-object v3

    invoke-interface {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/k;->b(Ljava/util/Calendar;)V

    .line 309
    :cond_1
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a()V

    .line 399
    :cond_2
    :goto_0
    return v2

    .line 316
    :cond_3
    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->h:Z

    if-eqz v0, :cond_4

    move v2, v6

    .line 317
    goto :goto_0

    .line 320
    :cond_4
    sparse-switch v1, :sswitch_data_0

    .line 399
    :cond_5
    :goto_1
    iget-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->h:Z

    goto :goto_0

    .line 322
    :sswitch_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    .line 323
    if-ne v0, v3, :cond_6

    .line 324
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    if-nez v0, :cond_5

    .line 325
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 330
    :cond_6
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 331
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 332
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->e:F

    sub-float v1, v7, v1

    .line 333
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 334
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 335
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    sub-float v10, v9, v0

    .line 336
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 338
    cmpl-float v0, v10, v12

    if-eqz v0, :cond_7

    float-to-int v3, v1

    float-to-int v4, v7

    float-to-int v5, v9

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 340
    iput v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->e:F

    .line 341
    iput v9, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    .line 342
    const-string v0, "ScheduleView"

    const-string v1, "onInterceptTouchEvent: FALSE (canScroll)"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 345
    :cond_7
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x3f000000

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v8

    if-lez v0, :cond_b

    .line 346
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->d()V

    .line 347
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 349
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    if-nez v0, :cond_8

    .line 350
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 352
    :cond_8
    iput-boolean v6, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->h:Z

    .line 353
    iput v7, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->e:F

    .line 354
    cmpl-float v0, v10, v12

    if-lez v0, :cond_a

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->f:F

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    .line 355
    invoke-direct {p0, v6}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->setScrollingCacheEnabled(Z)V

    .line 368
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->h:Z

    if-eqz v0, :cond_5

    .line 369
    invoke-direct {p0, v9}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a(F)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    .line 354
    :cond_a
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->f:F

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 356
    :cond_b
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c:I

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_9

    .line 357
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 358
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    if-eqz v0, :cond_9

    .line 359
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    .line 360
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->A:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    .line 361
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    .line 362
    if-eqz v0, :cond_9

    .line 363
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a()V

    goto :goto_3

    .line 377
    :sswitch_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c()V

    .line 378
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->d:F

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->e:F

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->f:F

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    .line 382
    invoke-static {p1, v2}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    .line 383
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/l;

    if-eqz v0, :cond_c

    .line 384
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->g()V

    .line 387
    :cond_c
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->f:F

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getAllDayListContainer()Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    move-result-object v1

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 388
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 389
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    sget v1, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a:I

    sget v2, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->b:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 395
    :sswitch_2
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 621
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->o:I

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->o:I

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->layout(IIII)V

    .line 625
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->o:I

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->s:I

    add-int/2addr v0, v1

    .line 627
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v5, v0, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->layout(IIII)V

    .line 630
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v5, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->layout(IIII)V

    .line 633
    return-void
.end method

.method public onMeasure(II)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000

    const/4 v4, 0x0

    .line 600
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 601
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 603
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->r:Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    iget v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->a:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move-object v0, p0

    move v3, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 607
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    iget v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->a:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    iget v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->b:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 611
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->t:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    iget v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->a:I

    sub-int v0, v6, v0

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 616
    invoke-virtual {p0, v6, v7}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->setMeasuredDimension(II)V

    .line 617
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v2

    .line 408
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->d()V

    .line 413
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 418
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 520
    :cond_2
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_3

    :cond_3
    move v2, v1

    .line 523
    goto :goto_0

    .line 420
    :pswitch_1
    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->h:Z

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->d:F

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->e:F

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->f:F

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    .line 425
    invoke-static {p1, v2}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    goto :goto_1

    .line 429
    :pswitch_2
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->h:Z

    if-nez v0, :cond_5

    .line 430
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 431
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 432
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->e:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 433
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 434
    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 436
    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_5

    cmpl-float v4, v5, v4

    if-lez v4, :cond_5

    .line 437
    iget-boolean v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    if-nez v4, :cond_4

    .line 438
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    invoke-virtual {p0, v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 440
    :cond_4
    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->h:Z

    .line 441
    iput v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->e:F

    .line 442
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->f:F

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->f:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_2
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    .line 443
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->setScrollingCacheEnabled(Z)V

    .line 447
    :cond_5
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->h:Z

    if-eqz v0, :cond_2

    .line 448
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 449
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 451
    iget-boolean v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    if-nez v4, :cond_7

    .line 452
    invoke-direct {p0, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a(F)Z

    move-result v0

    or-int/2addr v0, v2

    :goto_3
    move v2, v0

    .line 456
    goto/16 :goto_1

    .line 442
    :cond_6
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->f:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_2

    .line 454
    :cond_7
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a(FF)Z

    move-result v0

    or-int/2addr v0, v2

    goto :goto_3

    .line 459
    :pswitch_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 460
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    if-eqz v0, :cond_8

    .line 461
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    .line 462
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->A:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    .line 463
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    .line 464
    if-eqz v0, :cond_8

    .line 465
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->v:Lam/sunrise/android/calendar/ui/widgets/schedule/k;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    move-result-object v4

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getNewEventSlot()Ljava/util/Calendar;

    move-result-object v4

    invoke-interface {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/k;->b(Ljava/util/Calendar;)V

    .line 466
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a()V

    .line 470
    :cond_8
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->h:Z

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->j:Landroid/view/VelocityTracker;

    .line 472
    const/16 v3, 0x3e8

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->l:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 473
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    invoke-static {v0, v3}, Landroid/support/v4/view/af;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v3, v0

    .line 474
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->k:I

    if-le v0, v4, :cond_a

    .line 475
    if-gez v3, :cond_b

    move v0, v1

    .line 476
    :goto_4
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->k:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 478
    if-eqz v0, :cond_d

    .line 479
    mul-int/lit8 v0, v3, -0x1

    .line 481
    :goto_5
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/l;

    if-nez v3, :cond_9

    .line 482
    new-instance v3, Lam/sunrise/android/calendar/ui/widgets/schedule/l;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/l;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/l;

    .line 484
    :cond_9
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->m:Lam/sunrise/android/calendar/ui/widgets/schedule/l;

    invoke-virtual {v3, v2, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->b(II)V

    .line 486
    :cond_a
    iput v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    .line 487
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->f()V

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 475
    goto :goto_4

    .line 491
    :pswitch_4
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/j;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 492
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    if-eqz v0, :cond_c

    .line 493
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->x:Z

    .line 494
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->A:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    .line 495
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    .line 496
    if-eqz v0, :cond_c

    .line 497
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->a()V

    .line 501
    :cond_c
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->h:Z

    if-eqz v0, :cond_2

    .line 503
    iput v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    .line 504
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->f()V

    goto/16 :goto_1

    .line 508
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 509
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 510
    iput v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    .line 511
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    goto/16 :goto_1

    .line 515
    :pswitch_6
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a(Landroid/view/MotionEvent;)V

    .line 516
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->i:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g:F

    goto/16 :goto_1

    :cond_d
    move v0, v3

    goto :goto_5

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setOnEventClickListener(Lam/sunrise/android/calendar/ui/widgets/schedule/k;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->v:Lam/sunrise/android/calendar/ui/widgets/schedule/k;

    .line 100
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getAllDayEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/k;)V

    .line 101
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/k;)V

    .line 102
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->u:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 158
    return-void
.end method
