.class public Lam/sunrise/android/calendar/widget/agenda/f;
.super Landroid/os/AsyncTask;
.source "OccurrencesLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lam/sunrise/android/calendar/widget/agenda/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/widget/agenda/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/widget/agenda/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lam/sunrise/android/calendar/widget/agenda/g;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p1, p0, Lam/sunrise/android/calendar/widget/agenda/f;->a:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/f;->b:Ljava/lang/ref/WeakReference;

    .line 47
    return-void
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 429
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

    .line 433
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-object v0

    .line 437
    :cond_1
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 453
    array-length v0, v1

    if-lt p1, v0, :cond_2

    move-object v0, v1

    .line 454
    goto :goto_0

    .line 457
    :cond_2
    invoke-static {v1, p1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/widget/agenda/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/f;->c:Ljava/util/ArrayList;

    .line 52
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 57
    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 58
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v4

    .line 59
    invoke-static {v4, v3}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    .line 60
    const/4 v6, 0x6

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 61
    invoke-static {v4, v3}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    .line 63
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/f;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v5, v4}, Lam/sunrise/android/calendar/provider/k;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lam/sunrise/android/calendar/widget/agenda/h;->a:[Ljava/lang/String;

    const-string v6, "(calendar_is_enabled = ? AND event_type != \'facebook:event\' AND (occurrence_user_rsvp_status != \'declined\' OR occurrence_user_rsvp_status IS NULL)) OR (calendar_is_enabled = ? AND event_type = \'facebook:event\' AND (occurrence_user_rsvp_status = \'attending\' OR occurrence_user_rsvp_status = \'unsure\'))"

    sget-object v7, Lam/sunrise/android/calendar/widget/agenda/h;->b:[Ljava/lang/String;

    const-string v8, "occurrence_start_date, occurrence_is_all_day"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 69
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 70
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 71
    invoke-static {v10}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 72
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 73
    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 74
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 76
    if-eqz v7, :cond_f

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 77
    const-string v3, "calendar_id"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 78
    const-string v3, "calendar_type"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 79
    const-string v3, "calendar_color"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 80
    const-string v3, "occurrence_is_all_day"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 81
    const-string v3, "occurrence_start_date"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 82
    const-string v3, "occurrence_end_date"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 83
    const-string v3, "occurrence_attendee_emails"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 84
    const-string v3, "occurrence_attendee_thumbnail_urls"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 85
    const-string v3, "occurrence_attendee_first_names"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 86
    const-string v3, "occurrence_attendee_last_names"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 87
    const-string v3, "occurrence_attendee_names"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 88
    const-string v3, "occurrence_attendee_is_self"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 89
    const-string v3, "event_id"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 90
    const-string v3, "event_type"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 91
    const-string v3, "event_title"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 92
    const-string v3, "event_is_all_day"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 93
    const-string v3, "event_start_date"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 94
    const-string v3, "event_end_date"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 95
    const-string v3, "event_timezone"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 96
    const-string v3, "event_description"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 97
    const-string v3, "event_icon_overlay"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 98
    const-string v3, "event_icon_base_color"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 99
    const-string v3, "location_name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 101
    new-instance v33, Landroid/util/SparseArray;

    invoke-direct/range {v33 .. v33}, Landroid/util/SparseArray;-><init>()V

    .line 103
    const/4 v3, -0x1

    .line 104
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v34

    move v4, v3

    .line 107
    :goto_0
    new-instance v35, Lam/sunrise/android/calendar/widget/agenda/e;

    invoke-direct/range {v35 .. v35}, Lam/sunrise/android/calendar/widget/agenda/e;-><init>()V

    .line 109
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, v35

    iput-boolean v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->d:Z

    .line 110
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v36, 0x3e8

    mul-long v5, v5, v36

    .line 112
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    .line 113
    move-object/from16 v0, v35

    iget-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 115
    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v36, 0x3e8

    mul-long v5, v5, v36

    .line 117
    const-wide/16 v36, 0x0

    cmp-long v3, v5, v36

    if-gez v3, :cond_4

    .line 118
    const/4 v3, 0x0

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->f:Ljava/util/Calendar;

    .line 124
    :goto_2
    move-object/from16 v0, v35

    iget-boolean v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->d:Z

    if-nez v3, :cond_0

    move-object/from16 v0, v35

    iget-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v35

    iget-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->f:Ljava/util/Calendar;

    if-eqz v3, :cond_9

    move-object/from16 v0, v35

    iget-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->f:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 129
    :cond_0
    move/from16 v0, v24

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->m:Ljava/lang/String;

    .line 130
    move-object/from16 v0, v35

    iget-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->m:Ljava/lang/String;

    const-string v5, ":birthday"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    .line 205
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_10

    .line 207
    if-eqz v7, :cond_1

    .line 208
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_1
    invoke-virtual {v10}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    .line 215
    const/4 v4, 0x0

    move v5, v4

    :goto_4
    const/4 v4, 0x5

    if-ge v5, v4, :cond_f

    .line 216
    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 217
    if-eqz v4, :cond_e

    .line 218
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 220
    if-nez v5, :cond_e

    .line 223
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 224
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lam/sunrise/android/calendar/widget/agenda/e;

    .line 225
    iget-boolean v7, v4, Lam/sunrise/android/calendar/widget/agenda/e;->d:Z

    if-nez v7, :cond_2

    .line 226
    move-object/from16 v0, p0

    iget-object v7, v0, Lam/sunrise/android/calendar/widget/agenda/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 109
    :cond_3
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 120
    :cond_4
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->f:Ljava/util/Calendar;

    .line 121
    move-object/from16 v0, v35

    iget-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->f:Ljava/util/Calendar;

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_2

    .line 134
    :cond_5
    move-object/from16 v0, v35

    iget-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->e:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->x:Ljava/util/Calendar;

    .line 135
    move-object/from16 v0, v35

    iget-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->x:Ljava/util/Calendar;

    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 137
    new-instance v3, Lc/a/a/b;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    move-object/from16 v0, v34

    invoke-direct {v3, v5, v6, v0}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v5, Lc/a/a/b;

    move-object/from16 v0, v35

    iget-object v6, v0, Lam/sunrise/android/calendar/widget/agenda/e;->x:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v36

    move-wide/from16 v0, v36

    move-object/from16 v2, v34

    invoke-direct {v5, v0, v1, v2}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v3, v5}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v3

    invoke-virtual {v3}, Lc/a/a/k;->c()I

    move-result v5

    .line 139
    if-ltz v5, :cond_9

    const/4 v3, 0x5

    if-lt v5, v3, :cond_6

    move v3, v4

    .line 140
    goto/16 :goto_3

    .line 143
    :cond_6
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->a:Ljava/lang/String;

    .line 144
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->b:Ljava/lang/String;

    .line 145
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->c:Ljava/lang/String;

    .line 147
    move/from16 v0, v22

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/widget/agenda/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 148
    const/4 v6, -0x1

    .line 149
    invoke-static/range {v36 .. v36}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 150
    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v3, v0, :cond_11

    .line 151
    aget-object v37, v36, v3

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_a

    aget-object v37, v36, v3

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->charAt(I)C

    move-result v37

    const/16 v38, 0x31

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    .line 158
    :goto_7
    const/4 v6, -0x1

    if-ne v3, v6, :cond_b

    .line 159
    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/widget/agenda/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->g:[Ljava/lang/String;

    .line 160
    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/widget/agenda/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->h:[Ljava/lang/String;

    .line 161
    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/widget/agenda/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->i:[Ljava/lang/String;

    .line 162
    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/widget/agenda/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->j:[Ljava/lang/String;

    .line 163
    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lam/sunrise/android/calendar/widget/agenda/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->k:[Ljava/lang/String;

    .line 172
    :goto_8
    move/from16 v0, v23

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->l:Ljava/lang/String;

    .line 173
    move/from16 v0, v25

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->n:Ljava/lang/String;

    .line 175
    move/from16 v0, v26

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x0

    :goto_9
    move-object/from16 v0, v35

    iput-boolean v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->o:Z

    .line 176
    move/from16 v0, v27

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    mul-long v36, v36, v38

    .line 177
    move/from16 v0, v28

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    const-wide/16 v40, 0x3e8

    mul-long v38, v38, v40

    .line 179
    move-object/from16 v0, v35

    iget-boolean v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->o:Z

    if-eqz v3, :cond_d

    .line 180
    invoke-static/range {v36 .. v37}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->p:Ljava/util/Calendar;

    .line 181
    invoke-static/range {v38 .. v39}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->q:Ljava/util/Calendar;

    .line 187
    :goto_a
    move/from16 v0, v29

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->s:Ljava/lang/String;

    .line 188
    move/from16 v0, v30

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->t:Ljava/lang/String;

    .line 189
    move/from16 v0, v31

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->u:Ljava/lang/String;

    .line 191
    move/from16 v0, v32

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->v:Ljava/lang/String;

    .line 193
    if-eq v5, v4, :cond_7

    move v4, v5

    .line 197
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 198
    if-nez v3, :cond_8

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    :cond_8
    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move v3, v4

    goto/16 :goto_3

    .line 150
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 165
    :cond_b
    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lam/sunrise/android/calendar/widget/agenda/f;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    iput-object v6, v0, Lam/sunrise/android/calendar/widget/agenda/e;->g:[Ljava/lang/String;

    .line 166
    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lam/sunrise/android/calendar/widget/agenda/f;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    iput-object v6, v0, Lam/sunrise/android/calendar/widget/agenda/e;->h:[Ljava/lang/String;

    .line 167
    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lam/sunrise/android/calendar/widget/agenda/f;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    iput-object v6, v0, Lam/sunrise/android/calendar/widget/agenda/e;->i:[Ljava/lang/String;

    .line 168
    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lam/sunrise/android/calendar/widget/agenda/f;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    iput-object v6, v0, Lam/sunrise/android/calendar/widget/agenda/e;->j:[Ljava/lang/String;

    .line 169
    move/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lam/sunrise/android/calendar/widget/agenda/f;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->k:[Ljava/lang/String;

    goto/16 :goto_8

    .line 175
    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_9

    .line 183
    :cond_d
    invoke-static/range {v36 .. v37}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->p:Ljava/util/Calendar;

    .line 184
    invoke-static/range {v38 .. v39}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v3

    move-object/from16 v0, v35

    iput-object v3, v0, Lam/sunrise/android/calendar/widget/agenda/e;->q:Ljava/util/Calendar;

    goto/16 :goto_a

    .line 232
    :cond_e
    const/4 v4, 0x6

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->add(II)V

    .line 215
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_4

    .line 258
    :cond_f
    return-object v9

    :cond_10
    move v4, v3

    goto/16 :goto_0

    :cond_11
    move v3, v6

    goto/16 :goto_7
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/widget/agenda/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lam/sunrise/android/calendar/widget/agenda/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/widget/agenda/g;

    .line 267
    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/f;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p1}, Lam/sunrise/android/calendar/widget/agenda/g;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/widget/agenda/f;->a([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/widget/agenda/f;->a(Ljava/util/ArrayList;)V

    return-void
.end method
