.class public abstract Lcom/dolphin/browser/sync/k;
.super Ljava/lang/Object;
.source "BaseSynchronizer.java"


# static fields
.field private static a:Z


# instance fields
.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Landroid/content/Context;

.field protected d:Lcom/dolphin/browser/DolphinService/Account/p;

.field protected e:Lcom/dolphin/browser/sync/b;

.field private f:Ljava/lang/String;

.field private g:Lcom/dolphin/browser/sync/o;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/k;->b:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/sync/k;->h:I

    .line 195
    iput-object p2, p0, Lcom/dolphin/browser/sync/k;->f:Ljava/lang/String;

    .line 197
    iput-object p1, p0, Lcom/dolphin/browser/sync/k;->c:Landroid/content/Context;

    .line 198
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/sync/k;)Lcom/dolphin/browser/sync/o;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->g:Lcom/dolphin/browser/sync/o;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/dolphin/browser/sync/m;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/sync/m;-><init>(Lcom/dolphin/browser/sync/k;I)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/dolphin/browser/sync/k;->h:I

    return v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2

    .prologue
    .line 456
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Lorg/json/JSONObject;)J
    .locals 2

    .prologue
    .line 444
    const-string v0, "chunk_latest_sid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;JJLandroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/p;
    .locals 7

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/k;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;JJLjava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 401
    new-instance v1, Lcom/dolphin/browser/sync/p;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/sync/p;-><init>(Lcom/dolphin/browser/sync/k;)V

    .line 404
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 406
    const-string v2, "chunk_latest_sid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/dolphin/browser/sync/p;->a:J

    .line 407
    const-string v2, "latest_sid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/dolphin/browser/sync/p;->b:J

    .line 409
    invoke-virtual {p0, v0, p7}, Lcom/dolphin/browser/sync/k;->a(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    .line 410
    if-nez v0, :cond_0

    .line 412
    new-instance v0, Lcom/dolphin/browser/sync/v;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/dolphin/browser/sync/v;-><init>(I)V

    throw v0

    .line 417
    :cond_0
    return-object v1
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;JJLandroid/database/sqlite/SQLiteDatabase;J)Lcom/dolphin/browser/sync/p;
    .locals 10

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/k;->a()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v8, p8

    invoke-virtual/range {v1 .. v9}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;JJLjava/lang/String;J)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v1

    .line 426
    new-instance v2, Lcom/dolphin/browser/sync/p;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/sync/p;-><init>(Lcom/dolphin/browser/sync/k;)V

    .line 427
    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 429
    const-string v3, "chunk_latest_sid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/dolphin/browser/sync/p;->a:J

    .line 430
    const-string v3, "latest_sid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/dolphin/browser/sync/p;->b:J

    .line 432
    move-object/from16 v0, p7

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/sync/k;->a(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    .line 433
    if-nez v1, :cond_0

    .line 435
    new-instance v1, Lcom/dolphin/browser/sync/v;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/dolphin/browser/sync/v;-><init>(I)V

    throw v1

    .line 440
    :cond_0
    return-object v2
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/dolphin/browser/sync/k;->h:I

    .line 70
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/sync/b;->b(J)V

    .line 158
    :cond_0
    return-void
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/sync/b;->a(J)V

    .line 146
    :cond_0
    return-void
.end method

.method public abstract a(Landroid/database/sqlite/SQLiteDatabase;J)V
.end method

.method public a(Lcom/dolphin/browser/DolphinService/Account/p;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/dolphin/browser/sync/k;->d:Lcom/dolphin/browser/DolphinService/Account/p;

    .line 100
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    .prologue
    .line 336
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sync/k;->b(Lorg/json/JSONObject;)J

    move-result-wide v1

    .line 337
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sync/k;->a(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v11

    .line 338
    new-instance v3, Lcom/dolphin/browser/sync/p;

    invoke-direct {v3, p0}, Lcom/dolphin/browser/sync/p;-><init>(Lcom/dolphin/browser/sync/k;)V

    .line 341
    const-wide/16 v3, 0x0

    cmp-long v3, v3, v11

    if-nez v3, :cond_3

    .line 344
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    move-wide v4, v11

    .line 345
    :goto_0
    cmp-long v3, v1, v4

    if-eqz v3, :cond_1

    .line 346
    sub-long v6, v1, v4

    const-wide/16 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v10}, Lcom/dolphin/browser/sync/k;->a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;JJLandroid/database/sqlite/SQLiteDatabase;J)Lcom/dolphin/browser/sync/p;

    move-result-object v1

    .line 348
    cmp-long v2, v4, v11

    if-lez v2, :cond_0

    .line 349
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sync/k;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 351
    :cond_0
    iget-wide v4, v1, Lcom/dolphin/browser/sync/p;->a:J

    .line 352
    iget-wide v1, v1, Lcom/dolphin/browser/sync/p;->b:J

    .line 353
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/k;->i()V

    goto :goto_0

    .line 355
    :cond_1
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sync/k;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 373
    :cond_2
    :goto_1
    return-void

    .line 359
    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    move-wide v4, v11

    .line 360
    :goto_2
    cmp-long v3, v1, v4

    if-eqz v3, :cond_5

    .line 361
    sub-long v6, v1, v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/dolphin/browser/sync/k;->a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;JJLandroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/p;

    move-result-object v1

    .line 363
    cmp-long v2, v4, v11

    if-lez v2, :cond_4

    .line 364
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sync/k;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 366
    :cond_4
    iget-wide v4, v1, Lcom/dolphin/browser/sync/p;->a:J

    .line 367
    iget-wide v1, v1, Lcom/dolphin/browser/sync/p;->b:J

    .line 368
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/k;->i()V

    goto :goto_2

    .line 370
    :cond_5
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sync/k;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_1
.end method

.method public a(Lcom/dolphin/browser/sync/b;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    .line 82
    return-void
.end method

.method public a(Lcom/dolphin/browser/sync/o;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/dolphin/browser/sync/k;->g:Lcom/dolphin/browser/sync/o;

    .line 104
    return-void
.end method

.method public abstract a(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)Z
.end method

.method public b(Lorg/json/JSONObject;)J
    .locals 2

    .prologue
    .line 449
    .line 450
    const-string v0, "latest_sid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 451
    return-wide v0
.end method

.method public b(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/sync/k;->b(Lorg/json/JSONObject;)J

    move-result-wide v0

    .line 330
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/sync/k;->a(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    .line 331
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/dolphin/browser/sync/k;->a(JJ)V

    .line 332
    return-void
.end method

.method public abstract b(Landroid/database/sqlite/SQLiteDatabase;)Z
.end method

.method public abstract c()V
.end method

.method public abstract c(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    if-eqz v0, :cond_1

    .line 163
    const-string v3, "sync_status = 2 OR sync_status = 3 OR sync_status = 4"

    .line 166
    const-wide/16 v9, 0x0

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/k;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 170
    if-eqz v1, :cond_3

    .line 171
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    int-to-long v2, v0

    .line 175
    :goto_0
    if-eqz v1, :cond_0

    .line 177
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    invoke-virtual {v0, v2, v3}, Lcom/dolphin/browser/sync/b;->b(J)V

    .line 186
    :cond_1
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 175
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_2

    .line 177
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 180
    :cond_2
    :goto_3
    throw v0

    .line 178
    :catch_1
    move-exception v1

    .line 179
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_3

    .line 175
    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_3
    move-wide v2, v9

    goto :goto_0
.end method

.method public e()Lcom/dolphin/browser/sync/b;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    return-object v0
.end method

.method public e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/sync/k;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 377
    return-void
.end method

.method public f()Lcom/dolphin/browser/DolphinService/Account/p;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->d:Lcom/dolphin/browser/DolphinService/Account/p;

    return-object v0
.end method

.method public f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/sync/k;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 381
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/dolphin/browser/sync/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sync/l;-><init>(Lcom/dolphin/browser/sync/k;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/sync/k;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 385
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 386
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 387
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/b;->a()V

    .line 140
    :cond_0
    return-void
.end method

.method public h(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/k;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deleted = 1 AND sync_status = 1"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 476
    const-string v1, "BaseSynchronizer"

    const-string v2, "Deleted %d \'pending delete\' items..."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 477
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/b;->e()V

    .line 152
    :cond_0
    return-void
.end method

.method j()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->e:Lcom/dolphin/browser/sync/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/b;->f()V

    .line 192
    :cond_0
    return-void
.end method

.method k()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 205
    invoke-static {}, Lcom/dolphin/browser/sync/f;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v0, "BaseSynchronizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start sync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/sync/k;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/k;->k()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 212
    if-nez v0, :cond_2

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "failed to open database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->d()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/sync/k;->d:Lcom/dolphin/browser/DolphinService/Account/p;

    .line 217
    iget-object v1, p0, Lcom/dolphin/browser/sync/k;->d:Lcom/dolphin/browser/DolphinService/Account/p;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dolphin/browser/sync/k;->d:Lcom/dolphin/browser/DolphinService/Account/p;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/p;->c()Z

    move-result v1

    if-nez v1, :cond_4

    .line 218
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no valid token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_4
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/k;->m()Lcom/dolphin/browser/sync/n;

    move-result-object v1

    .line 223
    iget-object v2, v1, Lcom/dolphin/browser/sync/n;->c:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v0}, Lcom/dolphin/browser/sync/k;->b(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 225
    iget-object v2, v1, Lcom/dolphin/browser/sync/n;->b:Lcom/dolphin/browser/DolphinService/WebService/g;

    iget-object v3, v1, Lcom/dolphin/browser/sync/n;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/dolphin/browser/sync/n;->c:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/dolphin/browser/sync/k;->a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 228
    invoke-direct {p0, v4}, Lcom/dolphin/browser/sync/k;->b(I)V

    .line 230
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sync/k;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sync/k;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 234
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sync/k;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 236
    sget-boolean v0, Lcom/dolphin/browser/sync/k;->a:Z

    if-nez v0, :cond_0

    .line 237
    sput-boolean v4, Lcom/dolphin/browser/sync/k;->a:Z

    goto :goto_0
.end method

.method public m()Lcom/dolphin/browser/sync/n;
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/k;->g()V

    .line 319
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/k;->h()V

    .line 320
    new-instance v1, Lcom/dolphin/browser/sync/n;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/sync/n;-><init>(Lcom/dolphin/browser/sync/k;)V

    .line 321
    iget-object v0, p0, Lcom/dolphin/browser/sync/k;->d:Lcom/dolphin/browser/DolphinService/Account/p;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/sync/n;->a:Ljava/lang/String;

    .line 322
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    iput-object v0, v1, Lcom/dolphin/browser/sync/n;->b:Lcom/dolphin/browser/DolphinService/WebService/g;

    .line 323
    iget-object v0, v1, Lcom/dolphin/browser/sync/n;->b:Lcom/dolphin/browser/DolphinService/WebService/g;

    iget-object v2, v1, Lcom/dolphin/browser/sync/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/DolphinService/WebService/g;->e(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, v1, Lcom/dolphin/browser/sync/n;->c:Lorg/json/JSONObject;

    .line 325
    return-object v1
.end method
