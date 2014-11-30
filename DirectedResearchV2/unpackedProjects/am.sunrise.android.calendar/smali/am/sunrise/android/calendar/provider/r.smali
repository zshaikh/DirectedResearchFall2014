.class public Lam/sunrise/android/calendar/provider/r;
.super Ljava/lang/Object;
.source "Occurrences.java"


# direct methods
.method private static a(Lam/sunrise/android/calendar/b/e;Lam/sunrise/android/calendar/provider/u;)Lam/sunrise/android/calendar/provider/t;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v9, 0x3e8

    .line 379
    new-instance v4, Lam/sunrise/android/calendar/provider/t;

    invoke-direct {v4}, Lam/sunrise/android/calendar/provider/t;-><init>()V

    .line 380
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->b:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->a:Ljava/lang/String;

    .line 381
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->c:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->b:Ljava/lang/String;

    .line 382
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->d:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->c:Ljava/lang/String;

    .line 383
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->e:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->d:Ljava/lang/String;

    .line 384
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->f:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->e:Ljava/lang/String;

    .line 385
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->g:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->f:Ljava/lang/String;

    .line 386
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->f:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->e:Ljava/lang/String;

    .line 387
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->g:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->f:Ljava/lang/String;

    .line 388
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->h:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->g:Ljava/lang/String;

    .line 389
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->k:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->j:Ljava/lang/String;

    .line 390
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->l:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v4, Lam/sunrise/android/calendar/provider/t;->k:Z

    .line 392
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->i:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    mul-long/2addr v5, v9

    .line 393
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->j:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    mul-long/2addr v7, v9

    .line 394
    iget-boolean v0, v4, Lam/sunrise/android/calendar/provider/t;->k:Z

    if-eqz v0, :cond_1

    .line 395
    invoke-static {v5, v6}, Lam/sunrise/android/calendar/b/d;->b(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    .line 396
    invoke-static {v7, v8}, Lam/sunrise/android/calendar/b/d;->b(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    .line 402
    :goto_1
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->m:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->l:Ljava/lang/String;

    .line 403
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->n:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->m:Ljava/lang/String;

    .line 404
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->p:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->o:Ljava/lang/String;

    .line 406
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 408
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->o:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 410
    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 411
    invoke-static {v6}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 412
    :goto_2
    array-length v3, v6

    if-ge v0, v3, :cond_3

    .line 413
    aget-object v3, v6, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long/2addr v7, v9

    .line 415
    iget-boolean v3, v4, Lam/sunrise/android/calendar/provider/t;->k:Z

    if-eqz v3, :cond_2

    .line 416
    invoke-static {v7, v8}, Lam/sunrise/android/calendar/b/d;->b(J)Ljava/util/Calendar;

    move-result-object v3

    .line 420
    :goto_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    .line 390
    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, v4, Lam/sunrise/android/calendar/provider/t;->j:Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lam/sunrise/android/calendar/b/d;->a(JLjava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    .line 399
    iget-object v0, v4, Lam/sunrise/android/calendar/provider/t;->j:Ljava/lang/String;

    invoke-static {v7, v8, v0}, Lam/sunrise/android/calendar/b/d;->a(JLjava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    goto :goto_1

    .line 418
    :cond_2
    iget-object v3, v4, Lam/sunrise/android/calendar/provider/t;->j:Ljava/lang/String;

    invoke-static {v7, v8, v3}, Lam/sunrise/android/calendar/b/d;->a(JLjava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    goto :goto_3

    .line 428
    :cond_3
    iget-object v0, p1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    iget v3, p1, Lam/sunrise/android/calendar/provider/u;->q:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 430
    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 431
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    :cond_4
    invoke-static {v0}, Lam/sunrise/android/calendar/sync/Offline;->a(Ljava/lang/String;)[Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v2

    .line 434
    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_7

    aget-object v0, v2, v1

    .line 435
    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getRecordType()Lam/sunrise/android/calendar/sync/Offline$RecordType;

    move-result-object v6

    sget-object v7, Lam/sunrise/android/calendar/sync/Offline$RecordType;->DeleteOccurrence:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    if-ne v6, v7, :cond_5

    .line 436
    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getDateInMillis()J

    move-result-wide v6

    mul-long/2addr v6, v9

    .line 438
    iget-boolean v0, v4, Lam/sunrise/android/calendar/provider/t;->k:Z

    if-eqz v0, :cond_6

    .line 439
    invoke-static {v6, v7}, Lam/sunrise/android/calendar/b/d;->b(J)Ljava/util/Calendar;

    move-result-object v0

    .line 443
    :goto_5
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 441
    :cond_6
    iget-object v0, v4, Lam/sunrise/android/calendar/provider/t;->j:Ljava/lang/String;

    invoke-static {v6, v7, v0}, Lam/sunrise/android/calendar/b/d;->a(JLjava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_5

    .line 469
    :cond_7
    invoke-static {v5}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 470
    const/4 v0, 0x0

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->n:[Ljava/util/Calendar;

    .line 475
    :goto_6
    return-object v4

    .line 472
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Calendar;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Calendar;

    iput-object v0, v4, Lam/sunrise/android/calendar/provider/t;->n:[Ljava/util/Calendar;

    goto :goto_6
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/provider/t;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 330
    const-string v1, "event JOIN calendar ON calendar.calendar_id = event.event_calendar_id JOIN connection ON connection.connection_id = calendar.calendar_connection_id LEFT JOIN location ON location.location_event_id = event.event_id"

    sget-object v2, Lam/sunrise/android/calendar/provider/v;->b:[Ljava/lang/String;

    const-string v3, "calendar_id = ? AND event_id = ? AND event_pending_actions NOT LIKE ? AND connection.connection_is_disconnected = ? AND connection.connection_is_unavailable = ?"

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    const-string v6, "%\"Delete\"%"

    aput-object v6, v4, v0

    const/4 v0, 0x3

    const-string v6, "0"

    aput-object v6, v4, v0

    const/4 v0, 0x4

    const-string v6, "0"

    aput-object v6, v4, v0

    sget-object v7, Lam/sunrise/android/calendar/provider/v;->d:Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_0

    .line 341
    invoke-static {v0}, Lam/sunrise/android/calendar/provider/r;->a(Landroid/database/Cursor;)Lam/sunrise/android/calendar/provider/u;

    move-result-object v1

    .line 342
    if-eqz v1, :cond_1

    .line 343
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/provider/r;->a(Lam/sunrise/android/calendar/b/e;Lam/sunrise/android/calendar/provider/u;)Lam/sunrise/android/calendar/provider/t;

    move-result-object v5

    .line 344
    invoke-static {v1}, Lam/sunrise/android/calendar/provider/r;->a(Lam/sunrise/android/calendar/provider/u;)V

    .line 349
    :cond_0
    :goto_0
    return-object v5

    .line 347
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)Lam/sunrise/android/calendar/provider/u;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 353
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 354
    new-instance v0, Lam/sunrise/android/calendar/provider/u;

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/provider/u;-><init>(Lam/sunrise/android/calendar/provider/s;)V

    .line 355
    iput-object p0, v0, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    .line 356
    const-string v1, "calendar_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->b:I

    .line 357
    const-string v1, "calendar_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->c:I

    .line 358
    const-string v1, "calendar_title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->d:I

    .line 359
    const-string v1, "event_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->e:I

    .line 360
    const-string v1, "event_source_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->f:I

    .line 361
    const-string v1, "event_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->g:I

    .line 362
    const-string v1, "event_title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->h:I

    .line 363
    const-string v1, "event_start_date"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->i:I

    .line 364
    const-string v1, "event_end_date"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->j:I

    .line 365
    const-string v1, "event_timezone"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->k:I

    .line 366
    const-string v1, "event_is_all_day"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->l:I

    .line 367
    const-string v1, "event_rrule"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->m:I

    .line 368
    const-string v1, "event_exdate"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->n:I

    .line 369
    const-string v1, "event_recurrence_exceptions"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->o:I

    .line 370
    const-string v1, "event_user_rsvp_status"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->p:I

    .line 371
    const-string v1, "event_pending_actions"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/provider/u;->q:I

    .line 374
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)Lam/sunrise/android/calendar/provider/u;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 308
    const-string v1, "event JOIN calendar ON calendar.calendar_id = event.event_calendar_id JOIN connection ON connection.connection_id = calendar.calendar_connection_id LEFT JOIN location ON location.location_event_id = event.event_id"

    sget-object v2, Lam/sunrise/android/calendar/provider/v;->b:[Ljava/lang/String;

    const-string v3, "calendar_is_enabled = ? AND event_pending_actions NOT LIKE ? AND connection.connection_is_disconnected = ? AND connection.connection_is_unavailable = ?"

    sget-object v4, Lam/sunrise/android/calendar/provider/v;->c:[Ljava/lang/String;

    sget-object v7, Lam/sunrise/android/calendar/provider/v;->d:Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 310
    if-eqz v1, :cond_0

    .line 311
    invoke-static {v1}, Lam/sunrise/android/calendar/provider/r;->a(Landroid/database/Cursor;)Lam/sunrise/android/calendar/provider/u;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_1

    move-object v5, v0

    .line 317
    :cond_0
    :goto_0
    return-object v5

    .line 315
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static a(Lam/sunrise/android/calendar/provider/n;Lam/sunrise/android/calendar/b/e;Lam/sunrise/android/calendar/provider/t;ILjava/util/TimeZone;)V
    .locals 11

    .prologue
    .line 101
    iget-object v0, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 102
    const-string v0, "Occurrences"

    const-string v1, "generateOccurrencesForEvent(calendarId=%s, eventId=%s): EVENT ERROR: Missing start date"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lam/sunrise/android/calendar/provider/t;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p2, Lam/sunrise/android/calendar/provider/t;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p2, Lam/sunrise/android/calendar/provider/t;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 109
    iget-boolean v0, p2, Lam/sunrise/android/calendar/provider/t;->k:Z

    iget-object v1, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    iget-object v2, p2, Lam/sunrise/android/calendar/provider/t;->l:Ljava/lang/String;

    iget-object v3, p2, Lam/sunrise/android/calendar/provider/t;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p3}, Lam/sunrise/android/calendar/b/d;->a(ZLjava/util/Calendar;Ljava/lang/String;Ljava/lang/String;I)[J

    move-result-object v7

    .line 112
    invoke-static {v7}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lam/sunrise/android/calendar/provider/t;->k:Z

    if-nez v0, :cond_3

    .line 116
    iget-object v0, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    iget-object v1, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->i(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v0

    long-to-int v0, v0

    move v1, v0

    .line 122
    :goto_1
    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-ge v6, v8, :cond_0

    aget-wide v2, v7, v6

    .line 124
    iget-boolean v0, p2, Lam/sunrise/android/calendar/provider/t;->k:Z

    if-eqz v0, :cond_4

    .line 125
    invoke-static {v2, v3}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v0

    move-object v2, v0

    .line 130
    :goto_3
    iget-object v0, p2, Lam/sunrise/android/calendar/provider/t;->n:[Ljava/util/Calendar;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 131
    const/4 v0, 0x0

    .line 132
    iget-object v4, p2, Lam/sunrise/android/calendar/provider/t;->n:[Ljava/util/Calendar;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_2

    aget-object v9, v4, v3

    .line 133
    invoke-virtual {v9, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v9

    if-nez v9, :cond_5

    .line 134
    const/4 v0, 0x1

    .line 138
    :cond_2
    if-eqz v0, :cond_6

    .line 122
    :goto_5
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 119
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    move v1, v0

    goto :goto_1

    .line 127
    :cond_4
    iget-object v0, p2, Lam/sunrise/android/calendar/provider/t;->j:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lam/sunrise/android/calendar/b/d;->a(JLjava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    .line 132
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 143
    :cond_6
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 144
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 148
    iget-boolean v3, p2, Lam/sunrise/android/calendar/provider/t;->k:Z

    if-eqz v3, :cond_7

    .line 150
    invoke-static {p4, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    .line 151
    invoke-static {p4, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v9, 0x3e8

    div-long/2addr v2, v9

    .line 157
    :goto_6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 158
    const-string v9, "occurrence_id"

    iget-object v10, p2, Lam/sunrise/android/calendar/provider/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v9, "occurrence_is_all_day"

    iget-boolean v10, p2, Lam/sunrise/android/calendar/provider/t;->k:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 160
    const-string v9, "occurrence_start_date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    const-string v4, "occurrence_end_date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    const-string v2, "occurrence_user_rsvp_status"

    iget-object v3, p2, Lam/sunrise/android/calendar/provider/t;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/provider/n;->b(Landroid/content/ContentValues;)Z

    goto :goto_5

    .line 153
    :cond_7
    invoke-static {p4, v2}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    .line 154
    invoke-static {p4, v0}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v9, 0x3e8

    div-long/2addr v2, v9

    goto :goto_6

    .line 168
    :cond_8
    iget-boolean v0, p2, Lam/sunrise/android/calendar/provider/t;->k:Z

    if-eqz v0, :cond_c

    .line 170
    iget-object v0, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    if-eqz v0, :cond_a

    .line 171
    iget-object v0, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    .line 172
    new-instance v1, Lc/a/a/b;

    iget-object v2, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v2, Lc/a/a/b;

    iget-object v3, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v1, v2}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()I

    move-result v0

    .line 182
    :goto_7
    iget-object v3, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    .line 185
    :cond_9
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 186
    const-string v1, "occurrence_id"

    iget-object v2, p2, Lam/sunrise/android/calendar/provider/t;->d:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "occurrence_is_all_day"

    iget-boolean v2, p2, Lam/sunrise/android/calendar/provider/t;->k:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 188
    const-string v1, "occurrence_start_date"

    invoke-static {p4, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    const-string v5, "occurrence_end_date"

    iget-object v1, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    if-nez v1, :cond_b

    const-wide/16 v1, -0x1

    :goto_8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    const-string v1, "occurrence_user_rsvp_status"

    iget-object v2, p2, Lam/sunrise/android/calendar/provider/t;->o:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, v4}, Lam/sunrise/android/calendar/provider/n;->b(Landroid/content/ContentValues;)Z

    .line 199
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 200
    add-int/lit8 v0, v0, -0x1

    .line 201
    if-gtz v0, :cond_9

    goto/16 :goto_0

    .line 177
    :cond_a
    const/4 v0, 0x1

    goto :goto_7

    .line 190
    :cond_b
    iget-object v1, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    invoke-static {p4, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/16 v6, 0x3e8

    div-long/2addr v1, v6

    goto :goto_8

    .line 203
    :cond_c
    iget-object v0, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v0

    .line 204
    iget-object v1, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    if-eqz v1, :cond_f

    new-instance v1, Lc/a/a/b;

    iget-object v2, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v2, Lc/a/a/b;

    iget-object v3, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v1, v2}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/a/k;->c()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_f

    .line 216
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x18

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 220
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 221
    const-string v3, "occurrence_id"

    iget-object v4, p2, Lam/sunrise/android/calendar/provider/t;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v3, "occurrence_is_all_day"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 223
    const-string v3, "occurrence_start_date"

    iget-object v4, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    invoke-static {p4, v4}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    const-string v3, "occurrence_end_date"

    iget-object v4, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    invoke-static {p4, v4}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    const-string v3, "occurrence_user_rsvp_status"

    iget-object v4, p2, Lam/sunrise/android/calendar/provider/t;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/provider/n;->b(Landroid/content/ContentValues;)Z

    .line 236
    new-instance v2, Lc/a/a/b;

    iget-object v3, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v1, Lc/a/a/b;

    iget-object v3, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v2, v1}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()I

    move-result v0

    .line 241
    if-lez v0, :cond_e

    .line 242
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 243
    invoke-static {v1}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 244
    const/4 v2, 0x1

    iget-object v3, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 245
    const/4 v2, 0x6

    iget-object v3, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 246
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 249
    :cond_d
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 250
    const-string v3, "occurrence_id"

    iget-object v4, p2, Lam/sunrise/android/calendar/provider/t;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v3, "occurrence_is_all_day"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 252
    const-string v3, "occurrence_start_date"

    invoke-static {p4, v1}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 254
    const-string v3, "occurrence_end_date"

    iget-object v4, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    invoke-static {p4, v4}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    const-string v3, "occurrence_user_rsvp_status"

    iget-object v4, p2, Lam/sunrise/android/calendar/provider/t;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/provider/n;->b(Landroid/content/ContentValues;)Z

    .line 261
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 262
    add-int/lit8 v0, v0, -0x1

    .line 263
    if-gtz v0, :cond_d

    .line 273
    :cond_e
    iget-object v0, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 274
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 276
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 277
    const-string v2, "occurrence_id"

    iget-object v3, p2, Lam/sunrise/android/calendar/provider/t;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "occurrence_is_all_day"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 279
    const-string v2, "occurrence_start_date"

    invoke-static {p4, v0}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 281
    const-string v0, "occurrence_end_date"

    iget-object v2, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    invoke-static {p4, v2}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    const-string v0, "occurrence_user_rsvp_status"

    iget-object v2, p2, Lam/sunrise/android/calendar/provider/t;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/provider/n;->b(Landroid/content/ContentValues;)Z

    goto/16 :goto_0

    .line 289
    :cond_f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 290
    const-string v0, "occurrence_id"

    iget-object v1, p2, Lam/sunrise/android/calendar/provider/t;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "occurrence_is_all_day"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 292
    const-string v0, "occurrence_start_date"

    iget-object v1, p2, Lam/sunrise/android/calendar/provider/t;->h:Ljava/util/Calendar;

    invoke-static {p4, v1}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 294
    const-string v3, "occurrence_end_date"

    iget-object v0, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    if-nez v0, :cond_10

    const-wide/16 v0, -0x1

    :goto_9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 298
    const-string v0, "occurrence_user_rsvp_status"

    iget-object v1, p2, Lam/sunrise/android/calendar/provider/t;->o:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/provider/n;->b(Landroid/content/ContentValues;)Z

    goto/16 :goto_0

    .line 294
    :cond_10
    iget-object v0, p2, Lam/sunrise/android/calendar/provider/t;->i:Ljava/util/Calendar;

    invoke-static {p4, v0}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/TimeZone;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    goto :goto_9
.end method

.method public static a(Lam/sunrise/android/calendar/provider/n;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 83
    const-string v1, "occurrence"

    const-string v2, "occurrence_id = ?"

    new-array v3, v5, [Ljava/lang/String;

    aput-object p4, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    invoke-static {p1, p3, p4}, Lam/sunrise/android/calendar/provider/r;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/provider/t;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    invoke-static {p0, v0, v1, p5, p2}, Lam/sunrise/android/calendar/provider/r;->a(Lam/sunrise/android/calendar/provider/n;Lam/sunrise/android/calendar/b/e;Lam/sunrise/android/calendar/provider/t;ILjava/util/TimeZone;)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v0, "Occurrences"

    const-string v1, "generateForEvent: No event found. (calendarId=%s, eventId=%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v4

    aput-object p4, v2, v5

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Lam/sunrise/android/calendar/provider/u;)V
    .locals 1

    .prologue
    .line 321
    if-eqz p0, :cond_0

    .line 322
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    .line 327
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lam/sunrise/android/calendar/provider/n;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/TimeZone;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 58
    const-string v1, "occurrence"

    invoke-virtual {p2, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    invoke-static {p2}, Lam/sunrise/android/calendar/provider/r;->a(Landroid/database/sqlite/SQLiteDatabase;)Lam/sunrise/android/calendar/provider/u;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    const-string v2, "Occurrences"

    const-string v3, "generateAllOccurrences: %d events found!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v2

    .line 69
    :cond_0
    invoke-static {v0, v1}, Lam/sunrise/android/calendar/provider/r;->a(Lam/sunrise/android/calendar/b/e;Lam/sunrise/android/calendar/provider/u;)Lam/sunrise/android/calendar/provider/t;

    move-result-object v3

    invoke-static {p1, v0, v3, v2, p3}, Lam/sunrise/android/calendar/provider/r;->a(Lam/sunrise/android/calendar/provider/n;Lam/sunrise/android/calendar/b/e;Lam/sunrise/android/calendar/provider/t;ILjava/util/TimeZone;)V

    .line 72
    iget-object v3, v1, Lam/sunrise/android/calendar/provider/u;->a:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    invoke-static {v1}, Lam/sunrise/android/calendar/provider/r;->a(Lam/sunrise/android/calendar/provider/u;)V

    .line 76
    :cond_1
    return-void
.end method
