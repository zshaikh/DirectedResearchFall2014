.class public abstract Lcom/android/datetimepicker/date/k;
.super Landroid/view/View;
.source "MonthView.java"


# static fields
.field protected static a:I

.field protected static b:I

.field protected static c:I

.field protected static d:I

.field protected static e:I

.field protected static f:I

.field protected static g:I

.field protected static h:I

.field protected static i:F


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:I

.field protected E:I

.field protected F:I

.field protected G:I

.field protected H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private final K:Ljava/util/Formatter;

.field private final L:Ljava/lang/StringBuilder;

.field private final M:Ljava/util/Calendar;

.field private final N:Ljava/util/Calendar;

.field private final O:Lcom/android/datetimepicker/date/l;

.field private P:I

.field private Q:Lcom/android/datetimepicker/date/m;

.field private R:Z

.field private S:I

.field protected j:I

.field protected k:Landroid/graphics/Paint;

.field protected l:Landroid/graphics/Paint;

.field protected m:Landroid/graphics/Paint;

.field protected n:Landroid/graphics/Paint;

.field protected o:Landroid/graphics/Paint;

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:Z

.field protected x:I

.field protected y:I

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x20

    sput v0, Lcom/android/datetimepicker/date/k;->a:I

    .line 102
    const/16 v0, 0xa

    sput v0, Lcom/android/datetimepicker/date/k;->b:I

    .line 113
    const/4 v0, 0x1

    sput v0, Lcom/android/datetimepicker/date/k;->c:I

    .line 121
    const/4 v0, 0x0

    sput v0, Lcom/android/datetimepicker/date/k;->i:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 186
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 124
    iput v2, p0, Lcom/android/datetimepicker/date/k;->j:I

    .line 139
    iput v1, p0, Lcom/android/datetimepicker/date/k;->p:I

    .line 141
    iput v1, p0, Lcom/android/datetimepicker/date/k;->q:I

    .line 143
    iput v1, p0, Lcom/android/datetimepicker/date/k;->r:I

    .line 151
    sget v0, Lcom/android/datetimepicker/date/k;->a:I

    iput v0, p0, Lcom/android/datetimepicker/date/k;->v:I

    .line 153
    iput-boolean v2, p0, Lcom/android/datetimepicker/date/k;->w:Z

    .line 155
    iput v1, p0, Lcom/android/datetimepicker/date/k;->x:I

    .line 157
    iput v1, p0, Lcom/android/datetimepicker/date/k;->y:I

    .line 159
    iput v4, p0, Lcom/android/datetimepicker/date/k;->z:I

    .line 161
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/datetimepicker/date/k;->A:I

    .line 163
    iget v0, p0, Lcom/android/datetimepicker/date/k;->A:I

    iput v0, p0, Lcom/android/datetimepicker/date/k;->B:I

    .line 165
    iput v1, p0, Lcom/android/datetimepicker/date/k;->C:I

    .line 167
    iput v1, p0, Lcom/android/datetimepicker/date/k;->D:I

    .line 173
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/datetimepicker/date/k;->P:I

    .line 312
    iput v2, p0, Lcom/android/datetimepicker/date/k;->S:I

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/date/k;->N:Ljava/util/Calendar;

    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/date/k;->M:Ljava/util/Calendar;

    .line 193
    sget v1, Lcom/android/datetimepicker/i;->day_of_week_label_typeface:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/date/k;->I:Ljava/lang/String;

    .line 194
    sget v1, Lcom/android/datetimepicker/i;->sans_serif:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/date/k;->J:Ljava/lang/String;

    .line 196
    sget v1, Lcom/android/datetimepicker/d;->date_picker_text_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/k;->E:I

    .line 197
    sget v1, Lcom/android/datetimepicker/d;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/k;->F:I

    .line 198
    sget v1, Lcom/android/datetimepicker/d;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/k;->G:I

    .line 199
    sget v1, Lcom/android/datetimepicker/d;->circle_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/k;->H:I

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/android/datetimepicker/date/k;->L:Ljava/lang/StringBuilder;

    .line 202
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/datetimepicker/date/k;->L:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/datetimepicker/date/k;->K:Ljava/util/Formatter;

    .line 204
    sget v1, Lcom/android/datetimepicker/e;->day_number_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/datetimepicker/date/k;->d:I

    .line 205
    sget v1, Lcom/android/datetimepicker/e;->month_label_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/datetimepicker/date/k;->e:I

    .line 206
    sget v1, Lcom/android/datetimepicker/e;->month_day_label_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/datetimepicker/date/k;->f:I

    .line 207
    sget v1, Lcom/android/datetimepicker/e;->month_list_item_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/android/datetimepicker/date/k;->g:I

    .line 208
    sget v1, Lcom/android/datetimepicker/e;->day_number_select_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/datetimepicker/date/k;->h:I

    .line 211
    sget v1, Lcom/android/datetimepicker/e;->date_picker_view_animator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sget v1, Lcom/android/datetimepicker/date/k;->g:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/datetimepicker/date/k;->v:I

    .line 215
    new-instance v0, Lcom/android/datetimepicker/date/l;

    invoke-direct {v0, p0, p0}, Lcom/android/datetimepicker/date/l;-><init>(Lcom/android/datetimepicker/date/k;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/k;->O:Lcom/android/datetimepicker/date/l;

    .line 216
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->O:Lcom/android/datetimepicker/date/l;

    invoke-static {p0, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 217
    invoke-static {p0, v4}, Landroid/support/v4/view/ak;->b(Landroid/view/View;I)V

    .line 218
    iput-boolean v4, p0, Lcom/android/datetimepicker/date/k;->R:Z

    .line 221
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/k;->a()V

    .line 222
    return-void
.end method

.method static synthetic a(Lcom/android/datetimepicker/date/k;)I
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/datetimepicker/date/k;->e()I

    move-result v0

    return v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->Q:Lcom/android/datetimepicker/date/m;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->Q:Lcom/android/datetimepicker/date/m;

    new-instance v1, Lcom/android/datetimepicker/date/j;

    iget v2, p0, Lcom/android/datetimepicker/date/k;->t:I

    iget v3, p0, Lcom/android/datetimepicker/date/k;->s:I

    invoke-direct {v1, v2, v3, p1}, Lcom/android/datetimepicker/date/j;-><init>(III)V

    invoke-interface {v0, p0, v1}, Lcom/android/datetimepicker/date/m;->a(Lcom/android/datetimepicker/date/k;Lcom/android/datetimepicker/date/j;)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->O:Lcom/android/datetimepicker/date/l;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/datetimepicker/date/l;->a(II)Z

    .line 527
    return-void
.end method

.method static synthetic a(Lcom/android/datetimepicker/date/k;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/date/k;->a(I)V

    return-void
.end method

.method private a(ILandroid/text/format/Time;)Z
    .locals 2

    .prologue
    .line 388
    iget v0, p0, Lcom/android/datetimepicker/date/k;->t:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/date/k;->s:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/text/format/Time;->monthDay:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 417
    iget v0, p0, Lcom/android/datetimepicker/date/k;->u:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->j:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 418
    sget v1, Lcom/android/datetimepicker/date/k;->g:I

    sget v2, Lcom/android/datetimepicker/date/k;->f:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/android/datetimepicker/date/k;->e:I

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 419
    invoke-direct {p0}, Lcom/android/datetimepicker/date/k;->getMonthAndYearString()Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/datetimepicker/date/k;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 420
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x7

    .line 423
    sget v0, Lcom/android/datetimepicker/date/k;->g:I

    sget v1, Lcom/android/datetimepicker/date/k;->f:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 424
    iget v0, p0, Lcom/android/datetimepicker/date/k;->u:I

    iget v2, p0, Lcom/android/datetimepicker/date/k;->j:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/datetimepicker/date/k;->A:I

    mul-int/lit8 v2, v2, 0x2

    div-int v2, v0, v2

    .line 426
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/datetimepicker/date/k;->A:I

    if-ge v0, v3, :cond_0

    .line 427
    iget v3, p0, Lcom/android/datetimepicker/date/k;->z:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/datetimepicker/date/k;->A:I

    rem-int/2addr v3, v4

    .line 428
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/android/datetimepicker/date/k;->j:I

    add-int/2addr v4, v5

    .line 429
    iget-object v5, p0, Lcom/android/datetimepicker/date/k;->N:Ljava/util/Calendar;

    invoke-virtual {v5, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 430
    iget-object v3, p0, Lcom/android/datetimepicker/date/k;->N:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v7, v5, v6}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, p0, Lcom/android/datetimepicker/date/k;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_0
    return-void
.end method

.method private d()I
    .locals 3

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/datetimepicker/date/k;->e()I

    move-result v0

    .line 382
    iget v1, p0, Lcom/android/datetimepicker/date/k;->B:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/datetimepicker/date/k;->A:I

    div-int/2addr v1, v2

    .line 383
    iget v2, p0, Lcom/android/datetimepicker/date/k;->B:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/datetimepicker/date/k;->A:I

    rem-int/2addr v0, v2

    .line 384
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()I
    .locals 2

    .prologue
    .line 485
    iget v0, p0, Lcom/android/datetimepicker/date/k;->S:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->z:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/date/k;->S:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->A:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/android/datetimepicker/date/k;->z:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/datetimepicker/date/k;->S:I

    goto :goto_0
.end method

.method private getMonthAndYearString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 408
    const/16 v6, 0x34

    .line 410
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->L:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 411
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->M:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 412
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/k;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/date/k;->K:Ljava/util/Formatter;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(FF)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 498
    iget v0, p0, Lcom/android/datetimepicker/date/k;->j:I

    .line 499
    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/datetimepicker/date/k;->u:I

    iget v3, p0, Lcom/android/datetimepicker/date/k;->j:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 511
    :cond_1
    :goto_0
    return v0

    .line 503
    :cond_2
    sget v2, Lcom/android/datetimepicker/date/k;->g:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-int v2, v2

    iget v3, p0, Lcom/android/datetimepicker/date/k;->v:I

    div-int/2addr v2, v3

    .line 504
    int-to-float v3, v0

    sub-float v3, p1, v3

    iget v4, p0, Lcom/android/datetimepicker/date/k;->A:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/datetimepicker/date/k;->u:I

    sub-int v0, v4, v0

    iget v4, p0, Lcom/android/datetimepicker/date/k;->j:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float v0, v3, v0

    float-to-int v0, v0

    .line 506
    invoke-direct {p0}, Lcom/android/datetimepicker/date/k;->e()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    .line 507
    iget v3, p0, Lcom/android/datetimepicker/date/k;->A:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 508
    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    iget v2, p0, Lcom/android/datetimepicker/date/k;->B:I

    if-le v0, v2, :cond_1

    :cond_3
    move v0, v1

    .line 509
    goto :goto_0
.end method

.method protected a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 264
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/k;->l:Landroid/graphics/Paint;

    .line 265
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->l:Landroid/graphics/Paint;

    sget v1, Lcom/android/datetimepicker/date/k;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 268
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/datetimepicker/date/k;->J:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 269
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/k;->E:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 271
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/k;->m:Landroid/graphics/Paint;

    .line 274
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/k;->H:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 278
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 280
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/k;->n:Landroid/graphics/Paint;

    .line 281
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/k;->F:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 285
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 286
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->n:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 288
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/k;->o:Landroid/graphics/Paint;

    .line 289
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->o:Landroid/graphics/Paint;

    sget v1, Lcom/android/datetimepicker/date/k;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 291
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/k;->E:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/datetimepicker/date/k;->I:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 293
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 294
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 295
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 297
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/k;->k:Landroid/graphics/Paint;

    .line 298
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->k:Landroid/graphics/Paint;

    sget v1, Lcom/android/datetimepicker/date/k;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 300
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 302
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 303
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    .line 443
    iget v0, p0, Lcom/android/datetimepicker/date/k;->v:I

    sget v1, Lcom/android/datetimepicker/date/k;->d:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/datetimepicker/date/k;->c:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/datetimepicker/date/k;->g:I

    add-int v6, v0, v1

    .line 445
    iget v0, p0, Lcom/android/datetimepicker/date/k;->u:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->j:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/datetimepicker/date/k;->A:I

    mul-int/lit8 v1, v1, 0x2

    div-int v12, v0, v1

    .line 446
    invoke-direct {p0}, Lcom/android/datetimepicker/date/k;->e()I

    move-result v0

    .line 447
    const/4 v4, 0x1

    move v11, v0

    :goto_0
    iget v0, p0, Lcom/android/datetimepicker/date/k;->B:I

    if-gt v4, v0, :cond_1

    .line 448
    mul-int/lit8 v0, v11, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v12

    iget v1, p0, Lcom/android/datetimepicker/date/k;->j:I

    add-int v5, v0, v1

    .line 450
    iget v0, p0, Lcom/android/datetimepicker/date/k;->v:I

    sget v1, Lcom/android/datetimepicker/date/k;->d:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/datetimepicker/date/k;->c:I

    sub-int/2addr v0, v1

    .line 452
    sub-int v7, v5, v12

    .line 453
    add-int v8, v5, v12

    .line 454
    sub-int v9, v6, v0

    .line 455
    iget v0, p0, Lcom/android/datetimepicker/date/k;->v:I

    add-int v10, v9, v0

    .line 457
    iget v2, p0, Lcom/android/datetimepicker/date/k;->t:I

    iget v3, p0, Lcom/android/datetimepicker/date/k;->s:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/datetimepicker/date/k;->a(Landroid/graphics/Canvas;IIIIIIIII)V

    .line 459
    add-int/lit8 v0, v11, 0x1

    .line 460
    iget v1, p0, Lcom/android/datetimepicker/date/k;->A:I

    if-ne v0, v1, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 462
    iget v1, p0, Lcom/android/datetimepicker/date/k;->v:I

    add-int/2addr v6, v1

    .line 447
    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v11, v0

    goto :goto_0

    .line 465
    :cond_1
    return-void
.end method

.method public abstract a(Landroid/graphics/Canvas;IIIIIIIII)V
.end method

.method public a(Lcom/android/datetimepicker/date/j;)Z
    .locals 2

    .prologue
    .line 557
    iget v0, p1, Lcom/android/datetimepicker/date/j;->a:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->t:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/datetimepicker/date/j;->b:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->s:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/datetimepicker/date/j;->c:I

    iget v1, p0, Lcom/android/datetimepicker/date/k;->B:I

    if-le v0, v1, :cond_1

    .line 558
    :cond_0
    const/4 v0, 0x0

    .line 561
    :goto_0
    return v0

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->O:Lcom/android/datetimepicker/date/l;

    iget v1, p1, Lcom/android/datetimepicker/date/j;->c:I

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/l;->b(I)V

    .line 561
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/datetimepicker/date/k;->P:I

    .line 377
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/k;->requestLayout()V

    .line 378
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->O:Lcom/android/datetimepicker/date/l;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/l;->d()V

    .line 547
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->O:Lcom/android/datetimepicker/date/l;

    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/date/l;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAccessibilityFocus()Lcom/android/datetimepicker/date/j;
    .locals 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->O:Lcom/android/datetimepicker/date/l;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/l;->c()I

    move-result v1

    .line 535
    if-ltz v1, :cond_0

    .line 536
    new-instance v0, Lcom/android/datetimepicker/date/j;

    iget v2, p0, Lcom/android/datetimepicker/date/k;->t:I

    iget v3, p0, Lcom/android/datetimepicker/date/k;->s:I

    invoke-direct {v0, v2, v3, v1}, Lcom/android/datetimepicker/date/j;-><init>(III)V

    .line 538
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/date/k;->b(Landroid/graphics/Canvas;)V

    .line 308
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/date/k;->c(Landroid/graphics/Canvas;)V

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/datetimepicker/date/k;->a(Landroid/graphics/Canvas;)V

    .line 310
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 395
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/datetimepicker/date/k;->v:I

    iget v2, p0, Lcom/android/datetimepicker/date/k;->P:I

    mul-int/2addr v1, v2

    sget v2, Lcom/android/datetimepicker/date/k;->g:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/datetimepicker/date/k;->setMeasuredDimension(II)V

    .line 397
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 401
    iput p1, p0, Lcom/android/datetimepicker/date/k;->u:I

    .line 404
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->O:Lcom/android/datetimepicker/date/l;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/l;->b()V

    .line 405
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 250
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/datetimepicker/date/k;->a(FF)I

    move-result v0

    .line 251
    if-ltz v0, :cond_0

    .line 252
    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/k;->a(I)V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/datetimepicker/date/k;->R:Z

    if-nez v0, :cond_0

    .line 229
    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 231
    :cond_0
    return-void
.end method

.method public setMonthParams(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 325
    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "year"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "You must specify month and year for this view"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/datetimepicker/date/k;->setTag(Ljava/lang/Object;)V

    .line 330
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->v:I

    .line 332
    iget v0, p0, Lcom/android/datetimepicker/date/k;->v:I

    sget v2, Lcom/android/datetimepicker/date/k;->b:I

    if-ge v0, v2, :cond_1

    .line 333
    sget v0, Lcom/android/datetimepicker/date/k;->b:I

    iput v0, p0, Lcom/android/datetimepicker/date/k;->v:I

    .line 336
    :cond_1
    const-string v0, "selected_day"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    const-string v0, "selected_day"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->x:I

    .line 341
    :cond_2
    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->s:I

    .line 342
    const-string v0, "year"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->t:I

    .line 345
    new-instance v2, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 347
    iput-boolean v1, p0, Lcom/android/datetimepicker/date/k;->w:Z

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/datetimepicker/date/k;->y:I

    .line 350
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->M:Ljava/util/Calendar;

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/datetimepicker/date/k;->s:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 351
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->M:Ljava/util/Calendar;

    iget v3, p0, Lcom/android/datetimepicker/date/k;->t:I

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 352
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->M:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 353
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->M:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->S:I

    .line 355
    const-string v0, "week_start"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    const-string v0, "week_start"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->z:I

    .line 361
    :goto_0
    iget v0, p0, Lcom/android/datetimepicker/date/k;->s:I

    iget v3, p0, Lcom/android/datetimepicker/date/k;->t:I

    invoke-static {v0, v3}, Lcom/android/datetimepicker/j;->a(II)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->B:I

    move v0, v1

    .line 362
    :goto_1
    iget v1, p0, Lcom/android/datetimepicker/date/k;->B:I

    if-ge v0, v1, :cond_5

    .line 363
    add-int/lit8 v1, v0, 0x1

    .line 364
    invoke-direct {p0, v1, v2}, Lcom/android/datetimepicker/date/k;->a(ILandroid/text/format/Time;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 365
    iput-boolean v5, p0, Lcom/android/datetimepicker/date/k;->w:Z

    .line 366
    iput v1, p0, Lcom/android/datetimepicker/date/k;->y:I

    .line 362
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->M:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->z:I

    goto :goto_0

    .line 369
    :cond_5
    invoke-direct {p0}, Lcom/android/datetimepicker/date/k;->d()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/k;->P:I

    .line 372
    iget-object v0, p0, Lcom/android/datetimepicker/date/k;->O:Lcom/android/datetimepicker/date/l;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/l;->b()V

    .line 373
    return-void
.end method

.method public setOnDayClickListener(Lcom/android/datetimepicker/date/m;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/datetimepicker/date/k;->Q:Lcom/android/datetimepicker/date/m;

    .line 235
    return-void
.end method
