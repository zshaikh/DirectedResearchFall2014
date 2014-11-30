.class public Lam/sunrise/android/calendar/ui/event/s;
.super Lam/sunrise/android/calendar/ui/b/d;
.source "RecurringRuleEditorDialog.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/widgets/af;


# static fields
.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private a:Ljava/lang/String;

.field private e:Landroid/widget/ViewFlipper;

.field private f:[Landroid/widget/CheckedTextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Lam/sunrise/android/calendar/b/e;

.field private j:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

.field private k:I

.field private l:I

.field private m:Ljava/util/Calendar;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lam/sunrise/android/calendar/ui/event/s;->b:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lam/sunrise/android/calendar/ui/event/s;->c:[I

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lam/sunrise/android/calendar/ui/event/s;->d:[I

    return-void

    .line 61
    :array_0
    .array-data 4
        0x7f0b0103
        0x7f0b0104
        0x7f0b0105
        0x7f0b0106
        0x7f0b0107
        0x7f0b0108
    .end array-data

    .line 70
    :array_1
    .array-data 4
        0x0
        0x4
        0x5
        0x5
        0x6
        0x7
    .end array-data

    .line 84
    :array_2
    .array-data 4
        0x7f0f011e
        0x7f0f0128
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/d;-><init>()V

    .line 115
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->i:Lam/sunrise/android/calendar/b/e;

    .line 116
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/s;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/s;->k()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/s;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/s;->a(Ljava/util/Calendar;)V

    return-void
.end method

.method public static a(Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-string v1, "am.sunrise.android.calendar.extra.RRULE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v1, Lam/sunrise/android/calendar/ui/event/s;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/s;-><init>()V

    const-string v2, "RecurringRuleEditorDialog"

    invoke-static {p0, v1, p1, v0, v2}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private a(Ljava/util/Calendar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/s;->m:Ljava/util/Calendar;

    .line 311
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/event/s;->n:Z

    .line 313
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/s;->m:Ljava/util/Calendar;

    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/event/s;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-direct {p0, v2}, Lam/sunrise/android/calendar/ui/event/s;->g(I)V

    .line 316
    return-void
.end method

.method private b(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 437
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/s;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const v3, 0x80016

    invoke-static {v0, v1, v2, v3}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/s;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/s;->l()V

    return-void
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/event/s;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/s;->i()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 257
    const v0, 0x7f0f0048

    const/16 v1, 0x7e8

    new-instance v2, Lam/sunrise/android/calendar/ui/event/x;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/event/x;-><init>(Lam/sunrise/android/calendar/ui/event/s;)V

    invoke-virtual {p0, v0, v1, v2}, Lam/sunrise/android/calendar/ui/event/s;->a(IILandroid/view/View$OnClickListener;)V

    .line 263
    return-void
.end method

.method private g(I)V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 412
    if-ne v0, p1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 416
    :cond_0
    if-ge v0, p1, :cond_1

    .line 417
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/s;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const v2, 0x7f040012

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 418
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/s;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const v2, 0x7f040013

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 424
    :goto_1
    sget-object v0, Lam/sunrise/android/calendar/ui/event/s;->d:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/s;->b(I)V

    .line 426
    if-nez p1, :cond_2

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/s;->b(Ljava/lang/CharSequence;)V

    .line 428
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/s;->g()V

    .line 433
    :goto_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/s;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const v2, 0x7f040011

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 421
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/s;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const v2, 0x7f040014

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_1

    .line 430
    :cond_2
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/s;->h()V

    goto :goto_2
.end method

.method private h()V
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0x7e8

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/s;->d(I)V

    .line 267
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/s;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lam/sunrise/android/calendar/ui/event/y;

    if-eqz v1, :cond_0

    .line 273
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/s;->n()V

    .line 274
    check-cast v0, Lam/sunrise/android/calendar/ui/event/y;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/s;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/event/y;->b(Ljava/lang/String;)V

    .line 277
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/s;->dismiss()V

    .line 278
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->f:[Landroid/widget/CheckedTextView;

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/s;->k:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 282
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->f:[Landroid/widget/CheckedTextView;

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/s;->k:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/s;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 284
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/s;->n:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->h:Landroid/widget/TextView;

    const v1, 0x7f0f00c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 286
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 287
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 288
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/s;->j:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Ljava/util/Calendar;)V

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/s;->m:Ljava/util/Calendar;

    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/event/s;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->j:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/s;->m:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 296
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/s;->n:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 299
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/s;->j:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Ljava/util/Calendar;)V

    .line 300
    const v0, 0x7f0f00c2

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/s;->c(I)V

    .line 306
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/s;->g(I)V

    .line 307
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->j:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/s;->m:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Ljava/util/Calendar;)V

    .line 303
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->m:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/s;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/s;->b(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->m:Ljava/util/Calendar;

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/s;->n:Z

    .line 322
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->h:Landroid/widget/TextView;

    const v1, 0x7f0f00c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/s;->g(I)V

    .line 325
    return-void
.end method

.method private m()V
    .locals 7

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 328
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/s;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iput v6, p0, Lam/sunrise/android/calendar/ui/event/s;->k:I

    .line 330
    iput v6, p0, Lam/sunrise/android/calendar/ui/event/s;->l:I

    .line 331
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/event/s;->m:Ljava/util/Calendar;

    .line 332
    iput-boolean v5, p0, Lam/sunrise/android/calendar/ui/event/s;->n:Z

    .line 383
    :goto_0
    return-void

    .line 337
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/a/b;

    invoke-direct {v1}, Lcom/android/a/b;-><init>()V

    .line 338
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/a/b;->a(Ljava/lang/String;)V

    .line 340
    iget v2, v1, Lcom/android/a/b;->e:I

    iput v2, p0, Lam/sunrise/android/calendar/ui/event/s;->l:I

    .line 341
    iget v2, v1, Lcom/android/a/b;->b:I

    packed-switch v2, :pswitch_data_0

    .line 363
    :goto_1
    iget-object v0, v1, Lcom/android/a/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/s;->n:Z

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->m:Ljava/util/Calendar;
    :try_end_0
    .catch Lcom/android/a/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    const-string v1, "RecurringRuleEditorDialog"

    const-string v2, "extractRRule -- Exception: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/a/d;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    invoke-virtual {v0}, Lcom/android/a/d;->printStackTrace()V

    .line 381
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->f:[Landroid/widget/CheckedTextView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 343
    :pswitch_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lam/sunrise/android/calendar/ui/event/s;->k:I

    goto :goto_1

    .line 347
    :pswitch_1
    iget v2, p0, Lam/sunrise/android/calendar/ui/event/s;->l:I

    if-ne v2, v0, :cond_1

    const/4 v0, 0x3

    :cond_1
    iput v0, p0, Lam/sunrise/android/calendar/ui/event/s;->k:I

    goto :goto_1

    .line 351
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/s;->k:I

    goto :goto_1

    .line 355
    :pswitch_3
    const/4 v0, 0x5

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/s;->k:I
    :try_end_1
    .catch Lcom/android/a/d; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 368
    :cond_2
    :try_start_2
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 369
    iget-object v1, v1, Lcom/android/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 370
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->m:Ljava/util/Calendar;
    :try_end_2
    .catch Landroid/util/TimeFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/a/d; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 371
    :catch_1
    move-exception v0

    .line 372
    :try_start_3
    invoke-virtual {v0}, Landroid/util/TimeFormatException;->printStackTrace()V

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/s;->n:Z

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->m:Ljava/util/Calendar;
    :try_end_3
    .catch Lcom/android/a/d; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 386
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/s;->k:I

    if-nez v0, :cond_0

    .line 387
    iput-object v3, p0, Lam/sunrise/android/calendar/ui/event/s;->a:Ljava/lang/String;

    .line 408
    :goto_0
    return-void

    .line 391
    :cond_0
    new-instance v0, Lcom/android/a/b;

    invoke-direct {v0}, Lcom/android/a/b;-><init>()V

    .line 393
    sget-object v1, Lam/sunrise/android/calendar/ui/event/s;->c:[I

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/s;->k:I

    aget v1, v1, v2

    iput v1, v0, Lcom/android/a/b;->b:I

    .line 394
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/s;->l:I

    iput v1, v0, Lcom/android/a/b;->e:I

    .line 396
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/s;->n:Z

    if-eqz v1, :cond_1

    .line 397
    iput-object v3, v0, Lcom/android/a/b;->c:Ljava/lang/String;

    .line 407
    :goto_1
    invoke-virtual {v0}, Lcom/android/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->a:Ljava/lang/String;

    goto :goto_0

    .line 399
    :cond_1
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 400
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/s;->m:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 401
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/text/format/Time;->allDay:Z

    .line 402
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/format/Time;->second:I

    iput v2, v1, Landroid/text/format/Time;->minute:I

    iput v2, v1, Landroid/text/format/Time;->hour:I

    .line 404
    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/a/b;->c:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 127
    const v0, 0x7f03005f

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 129
    const v0, 0x7f0b005e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->e:Landroid/widget/ViewFlipper;

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    .line 132
    const v0, 0x7f0b0102

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 133
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 134
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 137
    :cond_0
    const v0, 0x7f0b0109

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->g:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->g:Landroid/view/View;

    new-instance v3, Lam/sunrise/android/calendar/ui/event/t;

    invoke-direct {v3, p0}, Lam/sunrise/android/calendar/ui/event/t;-><init>(Lam/sunrise/android/calendar/ui/event/s;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v0, 0x7f0b010a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->h:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/s;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 148
    sget-object v0, Lam/sunrise/android/calendar/ui/event/s;->b:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->f:[Landroid/widget/CheckedTextView;

    .line 149
    :goto_0
    sget-object v0, Lam/sunrise/android/calendar/ui/event/s;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 150
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/s;->f:[Landroid/widget/CheckedTextView;

    sget-object v0, Lam/sunrise/android/calendar/ui/event/s;->b:[I

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    aput-object v0, v3, v1

    .line 151
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->f:[Landroid/widget/CheckedTextView;

    aget-object v0, v0, v1

    const v3, 0x7f0b0016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/CheckedTextView;->setTag(ILjava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->f:[Landroid/widget/CheckedTextView;

    aget-object v0, v0, v1

    new-instance v3, Lam/sunrise/android/calendar/ui/event/u;

    invoke-direct {v3, p0}, Lam/sunrise/android/calendar/ui/event/u;-><init>(Lam/sunrise/android/calendar/ui/event/s;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->f:[Landroid/widget/CheckedTextView;

    aget-object v0, v0, v1

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->setOnCheckedChangeListener(Lam/sunrise/android/calendar/ui/widgets/af;)V

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 166
    :cond_1
    const v0, 0x7f0b0052

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->j:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    .line 167
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->j:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->d:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/k;)V

    .line 168
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->j:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/v;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/v;-><init>(Lam/sunrise/android/calendar/ui/event/s;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->setOnDayClickListener(Lam/sunrise/android/calendar/ui/widgets/calendar/i;)V

    .line 175
    const v0, 0x7f0b0055

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/s;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 177
    new-instance v1, Lam/sunrise/android/calendar/ui/event/w;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/w;-><init>(Lam/sunrise/android/calendar/ui/event/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    return-object v2
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/os/Bundle;)V

    .line 193
    if-eqz p1, :cond_0

    .line 194
    const-string v0, "saved_rrule"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->a:Ljava/lang/String;

    .line 199
    :goto_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/s;->m()V

    .line 201
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/s;->j()V

    .line 203
    sget-object v0, Lam/sunrise/android/calendar/ui/event/s;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/s;->b(I)V

    .line 204
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/s;->g()V

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/s;->a(Z)V

    .line 206
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/s;->c()V

    .line 207
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/s;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.RRULE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Landroid/widget/CheckedTextView;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 231
    if-eqz p2, :cond_3

    .line 232
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 233
    iput v2, p0, Lam/sunrise/android/calendar/ui/event/s;->k:I

    .line 234
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/s;->k:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 235
    const/4 v0, 0x2

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/s;->l:I

    :goto_0
    move v0, v1

    .line 239
    :goto_1
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/s;->f:[Landroid/widget/CheckedTextView;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 240
    if-eq v0, v2, :cond_0

    .line 241
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/s;->f:[Landroid/widget/CheckedTextView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 242
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/s;->f:[Landroid/widget/CheckedTextView;

    aget-object v3, v3, v0

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/s;->f:[Landroid/widget/CheckedTextView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/CheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/s;->l:I

    goto :goto_0

    .line 248
    :cond_2
    if-nez v2, :cond_4

    .line 249
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_3
    :goto_2
    return-void

    .line 251
    :cond_4
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/s;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/d;->b()V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/s;->g(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/s;->n()V

    .line 122
    const-string v0, "saved_rrule"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/s;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method
