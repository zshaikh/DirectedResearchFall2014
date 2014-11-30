.class public Lam/sunrise/android/calendar/ui/widgets/schedule/r;
.super Landroid/view/View;
.source "ScheduleViewBaseItem.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private A:I

.field private B:Landroid/text/StaticLayout;

.field private C:Ljava/util/Calendar;

.field private D:Z

.field private E:Landroid/content/BroadcastReceiver;

.field protected a:Ljava/util/Calendar;

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/widgets/schedule/ab;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Z

.field d:I

.field e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:F

.field private j:F

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/Paint;

.field private m:F

.field private n:Landroid/graphics/Rect;

.field private o:Lam/sunrise/android/calendar/ui/widgets/schedule/t;

.field private p:I

.field private q:Lam/sunrise/android/calendar/ui/widgets/schedule/u;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Landroid/graphics/Typeface;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->n:Landroid/graphics/Rect;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->p:I

    .line 103
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/schedule/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/v;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/r;Lam/sunrise/android/calendar/ui/widgets/schedule/s;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->E:Landroid/content/BroadcastReceiver;

    .line 107
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->f()V

    .line 108
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/schedule/r;)Lam/sunrise/android/calendar/ui/widgets/schedule/t;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->o:Lam/sunrise/android/calendar/ui/widgets/schedule/t;

    return-object v0
.end method

.method private static b(FF)F
    .locals 1

    .prologue
    .line 141
    rem-float v0, p0, p1

    sub-float v0, p0, v0

    return v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/schedule/r;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->e()V

    return-void
.end method

.method private c(FF)I
    .locals 2

    .prologue
    .line 383
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 384
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    .line 385
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :goto_1
    return v1

    .line 383
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 389
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private c()V
    .locals 3

    .prologue
    .line 318
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->d()V

    .line 319
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/schedule/u;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->b:Ljava/util/ArrayList;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->p:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    invoke-direct {v1, p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/u;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/r;Lam/sunrise/android/calendar/ui/widgets/schedule/ab;)V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->q:Lam/sunrise/android/calendar/ui/widgets/schedule/u;

    .line 320
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->q:Lam/sunrise/android/calendar/ui/widgets/schedule/u;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->q:Lam/sunrise/android/calendar/ui/widgets/schedule/u;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->q:Lam/sunrise/android/calendar/ui/widgets/schedule/u;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->q:Lam/sunrise/android/calendar/ui/widgets/schedule/u;

    .line 328
    :cond_0
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    .line 333
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->D:Z

    .line 334
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->D:Z

    .line 335
    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->D:Z

    if-eq v0, v3, :cond_4

    move v0, v1

    :goto_0
    or-int/2addr v0, v2

    .line 337
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a:Ljava/util/Calendar;

    if-eqz v3, :cond_2

    .line 338
    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->c:Z

    .line 339
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a:Ljava/util/Calendar;

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v4

    iput-boolean v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->c:Z

    .line 340
    iget-boolean v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->c:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->c:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    or-int/2addr v0, v2

    .line 343
    :cond_2
    if-eqz v0, :cond_3

    .line 344
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 346
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 335
    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->setWillNotDraw(Z)V

    .line 352
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->f:I

    .line 354
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->m:F

    .line 358
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->l:Landroid/graphics/Paint;

    .line 359
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 360
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 361
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->l:Landroid/graphics/Paint;

    const v2, 0x7f0c002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 363
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->g:I

    .line 365
    const v1, 0x7f0c010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->r:I

    .line 366
    const v1, 0x7f0c010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->d:I

    .line 367
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->d:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->e:I

    .line 368
    const v1, 0x7f0c011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->s:I

    .line 369
    const v1, 0x7f0c010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->t:I

    .line 370
    const v1, 0x7f0c011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->u:I

    .line 371
    const v1, 0x7f0c011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->v:I

    .line 373
    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->w:I

    .line 374
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->x:Landroid/graphics/Typeface;

    .line 375
    const v1, 0x7f0c0112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->y:I

    .line 376
    const v1, 0x7f0c0111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->z:I

    .line 377
    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->A:I

    .line 379
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->e()V

    .line 380
    return-void
.end method

.method private setOccurrencePressed(I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 299
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->p:I

    .line 300
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->p:I

    .line 301
    if-eq v0, v4, :cond_0

    .line 302
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    .line 303
    const/4 v1, 0x0

    iput v1, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->y:I

    .line 304
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-static {p0, v1, v2, v3, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;IIII)V

    .line 308
    :cond_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->p:I

    if-eq v0, v4, :cond_1

    .line 309
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->b:Ljava/util/ArrayList;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->p:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    .line 310
    const/4 v1, 0x1

    iput v1, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->y:I

    .line 311
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->D:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-static {p0, v1, v2, v3, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;IIII)V

    .line 315
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->h:Z

    .line 177
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method public a(FF)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/16 v4, 0xc

    const/4 v1, 0x1

    .line 145
    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->h:Z

    .line 147
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->i:F

    .line 149
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->g:I

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    sub-float v0, p2, v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->j:F

    .line 150
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->j:F

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->j:F

    .line 151
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->j:F

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getMeasuredHeight()I

    move-result v3

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->r:I

    sub-int/2addr v3, v5

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->d:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->j:F

    .line 153
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->j:F

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->d:I

    int-to-float v3, v3

    const/high16 v5, 0x40800000

    div-float/2addr v3, v5

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->b(FF)F

    move-result v0

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->r:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getMeasuredHeight()I

    move-result v3

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->r:I

    sub-int/2addr v3, v5

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->d:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->j:F

    .line 156
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->C:Ljava/util/Calendar;

    .line 157
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->C:Ljava/util/Calendar;

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->j:F

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->r:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->e:I

    int-to-float v5, v5

    const/high16 v6, 0x41f00000

    div-float/2addr v5, v6

    div-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 159
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->D:Z

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "%02d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->C:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->C:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->k:Ljava/lang/String;

    .line 172
    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 173
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->C:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 164
    :goto_1
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->C:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 165
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    move v3, v4

    .line 168
    :cond_1
    const-string v5, "%d:%02d %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->C:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    if-eqz v0, :cond_3

    const-string v0, "AM"

    :goto_2
    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->k:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 163
    goto :goto_1

    .line 168
    :cond_3
    const-string v0, "PM"

    goto :goto_2
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 181
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->h:Z

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->B:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    .line 189
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->t:I

    int-to-float v1, v0

    .line 190
    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->j:F

    .line 191
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->t:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 192
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->d:I

    int-to-float v4, v2

    .line 194
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->l:Landroid/graphics/Paint;

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->w:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->s:I

    int-to-float v2, v2

    add-float/2addr v2, v6

    add-float v3, v1, v0

    add-float v0, v6, v4

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->s:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 199
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->u:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->v:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->v:I

    int-to-float v3, v3

    add-float/2addr v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 200
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->B:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 201
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 203
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->l:Landroid/graphics/Paint;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->A:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->l:Landroid/graphics/Paint;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->z:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 205
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->l:Landroid/graphics/Paint;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->x:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 206
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->l:Landroid/graphics/Paint;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->k:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->k:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 207
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->k:Ljava/lang/String;

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->y:I

    int-to-float v2, v2

    sub-float v2, v6, v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Calendar;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/widgets/schedule/ab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a:Ljava/util/Calendar;

    .line 134
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->c:Z

    .line 135
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->b:Ljava/util/ArrayList;

    .line 136
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->d()V

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->p:I

    .line 138
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Z
    .locals 5

    .prologue
    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 393
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return v3

    .line 397
    :cond_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->f:I

    add-int/lit8 v0, v0, -0x1

    .line 398
    if-ge v0, v2, :cond_1

    move v0, v1

    .line 402
    :cond_1
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    move v0, v2

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public getDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a:Ljava/util/Calendar;

    return-object v0
.end method

.method public getNewEventSlot()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->C:Ljava/util/Calendar;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 215
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 217
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 220
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->E:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->E:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->E:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 228
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->d()V

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->p:I

    .line 231
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 233
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 236
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 286
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->B:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 288
    new-instance v0, Landroid/text/StaticLayout;

    const v1, 0x7f0f00f2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->m:F

    const v4, 0x7f0a00b9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->z:I

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->x:Landroid/graphics/Typeface;

    invoke-static {v3, v2, v4, v5}, Lam/sunrise/android/calendar/ui/widgets/an;->a(FIILandroid/graphics/Typeface;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->t:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->u:I

    sub-int/2addr v3, v4

    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->v:I

    sub-int/2addr v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->B:Landroid/text/StaticLayout;

    .line 296
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 407
    invoke-static {p2}, Lam/sunrise/android/calendar/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->f:I

    .line 409
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 411
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v7, -0x1

    .line 242
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v1

    .line 280
    :goto_0
    return v0

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    move v0, v1

    .line 280
    goto :goto_0

    .line 253
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->c(FF)I

    move-result v0

    .line 254
    if-eq v0, v7, :cond_1

    .line 255
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->setOccurrencePressed(I)V

    move v0, v2

    .line 256
    goto :goto_0

    .line 261
    :pswitch_2
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->p:I

    if-eq v0, v7, :cond_1

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->c(FF)I

    move-result v0

    .line 263
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->p:I

    if-ne v0, v3, :cond_2

    .line 264
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->c()V

    .line 265
    const-string v3, "INTERACTIVE"

    const-string v4, "onOccurrencePressed!! title=%s"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->b:Ljava/util/ArrayList;

    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->p:I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->n:Ljava/lang/String;

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_2
    invoke-direct {p0, v7}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->setOccurrencePressed(I)V

    move v0, v2

    .line 268
    goto :goto_0

    .line 273
    :pswitch_3
    invoke-direct {p0, v7}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->setOccurrencePressed(I)V

    move v0, v2

    .line 274
    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setOnOccurrenceClickListener(Lam/sunrise/android/calendar/ui/widgets/schedule/t;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->o:Lam/sunrise/android/calendar/ui/widgets/schedule/t;

    .line 126
    return-void
.end method
