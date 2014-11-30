.class public Lam/sunrise/android/calendar/provider/n;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Database.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Lam/sunrise/android/calendar/provider/o;

.field private b:Landroid/database/sqlite/SQLiteStatement;

.field private c:Landroid/database/sqlite/SQLiteStatement;

.field private d:Landroid/database/sqlite/SQLiteStatement;

.field private e:Landroid/database/sqlite/SQLiteStatement;

.field private f:Landroid/database/sqlite/SQLiteStatement;

.field private g:Landroid/database/sqlite/SQLiteStatement;

.field private h:Landroid/database/sqlite/SQLiteStatement;

.field private i:Landroid/database/sqlite/SQLiteStatement;

.field private j:Landroid/database/sqlite/SQLiteStatement;

.field private k:Landroid/database/sqlite/SQLiteStatement;

.field private l:Landroid/database/sqlite/SQLiteStatement;

.field private m:Landroid/database/sqlite/SQLiteStatement;

.field private n:Landroid/database/sqlite/SQLiteStatement;

.field private o:Landroid/database/sqlite/SQLiteStatement;

.field private p:Landroid/database/sqlite/SQLiteStatement;

.field private q:Landroid/database/sqlite/SQLiteStatement;

.field private r:Landroid/database/sqlite/SQLiteStatement;

.field private s:Landroid/database/sqlite/SQLiteStatement;

.field private t:Landroid/database/sqlite/SQLiteStatement;

.field private u:Landroid/database/sqlite/SQLiteStatement;

.field private v:Landroid/database/sqlite/SQLiteStatement;

.field private w:Landroid/database/sqlite/SQLiteStatement;

.field private x:Landroid/database/sqlite/SQLiteStatement;

.field private y:Landroid/database/sqlite/SQLiteStatement;

.field private z:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lam/sunrise/android/calendar/provider/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lam/sunrise/android/calendar/provider/n;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 165
    const-string v0, "store.db"

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 166
    new-instance v0, Lam/sunrise/android/calendar/provider/o;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/provider/o;-><init>(Lam/sunrise/android/calendar/provider/n;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->A:Lam/sunrise/android/calendar/provider/o;

    .line 167
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 766
    const-string v0, "store.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 767
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 232
    const-string v0, "ALTER TABLE event RENAME TO event_backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    const-string v0, "DROP TRIGGER IF EXISTS on_event_deleted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/provider/n;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 237
    const-string v0, "INSERT INTO event (event_id, event_calendar_id, event_source_id, event_type, event_title, event_description, event_status, event_start_date, event_end_date, event_timezone, event_is_all_day, event_is_editable, event_rrule, event_exdate, event_recurrence_exceptions,event_icon_overlay, event_icon_base_color, event_user_rsvp_status, event_pending_actions, event_reminders, event_attendees_count) SELECT event_id, event_calendar_id, event_source_id, event_type, event_title, event_description, event_status, event_start_date, event_end_date, event_timezone, event_is_all_day, event_is_editable, event_rrule, event_exdate, event_recurrence_exceptions,event_icon_overlay, event_icon_base_color, event_user_rsvp_status, event_pending_actions, event_reminders, event_attendees_count FROM event_backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 284
    const-string v0, "INSERT INTO event_extras (event_extra_event_id, event_extra_calendar_id, event_extra_invitation_seen) SELECT event_id, event_calendar_id, event_invitation_seen FROM event_backup WHERE event_invitation_seen = \'1\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    const-string v0, "DROP TABLE event_backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 423
    if-nez p2, :cond_1

    .line 424
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 426
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 428
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x1

    goto :goto_1

    .line 429
    :cond_4
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 430
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_0

    .line 431
    :cond_5
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 432
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteStatement;)Z
    .locals 1

    .prologue
    .line 396
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    const/4 v0, 0x1

    .line 401
    :goto_0
    return v0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 401
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/database/sqlite/SQLiteStatement;)J
    .locals 2

    .prologue
    .line 406
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 410
    :goto_0
    return-wide v0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 410
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 300
    const-string v0, "CREATE TABLE event (_id INTEGER PRIMARY KEY AUTOINCREMENT, event_id TEXT NOT NULL, event_calendar_id TEXT NOT NULL, event_source_id TEXT NOT NULL, event_type TEXT NOT NULL, event_title TEXT DEFAULT NULL, event_description TEXT, event_status TEXT, event_start_date TIMESTAMP, event_end_date TIMESTAMP, event_timezone TEXT,event_is_all_day BOOLEAN DEFAULT 0, event_is_editable BOOLEAN DEFAULT 0, event_rrule TEXT DEFAULT NULL, event_exdate TEXT DEFAULT NULL, event_recurrence_exceptions TEXT DEFAULT \'\', event_icon_overlay TEXT DEFAULT NULL, event_icon_base_color TEXT DEFAULT NULL, event_user_rsvp_status TEXT DEFAULT NULL, event_pending_actions TEXT DEFAULT \'\', event_reminders TEXT DEFAULT \'\', event_attendees_count INTEGER DEFAULT 0, UNIQUE(event_id, event_calendar_id) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    const-string v0, "CREATE TABLE event_extras (_id INTEGER PRIMARY KEY AUTOINCREMENT, event_extra_event_id TEXT NOT NULL, event_extra_calendar_id TEXT NOT NULL, event_extra_invitation_seen BOOLEAN DEFAULT 0, UNIQUE(event_extra_event_id, event_extra_calendar_id) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 335
    const-string v0, "CREATE TRIGGER on_event_deleted AFTER DELETE ON event BEGIN  DELETE FROM event_extras WHERE event_extra_event_id = old.event_id AND event_extra_calendar_id = old.event_calendar_id; DELETE FROM occurrence WHERE occurrence_id = old.event_id; DELETE FROM person WHERE person_calendar_id = old.event_calendar_id AND person_event_id = old.event_id; DELETE FROM location WHERE location_event_id = old.event_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method private static c(Landroid/database/sqlite/SQLiteStatement;)I
    .locals 1

    .prologue
    .line 415
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 419
    :goto_0
    return v0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 419
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 356
    const-string v0, "CREATE TABLE kv_store (_id INTEGER PRIMARY KEY AUTOINCREMENT, kv_key TEXT NOT NULL, kv_value TEXT DEFAULT NULL, UNIQUE(kv_key) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 368
    const-string v1, "sqlite_master"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v2, v8

    const-string v0, "name"

    aput-object v0, v2, v9

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_3

    .line 372
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 374
    const-string v2, "name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 376
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 377
    const-string v4, "sqlite_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 378
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 379
    sget-object v5, Lam/sunrise/android/calendar/provider/n;->a:Ljava/lang/String;

    const-string v6, "dropAllTables: found %s of type %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v8

    aput-object v4, v7, v9

    invoke-static {v5, v6, v7}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    const-string v5, "DROP %s IF EXISTS %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v4, v6, v8

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 382
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 390
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_3
    return-void

    .line 383
    :catch_0
    move-exception v4

    .line 384
    sget-object v5, Lam/sunrise/android/calendar/provider/n;->a:Ljava/lang/String;

    const-string v6, "dropAllTables -- EXCEPTION -- (%s) -- %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v9

    invoke-static {v5, v6, v7}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 770
    const-string v0, "CREATE TABLE connection (_id INTEGER PRIMARY KEY AUTOINCREMENT, connection_id TEXT NOT NULL, connection_type TEXT NOT NULL, connection_is_disconnected BOOLEAN DEFAULT 0, connection_info TEXT, connection_is_unavailable BOOLEAN DEFAULT 0, UNIQUE(connection_id) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 779
    const-string v0, "CREATE TABLE calendar (_id INTEGER PRIMARY KEY AUTOINCREMENT, calendar_id TEXT NOT NULL, calendar_connection_id TEXT NOT NULL, calendar_sync_token TEXT, calendar_type TEXT NOT NULL, calendar_title TEXT NOT NULL, calendar_description TEXT, calendar_color TEXT, calendar_is_writable BOOLEAN DEFAULT 0, calendar_is_enabled BOOLEAN DEFAULT 0, calendar_priority INTEGER DEFAULT 9999, calendar_reminders BOOLEAN DEFAULT 0, UNIQUE(calendar_id, calendar_connection_id) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 794
    const-string v0, "CREATE TABLE event (_id INTEGER PRIMARY KEY AUTOINCREMENT, event_id TEXT NOT NULL, event_calendar_id TEXT NOT NULL, event_source_id TEXT NOT NULL, event_type TEXT NOT NULL, event_title TEXT DEFAULT NULL, event_description TEXT, event_status TEXT, event_start_date TIMESTAMP, event_end_date TIMESTAMP, event_timezone TEXT,event_is_all_day BOOLEAN DEFAULT 0, event_is_editable BOOLEAN DEFAULT 0, event_rrule TEXT DEFAULT NULL, event_exdate TEXT DEFAULT NULL, event_recurrence_exceptions TEXT DEFAULT \'\', event_icon_overlay TEXT DEFAULT NULL, event_icon_base_color TEXT DEFAULT NULL, event_user_rsvp_status TEXT DEFAULT NULL, event_pending_actions TEXT DEFAULT \'\', event_reminders TEXT DEFAULT \'\', event_attendees_count INTEGER DEFAULT 0, UNIQUE(event_id, event_calendar_id) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 819
    const-string v0, "CREATE TABLE event_extras (_id INTEGER PRIMARY KEY AUTOINCREMENT, event_extra_event_id TEXT NOT NULL, event_extra_calendar_id TEXT NOT NULL, event_extra_invitation_seen BOOLEAN DEFAULT 0, UNIQUE(event_extra_event_id, event_extra_calendar_id) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 826
    const-string v0, "CREATE TABLE occurrence (_id INTEGER PRIMARY KEY AUTOINCREMENT, occurrence_id TEXT NOT NULL, occurrence_is_all_day BOOLEAN DEFAULT 0, occurrence_start_date TIMESTAMP, occurrence_end_date TIMESTAMP, occurrence_user_rsvp_status TEXT DEFAULT \'\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 834
    const-string v0, "CREATE TABLE person (_id INTEGER PRIMARY KEY AUTOINCREMENT, person_event_id TEXT NOT NULL, person_calendar_id TEXT NOT NULL, person_kind INTEGER DEFAULT 0, person_name TEXT DEFAULT NULL, person_email_1 TEXT, person_email_2 TEXT, person_is_self BOOLEAN DEFAULT 0, person_facebook_id TEXT, person_firstname TEXT, person_lastname TEXT, person_thumbnail_url TEXT, person_cover_url TEXT, person_cover_offset_y INTEGER, person_birthday TIMESTAMP, person_rsvp_status TEXT DEFAULT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 852
    const-string v0, "CREATE TABLE location (_id INTEGER PRIMARY KEY AUTOINCREMENT, location_event_id TEXT NOT NULL, location_city TEXT DEFAULT NULL, location_country TEXT DEFAULT NULL, location_latitude REAL DEFAULT 0.0, location_longitude REAL DEFAULT 0.0, location_name TEXT DEFAULT NULL, location_state TEXT DEFAULT NULL, location_street TEXT DEFAULT NULL, location_viewport_nelat REAL DEFAULT 0.0, location_viewport_nelng REAL DEFAULT 0.0, location_viewport_swlat REAL DEFAULT 0.0, location_viewport_swlng REAL DEFAULT 0.0, UNIQUE(location_event_id) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 868
    const-string v0, "CREATE TABLE suggested_people (_id INTEGER PRIMARY KEY AUTOINCREMENT, suggested_people_name TEXT, suggested_people_firstname TEXT, suggested_people_lastname TEXT, suggested_people_email TEXT NOT NULL, suggested_people_score INTEGER DEFAULT 0, suggested_people_calendar_id TEXT NOT NULL, UNIQUE(suggested_people_email, suggested_people_calendar_id) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 879
    const-string v0, "CREATE TABLE reminders (_id INTEGER PRIMARY KEY AUTOINCREMENT, reminder_event_id TEXT NOT NULL, reminder_alarm_time INTEGER, reminder_value INTEGER, reminder_occurrence_start_date TIMESTAMP, UNIQUE(reminder_event_id, reminder_alarm_time) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 888
    const-string v0, "CREATE TABLE kv_store (_id INTEGER PRIMARY KEY AUTOINCREMENT, kv_key TEXT NOT NULL, kv_value TEXT DEFAULT NULL, UNIQUE(kv_key) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 899
    const-string v0, "CREATE TRIGGER on_connection_deleted AFTER DELETE ON connection BEGIN  DELETE FROM calendar WHERE calendar_connection_id = old.connection_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 907
    const-string v0, "CREATE TRIGGER on_calendar_deleted AFTER DELETE ON calendar BEGIN  DELETE FROM event WHERE event_calendar_id = old.calendar_id; DELETE FROM suggested_people WHERE suggested_people_calendar_id = old.calendar_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 918
    const-string v0, "CREATE TRIGGER on_event_deleted AFTER DELETE ON event BEGIN  DELETE FROM event_extras WHERE event_extra_event_id = old.event_id AND event_extra_calendar_id = old.event_calendar_id; DELETE FROM occurrence WHERE occurrence_id = old.event_id; DELETE FROM person WHERE person_calendar_id = old.event_calendar_id AND person_event_id = old.event_id; DELETE FROM location WHERE location_event_id = old.event_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method private g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 934
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/p;->a(Landroid/database/sqlite/SQLiteDatabase;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const-string v1, "connection"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "connection_id"

    aput-object v2, v1, v4

    const-string v2, "connection_type"

    aput-object v2, v1, v5

    const-string v2, "connection_info"

    aput-object v2, v1, v6

    const-string v2, "connection_is_disconnected"

    aput-object v2, v1, v7

    const-string v2, "connection_is_unavailable"

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a([Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/q;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->b:Landroid/database/sqlite/SQLiteStatement;

    .line 945
    const-string v0, "UPDATE connection SET connection_type = ?, connection_is_disconnected = ?, connection_is_unavailable = ? WHERE connection_id = ?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->c:Landroid/database/sqlite/SQLiteStatement;

    .line 952
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/p;->a(Landroid/database/sqlite/SQLiteDatabase;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const-string v1, "calendar"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "calendar_id"

    aput-object v2, v1, v4

    const-string v2, "calendar_connection_id"

    aput-object v2, v1, v5

    const-string v2, "calendar_type"

    aput-object v2, v1, v6

    const-string v2, "calendar_title"

    aput-object v2, v1, v7

    const-string v2, "calendar_description"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "calendar_color"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "calendar_is_writable"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "calendar_is_enabled"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "calendar_priority"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "calendar_reminders"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a([Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/q;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->d:Landroid/database/sqlite/SQLiteStatement;

    .line 968
    const-string v0, "UPDATE calendar SET calendar_type = ?, calendar_title = ?, calendar_description = ?, calendar_color = ?, calendar_is_writable = ? WHERE calendar_id = ?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->e:Landroid/database/sqlite/SQLiteStatement;

    .line 977
    const-string v0, "UPDATE calendar SET calendar_sync_token = ? WHERE calendar_id = ?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->f:Landroid/database/sqlite/SQLiteStatement;

    .line 982
    const-string v0, "UPDATE calendar SET calendar_is_enabled = ? WHERE calendar_id = ?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->g:Landroid/database/sqlite/SQLiteStatement;

    .line 987
    const-string v0, "UPDATE calendar SET calendar_reminders = ? WHERE calendar_id = ?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->h:Landroid/database/sqlite/SQLiteStatement;

    .line 992
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/p;->a(Landroid/database/sqlite/SQLiteDatabase;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const-string v1, "suggested_people"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "suggested_people_name"

    aput-object v2, v1, v4

    const-string v2, "suggested_people_firstname"

    aput-object v2, v1, v5

    const-string v2, "suggested_people_lastname"

    aput-object v2, v1, v6

    const-string v2, "suggested_people_email"

    aput-object v2, v1, v7

    const-string v2, "suggested_people_score"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "suggested_people_calendar_id"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a([Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/q;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->i:Landroid/database/sqlite/SQLiteStatement;

    .line 1004
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/p;->a(Landroid/database/sqlite/SQLiteDatabase;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "event_id"

    aput-object v2, v1, v4

    const-string v2, "event_calendar_id"

    aput-object v2, v1, v5

    const-string v2, "event_source_id"

    aput-object v2, v1, v6

    const-string v2, "event_type"

    aput-object v2, v1, v7

    const-string v2, "event_status"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "event_title"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "event_description"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "event_start_date"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "event_end_date"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "event_timezone"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "event_is_all_day"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "event_is_editable"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "event_rrule"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "event_exdate"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "event_icon_overlay"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "event_icon_base_color"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "event_user_rsvp_status"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "event_reminders"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "event_attendees_count"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a([Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/q;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    .line 1029
    const-string v0, "UPDATE event SET event_title = ?, event_description = ?, event_start_date = ?, event_end_date = ?, event_timezone = ?, event_is_all_day = ?, event_rrule = ?, event_exdate = ?, event_reminders = ? WHERE event_calendar_id = ? AND event_id = ?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    .line 1043
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/p;->a(Landroid/database/sqlite/SQLiteDatabase;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const-string v1, "event_extras"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "event_extra_event_id"

    aput-object v2, v1, v4

    const-string v2, "event_extra_calendar_id"

    aput-object v2, v1, v5

    const-string v2, "event_extra_invitation_seen"

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a([Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/q;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->m:Landroid/database/sqlite/SQLiteStatement;

    .line 1052
    const-string v0, "UPDATE event SET event_recurrence_exceptions == event_recurrence_exceptions || CASE WHEN (event_calendar_id == ? AND event_source_id == ?) THEN ? ELSE \'\' END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->l:Landroid/database/sqlite/SQLiteStatement;

    .line 1061
    const-string v0, "DELETE FROM person WHERE person_calendar_id = ? AND person_event_id = ? AND person_kind = ?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->n:Landroid/database/sqlite/SQLiteStatement;

    .line 1067
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/p;->a(Landroid/database/sqlite/SQLiteDatabase;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const-string v1, "occurrence"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "occurrence_id"

    aput-object v2, v1, v4

    const-string v2, "occurrence_is_all_day"

    aput-object v2, v1, v5

    const-string v2, "occurrence_start_date"

    aput-object v2, v1, v6

    const-string v2, "occurrence_end_date"

    aput-object v2, v1, v7

    const-string v2, "occurrence_user_rsvp_status"

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a([Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/q;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->o:Landroid/database/sqlite/SQLiteStatement;

    .line 1078
    const-string v0, "DELETE FROM occurrence WHERE occurrence_id IN (SELECT event_id FROM event WHERE event_calendar_id = ? AND event_source_id = ?) AND occurrence_start_date = ?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->p:Landroid/database/sqlite/SQLiteStatement;

    .line 1085
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/p;->a(Landroid/database/sqlite/SQLiteDatabase;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const-string v1, "person"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "person_event_id"

    aput-object v2, v1, v4

    const-string v2, "person_calendar_id"

    aput-object v2, v1, v5

    const-string v2, "person_kind"

    aput-object v2, v1, v6

    const-string v2, "person_name"

    aput-object v2, v1, v7

    const-string v2, "person_email_1"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "person_email_2"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "person_is_self"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "person_facebook_id"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "person_firstname"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "person_lastname"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "person_thumbnail_url"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "person_cover_url"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "person_cover_offset_y"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "person_birthday"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "person_rsvp_status"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a([Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/q;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    .line 1106
    const-string v0, "UPDATE person SET person_rsvp_status = ? WHERE _id = ?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->r:Landroid/database/sqlite/SQLiteStatement;

    .line 1111
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/p;->a(Landroid/database/sqlite/SQLiteDatabase;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "location_event_id"

    aput-object v2, v1, v4

    const-string v2, "location_city"

    aput-object v2, v1, v5

    const-string v2, "location_country"

    aput-object v2, v1, v6

    const-string v2, "location_latitude"

    aput-object v2, v1, v7

    const-string v2, "location_longitude"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "location_name"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "location_state"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "location_street"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "location_viewport_nelat"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "location_viewport_nelng"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "location_viewport_swlat"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "location_viewport_swlng"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a([Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/q;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    .line 1129
    const-string v0, "UPDATE location SET location_city = ?, location_country = ?, location_latitude = ?, location_longitude = ?, location_name = ?, location_state = ?, location_street = ?, location_viewport_nelat = ?, location_viewport_nelng = ?, location_viewport_swlat = ?, location_viewport_swlng = ? WHERE location_event_id = ?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    .line 1144
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/p;->a(Landroid/database/sqlite/SQLiteDatabase;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "event_id"

    aput-object v2, v1, v4

    const-string v2, "event_calendar_id"

    aput-object v2, v1, v5

    const-string v2, "event_source_id"

    aput-object v2, v1, v6

    const-string v2, "event_type"

    aput-object v2, v1, v7

    const-string v2, "event_title"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "event_description"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "event_start_date"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "event_end_date"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "event_timezone"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "event_is_all_day"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "event_is_editable"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "event_rrule"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "event_reminders"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "event_attendees_count"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "event_pending_actions"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a([Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/q;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    .line 1168
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/p;->a(Landroid/database/sqlite/SQLiteDatabase;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "event_id"

    aput-object v2, v1, v4

    const-string v2, "event_calendar_id"

    aput-object v2, v1, v5

    const-string v2, "event_source_id"

    aput-object v2, v1, v6

    const-string v2, "event_type"

    aput-object v2, v1, v7

    const-string v2, "event_title"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "event_description"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "event_status"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "event_start_date"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "event_end_date"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "event_timezone"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "event_is_all_day"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "event_is_editable"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "event_rrule"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "event_exdate"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "event_recurrence_exceptions"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "event_icon_overlay"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "event_icon_base_color"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "event_user_rsvp_status"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "event_reminders"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "event_attendees_count"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "event_pending_actions"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a([Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/q;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    .line 1195
    const-string v0, "UPDATE event SET event_pending_actions = ? WHERE event_calendar_id = ? AND event_id = ?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->v:Landroid/database/sqlite/SQLiteStatement;

    .line 1201
    const-string v0, "UPDATE event SET event_pending_actions == event_pending_actions || CASE WHEN (event_calendar_id == ? AND event_source_id == ?) THEN ? ELSE \'\' END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->x:Landroid/database/sqlite/SQLiteStatement;

    .line 1210
    const-string v0, "UPDATE event SET event_pending_actions == event_pending_actions || CASE WHEN (event_calendar_id == ? AND event_id == ?) THEN ? ELSE \'\' END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->y:Landroid/database/sqlite/SQLiteStatement;

    .line 1219
    invoke-static {p1}, Lam/sunrise/android/calendar/provider/p;->a(Landroid/database/sqlite/SQLiteDatabase;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    const-string v1, "reminders"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "reminder_event_id"

    aput-object v2, v1, v4

    const-string v2, "reminder_alarm_time"

    aput-object v2, v1, v5

    const-string v2, "reminder_value"

    aput-object v2, v1, v6

    const-string v2, "reminder_occurrence_start_date"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/provider/q;->a([Ljava/lang/String;)Lam/sunrise/android/calendar/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/provider/q;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/provider/n;->z:Landroid/database/sqlite/SQLiteStatement;

    .line 1228
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->c:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 448
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->c:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    const-string v2, "connection_type"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->c:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    const-string v2, "connection_is_disconnected"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->c:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "connection_is_unavailable"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->c:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->c:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteStatement;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->f:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 483
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->f:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->f:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->f:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteStatement;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->n:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 572
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->n:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 573
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->n:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 574
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->n:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 575
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->n:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteStatement;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 539
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    const-string v2, "event_title"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 540
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    const-string v2, "event_description"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 541
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "event_start_date"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-string v2, "event_end_date"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    const-string v2, "event_timezone"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    const-string v2, "event_is_all_day"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x7

    const-string v2, "event_rrule"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x8

    const-string v2, "event_exdate"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x9

    const-string v2, "event_reminders"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 549
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xb

    invoke-static {v0, v1, p2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 550
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->k:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteStatement;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 745
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->y:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 746
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->y:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 747
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->y:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 748
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->y:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lam/sunrise/android/calendar/sync/Offline;->f()Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v3

    invoke-virtual {v3, p3}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->status(Ljava/lang/String;)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v3

    invoke-virtual {v3, p4}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->message(Ljava/lang/String;)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v3

    invoke-virtual {v3}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->build()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 753
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->y:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteStatement;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)I
    .locals 3

    .prologue
    .line 489
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->g:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 490
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->g:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->g:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 492
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->g:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteStatement;)I

    move-result v0

    return v0
.end method

.method public a()Lam/sunrise/android/calendar/provider/o;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->A:Lam/sunrise/android/calendar/provider/o;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 4

    .prologue
    .line 732
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->x:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 733
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->x:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->x:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->x:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lam/sunrise/android/calendar/sync/Offline;->c()Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v3

    invoke-virtual {v3, p5}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->setSkipNotificationEmail(Z)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->forDate(J)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v3

    invoke-virtual {v3}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->build()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 740
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->x:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteStatement;)I

    .line 741
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->v:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 721
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->v:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-static {}, Lam/sunrise/android/calendar/sync/Offline;->b()Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v2

    invoke-virtual {v2, p3}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->setSkipNotificationEmail(Z)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v2

    invoke-virtual {v2}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->build()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 725
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->v:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 726
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->v:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-static {v0, v1, p2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 727
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->v:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteStatement;)I

    .line 728
    return-void
.end method

.method public a(Landroid/content/ContentValues;)Z
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 438
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    const-string v2, "connection_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    const-string v2, "connection_type"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "connection_info"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-string v2, "connection_is_disconnected"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->b:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    const-string v2, "connection_is_unavailable"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 3

    .prologue
    .line 661
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 662
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    const-string v2, "event_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 663
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 664
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "event_source_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 665
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-string v2, "event_type"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 666
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    const-string v2, "event_title"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 667
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    const-string v2, "event_description"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 668
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x7

    const-string v2, "event_start_date"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 669
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x8

    const-string v2, "event_end_date"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 670
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x9

    const-string v2, "event_timezone"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 671
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xa

    const-string v2, "event_is_all_day"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 672
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xb

    const-string v2, "event_is_editable"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 673
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xc

    const-string v2, "event_rrule"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xd

    const-string v2, "event_reminders"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 675
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xe

    const-string v2, "event_attendees_count"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 676
    iget-object v1, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    const/16 v2, 0xf

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lam/sunrise/android/calendar/sync/Offline;->a()Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v0

    invoke-virtual {v0, p3}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->setSkipNotificationEmail(Z)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->build()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 686
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->u:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;)Z

    move-result v0

    return v0

    .line 676
    :cond_0
    invoke-static {}, Lam/sunrise/android/calendar/sync/Offline;->e()Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v0

    invoke-virtual {v0, p3}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->setSkipNotificationEmail(Z)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->forDate(J)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v0

    invoke-virtual {v0, p8}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->andTimeZone(Ljava/lang/String;)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->parent(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->build()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 589
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->p:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 590
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->p:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0, v3, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->p:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 592
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->p:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->p:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteStatement;)I

    .line 594
    return v3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Z)Z
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 692
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 693
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 694
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "event_source_id"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 695
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-string v2, "event_type"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    const-string v2, "event_title"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 697
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    const-string v2, "event_description"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 698
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x7

    const-string v2, "event_status"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 699
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x8

    const-string v2, "event_start_date"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x9

    const-string v2, "event_end_date"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 701
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xa

    const-string v2, "event_timezone"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 702
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xb

    const-string v2, "event_is_all_day"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 703
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xc

    const-string v2, "event_is_editable"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 704
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xd

    const-string v2, "event_rrule"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 705
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xe

    const-string v2, "event_exdate"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 706
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xf

    const-string v2, "event_recurrence_exceptions"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 707
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x10

    const-string v2, "event_icon_overlay"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x11

    const-string v2, "event_icon_base_color"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 709
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x12

    const-string v2, "event_user_rsvp_status"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 710
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x13

    const-string v2, "event_reminders"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 711
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x14

    const-string v2, "event_attendees_count"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 712
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x15

    invoke-static {}, Lam/sunrise/android/calendar/sync/Offline;->d()Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v2

    invoke-virtual {v2, p4}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->setSkipNotificationEmail(Z)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    move-result-object v2

    invoke-virtual {v2}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->build()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->w:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 554
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->l:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 555
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->l:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0, v2, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 556
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->l:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->l:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-static {v0, v1, p3}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 558
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->l:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteStatement;)I

    .line 559
    return v2
.end method

.method public b(Ljava/lang/String;Z)I
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->h:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 497
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->h:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 498
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->h:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 499
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->h:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteStatement;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 599
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 600
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 601
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "person_kind"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-string v2, "person_name"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 603
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    const-string v2, "person_email_1"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 604
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    const-string v2, "person_email_2"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x7

    const-string v2, "person_is_self"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 606
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x8

    const-string v2, "person_facebook_id"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 607
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x9

    const-string v2, "person_firstname"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 608
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xa

    const-string v2, "person_lastname"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 609
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xb

    const-string v2, "person_thumbnail_url"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 610
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xc

    const-string v2, "person_cover_url"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 611
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xd

    const-string v2, "person_cover_offset_y"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 612
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xe

    const-string v2, "person_birthday"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 613
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xf

    const-string v2, "person_rsvp_status"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->q:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->b(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Landroid/content/ContentValues;)Z
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->o:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 580
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->o:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    const-string v2, "occurrence_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->o:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    const-string v2, "occurrence_is_all_day"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->o:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "occurrence_start_date"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 583
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->o:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-string v2, "occurrence_end_date"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 584
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->o:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    const-string v2, "occurrence_user_rsvp_status"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 585
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->o:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 457
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->d:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    const-string v2, "calendar_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->d:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->d:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "calendar_type"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 460
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->d:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-string v2, "calendar_title"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->d:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    const-string v2, "calendar_description"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 462
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->d:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    const-string v2, "calendar_color"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 463
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->d:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x7

    const-string v2, "calendar_is_writable"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->d:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x8

    const-string v2, "calendar_is_enabled"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->d:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x9

    const-string v2, "calendar_priority"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->d:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xa

    const-string v2, "calendar_reminders"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 563
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->m:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 564
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->m:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0, v2, p2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->m:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 566
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->m:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->m:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 472
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->e:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    const-string v2, "calendar_type"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->e:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    const-string v2, "calendar_title"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 474
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->e:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "calendar_description"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->e:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-string v2, "calendar_color"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->e:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    const-string v2, "calendar_is_writable"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->e:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteStatement;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->i:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 504
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->i:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    const-string v2, "suggested_people_name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->i:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    const-string v2, "suggested_people_firstname"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 506
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->i:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "suggested_people_lastname"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->i:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-string v2, "suggested_people_email"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 508
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->i:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    const-string v2, "suggested_people_score"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->i:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->i:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 515
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    const-string v2, "event_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 516
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 517
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "event_source_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 518
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-string v2, "event_type"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    const-string v2, "event_status"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 520
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    const-string v2, "event_title"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x7

    const-string v2, "event_description"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 522
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x8

    const-string v2, "event_start_date"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 523
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x9

    const-string v2, "event_end_date"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xa

    const-string v2, "event_timezone"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 525
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xb

    const-string v2, "event_is_all_day"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 526
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xc

    const-string v2, "event_is_editable"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xd

    const-string v2, "event_rrule"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 528
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xe

    const-string v2, "event_exdate"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 529
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xf

    const-string v2, "event_icon_overlay"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x10

    const-string v2, "event_icon_base_color"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x11

    const-string v2, "event_user_rsvp_status"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x12

    const-string v2, "event_reminders"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 533
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x13

    const-string v2, "event_attendees_count"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 534
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->j:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;)Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 3

    .prologue
    .line 625
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 626
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 627
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    const-string v2, "location_city"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 628
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "location_country"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 629
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-string v2, "location_latitude"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 630
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    const-string v2, "location_longitude"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 631
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    const-string v2, "location_name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 632
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x7

    const-string v2, "location_state"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 633
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x8

    const-string v2, "location_street"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x9

    const-string v2, "location_viewport_nelat"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 635
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xa

    const-string v2, "location_viewport_nelng"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 636
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xb

    const-string v2, "location_viewport_swlat"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 637
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xc

    const-string v2, "location_viewport_swlng"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 638
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->s:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;)Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 3

    .prologue
    .line 642
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 643
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    const-string v2, "location_city"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 644
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    const-string v2, "location_country"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 645
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "location_latitude"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 646
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-string v2, "location_longitude"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    const-string v2, "location_name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 648
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    const-string v2, "location_state"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 649
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x7

    const-string v2, "location_street"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 650
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x8

    const-string v2, "location_viewport_nelat"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 651
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0x9

    const-string v2, "location_viewport_nelng"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xa

    const-string v2, "location_viewport_swlat"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 653
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xb

    const-string v2, "location_viewport_swlng"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 654
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    const/16 v1, 0xc

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->t:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteStatement;)I

    move-result v0

    return v0
.end method

.method public h(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 3

    .prologue
    .line 757
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->z:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 758
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->z:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 759
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->z:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    const-string v2, "reminder_alarm_time"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 760
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->z:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    const-string v2, "reminder_value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 761
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->z:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-string v2, "reminder_occurrence_start_date"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Object;)V

    .line 762
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/n;->z:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteStatement;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/provider/n;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 182
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/provider/n;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 183
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/provider/n;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 176
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    .prologue
    .line 198
    const/16 v0, 0x21

    if-ne p2, v0, :cond_0

    .line 199
    :try_start_0
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/provider/n;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    add-int/lit8 p2, p2, 0x1

    .line 202
    :cond_0
    const/16 v0, 0x22

    if-ne p2, v0, :cond_1

    .line 203
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/provider/n;->c(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    add-int/lit8 v0, p2, 0x1

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    sget-object v1, Lam/sunrise/android/calendar/provider/n;->a:Ljava/lang/String;

    const-string v2, "onUpgrade(oldVersion=%d, newVersion=%d) -- EXCEPTION -- %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/provider/n;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 215
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/provider/n;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
