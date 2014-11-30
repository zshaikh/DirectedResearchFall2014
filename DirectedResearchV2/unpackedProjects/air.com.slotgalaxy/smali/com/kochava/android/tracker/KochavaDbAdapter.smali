.class public Lcom/kochava/android/tracker/KochavaDbAdapter;
.super Ljava/lang/Object;
.source "KochavaDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL,created_at INTEGER NOT NULL);"

.field private static final DATABASE_CREATE_2:Ljava/lang/String; = "CREATE TABLE keys (id STRING NOT NULL PRIMARY KEY, data STRING NOT NULL);"

.field private static final DATABASE_INDEX:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS time_idx ON events (created_at);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "KochavaFeatureTracker"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "events"

.field private static final DATABASE_TABLE_2:Ljava/lang/String; = "keys"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final KEY_CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final LOGTAG:Ljava/lang/String; = "KochavaDbAdapter"


# instance fields
.field private kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    .line 93
    return-void
.end method


# virtual methods
.method public addEvent(Lorg/json/JSONObject;)I
    .locals 8
    .param p1, "j"    # Lorg/json/JSONObject;

    .prologue
    const-string v5, "addEvent"

    const-string v5, "KochavaDbAdapter"

    .line 101
    monitor-enter p0

    .line 103
    :try_start_0
    sget-boolean v5, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "KochavaDbAdapter"

    const-string v6, "addEvent"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 106
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, -0x1

    .line 109
    .local v1, "count":I
    :try_start_1
    iget-object v5, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v5}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 111
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v5, "created_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    const-string v5, "events"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 116
    const-string v5, "SELECT * FROM events"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 121
    :try_start_2
    iget-object v5, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v5}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 126
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    .line 118
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 119
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    sget-boolean v5, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "KochavaDbAdapter"

    const-string v6, "addEvent"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    :cond_2
    :try_start_4
    iget-object v5, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v5}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 101
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "count":I
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 120
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v1    # "count":I
    :catchall_1
    move-exception v5

    .line 121
    :try_start_5
    iget-object v6, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v6}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 122
    if-eqz v0, :cond_3

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_3
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public cleanupEvents(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    const-string v2, "KochavaDbAdapter"

    .line 136
    monitor-enter p0

    .line 138
    :try_start_0
    sget-boolean v2, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KochavaDbAdapter"

    const-string v3, "cleanupEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v2}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 142
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "events"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "created_at <= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    :try_start_2
    iget-object v2, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v2}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 136
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    return-void

    .line 143
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 145
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    sget-boolean v2, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "KochavaDbAdapter"

    const-string v3, "cleanupEvents"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v2}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    goto :goto_0

    .line 136
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 146
    :catchall_1
    move-exception v2

    .line 147
    :try_start_5
    iget-object v3, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v3}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 148
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public generateDataString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-string v7, "KochavaDbAdapter"

    .line 256
    monitor-enter p0

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 259
    .local v2, "data":Ljava/lang/String;
    const/4 v6, 0x0

    .line 262
    .local v6, "timestamp":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v7}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 263
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "SELECT * FROM events ORDER BY created_at ASC"

    .line 264
    const/4 v8, 0x0

    .line 263
    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 265
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 267
    .local v0, "arr":Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 279
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 281
    sget-boolean v7, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 282
    const-string v7, "KochavaDbAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[JSON DATA VER 4] : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kochava/android/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 290
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v7}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 291
    if-eqz v1, :cond_2

    .line 292
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 296
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    if-eqz v2, :cond_7

    .line 300
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :goto_2
    return-object v7

    .line 268
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 269
    const-string v7, "created_at"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 272
    :cond_4
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    const-string v7, "data"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 273
    .local v5, "j":Lorg/json/JSONObject;
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 274
    .end local v5    # "j":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 287
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 288
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    sget-boolean v7, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "KochavaDbAdapter"

    const-string v8, "generateDataString"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 290
    :cond_5
    :try_start_5
    iget-object v7, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v7}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 291
    if-eqz v1, :cond_2

    .line 292
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 256
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 289
    :catchall_1
    move-exception v7

    .line 290
    :try_start_6
    iget-object v8, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v8}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 291
    if-eqz v1, :cond_6

    .line 292
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_6
    throw v7

    .line 302
    :cond_7
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v7, v10

    goto :goto_2
.end method

.method public getApplicationData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 212
    monitor-enter p0

    .line 214
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 215
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    .line 238
    :goto_0
    return-object v3

    .line 216
    :cond_1
    const/4 v0, 0x0

    .line 219
    .local v0, "c":Landroid/database/Cursor;
    :try_start_1
    iget-object v3, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v3}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 220
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT * FROM keys WHERE id=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 223
    const-string v3, "data"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 232
    :try_start_2
    iget-object v4, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v4}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 233
    if-eqz v0, :cond_2

    .line 235
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 212
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 226
    .restart local v0    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 228
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    sget-boolean v3, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "KochavaDbAdapter"

    const-string v4, "generateDataString"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v3}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 233
    if-eqz v0, :cond_4

    .line 235
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 237
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_4
    :goto_1
    monitor-exit p0

    move-object v3, v5

    .line 238
    goto :goto_0

    .line 231
    :catchall_1
    move-exception v3

    .line 232
    iget-object v4, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v4}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 233
    if-eqz v0, :cond_5

    .line 235
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_5
    throw v3

    .line 232
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_6
    iget-object v3, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v3}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 233
    if-eqz v0, :cond_4

    .line 235
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public insertApplicationData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 183
    monitor-enter p0

    .line 185
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 186
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :goto_0
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x0

    .line 190
    .local v0, "c":Landroid/database/Cursor;
    :try_start_1
    iget-object v4, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v4}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 191
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "id"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v4, "data"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v4, "keys"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    :try_start_2
    iget-object v4, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v4}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 203
    if-eqz v0, :cond_2

    .line 205
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 183
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 196
    .restart local v0    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 198
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    sget-boolean v4, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "KochavaDbAdapter"

    const-string v5, "addEvent"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v4}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 203
    if-eqz v0, :cond_2

    .line 205
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 201
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v4

    .line 202
    iget-object v5, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v5}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 203
    if-eqz v0, :cond_4

    .line 205
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public updateApplicationData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 153
    monitor-enter p0

    .line 155
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 156
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_0
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x0

    .line 160
    .local v0, "c":Landroid/database/Cursor;
    :try_start_1
    iget-object v5, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v5}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 161
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "data"

    invoke-virtual {v1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "id=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "whereClause":Ljava/lang/String;
    const-string v5, "keys"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    :try_start_2
    iget-object v5, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v5}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 174
    if-eqz v0, :cond_2

    .line 176
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 153
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "whereClause":Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 167
    .restart local v0    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 169
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    sget-boolean v5, Lcom/kochava/android/tracker/Global;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "KochavaDbAdapter"

    const-string v6, "addEvent"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    :cond_3
    :try_start_4
    iget-object v5, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v5}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 174
    if-eqz v0, :cond_2

    .line 176
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 172
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v5

    .line 173
    iget-object v6, p0, Lcom/kochava/android/tracker/KochavaDbAdapter;->kDb:Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;

    invoke-virtual {v6}, Lcom/kochava/android/tracker/KochavaDbAdapter$KochavaDatabaseHelper;->close()V

    .line 174
    if-eqz v0, :cond_4

    .line 176
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
