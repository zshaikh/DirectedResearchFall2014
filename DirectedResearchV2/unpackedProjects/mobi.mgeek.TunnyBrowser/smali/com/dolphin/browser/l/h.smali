.class public Lcom/dolphin/browser/l/h;
.super Ljava/lang/Object;
.source "PasswordDatabase.java"


# static fields
.field private static a:Lcom/dolphin/browser/l/k;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/l/h;->a:Lcom/dolphin/browser/l/k;

    .line 195
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/l/h;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/dolphin/browser/l/k;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/k;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/l/h;->a:Lcom/dolphin/browser/l/k;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/l/i;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/dolphin/browser/l/h;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/l/h;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/dolphin/browser/l/j;->a()Lcom/dolphin/browser/l/h;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 240
    if-eqz p2, :cond_0

    .line 241
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 242
    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "host"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    const-string v1, "sync_status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    const-string v1, "deleted"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    if-eqz p3, :cond_1

    .line 251
    const-string v1, "host=? AND username=?"

    .line 252
    new-array v2, v5, [Ljava/lang/String;

    aput-object p2, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    .line 253
    const-string v3, "password"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const-string v1, "password"

    const-string v2, "host"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    const-string v1, "password"

    const-string v2, "host"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private f()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 200
    sget-object v0, Lcom/dolphin/browser/l/h;->a:Lcom/dolphin/browser/l/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 205
    :try_start_0
    const-string v1, "password"

    sget-object v2, Lcom/dolphin/browser/l/h;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-ne v0, v8, :cond_2

    move v0, v8

    :goto_0
    move v9, v0

    .line 212
    :cond_0
    if-eqz v1, :cond_1

    .line 214
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    :cond_1
    :goto_1
    return v9

    :cond_2
    move v0, v9

    .line 207
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 209
    :catch_1
    move-exception v0

    move-object v1, v10

    .line 210
    :goto_2
    :try_start_3
    const-string v2, "PasswordDatabase"

    const-string v3, "hasEntries"

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    if-eqz v1, :cond_1

    .line 214
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 215
    :catch_2
    move-exception v0

    .line 216
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_3
    if-eqz v1, :cond_3

    .line 214
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 217
    :cond_3
    :goto_4
    throw v0

    .line 215
    :catch_3
    move-exception v1

    .line 216
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_4

    .line 212
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 209
    :catch_4
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/dolphin/browser/l/h;->a:Lcom/dolphin/browser/l/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 269
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lcom/dolphin/browser/l/h;->a:Lcom/dolphin/browser/l/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 264
    const-string v1, "host"

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 306
    new-array v2, v1, [Ljava/lang/String;

    aput-object p1, v2, v8

    .line 307
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v8

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 311
    :try_start_0
    const-string v1, "userinfo"

    const-string v3, "email =? AND logintype =? "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 313
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 319
    :goto_0
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    .line 321
    :goto_1
    int-to-long v0, v0

    return-wide v0

    .line 316
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 317
    :goto_2
    :try_start_2
    const-string v2, "PasswordDatabase"

    const-string v3, "getUserInfoAsLong"

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 319
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    move v0, v8

    .line 320
    goto :goto_1

    .line 319
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_3
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 316
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    move v0, v8

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 279
    sget-object v0, Lcom/dolphin/browser/l/h;->a:Lcom/dolphin/browser/l/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 280
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    if-nez p2, :cond_0

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/l/h;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/dolphin/browser/l/h;->a:Lcom/dolphin/browser/l/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/dolphin/browser/l/h;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/ContentValues;Ljava/lang/String;I)Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 325
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 327
    const-string v3, "userinfo"

    const-string v4, "email =? AND logintype =? "

    invoke-virtual {p0, v3, p1, v4, v2}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 328
    cmp-long v4, v5, v2

    if-nez v4, :cond_0

    .line 329
    const-string v2, "email"

    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v2, "logintype"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v2, "userinfo"

    invoke-virtual {p0, v2, p1}, Lcom/dolphin/browser/l/h;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 333
    :cond_0
    cmp-long v2, v2, v5

    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 70
    if-nez p1, :cond_1

    move-object v0, v8

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "username"

    aput-object v0, v2, v1

    const-string v0, "password"

    aput-object v0, v2, v3

    .line 77
    const-string v0, "(host = ? AND deleted = 0 )"

    .line 79
    const-string v0, "date DESC"

    .line 83
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/l/h;->a:Lcom/dolphin/browser/l/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 84
    const-string v1, "password"

    const-string v3, "(host = ? AND deleted = 0 )"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    const/4 v0, 0x0

    :try_start_2
    const-string v2, "username"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0

    .line 91
    const/4 v0, 0x1

    const-string v2, "password"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v8

    .line 99
    :goto_1
    if-eqz v1, :cond_0

    .line 101
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    .line 95
    :goto_2
    :try_start_4
    const-string v2, "PasswordDatabase"

    const-string v3, "getUsernamePassword"

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    if-eqz v8, :cond_0

    .line 101
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 102
    :catch_2
    move-exception v1

    .line 103
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 96
    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    .line 97
    :goto_3
    :try_start_6
    const-string v2, "PasswordDatabase"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 99
    if-eqz v8, :cond_0

    .line 101
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 102
    :catch_4
    move-exception v1

    .line 103
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 99
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_2

    .line 101
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 104
    :cond_2
    :goto_5
    throw v0

    .line 102
    :catch_5
    move-exception v1

    .line 103
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_5

    .line 99
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_4

    .line 96
    :catch_6
    move-exception v0

    move-object v9, v0

    move-object v0, v8

    move-object v8, v1

    move-object v1, v9

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v9, v0

    move-object v0, v8

    move-object v8, v1

    move-object v1, v9

    goto :goto_3

    .line 94
    :catch_8
    move-exception v0

    move-object v9, v0

    move-object v0, v8

    move-object v8, v1

    move-object v1, v9

    goto :goto_2

    :catch_9
    move-exception v0

    move-object v9, v0

    move-object v0, v8

    move-object v8, v1

    move-object v1, v9

    goto :goto_2

    :cond_3
    move-object v0, v8

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    sget-object v0, Lcom/dolphin/browser/l/h;->a:Lcom/dolphin/browser/l/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    const-string v1, "password"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/dolphin/browser/l/h;->f()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/l/n;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 339
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "host"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "username"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "password"

    aput-object v1, v2, v0

    .line 348
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/l/h;->a:Lcom/dolphin/browser/l/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/k;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 349
    const-string v1, "password"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 350
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 353
    :cond_0
    :try_start_2
    new-instance v1, Lcom/dolphin/browser/l/n;

    invoke-direct {v1}, Lcom/dolphin/browser/l/n;-><init>()V

    .line 354
    const-string v3, "host"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/dolphin/browser/l/n;->a:Ljava/lang/String;

    .line 356
    const-string v3, "username"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/dolphin/browser/l/n;->b:Ljava/lang/String;

    .line 358
    const-string v3, "password"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/dolphin/browser/l/n;->c:Ljava/lang/String;

    .line 360
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    .line 368
    :goto_0
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    .line 370
    :goto_1
    return-object v0

    .line 363
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    .line 364
    :goto_2
    :try_start_3
    const-string v2, "PasswordDatabase"

    const-string v3, "getUsernamePassword"

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 368
    invoke-static {v8}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    goto :goto_1

    .line 365
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    .line 366
    :goto_3
    :try_start_4
    const-string v3, "PasswordDatabase"

    const-string v4, "getUsernamePassword"

    invoke-static {v3, v4, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 368
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_4
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v8

    goto :goto_4

    .line 365
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3

    .line 363
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    move-object v8, v2

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v8, v2

    goto :goto_2

    :cond_1
    move-object v0, v8

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 376
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/l/h;->a:Lcom/dolphin/browser/l/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/l/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
