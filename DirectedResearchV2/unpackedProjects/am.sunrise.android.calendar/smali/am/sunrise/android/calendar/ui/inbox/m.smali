.class public Lam/sunrise/android/calendar/ui/inbox/m;
.super Landroid/support/v4/a/c;
.source "InboxLoader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/a/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .locals 19

    .prologue
    .line 36
    invoke-super/range {p0 .. p0}, Landroid/support/v4/a/c;->a()Landroid/database/Cursor;

    move-result-object v3

    .line 38
    if-eqz v3, :cond_a

    .line 39
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    const-string v0, "event_is_all_day"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 41
    const-string v0, "event_start_date"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 42
    const-string v0, "event_end_date"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 43
    const-string v0, "occurrence_is_all_day"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 44
    const-string v0, "occurrence_start_date"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 45
    const-string v0, "occurrence_end_date"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 47
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 49
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :cond_0
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_1
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v12, 0x3e8

    mul-long/2addr v0, v12

    .line 55
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 60
    new-instance v14, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 61
    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 63
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-gez v0, :cond_4

    .line 64
    const/4 v0, 0x0

    move-object v1, v0

    .line 70
    :goto_0
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 71
    :goto_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-wide/16 v15, 0x3e8

    mul-long/2addr v12, v15

    .line 72
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    .line 77
    if-eqz v0, :cond_6

    .line 78
    invoke-static {v12, v13}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v2

    .line 79
    invoke-static/range {v15 .. v16}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v0

    .line 85
    :goto_2
    invoke-static {v2, v0}, Lam/sunrise/android/calendar/b/d;->i(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v12

    .line 89
    if-nez v1, :cond_7

    .line 90
    invoke-virtual {v14}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 96
    :goto_3
    invoke-static {v0, v10}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    invoke-static {v10, v1}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {v11}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 105
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 106
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 107
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    .line 106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 66
    :cond_4
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 67
    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object v1, v0

    goto :goto_0

    .line 70
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 81
    :cond_6
    invoke-static {v12, v13}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v2

    .line 82
    invoke-static/range {v15 .. v16}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_2

    .line 92
    :cond_7
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 93
    const/16 v2, 0xe

    long-to-int v12, v12

    rsub-int/lit8 v12, v12, 0x0

    invoke-virtual {v0, v2, v12}, Ljava/util/Calendar;->add(II)V

    goto :goto_3

    :cond_8
    move-object v0, v2

    .line 113
    :goto_5
    new-instance v1, Lam/sunrise/android/calendar/ui/inbox/g;

    invoke-direct {v1, v3, v0}, Lam/sunrise/android/calendar/ui/inbox/g;-><init>(Landroid/database/Cursor;[I)V

    move-object v0, v1

    .line 117
    :goto_6
    return-object v0

    .line 110
    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    move-object v0, v3

    goto :goto_6
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/m;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
