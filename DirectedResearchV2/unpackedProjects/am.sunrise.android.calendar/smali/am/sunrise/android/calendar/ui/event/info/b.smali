.class public Lam/sunrise/android/calendar/ui/event/info/b;
.super Landroid/support/v4/a/a;
.source "EventInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/a",
        "<",
        "Lam/sunrise/android/calendar/ui/event/info/EventInfo;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/support/v4/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/d",
            "<",
            "Lam/sunrise/android/calendar/ui/event/info/EventInfo;",
            ">.android/support/v4/a/e;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lam/sunrise/android/calendar/ui/event/info/EventInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/event/info/b;->g:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/event/info/b;->h:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private a(Landroid/net/Uri;)Lam/sunrise/android/calendar/ui/event/info/PersonInfo;
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 250
    .line 251
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/info/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lam/sunrise/android/calendar/ui/event/info/d;->a:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_1

    .line 254
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 255
    const-string v0, "person_is_self"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 256
    const-string v2, "person_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 257
    const-string v4, "person_email_1"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 258
    const-string v5, "person_email_2"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 259
    const-string v6, "person_facebook_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 260
    const-string v7, "person_firstname"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 261
    const-string v8, "person_lastname"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 262
    const-string v9, "person_thumbnail_url"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 263
    const-string v10, "person_cover_url"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 264
    const-string v11, "person_rsvp_status"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_0

    .line 267
    new-instance v3, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-direct {v3}, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;-><init>()V

    .line 269
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v3, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->b:Z

    .line 270
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->a:Ljava/lang/String;

    .line 271
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    .line 272
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->d:Ljava/lang/String;

    .line 273
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->e:Ljava/lang/String;

    .line 274
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    .line 275
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->g:Ljava/lang/String;

    .line 276
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->h:Ljava/lang/String;

    .line 277
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->i:Ljava/lang/String;

    .line 278
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->j:Ljava/lang/String;

    .line 281
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_1
    return-object v3

    .line 269
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()Lam/sunrise/android/calendar/ui/event/info/EventInfo;
    .locals 37

    .prologue
    .line 46
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    .line 47
    const/4 v7, 0x0

    .line 48
    invoke-virtual/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/event/info/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/info/b;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/event/info/b;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/event/info/c;->b:[Ljava/lang/String;

    sget-object v4, Lam/sunrise/android/calendar/ui/event/info/c;->c:Ljava/lang/String;

    sget-object v5, Lam/sunrise/android/calendar/ui/event/info/c;->d:[Ljava/lang/String;

    sget-object v6, Lam/sunrise/android/calendar/ui/event/info/c;->e:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 52
    if-eqz v3, :cond_e

    .line 53
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 54
    const-string v1, "calendar_type"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 55
    const-string v2, "calendar_title"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 56
    const-string v2, "calendar_color"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 57
    const-string v2, "calendar_connection_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 58
    const-string v2, "event_source_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 59
    const-string v2, "event_type"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 60
    const-string v2, "event_title"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 61
    const-string v2, "event_description"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 62
    const-string v2, "event_icon_overlay"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 63
    const-string v2, "event_icon_base_color"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 64
    const-string v2, "event_start_date"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 65
    const-string v2, "event_end_date"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 66
    const-string v2, "event_timezone"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 67
    const-string v2, "event_is_all_day"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 68
    const-string v2, "event_is_editable"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 69
    const-string v2, "event_rrule"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 70
    const-string v2, "event_exdate"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 71
    const-string v2, "event_recurrence_exceptions"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 72
    const-string v2, "event_user_rsvp_status"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 73
    const-string v2, "event_reminders"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 74
    const-string v2, "event_attendees_count"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 75
    const-string v2, "event_pending_actions"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 76
    const-string v2, "location_name"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 77
    const-string v2, "location_street"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 78
    const-string v2, "location_city"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 79
    const-string v2, "location_state"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 80
    const-string v2, "location_country"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 81
    const-string v2, "location_latitude"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 82
    const-string v2, "location_longitude"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 83
    const-string v2, "location_viewport_nelat"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 84
    const-string v2, "location_viewport_nelng"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 85
    const-string v2, "location_viewport_swlat"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 86
    const-string v2, "location_viewport_swlng"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 88
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 89
    new-instance v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/event/info/EventInfo;-><init>()V

    .line 91
    move-object/from16 v0, p0

    iget-object v7, v0, Lam/sunrise/android/calendar/ui/event/info/b;->h:Ljava/lang/String;

    iput-object v7, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    .line 92
    move-object/from16 v0, p0

    iget-object v7, v0, Lam/sunrise/android/calendar/ui/event/info/b;->g:Ljava/lang/String;

    iput-object v7, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    .line 93
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->d:Ljava/lang/String;

    .line 94
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->c:Ljava/lang/String;

    .line 95
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->e:Ljava/lang/String;

    .line 96
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->f:Ljava/lang/String;

    .line 97
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "default"

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->e:Ljava/lang/String;

    .line 100
    :cond_0
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->g:Ljava/lang/String;

    .line 101
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->h:Ljava/lang/String;

    .line 102
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    .line 103
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    .line 104
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->k:Ljava/lang/String;

    .line 105
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->l:Ljava/lang/String;

    .line 106
    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    .line 107
    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    .line 109
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 110
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 112
    iget-boolean v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    if-eqz v1, :cond_3

    .line 113
    invoke-static {v4, v5}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    .line 114
    invoke-static {v6, v7}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    .line 120
    :goto_1
    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->q:Z

    .line 121
    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->r:Ljava/lang/String;

    .line 122
    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->s:Ljava/lang/String;

    .line 123
    move/from16 v0, v21

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->t:Ljava/lang/String;

    .line 124
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    .line 125
    move/from16 v0, v22

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->v:Ljava/lang/String;

    .line 127
    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 129
    invoke-static {v1}, Lam/sunrise/android/calendar/sync/Offline;->a(Ljava/lang/String;)[Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v4

    .line 130
    invoke-static {v4}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 131
    array-length v5, v4

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v5, :cond_6

    aget-object v6, v4, v1

    .line 132
    invoke-virtual {v6}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getRecordType()Lam/sunrise/android/calendar/sync/Offline$RecordType;

    move-result-object v7

    sget-object v8, Lam/sunrise/android/calendar/sync/Offline$RecordType;->RSVP:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    if-ne v7, v8, :cond_1

    .line 133
    invoke-virtual {v6}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->getRSVPStatus()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->v:Ljava/lang/String;

    .line 131
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 107
    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 116
    :cond_3
    invoke-static {v4, v5}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    .line 117
    invoke-static {v6, v7}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    goto :goto_1

    .line 120
    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    .line 124
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 139
    :cond_6
    move/from16 v0, v23

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 141
    const-string v4, "\\|"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v4}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 143
    array-length v1, v4

    new-array v1, v1, [J

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    .line 144
    const/4 v1, 0x0

    :goto_5
    array-length v5, v4

    if-ge v1, v5, :cond_7

    .line 145
    iget-object v5, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 150
    :cond_7
    move/from16 v0, v24

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->y:I

    .line 152
    invoke-direct/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/event/info/b;->h()Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->w:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    .line 153
    invoke-direct/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/event/info/b;->g()Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->x:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    .line 154
    invoke-direct/range {p0 .. p0}, Lam/sunrise/android/calendar/ui/event/info/b;->i()[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    move-result-object v1

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    .line 156
    new-instance v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;-><init>()V

    iput-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 157
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    .line 158
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    move/from16 v0, v27

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    .line 159
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    .line 160
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    move/from16 v0, v29

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    .line 161
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    move/from16 v0, v30

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    .line 162
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    move/from16 v0, v31

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    .line 163
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    move/from16 v0, v32

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    .line 164
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    move/from16 v0, v33

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->i:D

    .line 165
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    move/from16 v0, v34

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->j:D

    .line 166
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    move/from16 v0, v35

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->k:D

    .line 167
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    move/from16 v0, v36

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->l:D

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v4, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 171
    iget-object v4, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_8
    iget-object v4, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 174
    iget-object v4, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_9
    iget-object v4, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 177
    iget-object v4, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_a
    iget-object v4, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 180
    iget-object v4, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_b
    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 184
    iget-object v1, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const/4 v4, 0x0

    iput-object v4, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    move-object v1, v2

    .line 190
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 193
    :goto_7
    return-object v1

    .line 186
    :cond_c
    iget-object v4, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const-string v5, ", "

    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    move-object v1, v2

    goto :goto_6

    :cond_d
    move-object v1, v7

    goto :goto_6

    :cond_e
    move-object v1, v7

    goto :goto_7
.end method

.method private g()Lam/sunrise/android/calendar/ui/event/info/PersonInfo;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/b;->g:Ljava/lang/String;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/info/b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/provider/i;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/info/b;->a(Landroid/net/Uri;)Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    move-result-object v0

    return-object v0
.end method

.method private h()Lam/sunrise/android/calendar/ui/event/info/PersonInfo;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/b;->g:Ljava/lang/String;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/info/b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/provider/i;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/info/b;->a(Landroid/net/Uri;)Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    move-result-object v0

    return-object v0
.end method

.method private i()[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 205
    .line 206
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/info/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/info/b;->g:Ljava/lang/String;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/info/b;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/provider/i;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/event/info/d;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_2

    .line 210
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 211
    const-string v0, "person_is_self"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 212
    const-string v0, "person_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 213
    const-string v0, "person_email_1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 214
    const-string v0, "person_email_2"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 215
    const-string v0, "person_facebook_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 216
    const-string v0, "person_firstname"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 217
    const-string v0, "person_lastname"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 218
    const-string v0, "person_thumbnail_url"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 219
    const-string v0, "person_cover_url"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 220
    const-string v0, "person_rsvp_status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 222
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 223
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v3, v0, [Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    .line 225
    :cond_0
    new-instance v13, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-direct {v13}, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;-><init>()V

    .line 227
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v13, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->b:Z

    .line 228
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->a:Ljava/lang/String;

    .line 229
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    .line 230
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->d:Ljava/lang/String;

    .line 231
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->e:Ljava/lang/String;

    .line 232
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    .line 233
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->g:Ljava/lang/String;

    .line 234
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->h:Ljava/lang/String;

    .line 235
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->i:Ljava/lang/String;

    .line 236
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->j:Ljava/lang/String;

    .line 238
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    aput-object v13, v3, v0

    .line 240
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_2
    return-object v3

    .line 227
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lam/sunrise/android/calendar/ui/event/info/EventInfo;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/info/b;->b()Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public a(Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/info/b;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/info/b;->i:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    .line 296
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/info/b;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/info/b;->b(Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V

    return-void
.end method

.method public b(Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/info/b;->a()Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/info/b;->a(Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V

    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    invoke-super {p0}, Landroid/support/v4/a/a;->onReset()V

    .line 331
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/info/b;->onStopLoading()V

    .line 333
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/event/info/b;->i:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    .line 335
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/b;->a:Landroid/support/v4/a/e;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/info/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/info/b;->a:Landroid/support/v4/a/e;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 337
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/event/info/b;->a:Landroid/support/v4/a/e;

    .line 339
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/b;->i:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/b;->i:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/info/b;->a(Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/b;->a:Landroid/support/v4/a/e;

    if-nez v0, :cond_1

    .line 307
    new-instance v0, Landroid/support/v4/a/e;

    invoke-direct {v0, p0}, Landroid/support/v4/a/e;-><init>(Landroid/support/v4/a/d;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/b;->a:Landroid/support/v4/a/e;

    .line 308
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/info/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/event/info/c;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/info/b;->a:Landroid/support/v4/a/e;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 311
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/info/b;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/info/b;->i:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    if-nez v0, :cond_3

    .line 312
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/info/b;->forceLoad()V

    .line 314
    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 319
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/info/b;->d()Z

    .line 320
    return-void
.end method
