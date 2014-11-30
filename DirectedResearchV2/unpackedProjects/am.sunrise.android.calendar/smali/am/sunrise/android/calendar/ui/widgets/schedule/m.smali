.class public Lam/sunrise/android/calendar/ui/widgets/schedule/m;
.super Landroid/widget/BaseAdapter;
.source "ScheduleViewAdapter.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/mainview/a/ad;
.implements Lam/sunrise/android/calendar/ui/widgets/schedule/t;


# instance fields
.field private A:Ljava/util/Calendar;

.field private B:Ljava/util/Calendar;

.field private C:Ljava/util/Calendar;

.field private D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

.field private E:I

.field private F:Lam/sunrise/android/calendar/ui/widgets/schedule/k;

.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field v:I

.field private w:Landroid/content/Context;

.field private x:Lam/sunrise/android/calendar/b/e;

.field private y:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x7

    .line 280
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a:I

    .line 281
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->w:Landroid/content/Context;

    .line 282
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->x:Lam/sunrise/android/calendar/b/e;

    .line 283
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    .line 284
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->A:Ljava/util/Calendar;

    .line 285
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->w:Landroid/content/Context;

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v0

    .line 286
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    .line 287
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 288
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    const/4 v2, -0x3

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 289
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 290
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    invoke-static {v1}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 291
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->C:Ljava/util/Calendar;

    .line 292
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->C:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 293
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->C:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 294
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->C:Ljava/util/Calendar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->C:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->C:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 295
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->C:Ljava/util/Calendar;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 297
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->A:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    .line 298
    new-instance v1, Lc/a/a/b;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v2, Lc/a/a/b;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->C:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v1, v2}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->E:I

    .line 303
    iput-boolean p3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->z:Z

    .line 304
    return-void
.end method

.method private a(ILjava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/l;

    move-result-object v4

    .line 433
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v2

    .line 437
    :cond_1
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/l;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    move v1, v2

    .line 438
    :goto_1
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 439
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    .line 440
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    if-ne p3, v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 438
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 447
    :cond_3
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/l;->c()Z

    .line 449
    :cond_4
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->m:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 450
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b()I

    move-result v0

    if-ne v0, p3, :cond_5

    :goto_2
    move v2, v3

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_2

    .line 452
    :cond_6
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/l;->d()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 652
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 656
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-object v0

    .line 660
    :cond_1
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 661
    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 665
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 676
    array-length v0, v1

    if-lt p1, v0, :cond_2

    move-object v0, v1

    .line 677
    goto :goto_0

    .line 680
    :cond_2
    invoke-static {v1, p1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private b(Ljava/util/Calendar;)V
    .locals 5

    .prologue
    .line 583
    invoke-static {p1}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 585
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    .line 587
    new-instance v1, Lc/a/a/b;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v2, Lc/a/a/b;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v1, v2}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()I

    move-result v0

    .line 592
    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->z:Z

    if-eqz v1, :cond_1

    .line 593
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->setSelection(I)V

    .line 594
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->b()V

    .line 603
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a(III)V

    goto :goto_0

    .line 601
    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getAllDayEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->setSelection(I)V

    goto :goto_0
.end method

.method private d(I)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/widgets/schedule/ab;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v10, 0x3e8

    const/4 v3, -0x1

    .line 458
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/l;

    move-result-object v4

    .line 459
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 538
    :goto_0
    return-object v0

    .line 463
    :cond_1
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/l;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 464
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    .line 465
    iput v3, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->z:I

    .line 466
    iput v3, v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->A:I

    goto :goto_1

    .line 468
    :cond_2
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/l;->e:Ljava/util/ArrayList;

    goto :goto_0

    .line 471
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/l;->e:Ljava/util/ArrayList;

    .line 472
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/l;->c()Z

    .line 474
    :cond_4
    new-instance v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    invoke-direct {v5}, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;-><init>()V

    .line 475
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->r:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->r:Ljava/lang/String;

    .line 477
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->e:Ljava/util/Calendar;

    .line 478
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->e:Ljava/util/Calendar;

    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->e:I

    invoke-virtual {v4, v6}, Lam/sunrise/android/calendar/ui/mainview/a/l;->c(I)J

    move-result-wide v6

    mul-long/2addr v6, v10

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 480
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->f:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->c(I)J

    move-result-wide v6

    mul-long/2addr v6, v10

    .line 481
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_6

    .line 482
    iput-object v2, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    .line 488
    :goto_2
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->e:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 489
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 491
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->a:Ljava/lang/String;

    .line 492
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->b:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->b:Ljava/lang/String;

    .line 493
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->c:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    .line 494
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->d:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->a(I)Z

    move-result v0

    iput-boolean v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->d:Z

    .line 496
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 497
    iput-object v2, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->c:Ljava/lang/String;

    .line 500
    :cond_5
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->n:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->m:Ljava/lang/String;

    .line 502
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->l:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 504
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->m:Ljava/lang/String;

    const-string v7, "birthday"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v6}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 505
    :goto_3
    array-length v7, v6

    if-ge v0, v7, :cond_9

    .line 506
    aget-object v7, v6, v0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    aget-object v7, v6, v0

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x31

    if-ne v7, v8, :cond_7

    .line 513
    :goto_4
    if-ne v0, v3, :cond_8

    .line 514
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->g:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->g:[Ljava/lang/String;

    .line 519
    :goto_5
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->m:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->l:Ljava/lang/String;

    .line 520
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->o:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->n:Ljava/lang/String;

    .line 523
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->p:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->c(I)J

    move-result-wide v6

    mul-long/2addr v6, v10

    invoke-static {v6, v7}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->p:Ljava/util/Calendar;

    .line 524
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->q:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->c(I)J

    move-result-wide v6

    mul-long/2addr v6, v10

    invoke-static {v6, v7}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->q:Ljava/util/Calendar;

    .line 526
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->s:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->s:Ljava/lang/String;

    .line 527
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->t:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->t:Ljava/lang/String;

    .line 528
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->u:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->u:Ljava/lang/String;

    .line 530
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->v:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->v:Ljava/lang/String;

    .line 532
    add-int/lit8 v0, p1, -0x1

    iget-object v6, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->l:Ljava/lang/String;

    iget-object v7, v4, Lam/sunrise/android/calendar/ui/mainview/a/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v0, v6, v7}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a(ILjava/lang/String;I)Z

    move-result v0

    iput-boolean v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->B:Z

    .line 533
    add-int/lit8 v0, p1, 0x1

    iget-object v6, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->l:Ljava/lang/String;

    iget-object v7, v4, Lam/sunrise/android/calendar/ui/mainview/a/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v0, v6, v7}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a(ILjava/lang/String;I)Z

    move-result v0

    iput-boolean v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->C:Z

    .line 535
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/l;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 538
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/l;->e:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 484
    :cond_6
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    .line 485
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->f:Ljava/util/Calendar;

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_2

    .line 505
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 516
    :cond_8
    iget v6, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->g:I

    invoke-virtual {v4, v6}, Lam/sunrise/android/calendar/ui/mainview/a/l;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/widgets/schedule/ab;->g:[Ljava/lang/String;

    goto/16 :goto_5

    :cond_9
    move v0, v3

    goto/16 :goto_4
.end method

.method private d()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 607
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "calendar_id"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a:I

    .line 608
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "calendar_type"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->b:I

    .line 609
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "calendar_color"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->c:I

    .line 610
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "occurrence_is_all_day"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->d:I

    .line 611
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "occurrence_start_date"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->e:I

    .line 612
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "occurrence_end_date"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->f:I

    .line 613
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "occurrence_attendee_emails"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->g:I

    .line 614
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "occurrence_attendee_thumbnail_urls"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->h:I

    .line 615
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "occurrence_attendee_first_names"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->i:I

    .line 616
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "occurrence_attendee_last_names"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->j:I

    .line 617
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "occurrence_attendee_names"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->k:I

    .line 618
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "occurrence_attendee_is_self"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->l:I

    .line 619
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "event_id"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->m:I

    .line 620
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "event_type"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->n:I

    .line 621
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "event_title"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->o:I

    .line 622
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "event_start_date"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->p:I

    .line 623
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "event_end_date"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->q:I

    .line 624
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "event_timezone"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->r:I

    .line 625
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "event_description"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->s:I

    .line 626
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "event_icon_overlay"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->t:I

    .line 627
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "event_icon_base_color"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->u:I

    .line 628
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const-string v1, "location_name"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->v:I

    .line 630
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 543
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->d()V

    .line 545
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->notifyDataSetChanged()V

    .line 552
    :goto_0
    return-void

    .line 549
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a:I

    .line 550
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public a(Lam/sunrise/android/calendar/ui/mainview/a/ac;)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Lam/sunrise/android/calendar/ui/mainview/a/ad;)V

    .line 315
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    .line 317
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Lam/sunrise/android/calendar/ui/mainview/a/ad;)V

    .line 319
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->notifyDataSetChanged()V

    .line 326
    :cond_1
    :goto_0
    return-void

    .line 325
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public a(Lam/sunrise/android/calendar/ui/mainview/k;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 634
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->F:Lam/sunrise/android/calendar/ui/widgets/schedule/k;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->m:Ljava/lang/String;

    const-string v1, "birthday"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 637
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 638
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 639
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 640
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 641
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->F:Lam/sunrise/android/calendar/ui/widgets/schedule/k;

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/k;->c(Ljava/util/Calendar;)V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->F:Lam/sunrise/android/calendar/ui/widgets/schedule/k;

    invoke-interface {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/k;->onEventClick(Lam/sunrise/android/calendar/ui/mainview/k;)V

    goto :goto_0
.end method

.method a(Lam/sunrise/android/calendar/ui/widgets/schedule/k;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->F:Lam/sunrise/android/calendar/ui/widgets/schedule/k;

    .line 308
    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 569
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->d()V

    .line 571
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 572
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->notifyDataSetChanged()V

    .line 573
    if-eqz p1, :cond_0

    .line 574
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->b(Ljava/util/Calendar;)V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a:I

    .line 578
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public b()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->C:Ljava/util/Calendar;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 556
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->d()V

    .line 558
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->notifyDataSetChanged()V

    .line 565
    :goto_0
    return-void

    .line 562
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a:I

    .line 563
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public c()I
    .locals 6

    .prologue
    .line 337
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 338
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 340
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v1

    .line 342
    new-instance v2, Lc/a/a/b;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v1}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v3, Lc/a/a/b;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v1}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v2, v3}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()I

    move-result v0

    return v0
.end method

.method public c(I)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 350
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 351
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->E:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 366
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 371
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->z:Z

    if-nez v0, :cond_2

    .line 372
    if-nez p2, :cond_6

    .line 373
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/schedule/n;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->w:Landroid/content/Context;

    invoke-direct {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/n;-><init>(Landroid/content/Context;)V

    .line 374
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getAllDayEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v2

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/aj;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v5, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 377
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getAllDayEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v2

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/aj;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getAllDayEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v4

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/aj;->getWidth()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->a(II)V

    move-object v0, v1

    .line 380
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/q;->setOnOccurrenceClickListener(Lam/sunrise/android/calendar/ui/widgets/schedule/t;)V

    move-object v2, v1

    .line 383
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 384
    invoke-virtual {v0, v6, p1}, Ljava/util/Calendar;->add(II)V

    move-object v1, v2

    .line 386
    check-cast v1, Lam/sunrise/android/calendar/ui/widgets/schedule/n;

    .line 388
    :goto_1
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 389
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v4, v3}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/l;

    move-result-object v4

    .line 390
    iget-object v4, v4, Lam/sunrise/android/calendar/ui/mainview/a/l;->c:Ljava/util/Calendar;

    invoke-static {v0, v4}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    invoke-direct {p0, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->d(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->a(Ljava/util/Calendar;Ljava/util/ArrayList;)V

    .line 392
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 427
    :goto_2
    return-object v2

    .line 388
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 397
    :cond_1
    invoke-virtual {v1, v0, v7}, Lam/sunrise/android/calendar/ui/widgets/schedule/n;->a(Ljava/util/Calendar;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 401
    :cond_2
    if-nez p2, :cond_5

    .line 402
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->w:Landroid/content/Context;

    invoke-direct {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;-><init>(Landroid/content/Context;)V

    .line 403
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v2

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/aj;->getWidth()I

    move-result v2

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v4

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/aj;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v2, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 406
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v2

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/aj;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->y:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v4

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/aj;->getWidth()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->a(II)V

    move-object v0, v1

    .line 409
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->setOnOccurrenceClickListener(Lam/sunrise/android/calendar/ui/widgets/schedule/t;)V

    move-object v2, v1

    .line 412
    :goto_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->B:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 413
    invoke-virtual {v0, v6, p1}, Ljava/util/Calendar;->add(II)V

    move-object v1, v2

    .line 415
    check-cast v1, Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    .line 417
    :goto_4
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 418
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->D:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v4, v3}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/l;

    move-result-object v4

    .line 419
    iget-object v4, v4, Lam/sunrise/android/calendar/ui/mainview/a/l;->c:Ljava/util/Calendar;

    invoke-static {v0, v4}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 420
    invoke-direct {p0, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->d(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->a(Ljava/util/Calendar;Ljava/util/ArrayList;)V

    .line 421
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 417
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 426
    :cond_4
    invoke-virtual {v1, v0, v7}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->a(Ljava/util/Calendar;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_5
    move-object v2, p2

    goto :goto_3

    :cond_6
    move-object v2, p2

    goto/16 :goto_0
.end method
