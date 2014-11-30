.class Lam/sunrise/android/calendar/ui/mainview/a/t;
.super Landroid/os/AsyncTask;
.source "ScheduleViewRangeOccurrencesLoaderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lam/sunrise/android/calendar/ui/mainview/a/q;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/mainview/a/v;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/mainview/a/v;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 322
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    .line 323
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lam/sunrise/android/calendar/ui/mainview/a/q;
    .locals 22

    .prologue
    .line 327
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v3

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v9

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/mainview/a/v;->b(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v10

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v13

    .line 333
    new-instance v3, Lc/a/a/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v13}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v4, Lc/a/a/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v5}, Lam/sunrise/android/calendar/ui/mainview/a/v;->b(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6, v13}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v3, v4}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v3

    invoke-virtual {v3}, Lc/a/a/k;->c()I

    move-result v14

    .line 338
    new-instance v15, Lam/sunrise/android/calendar/ui/mainview/a/q;

    invoke-direct {v15}, Lam/sunrise/android/calendar/ui/mainview/a/q;-><init>()V

    .line 340
    const-string v3, "AllDaysLoaderTask"

    const-string v4, "doInBackground: startDate=%s endDate=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x1

    aput-object v10, v5, v6

    invoke-static {v3, v4, v5}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/mainview/a/v;->c(Lam/sunrise/android/calendar/ui/mainview/a/v;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v9, v10}, Lam/sunrise/android/calendar/provider/k;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lam/sunrise/android/calendar/ui/mainview/a/u;->a:[Ljava/lang/String;

    const-string v6, "(calendar_is_enabled = ? AND occurrence_is_all_day = ? AND event_type != \'facebook:event\') OR (calendar_is_enabled = ? AND event_type LIKE ?) OR (calendar_is_enabled = ? AND occurrence_is_all_day = ? AND event_type = \'facebook:event\' AND (occurrence_user_rsvp_status = \'attending\' OR occurrence_user_rsvp_status = \'unsure\'))"

    sget-object v7, Lam/sunrise/android/calendar/ui/mainview/a/u;->b:[Ljava/lang/String;

    const-string v8, "occurrence_start_date, event_title"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    .line 348
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 350
    iget-object v3, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 351
    iget-object v3, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 352
    iget-object v3, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    const-string v4, "occurrence_start_date"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 353
    iget-object v3, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    const-string v4, "event_type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 355
    iget-object v3, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 356
    const-string v3, "AllDaysLoaderTask"

    const-string v4, "no rows"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lam/sunrise/android/calendar/b/i;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    :cond_0
    iget-object v3, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_9

    .line 360
    const-string v3, "AllDaysLoaderTask"

    const-string v4, "doInBackground: rows=%d rangeSize=%d loaded from %s to %s (taking in account timezone conversion from UTC to device\'s timezone)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v9, v5, v6

    const/4 v6, 0x3

    aput-object v10, v5, v6

    invoke-static {v3, v4, v5}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    const/4 v7, -0x1

    .line 364
    const/4 v5, 0x0

    .line 365
    const/4 v3, 0x0

    .line 366
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 369
    :cond_1
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 370
    iget-object v6, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 372
    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v6}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v6

    invoke-static {v4, v6}, Lam/sunrise/android/calendar/b/d;->d(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v6}, Lam/sunrise/android/calendar/ui/mainview/a/v;->b(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v6

    invoke-static {v4, v6}, Lam/sunrise/android/calendar/b/d;->f(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 421
    :cond_2
    :goto_0
    iget-object v4, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 429
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v8, v3, v14}, Lam/sunrise/android/calendar/ui/mainview/a/r;->a(Landroid/util/SparseArray;Ljava/util/Calendar;I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->b:Ljava/util/ArrayList;

    .line 431
    return-object v15

    .line 377
    :cond_4
    iget-object v6, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 379
    invoke-static {v4}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 381
    new-instance v6, Lc/a/a/b;

    invoke-direct {v6, v11, v12, v13}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v18, Lc/a/a/b;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2, v13}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v6

    invoke-virtual {v6}, Lc/a/a/k;->c()I

    move-result v6

    .line 385
    if-ltz v6, :cond_2

    .line 389
    if-eq v6, v7, :cond_a

    .line 390
    const/4 v3, -0x1

    if-eq v7, v3, :cond_6

    invoke-static {v9}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 391
    const/4 v3, 0x0

    invoke-virtual {v8, v7, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lam/sunrise/android/calendar/ui/mainview/a/l;

    .line 392
    if-nez v3, :cond_5

    .line 393
    new-instance v3, Lam/sunrise/android/calendar/ui/mainview/a/l;

    invoke-direct {v3}, Lam/sunrise/android/calendar/ui/mainview/a/l;-><init>()V

    .line 394
    iput-object v5, v3, Lam/sunrise/android/calendar/ui/mainview/a/l;->c:Ljava/util/Calendar;

    .line 395
    iget-object v5, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    iput-object v5, v3, Lam/sunrise/android/calendar/ui/mainview/a/l;->a:Landroid/database/Cursor;

    .line 396
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lam/sunrise/android/calendar/ui/mainview/a/l;->d:Ljava/util/ArrayList;

    .line 397
    invoke-virtual {v8, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    :cond_5
    iget-object v3, v3, Lam/sunrise/android/calendar/ui/mainview/a/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 402
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v8, v6, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lam/sunrise/android/calendar/ui/mainview/a/l;

    .line 403
    if-nez v3, :cond_7

    .line 404
    new-instance v3, Lam/sunrise/android/calendar/ui/mainview/a/l;

    invoke-direct {v3}, Lam/sunrise/android/calendar/ui/mainview/a/l;-><init>()V

    .line 405
    iput-object v4, v3, Lam/sunrise/android/calendar/ui/mainview/a/l;->c:Ljava/util/Calendar;

    .line 406
    iget-object v5, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    iput-object v5, v3, Lam/sunrise/android/calendar/ui/mainview/a/l;->a:Landroid/database/Cursor;

    .line 407
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lam/sunrise/android/calendar/ui/mainview/a/l;->d:Ljava/util/ArrayList;

    .line 408
    invoke-virtual {v8, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move v5, v6

    .line 416
    :goto_2
    const-string v6, "birthday"

    invoke-virtual {v10, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 417
    iget-object v6, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v5

    move-object v5, v4

    goto/16 :goto_0

    .line 419
    :cond_8
    iget-object v6, v3, Lam/sunrise/android/calendar/ui/mainview/a/l;->d:Ljava/util/ArrayList;

    iget-object v7, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v5

    move-object v5, v4

    goto/16 :goto_0

    .line 424
    :cond_9
    iget-object v3, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 425
    const/4 v3, 0x0

    iput-object v3, v15, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    goto/16 :goto_1

    :cond_a
    move-object v4, v5

    move v5, v7

    goto :goto_2
.end method

.method public a(Lam/sunrise/android/calendar/ui/mainview/a/q;)V
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/a/v;->d(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/w;

    .line 437
    if-eqz v0, :cond_0

    .line 438
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/mainview/a/v;->b(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/t;->a:Lam/sunrise/android/calendar/ui/mainview/a/v;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/mainview/a/v;->e(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lam/sunrise/android/calendar/ui/mainview/a/w;->a(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/Object;Lam/sunrise/android/calendar/ui/mainview/a/q;)V

    .line 441
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/t;->a([Ljava/lang/Void;)Lam/sunrise/android/calendar/ui/mainview/a/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 316
    check-cast p1, Lam/sunrise/android/calendar/ui/mainview/a/q;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/t;->a(Lam/sunrise/android/calendar/ui/mainview/a/q;)V

    return-void
.end method
