.class public Lcom/dolphin/browser/launcher/f;
.super Ljava/lang/Object;
.source "DataManager.java"


# instance fields
.field final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/dolphin/browser/util/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/bq",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/dolphin/browser/util/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/bq",
            "<",
            "Lcom/dolphin/browser/launcher/t;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/Object;

.field e:Lcom/dolphin/browser/launcher/bw;

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Z

.field private i:Z

.field private j:Lcom/dolphin/browser/launcher/q;

.field private k:I

.field private l:Lcom/dolphin/browser/launcher/bk;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/f;->a:Ljava/util/HashSet;

    .line 107
    new-instance v0, Lcom/dolphin/browser/util/bq;

    invoke-direct {v0}, Lcom/dolphin/browser/util/bq;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    .line 108
    new-instance v0, Lcom/dolphin/browser/util/bq;

    invoke-direct {v0}, Lcom/dolphin/browser/util/bq;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/f;->c:Lcom/dolphin/browser/util/bq;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/f;->d:Ljava/lang/Object;

    .line 441
    new-instance v0, Lcom/dolphin/browser/launcher/i;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/i;-><init>(Lcom/dolphin/browser/launcher/f;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/f;->e:Lcom/dolphin/browser/launcher/bw;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/launcher/g;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/f;-><init>()V

    return-void
.end method

.method private a(Landroid/database/Cursor;ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 430
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 432
    if-eqz v1, :cond_0

    .line 433
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 438
    :cond_0
    :goto_0
    return-object v0

    .line 435
    :catch_0
    move-exception v1

    .line 436
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a()Lcom/dolphin/browser/launcher/f;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/dolphin/browser/launcher/u;->a:Lcom/dolphin/browser/launcher/f;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/f;)Lcom/dolphin/browser/launcher/q;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/f;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/f;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 286
    iget-boolean v1, p0, Lcom/dolphin/browser/launcher/f;->i:Z

    if-eqz v1, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/f;->c(I)Ljava/util/List;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/q;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 290
    iget-object v2, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    iget-object v3, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    invoke-static {v3, v1}, Lcom/dolphin/browser/launcher/q;->a(Lcom/dolphin/browser/launcher/q;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/launcher/q;->a(Lcom/dolphin/browser/launcher/q;J)J

    .line 291
    iget-object v2, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    invoke-static {v2, v1}, Lcom/dolphin/browser/launcher/q;->b(Lcom/dolphin/browser/launcher/q;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/launcher/f;->k:I

    .line 293
    iget-object v2, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    invoke-static {v2}, Lcom/dolphin/browser/launcher/q;->a(Lcom/dolphin/browser/launcher/q;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 295
    iget-object v2, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    invoke-static {v2}, Lcom/dolphin/browser/launcher/q;->b(Lcom/dolphin/browser/launcher/q;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    invoke-direct {p0, v1, v0, v0}, Lcom/dolphin/browser/launcher/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 298
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/q;->c(Lcom/dolphin/browser/launcher/q;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/f;->f()Ljava/util/List;

    move-result-object v0

    .line 301
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/launcher/f;->l:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/bk;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 302
    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/f;->a(Ljava/util/List;)V

    .line 303
    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/f;->b(Ljava/util/List;)V

    .line 304
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    invoke-static {v2}, Lcom/dolphin/browser/launcher/q;->b(Lcom/dolphin/browser/launcher/q;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/launcher/q;->a(Lcom/dolphin/browser/launcher/q;Lcom/dolphin/browser/util/bq;Z)V

    .line 305
    iput-boolean v6, p0, Lcom/dolphin/browser/launcher/f;->h:Z

    .line 306
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    invoke-static {v0, v5}, Lcom/dolphin/browser/launcher/q;->a(Lcom/dolphin/browser/launcher/q;Z)Z

    .line 307
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    invoke-static {v0, v5}, Lcom/dolphin/browser/launcher/q;->b(Lcom/dolphin/browser/launcher/q;Z)Z

    .line 317
    :goto_1
    iput-boolean v6, p0, Lcom/dolphin/browser/launcher/f;->i:Z

    .line 318
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/f;->c(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_4
    const-string v0, "(container = -100 AND _index < ?) OR container IN (SELECT _id FROM favorites2 WHERE (container = -100 AND _index < ?))"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-direct {p0, v1, v0, v2}, Lcom/dolphin/browser/launcher/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 315
    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/f;->b(Ljava/util/List;)V

    goto :goto_1
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    const/4 v5, 0x0

    .line 420
    :goto_0
    return-object v5

    .line 356
    :cond_0
    :try_start_0
    const-string v5, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 357
    const-string v5, "itemType"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 358
    const-string v5, "flags"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 359
    const-string v5, "container"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 360
    const-string v5, "_index"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 361
    const-string v5, "extras"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 362
    const-string v5, "clicks"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 363
    const-string v5, "create_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 364
    const-string v5, "last_click_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 365
    const-string v5, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 366
    const-string v5, "url"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 367
    const-string v5, "iconType"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 368
    const-string v5, "icon"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 369
    const-string v5, "iconResource"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 370
    const-string v5, "screen"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 372
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 374
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 376
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 377
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 380
    packed-switch v22, :pswitch_data_0

    .line 399
    const-string v6, "DataManager"

    const-string v23, "Unknown item type %d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v24, v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v6, v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 414
    :catch_0
    move-exception v6

    .line 415
    :try_start_2
    const-string v22, "DataManager"

    const-string v23, "Desktop items loading interrupted:"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 420
    :catchall_0
    move-exception v5

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    throw v5

    .line 382
    :pswitch_0
    :try_start_3
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 383
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/launcher/f;->a(Landroid/database/Cursor;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 385
    new-instance v6, Lcom/dolphin/browser/launcher/cl;

    move-wide/from16 v0, v23

    invoke-direct {v6, v0, v1}, Lcom/dolphin/browser/launcher/cl;-><init>(J)V

    .line 386
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/dolphin/browser/launcher/cl;->a:Ljava/lang/String;

    .line 387
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/dolphin/browser/launcher/cl;->b:Ljava/lang/String;

    .line 388
    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/dolphin/browser/launcher/cl;->a(Landroid/graphics/Bitmap;)V

    .line 389
    move/from16 v0, v25

    iput v0, v6, Lcom/dolphin/browser/launcher/cl;->c:I

    .line 390
    move-object/from16 v0, v26

    iput-object v0, v6, Lcom/dolphin/browser/launcher/cl;->d:Ljava/lang/String;

    .line 402
    :goto_2
    move/from16 v0, v22

    iput v0, v6, Lcom/dolphin/browser/launcher/bi;->e:I

    .line 403
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v6, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 404
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v6, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 405
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v6, Lcom/dolphin/browser/launcher/bi;->k:I

    .line 406
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v6, Lcom/dolphin/browser/launcher/bi;->l:Ljava/lang/String;

    .line 407
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v6, Lcom/dolphin/browser/launcher/bi;->m:I

    .line 408
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v6, Lcom/dolphin/browser/launcher/bi;->n:J

    .line 409
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v6, Lcom/dolphin/browser/launcher/bi;->o:J

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/dolphin/browser/launcher/q;->b(Lcom/dolphin/browser/launcher/q;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 411
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v6, Lcom/dolphin/browser/launcher/bi;->g:I

    .line 413
    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 394
    :pswitch_1
    new-instance v6, Lcom/dolphin/browser/launcher/be;

    move-wide/from16 v0, v23

    invoke-direct {v6, v0, v1}, Lcom/dolphin/browser/launcher/be;-><init>(J)V

    .line 395
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/dolphin/browser/launcher/be;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 420
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 347
    const-string v1, "favorites2"

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 348
    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/f;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/f;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/f;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/launcher/f;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 123
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/dolphin/browser/launcher/f;->a(Ljava/lang/Runnable;J)V

    .line 124
    return-void
.end method

.method private a(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/f;->f:Landroid/os/HandlerThread;

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 130
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/f;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/f;->g:Landroid/os/Handler;

    .line 132
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-nez v0, :cond_2

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/launcher/f;->f:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_1

    .line 134
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    if-nez p1, :cond_1

    .line 329
    :cond_0
    return-void

    .line 325
    :cond_1
    new-instance v0, Lcom/dolphin/browser/launcher/e;

    invoke-direct {v0}, Lcom/dolphin/browser/launcher/e;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 326
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 327
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    iput v1, v0, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 326
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 332
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/f;->h:Z

    if-eqz v0, :cond_0

    .line 333
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/f;->d(I)Ljava/util/List;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/q;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 338
    const-string v1, "NOT ((container = -100 AND _index < ?) OR container IN (SELECT _id FROM favorites2 WHERE (container = -100 AND _index < ?)))"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lcom/dolphin/browser/launcher/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 341
    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/f;->b(Ljava/util/List;)V

    .line 342
    iput-boolean v5, p0, Lcom/dolphin/browser/launcher/f;->h:Z

    .line 343
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/f;->d(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/f;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/f;->b(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/launcher/f;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/f;->g()V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v9, -0x64

    .line 508
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/launcher/f;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 513
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 514
    iget-wide v3, v0, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 515
    cmp-long v5, v9, v3

    if-nez v5, :cond_3

    .line 516
    iget-object v5, p0, Lcom/dolphin/browser/launcher/f;->a:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_3
    cmp-long v3, v9, v3

    if-nez v3, :cond_4

    .line 519
    iget v3, v0, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 520
    iget v4, p0, Lcom/dolphin/browser/launcher/f;->k:I

    if-le v3, v4, :cond_4

    .line 521
    iput v3, p0, Lcom/dolphin/browser/launcher/f;->k:I

    .line 524
    :cond_4
    iget-object v3, p0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v0}, Lcom/dolphin/browser/util/bq;->b(JLjava/lang/Object;)V

    .line 525
    iget-object v3, p0, Lcom/dolphin/browser/launcher/f;->c:Lcom/dolphin/browser/util/bq;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v4

    invoke-static {v0}, Lcom/dolphin/browser/launcher/t;->a(Lcom/dolphin/browser/launcher/bi;)Lcom/dolphin/browser/launcher/t;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/dolphin/browser/util/bq;->b(JLjava/lang/Object;)V

    .line 526
    instance-of v3, v0, Lcom/dolphin/browser/launcher/be;

    if-eqz v3, :cond_2

    .line 527
    check-cast v0, Lcom/dolphin/browser/launcher/be;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/be;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/f;->b(Ljava/util/List;)V

    goto :goto_1

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 531
    :cond_5
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 532
    iget-wide v4, v0, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 533
    instance-of v1, v0, Lcom/dolphin/browser/launcher/cl;

    if-eqz v1, :cond_6

    cmp-long v1, v4, v9

    if-eqz v1, :cond_6

    .line 534
    iget-object v1, p0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7, v0}, Lcom/dolphin/browser/util/bq;->b(JLjava/lang/Object;)V

    .line 535
    iget-object v1, p0, Lcom/dolphin/browser/launcher/f;->c:Lcom/dolphin/browser/util/bq;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v6

    invoke-static {v0}, Lcom/dolphin/browser/launcher/t;->a(Lcom/dolphin/browser/launcher/bi;)Lcom/dolphin/browser/launcher/t;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/dolphin/browser/util/bq;->b(JLjava/lang/Object;)V

    .line 536
    iget-object v1, p0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    invoke-virtual {v1, v4, v5}, Lcom/dolphin/browser/util/bq;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/bi;

    .line 537
    instance-of v6, v1, Lcom/dolphin/browser/launcher/be;

    if-eqz v6, :cond_7

    .line 538
    check-cast v1, Lcom/dolphin/browser/launcher/be;

    .line 539
    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/cl;)V

    goto :goto_2

    .line 541
    :cond_7
    const-string v1, "DataManager"

    const-string v6, "Can\'t found folder with id: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v1, v6, v7}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 543
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bi;)V

    goto :goto_2

    .line 547
    :cond_8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private c(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 552
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 553
    iget-wide v3, v0, Lcom/dolphin/browser/launcher/bi;->f:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget v3, v0, Lcom/dolphin/browser/launcher/bi;->j:I

    if-ge v3, p1, :cond_0

    .line 555
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->b()V

    .line 556
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    :cond_1
    return-object v1
.end method

.method private d(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 564
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 565
    iget-wide v3, v0, Lcom/dolphin/browser/launcher/bi;->f:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget v3, v0, Lcom/dolphin/browser/launcher/bi;->j:I

    if-lt v3, p1, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bi;->b()V

    .line 568
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    :cond_1
    return-object v1
.end method

.method private f()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    const/4 v11, 0x0

    .line 164
    const/4 v3, 0x0

    .line 165
    const/4 v10, 0x0

    .line 167
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/launcher/f;->l:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/bk;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "launcher.db"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 169
    :try_start_1
    const-string v3, "favorites"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 170
    :try_start_2
    const-string v3, "_id"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 171
    const-string v3, "intent"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 172
    const-string v3, "title"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 173
    const-string v3, "iconType"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 174
    const-string v3, "icon"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 175
    const-string v3, "iconResource"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 176
    const-string v3, "container"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 177
    const-string v3, "itemType"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 178
    const-string v3, "screen"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 179
    const-string v3, "cellX"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 180
    const-string v3, "cellY"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 181
    const-string v3, "canDelete"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 182
    const-string v3, "isBuiltin"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 184
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    const/4 v4, 0x0

    .line 187
    :goto_0
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_c

    .line 189
    :try_start_4
    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 190
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 193
    sparse-switch v7, :sswitch_data_0

    .line 232
    const-string v3, "DataManager"

    const-string v8, "Unknown item type %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v23, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v23

    invoke-static {v3, v8, v10}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v3

    .line 260
    :try_start_5
    const-string v7, "DataManager"

    const-string v8, "Desktop items loading interrupted:"

    invoke-static {v7, v8, v3}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 269
    :catch_1
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    .line 270
    :goto_1
    :try_start_6
    invoke-static {v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 272
    if-eqz v5, :cond_0

    .line 273
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_0
    if-eqz v4, :cond_f

    .line 276
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v2, v3

    .line 280
    :goto_2
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 281
    :cond_1
    const/4 v2, 0x0

    .line 283
    :cond_2
    return-object v2

    .line 197
    :sswitch_0
    :try_start_7
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {v3, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v8

    .line 201
    :try_start_8
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 202
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v6, v10, v1, v14}, Lcom/dolphin/browser/launcher/f;->a(Landroid/database/Cursor;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 204
    new-instance v3, Lcom/dolphin/browser/launcher/cl;

    move-wide/from16 v0, v23

    invoke-direct {v3, v0, v1}, Lcom/dolphin/browser/launcher/cl;-><init>(J)V

    .line 205
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/dolphin/browser/launcher/cl;->a:Ljava/lang/String;

    .line 206
    invoke-virtual {v8}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/dolphin/browser/launcher/cl;->b:Ljava/lang/String;

    .line 207
    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/launcher/cl;->a(Landroid/graphics/Bitmap;)V

    .line 208
    iput v10, v3, Lcom/dolphin/browser/launcher/cl;->c:I

    .line 209
    move-object/from16 v0, v25

    iput-object v0, v3, Lcom/dolphin/browser/launcher/cl;->d:Ljava/lang/String;

    move v8, v7

    move-object v7, v3

    .line 235
    :goto_3
    iput v8, v7, Lcom/dolphin/browser/launcher/bi;->e:I

    .line 236
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-wide/from16 v0, v23

    iput-wide v0, v7, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 237
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v7, Lcom/dolphin/browser/launcher/bi;->g:I

    .line 238
    move/from16 v0, v19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v7, Lcom/dolphin/browser/launcher/bi;->h:I

    .line 239
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v7, Lcom/dolphin/browser/launcher/bi;->i:I

    .line 240
    iget v3, v7, Lcom/dolphin/browser/launcher/bi;->h:I

    if-le v3, v4, :cond_3

    .line 241
    iget v4, v7, Lcom/dolphin/browser/launcher/bi;->h:I

    .line 243
    :cond_3
    if-lez v21, :cond_9

    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_8

    const/4 v3, 0x1

    .line 244
    :goto_4
    if-nez v3, :cond_4

    .line 245
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Lcom/dolphin/browser/launcher/bi;->a(I)V

    .line 247
    const/4 v3, 0x2

    if-ne v3, v8, :cond_4

    .line 248
    const/16 v3, 0x20

    invoke-virtual {v7, v3}, Lcom/dolphin/browser/launcher/bi;->a(I)V

    .line 251
    :cond_4
    if-lez v22, :cond_b

    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_a

    const/4 v3, 0x1

    .line 252
    :goto_5
    if-eqz v3, :cond_5

    .line 253
    const/4 v3, 0x4

    invoke-virtual {v7, v3}, Lcom/dolphin/browser/launcher/bi;->a(I)V

    .line 255
    :cond_5
    const/4 v3, 0x0

    iput v3, v7, Lcom/dolphin/browser/launcher/bi;->m:I

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-wide/from16 v0, v23

    iput-wide v0, v7, Lcom/dolphin/browser/launcher/bi;->n:J

    .line 257
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    iput-wide v0, v7, Lcom/dolphin/browser/launcher/bi;->o:J

    .line 258
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 272
    :catchall_0
    move-exception v3

    move-object/from16 v27, v3

    move-object v3, v2

    move-object/from16 v2, v27

    :goto_6
    if-eqz v6, :cond_6

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_6
    if-eqz v3, :cond_7

    .line 276
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v2

    .line 215
    :sswitch_1
    const/4 v7, 0x2

    .line 216
    :try_start_9
    new-instance v3, Lcom/dolphin/browser/launcher/be;

    move-wide/from16 v0, v23

    invoke-direct {v3, v0, v1}, Lcom/dolphin/browser/launcher/be;-><init>(J)V

    .line 217
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/dolphin/browser/launcher/be;->b:Ljava/lang/String;

    .line 218
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/dolphin/browser/launcher/be;->a(I)V

    .line 219
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/dolphin/browser/launcher/be;->a(I)V

    .line 220
    const/16 v8, 0x20

    invoke-virtual {v3, v8}, Lcom/dolphin/browser/launcher/be;->a(I)V

    .line 221
    const-string v8, "most_visited_folder"

    invoke-virtual {v3, v8}, Lcom/dolphin/browser/launcher/be;->b(Ljava/lang/String;)V

    move v8, v7

    move-object v7, v3

    .line 223
    goto/16 :goto_3

    .line 226
    :sswitch_2
    new-instance v3, Lcom/dolphin/browser/launcher/be;

    move-wide/from16 v0, v23

    invoke-direct {v3, v0, v1}, Lcom/dolphin/browser/launcher/be;-><init>(J)V

    .line 227
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/dolphin/browser/launcher/be;->b:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v8, v7

    move-object v7, v3

    .line 229
    goto/16 :goto_3

    .line 243
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    const/4 v3, 0x1

    goto :goto_4

    .line 251
    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    .line 264
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 265
    :try_start_a
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolphin/browser/launcher/bi;

    .line 266
    iget v8, v3, Lcom/dolphin/browser/launcher/bi;->i:I

    mul-int/2addr v8, v4

    iget v9, v3, Lcom/dolphin/browser/launcher/bi;->h:I

    add-int/2addr v8, v9

    .line 267
    iput v8, v3, Lcom/dolphin/browser/launcher/bi;->j:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .line 272
    :cond_d
    if-eqz v6, :cond_e

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_e
    if-eqz v2, :cond_10

    .line 276
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v2, v5

    goto/16 :goto_2

    .line 272
    :catchall_1
    move-exception v2

    move-object v6, v11

    goto :goto_6

    :catchall_2
    move-exception v3

    move-object v6, v11

    move-object/from16 v27, v2

    move-object v2, v3

    move-object/from16 v3, v27

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v3, v4

    move-object v6, v5

    goto :goto_6

    .line 269
    :catch_2
    move-exception v2

    move-object v4, v3

    move-object v5, v11

    move-object v3, v10

    goto/16 :goto_1

    :catch_3
    move-exception v3

    move-object v4, v2

    move-object v5, v11

    move-object v2, v3

    move-object v3, v10

    goto/16 :goto_1

    :catch_4
    move-exception v3

    move-object v4, v2

    move-object v5, v6

    move-object v2, v3

    move-object v3, v10

    goto/16 :goto_1

    .line 198
    :catch_5
    move-exception v3

    goto/16 :goto_0

    :cond_f
    move-object v2, v3

    goto/16 :goto_2

    :cond_10
    move-object v2, v5

    goto/16 :goto_2

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private g()V
    .locals 11

    .prologue
    .line 888
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 889
    iget-object v5, p0, Lcom/dolphin/browser/launcher/f;->d:Ljava/lang/Object;

    monitor-enter v5

    .line 890
    :try_start_0
    iget-object v6, p0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    .line 891
    iget-object v7, p0, Lcom/dolphin/browser/launcher/f;->c:Lcom/dolphin/browser/util/bq;

    .line 892
    invoke-virtual {v6}, Lcom/dolphin/browser/util/bq;->a()I

    move-result v8

    .line 893
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v8, :cond_2

    .line 894
    invoke-virtual {v6, v3}, Lcom/dolphin/browser/util/bq;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/bi;

    .line 895
    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v9

    .line 896
    invoke-virtual {v7, v9, v10}, Lcom/dolphin/browser/util/bq;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/launcher/t;

    .line 897
    if-nez v2, :cond_1

    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is in items map but not in position cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    .line 893
    :cond_0
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 901
    :cond_1
    invoke-virtual {v2, v1}, Lcom/dolphin/browser/launcher/t;->b(Lcom/dolphin/browser/launcher/bi;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 902
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 905
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 906
    iget-object v1, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/launcher/q;->a(Ljava/util/ArrayList;)V

    .line 907
    iget-object v3, p0, Lcom/dolphin/browser/launcher/f;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 908
    :try_start_2
    iget-object v5, p0, Lcom/dolphin/browser/launcher/f;->c:Lcom/dolphin/browser/util/bq;

    .line 909
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    move-object v2, v0

    .line 910
    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v6

    .line 911
    invoke-virtual {v5, v6, v7}, Lcom/dolphin/browser/util/bq;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/launcher/t;

    .line 912
    if-eqz v1, :cond_3

    .line 913
    invoke-virtual {v1, v2}, Lcom/dolphin/browser/launcher/t;->c(Lcom/dolphin/browser/launcher/bi;)V

    goto :goto_2

    .line 916
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 917
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bv;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/launcher/bv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    iget-object v3, p0, Lcom/dolphin/browser/launcher/f;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 481
    :try_start_0
    iget-object v4, p0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    .line 482
    invoke-virtual {v4}, Lcom/dolphin/browser/util/bq;->a()I

    move-result v5

    .line 483
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    .line 484
    invoke-virtual {v4, v1}, Lcom/dolphin/browser/util/bq;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 485
    invoke-interface {p1, v0}, Lcom/dolphin/browser/launcher/bv;->a(Lcom/dolphin/browser/launcher/bi;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 486
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 489
    :cond_1
    monitor-exit v3

    .line 490
    return-object v2

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILcom/dolphin/browser/launcher/s;)V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/dolphin/browser/launcher/g;

    invoke-direct {v0, p0, p2, p1}, Lcom/dolphin/browser/launcher/g;-><init>(Lcom/dolphin/browser/launcher/f;Lcom/dolphin/browser/launcher/s;I)V

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/f;->a(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/bi;)V
    .locals 5

    .prologue
    .line 604
    const-string v0, "DataManager"

    const-string v1, "deleteItemFromDatabase %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 605
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v1

    .line 606
    iget-object v3, p0, Lcom/dolphin/browser/launcher/f;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 608
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/util/bq;->c(J)V

    .line 609
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->c:Lcom/dolphin/browser/util/bq;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/util/bq;->c(J)V

    .line 610
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->b()V

    .line 612
    instance-of v0, p1, Lcom/dolphin/browser/launcher/cl;

    if-eqz v0, :cond_2

    .line 613
    check-cast p1, Lcom/dolphin/browser/launcher/cl;

    .line 614
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    iget-wide v3, p1, Lcom/dolphin/browser/launcher/cl;->f:J

    invoke-virtual {v0, v3, v4}, Lcom/dolphin/browser/util/bq;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 615
    instance-of v3, v0, Lcom/dolphin/browser/launcher/be;

    if-eqz v3, :cond_1

    .line 616
    check-cast v0, Lcom/dolphin/browser/launcher/be;

    .line 617
    iget-object v3, p0, Lcom/dolphin/browser/launcher/f;->l:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v3, p1, v0}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/cl;Lcom/dolphin/browser/launcher/be;)V

    .line 624
    :cond_0
    :goto_0
    new-instance v0, Lcom/dolphin/browser/launcher/m;

    invoke-direct {v0, p0, v1, v2}, Lcom/dolphin/browser/launcher/m;-><init>(Lcom/dolphin/browser/launcher/f;J)V

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/f;->a(Ljava/lang/Runnable;)V

    .line 629
    return-void

    .line 610
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->l:Lcom/dolphin/browser/launcher/bk;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/dolphin/browser/launcher/bk;->a(Lcom/dolphin/browser/launcher/cl;Lcom/dolphin/browser/launcher/be;)V

    goto :goto_0

    .line 621
    :cond_2
    instance-of v0, p1, Lcom/dolphin/browser/launcher/be;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->l:Lcom/dolphin/browser/launcher/bk;

    check-cast p1, Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/bk;->b(Lcom/dolphin/browser/launcher/be;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/launcher/bi;JI)V
    .locals 4

    .prologue
    .line 575
    iput-wide p2, p1, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 576
    iput p4, p1, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 577
    const-string v0, "DataManager"

    const-string v1, "moveItemInDatabase %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 578
    iget-object v1, p0, Lcom/dolphin/browser/launcher/f;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    const-wide/16 v2, -0x64

    cmp-long v0, v2, p2

    if-nez v0, :cond_0

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 584
    :goto_0
    monitor-exit v1

    .line 585
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/dolphin/browser/launcher/bi;Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    .line 588
    const-string v0, "container"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_index"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    :cond_0
    iget-wide v0, p1, Lcom/dolphin/browser/launcher/bi;->f:J

    iget v2, p1, Lcom/dolphin/browser/launcher/bi;->j:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bi;JI)V

    .line 592
    :cond_1
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    :goto_0
    return-void

    .line 595
    :cond_2
    const-string v0, "DataManager"

    const-string v1, "updateItemInDatabase %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 596
    new-instance v0, Lcom/dolphin/browser/launcher/l;

    invoke-direct {v0, p0, p2, p1}, Lcom/dolphin/browser/launcher/l;-><init>(Lcom/dolphin/browser/launcher/f;Landroid/content/ContentValues;Lcom/dolphin/browser/launcher/bi;)V

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method a(Lcom/dolphin/browser/launcher/bk;)V
    .locals 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/dolphin/browser/launcher/f;->l:Lcom/dolphin/browser/launcher/bk;

    .line 119
    new-instance v0, Lcom/dolphin/browser/launcher/q;

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/launcher/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    .line 120
    return-void
.end method

.method b()J
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->j:Lcom/dolphin/browser/launcher/q;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/q;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lcom/dolphin/browser/launcher/bv;)Lcom/dolphin/browser/launcher/bi;
    .locals 6

    .prologue
    .line 494
    iget-object v2, p0, Lcom/dolphin/browser/launcher/f;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 495
    :try_start_0
    iget-object v3, p0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    .line 496
    invoke-virtual {v3}, Lcom/dolphin/browser/util/bq;->a()I

    move-result v4

    .line 497
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 498
    invoke-virtual {v3, v1}, Lcom/dolphin/browser/util/bq;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 499
    invoke-interface {p1, v0}, Lcom/dolphin/browser/launcher/bv;->a(Lcom/dolphin/browser/launcher/bi;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 500
    monitor-exit v2

    .line 504
    :goto_1
    return-object v0

    .line 497
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 503
    :cond_1
    monitor-exit v2

    .line 504
    const/4 v0, 0x0

    goto :goto_1

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(ILcom/dolphin/browser/launcher/s;)V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/dolphin/browser/launcher/h;

    invoke-direct {v0, p0, p2, p1}, Lcom/dolphin/browser/launcher/h;-><init>(Lcom/dolphin/browser/launcher/f;Lcom/dolphin/browser/launcher/s;I)V

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/f;->a(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method b(Lcom/dolphin/browser/launcher/bi;)V
    .locals 2

    .prologue
    .line 924
    iget v0, p1, Lcom/dolphin/browser/launcher/bi;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/dolphin/browser/launcher/bi;->m:I

    .line 925
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/dolphin/browser/launcher/bi;->o:J

    .line 926
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    :goto_0
    return-void

    .line 929
    :cond_0
    new-instance v0, Lcom/dolphin/browser/launcher/p;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/launcher/p;-><init>(Lcom/dolphin/browser/launcher/f;Lcom/dolphin/browser/launcher/bi;)V

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Lcom/dolphin/browser/launcher/bi;JI)V
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/util/bq;->d(J)I

    move-result v0

    if-ltz v0, :cond_0

    .line 633
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/launcher/f;->a(Lcom/dolphin/browser/launcher/bi;JI)V

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/launcher/f;->c(Lcom/dolphin/browser/launcher/bi;JI)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 880
    new-instance v0, Lcom/dolphin/browser/launcher/o;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/launcher/o;-><init>(Lcom/dolphin/browser/launcher/f;)V

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/f;->a(Ljava/lang/Runnable;)V

    .line 885
    return-void
.end method

.method public c(Lcom/dolphin/browser/launcher/bi;JI)V
    .locals 5

    .prologue
    .line 640
    iput-wide p2, p1, Lcom/dolphin/browser/launcher/bi;->f:J

    .line 641
    iput p4, p1, Lcom/dolphin/browser/launcher/bi;->j:I

    .line 642
    const-string v0, "DataManager"

    const-string v1, "addItemToDatabase %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 643
    iget-object v1, p0, Lcom/dolphin/browser/launcher/f;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    const-wide/16 v2, -0x64

    cmp-long v0, v2, p2

    if-nez v0, :cond_0

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lcom/dolphin/browser/util/bq;->b(JLjava/lang/Object;)V

    .line 648
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->c:Lcom/dolphin/browser/util/bq;

    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->g()J

    move-result-wide v2

    invoke-static {p1}, Lcom/dolphin/browser/launcher/t;->a(Lcom/dolphin/browser/launcher/bi;)Lcom/dolphin/browser/launcher/t;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/dolphin/browser/util/bq;->b(JLjava/lang/Object;)V

    .line 649
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    iget-object v0, p0, Lcom/dolphin/browser/launcher/f;->l:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/launcher/bk;->c(Lcom/dolphin/browser/launcher/bi;)V

    .line 651
    new-instance v0, Lcom/dolphin/browser/launcher/n;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/launcher/n;-><init>(Lcom/dolphin/browser/launcher/f;Lcom/dolphin/browser/launcher/bi;)V

    invoke-direct {p0, v0}, Lcom/dolphin/browser/launcher/f;->a(Ljava/lang/Runnable;)V

    .line 656
    return-void

    .line 649
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method d()V
    .locals 7

    .prologue
    .line 943
    iget-object v2, p0, Lcom/dolphin/browser/launcher/f;->b:Lcom/dolphin/browser/util/bq;

    .line 944
    invoke-virtual {v2}, Lcom/dolphin/browser/util/bq;->a()I

    move-result v3

    .line 945
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 946
    invoke-virtual {v2, v1}, Lcom/dolphin/browser/util/bq;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 947
    instance-of v4, v0, Lcom/dolphin/browser/launcher/cl;

    if-eqz v4, :cond_0

    .line 948
    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 949
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 950
    iget-object v4, p0, Lcom/dolphin/browser/launcher/f;->l:Lcom/dolphin/browser/launcher/bk;

    iget v5, v0, Lcom/dolphin/browser/launcher/cl;->c:I

    iget-object v0, v0, Lcom/dolphin/browser/launcher/cl;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/dolphin/browser/launcher/f;->e:Lcom/dolphin/browser/launcher/bw;

    invoke-virtual {v4, v5, v0, v6}, Lcom/dolphin/browser/launcher/bk;->a(ILjava/lang/String;Lcom/dolphin/browser/launcher/bw;)V

    .line 945
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 954
    :cond_1
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 964
    iget-object v1, p0, Lcom/dolphin/browser/launcher/f;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 965
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/f;->a:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
