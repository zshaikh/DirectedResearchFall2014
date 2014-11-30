.class public Lcom/dolphin/browser/mostvisit/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MostVisitedUrlDatabaseHelper.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/mostvisit/f;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 47
    const-string v0, "mostvisited.db"

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    return-void
.end method

.method static a()Lcom/dolphin/browser/mostvisit/f;
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/dolphin/browser/mostvisit/f;->a:Lcom/dolphin/browser/mostvisit/f;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/dolphin/browser/mostvisit/f;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/mostvisit/f;->a:Lcom/dolphin/browser/mostvisit/f;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/dolphin/browser/mostvisit/f;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/mostvisit/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/mostvisit/f;->a:Lcom/dolphin/browser/mostvisit/f;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/dolphin/browser/mostvisit/f;->a:Lcom/dolphin/browser/mostvisit/f;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 81
    const-string v0, "MostVisitedUrlDatabaseHelper"

    const-string v1, "clear database"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v1, "sqlite_master"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    const-string v0, "type"

    aput-object v0, v2, v9

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 83
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string v2, "android_metadata"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sqlite_sequence"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string v3, "drop %s if exists %s;"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v8

    aput-object v1, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 63
    const-string v0, "MostVisitedUrlDatabaseHelper"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v0, "CREATE TABLE IF NOT EXISTS black_list (_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT NOT NULL, status INTEGER DEFAULT 0,  UNIQUE (url));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v0, "CREATE TABLE IF NOT EXISTS top_sites (_id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, url TEXT NOT NULL, total_visits INTEGER DEFAULT 0, last_visit_date INTEGER, score INTEGER DEFAULT 0,  UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "CREATE TABLE IF NOT EXISTS visit_details (_id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT NOT NULL, visit_type INTEGER DEFAULT 0, visit_date INTEGER, point INTEGER,  UNIQUE (url, visit_type, visit_date));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/dolphin/browser/mostvisit/f;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 97
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 72
    const-string v0, "MostVisitedUrlDatabaseHelper"

    const-string v1, "onUpgrade"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/16 v0, 0xb

    if-eq p2, v0, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/dolphin/browser/mostvisit/f;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/mostvisit/f;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    :cond_0
    return-void
.end method
