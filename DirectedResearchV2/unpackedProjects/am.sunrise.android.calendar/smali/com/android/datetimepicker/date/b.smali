.class public Lcom/android/datetimepicker/date/b;
.super Landroid/support/v4/app/e;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/datetimepicker/date/a;


# static fields
.field private static a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/text/SimpleDateFormat;


# instance fields
.field private final c:Ljava/util/Calendar;

.field private d:Lcom/android/datetimepicker/date/e;

.field private e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/datetimepicker/date/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/android/datetimepicker/date/f;

.field private m:Lcom/android/datetimepicker/date/q;

.field private n:Landroid/widget/Button;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/android/datetimepicker/a;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/datetimepicker/date/b;->a:Ljava/text/SimpleDateFormat;

    .line 78
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/datetimepicker/date/b;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/support/v4/app/e;-><init>()V

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->e:Ljava/util/HashSet;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/datetimepicker/date/b;->o:I

    .line 97
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/b;->p:I

    .line 98
    const/16 v0, 0x76c

    iput v0, p0, Lcom/android/datetimepicker/date/b;->q:I

    .line 99
    const/16 v0, 0x834

    iput v0, p0, Lcom/android/datetimepicker/date/b;->r:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/date/b;->t:Z

    .line 137
    return-void
.end method

.method public static a(Lcom/android/datetimepicker/date/e;III)Lcom/android/datetimepicker/date/b;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/android/datetimepicker/date/b;

    invoke-direct {v0}, Lcom/android/datetimepicker/date/b;-><init>()V

    .line 149
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/datetimepicker/date/b;->b(Lcom/android/datetimepicker/date/e;III)V

    .line 150
    return-object v0
.end method

.method static synthetic a(Lcom/android/datetimepicker/date/b;)Lcom/android/datetimepicker/date/e;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->d:Lcom/android/datetimepicker/date/e;

    return-object v0
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 333
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->j:Landroid/widget/TextView;

    sget-object v1, Lcom/android/datetimepicker/date/b;->b:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->k:Landroid/widget/TextView;

    sget-object v1, Lcom/android/datetimepicker/date/b;->a:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 345
    iget-object v2, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v2, v0, v1}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    .line 346
    const/16 v2, 0x18

    .line 347
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 348
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 350
    if-eqz p1, :cond_1

    .line 351
    const/16 v2, 0x14

    .line 352
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 355
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/datetimepicker/date/b;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    return-object v0
.end method

.method private b(II)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 388
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 389
    invoke-static {p1, p2}, Lcom/android/datetimepicker/j;->a(II)I

    move-result v1

    .line 390
    if-le v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 393
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 9

    .prologue
    const-wide/16 v7, 0x1f4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 286
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 288
    packed-switch p1, :pswitch_data_0

    .line 330
    :goto_0
    return-void

    .line 290
    :pswitch_0
    iget-object v2, p0, Lcom/android/datetimepicker/date/b;->h:Landroid/widget/LinearLayout;

    const v3, 0x3f666666

    const v4, 0x3f866666

    invoke-static {v2, v3, v4}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 292
    iget-boolean v3, p0, Lcom/android/datetimepicker/date/b;->t:Z

    if-eqz v3, :cond_0

    .line 293
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 294
    iput-boolean v5, p0, Lcom/android/datetimepicker/date/b;->t:Z

    .line 296
    :cond_0
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->l:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v3}, Lcom/android/datetimepicker/date/f;->a()V

    .line 297
    iget v3, p0, Lcom/android/datetimepicker/date/b;->o:I

    if-eq v3, p1, :cond_1

    .line 298
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 299
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 300
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v3, v5}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 301
    iput p1, p0, Lcom/android/datetimepicker/date/b;->o:I

    .line 303
    :cond_1
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 305
    const/16 v2, 0x10

    .line 306
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v2, p0, Lcom/android/datetimepicker/date/b;->k:Landroid/widget/TextView;

    const v3, 0x3f59999a

    const v4, 0x3f8ccccd

    invoke-static {v2, v3, v4}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 312
    iget-boolean v3, p0, Lcom/android/datetimepicker/date/b;->t:Z

    if-eqz v3, :cond_2

    .line 313
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 314
    iput-boolean v5, p0, Lcom/android/datetimepicker/date/b;->t:Z

    .line 316
    :cond_2
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->m:Lcom/android/datetimepicker/date/q;

    invoke-virtual {v3}, Lcom/android/datetimepicker/date/q;->a()V

    .line 317
    iget v3, p0, Lcom/android/datetimepicker/date/b;->o:I

    if-eq v3, p1, :cond_3

    .line 318
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 319
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 320
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v3, v6}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 321
    iput p1, p0, Lcom/android/datetimepicker/date/b;->o:I

    .line 323
    :cond_3
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 325
    sget-object v2, Lcom/android/datetimepicker/date/b;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private f()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 425
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/date/d;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/d;->a()V

    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/android/datetimepicker/date/j;
    .locals 2

    .prologue
    .line 433
    new-instance v0, Lcom/android/datetimepicker/date/j;

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/android/datetimepicker/date/j;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 407
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/datetimepicker/date/b;->b(II)V

    .line 408
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 409
    invoke-direct {p0}, Lcom/android/datetimepicker/date/b;->f()V

    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/b;->c(I)V

    .line 411
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/date/b;->a(Z)V

    .line 412
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 369
    if-gt p2, p1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Year end must be larger than year start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iput p1, p0, Lcom/android/datetimepicker/date/b;->q:I

    .line 373
    iput p2, p0, Lcom/android/datetimepicker/date/b;->r:I

    .line 374
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->l:Lcom/android/datetimepicker/date/f;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->l:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/f;->b()V

    .line 377
    :cond_1
    return-void
.end method

.method public a(III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 416
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 417
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 418
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 419
    invoke-direct {p0}, Lcom/android/datetimepicker/date/b;->f()V

    .line 420
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/date/b;->a(Z)V

    .line 421
    return-void
.end method

.method public a(Lcom/android/datetimepicker/date/d;)V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 454
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/android/datetimepicker/date/b;->p:I

    return v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 358
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be between Calendar.SUNDAY and Calendar.SATURDAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_1
    iput p1, p0, Lcom/android/datetimepicker/date/b;->p:I

    .line 363
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->l:Lcom/android/datetimepicker/date/f;

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->l:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/f;->b()V

    .line 366
    :cond_2
    return-void
.end method

.method public b(Lcom/android/datetimepicker/date/e;III)V
    .locals 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/datetimepicker/date/b;->d:Lcom/android/datetimepicker/date/e;

    .line 155
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 156
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 157
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 158
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/android/datetimepicker/date/b;->q:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/android/datetimepicker/date/b;->r:I

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->s:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->c()V

    .line 464
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->e()V

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/datetimepicker/g;->date_picker_year:I

    if-ne v0, v1, :cond_1

    .line 399
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/b;->c(I)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/datetimepicker/g;->date_picker_month_and_day:I

    if-ne v0, v1, :cond_0

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/b;->c(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/support/v4/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 166
    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    const-string v2, "year"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 168
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    const-string v2, "month"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 169
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    const-string v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 171
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    .line 196
    const-string v0, "DatePickerDialog"

    const-string v1, "onCreateView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 199
    sget v0, Lcom/android/datetimepicker/h;->date_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 201
    sget v0, Lcom/android/datetimepicker/g;->date_picker_header:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->g:Landroid/widget/TextView;

    .line 202
    sget v0, Lcom/android/datetimepicker/g;->date_picker_month_and_day:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->h:Landroid/widget/LinearLayout;

    .line 203
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    sget v0, Lcom/android/datetimepicker/g;->date_picker_month:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->i:Landroid/widget/TextView;

    .line 205
    sget v0, Lcom/android/datetimepicker/g;->date_picker_day:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->j:Landroid/widget/TextView;

    .line 206
    sget v0, Lcom/android/datetimepicker/g;->date_picker_year:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->k:Landroid/widget/TextView;

    .line 207
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const/4 v2, -0x1

    .line 210
    const/4 v1, 0x0

    .line 211
    const/4 v0, 0x0

    .line 212
    if-eqz p3, :cond_2

    .line 213
    const-string v0, "week_start"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/b;->p:I

    .line 214
    const-string v0, "year_start"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/b;->q:I

    .line 215
    const-string v0, "year_end"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/b;->r:I

    .line 216
    const-string v0, "current_view"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 217
    const-string v1, "list_position"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 218
    const-string v1, "list_position_offset"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move v3, v2

    move v2, v1

    move v1, v0

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v5

    .line 222
    new-instance v0, Lcom/android/datetimepicker/date/n;

    invoke-direct {v0, v5, p0}, Lcom/android/datetimepicker/date/n;-><init>(Landroid/content/Context;Lcom/android/datetimepicker/date/a;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->l:Lcom/android/datetimepicker/date/f;

    .line 223
    new-instance v0, Lcom/android/datetimepicker/date/q;

    invoke-direct {v0, v5, p0}, Lcom/android/datetimepicker/date/q;-><init>(Landroid/content/Context;Lcom/android/datetimepicker/date/a;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->m:Lcom/android/datetimepicker/date/q;

    .line 225
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 226
    sget v6, Lcom/android/datetimepicker/i;->day_picker_description:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/datetimepicker/date/b;->u:Ljava/lang/String;

    .line 227
    sget v6, Lcom/android/datetimepicker/i;->select_day:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/datetimepicker/date/b;->v:Ljava/lang/String;

    .line 228
    sget v6, Lcom/android/datetimepicker/i;->year_picker_description:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/datetimepicker/date/b;->w:Ljava/lang/String;

    .line 229
    sget v6, Lcom/android/datetimepicker/i;->select_year:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->x:Ljava/lang/String;

    .line 231
    sget v0, Lcom/android/datetimepicker/g;->animator:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    .line 232
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v6, p0, Lcom/android/datetimepicker/date/b;->l:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v0, v6}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v6, p0, Lcom/android/datetimepicker/date/b;->m:Lcom/android/datetimepicker/date/q;

    invoke-virtual {v0, v6}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 234
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v6, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    .line 236
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 237
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 238
    iget-object v6, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v6, v0}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 240
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 241
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 242
    iget-object v6, p0, Lcom/android/datetimepicker/date/b;->f:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v6, v0}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 244
    sget v0, Lcom/android/datetimepicker/g;->done:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->n:Landroid/widget/Button;

    .line 245
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->n:Landroid/widget/Button;

    new-instance v6, Lcom/android/datetimepicker/date/c;

    invoke-direct {v6, p0}, Lcom/android/datetimepicker/date/c;-><init>(Lcom/android/datetimepicker/date/b;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/b;->a(Z)V

    .line 259
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/date/b;->c(I)V

    .line 261
    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    .line 262
    if-nez v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->l:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v0, v3}, Lcom/android/datetimepicker/date/f;->a(I)V

    .line 269
    :cond_0
    :goto_1
    new-instance v0, Lcom/android/datetimepicker/a;

    invoke-direct {v0, v5}, Lcom/android/datetimepicker/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->s:Lcom/android/datetimepicker/a;

    .line 270
    return-object v4

    .line 264
    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->m:Lcom/android/datetimepicker/date/q;

    invoke-virtual {v0, v3, v2}, Lcom/android/datetimepicker/date/q;->a(II)V

    goto :goto_1

    :cond_2
    move v3, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Landroid/support/v4/app/e;->onPause()V

    .line 282
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->s:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->b()V

    .line 283
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Landroid/support/v4/app/e;->onResume()V

    .line 276
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->s:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->a()V

    .line 277
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 175
    invoke-super {p0, p1}, Landroid/support/v4/app/e;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    const-string v0, "year"

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string v0, "month"

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const-string v0, "day"

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v0, "week_start"

    iget v1, p0, Lcom/android/datetimepicker/date/b;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v0, "year_start"

    iget v1, p0, Lcom/android/datetimepicker/date/b;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string v0, "year_end"

    iget v1, p0, Lcom/android/datetimepicker/date/b;->r:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v0, "current_view"

    iget v1, p0, Lcom/android/datetimepicker/date/b;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const/4 v0, -0x1

    .line 184
    iget v1, p0, Lcom/android/datetimepicker/date/b;->o:I

    if-nez v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->l:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/f;->getMostVisiblePosition()I

    move-result v0

    .line 190
    :cond_0
    :goto_0
    const-string v1, "list_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    return-void

    .line 186
    :cond_1
    iget v1, p0, Lcom/android/datetimepicker/date/b;->o:I

    if-ne v1, v3, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->m:Lcom/android/datetimepicker/date/q;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/q;->getFirstVisiblePosition()I

    move-result v0

    .line 188
    const-string v1, "list_position_offset"

    iget-object v2, p0, Lcom/android/datetimepicker/date/b;->m:Lcom/android/datetimepicker/date/q;

    invoke-virtual {v2}, Lcom/android/datetimepicker/date/q;->getFirstPositionOffset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
