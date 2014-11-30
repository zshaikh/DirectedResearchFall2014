.class public Lcom/dolphin/browser/core/bb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UsageDatabaseHelper.java"


# static fields
.field static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "visit_count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "preload_count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "preload_hit_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/core/bb;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 142
    const-string v0, "usage.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/core/bc;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/dolphin/browser/core/bb;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/core/bb;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/dolphin/browser/core/bd;->a()Lcom/dolphin/browser/core/bb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 51
    .line 53
    :try_start_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/dolphin/browser/core/bb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 56
    const-string v1, "url_usage"

    sget-object v2, Lcom/dolphin/browser/core/bb;->a:[Ljava/lang/String;

    const-string v3, "source=? AND url=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 58
    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 59
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    const-string v3, "visit_count"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 61
    const-string v4, "visit_count"

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v3, "last_access"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    const-string v3, "url_usage"

    const-string v4, "source=? AND url=?"

    invoke-virtual {v0, v3, v9, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :goto_0
    if-eqz v1, :cond_0

    .line 75
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    :try_start_3
    const-string v2, "source"

    invoke-virtual {v9, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "url"

    invoke-virtual {v9, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "visit_count"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v2, "last_access"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    const-string v2, "url_usage"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 73
    :goto_2
    if-eqz v0, :cond_0

    .line 75
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 76
    :catch_1
    move-exception v0

    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_2

    .line 75
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 77
    :cond_2
    :goto_4
    throw v0

    .line 76
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 73
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 71
    :catch_4
    move-exception v0

    move-object v0, v8

    goto :goto_2
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 99
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/dolphin/browser/core/bb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 101
    const-string v1, "url_usage"

    sget-object v2, Lcom/dolphin/browser/core/bb;->a:[Ljava/lang/String;

    const-string v3, "source=? AND url=?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v9

    aput-object p2, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 103
    new-array v2, v11, [Ljava/lang/String;

    aput-object p1, v2, v9

    aput-object p2, v2, v10

    .line 104
    if-eqz v1, :cond_1

    .line 105
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    const-string v3, "preload_count"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 107
    const-string v4, "preload_count"

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v3, "url_usage"

    const-string v4, "source=? AND url=?"

    invoke-virtual {v0, v3, v8, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 147
    const-string v0, "CREATE TABLE IF NOT EXISTS url_usage (_id INTEGER PRIMARY KEY AUTOINCREMENT,source TEXT NOT NULL, url TEXT NOT NULL, visit_count INTEGER DEFAULT 0, preload_count INTEGER DEFAULT 0, preload_hit_count INTEGER DEFAULT 0, last_access INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method
