.class public Lcom/dolphin/browser/bookmark/at;
.super Ljava/lang/Object;
.source "BookmarkHelper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:[Ljava/lang/String;


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const-string v0, "folder=? AND type=? AND title=? AND is_folder=? AND deleted=0"

    sput-object v0, Lcom/dolphin/browser/bookmark/at;->a:Ljava/lang/String;

    .line 62
    const-string v0, "folder=? AND type=? AND title=? AND url=? AND is_folder=? AND deleted=0"

    sput-object v0, Lcom/dolphin/browser/bookmark/at;->b:Ljava/lang/String;

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_folder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/bookmark/at;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/at;->d:Landroid/content/Context;

    .line 91
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;J)I
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 172
    .line 173
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 174
    const-string v1, "bookmarks"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "folder=? AND is_folder=1"

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 185
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v1, v8

    move v2, v8

    .line 192
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 193
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v0

    add-int/2addr v2, v0

    .line 192
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    move v2, v8

    .line 197
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 198
    const-string v1, "deleted"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v1, "sync_status"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v1, "bookmarks"

    const-string v3, "folder=? OR _id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    .line 207
    return v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JIILcom/dolphin/browser/bookmark/a/a;)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 431
    .line 432
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 433
    const-string v0, "folder"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 434
    const-string v0, "type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    const-string v0, "title"

    invoke-virtual {p6}, Lcom/dolphin/browser/bookmark/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "url"

    invoke-virtual {p6}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v3, "is_folder"

    invoke-virtual {p6}, Lcom/dolphin/browser/bookmark/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    const-string v0, "_order"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    const-string v0, "sync_status"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 441
    const-string v0, "bookmarks"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 442
    const-wide/16 v5, -0x1

    cmp-long v0, v2, v5

    if-eqz v0, :cond_2

    .line 445
    invoke-virtual {p6}, Lcom/dolphin/browser/bookmark/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/at;->d:Landroid/content/Context;

    invoke-virtual {p6}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v4

    invoke-static {v0, v4, v5, p4}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/content/Context;JI)Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    .line 448
    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/database/sqlite/SQLiteDatabase;JIILjava/util/List;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 451
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v4

    .line 437
    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JIILjava/util/List;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JII",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 402
    const/4 v2, 0x0

    .line 404
    if-nez p4, :cond_1

    .line 406
    const/4 v1, 0x0

    move v14, v1

    move v15, v2

    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_4

    .line 407
    move-object/from16 v0, p6

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dolphin/browser/bookmark/a/a;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p5

    .line 408
    invoke-direct/range {v1 .. v6}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/database/sqlite/SQLiteDatabase;JILcom/dolphin/browser/bookmark/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v15

    .line 406
    :goto_1
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    move v15, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move/from16 v11, p4

    move/from16 v12, p5

    move-object v13, v6

    .line 412
    invoke-direct/range {v7 .. v13}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/database/sqlite/SQLiteDatabase;JIILcom/dolphin/browser/bookmark/a/a;)I

    move-result v1

    add-int v2, v15, v1

    goto :goto_1

    .line 416
    :cond_1
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v15, v1

    move v14, v2

    :goto_2
    if-ltz v15, :cond_3

    .line 417
    move-object/from16 v0, p6

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dolphin/browser/bookmark/a/a;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p5

    .line 418
    invoke-direct/range {v1 .. v6}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/database/sqlite/SQLiteDatabase;JILcom/dolphin/browser/bookmark/a/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v14

    .line 416
    :goto_3
    add-int/lit8 v2, v15, -0x1

    move v15, v2

    move v14, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move/from16 v11, p4

    move/from16 v12, p5

    move-object v13, v6

    .line 422
    invoke-direct/range {v7 .. v13}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/database/sqlite/SQLiteDatabase;JIILcom/dolphin/browser/bookmark/a/a;)I

    move-result v1

    add-int/2addr v1, v14

    goto :goto_3

    :cond_3
    move v15, v14

    .line 426
    :cond_4
    return v15
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 490
    .line 491
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 492
    const-string v0, "folder"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 493
    const-string v0, "sync_status"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v1, v2

    move v3, v2

    .line 495
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 496
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/a/a;

    .line 497
    const-string v5, "bookmarks"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v3, v0

    .line 495
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 501
    :cond_0
    return v3
.end method

.method private a()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 505
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/at;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 506
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 507
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 508
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 509
    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/at;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/bookmark/at;->a()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;JI)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 568
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/bookmark/at;->c:[Ljava/lang/String;

    if-nez p3, :cond_0

    move v0, v6

    :goto_0
    invoke-static {v1, p1, p2, v2, v0}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/ContentResolver;J[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v9

    .line 572
    if-eqz v9, :cond_2

    .line 574
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v7, :cond_1

    move v5, v7

    :goto_2
    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 579
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/a/a;->a([B)V

    .line 580
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move v0, v7

    .line 569
    goto :goto_0

    :cond_1
    move v5, v6

    .line 575
    goto :goto_2

    .line 584
    :cond_2
    invoke-static {v9}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/database/Cursor;)V

    .line 586
    return-object v8
.end method

.method public static a(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 515
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 517
    const-string v2, "title"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v2, "folder"

    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 519
    const-string v2, "url"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v2, "_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 521
    const-string v2, "bookmark"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 522
    invoke-static {p0, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 523
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/dolphin/browser/bookmark/j;)V
    .locals 3

    .prologue
    .line 528
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/j;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00e8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00e7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0159

    new-instance v2, Lcom/dolphin/browser/bookmark/ba;

    invoke-direct {v2, p1}, Lcom/dolphin/browser/bookmark/ba;-><init>(Lcom/dolphin/browser/bookmark/j;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    new-instance v2, Lcom/dolphin/browser/bookmark/az;

    invoke-direct {v2}, Lcom/dolphin/browser/bookmark/az;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 563
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;JJ)V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/dolphin/browser/bookmark/at;->a(Ljava/util/List;JJ)V

    return-void
.end method

.method private a(Ljava/util/List;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 315
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    new-instance v0, Lcom/dolphin/browser/bookmark/ay;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/bookmark/ay;-><init>(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;JJ)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JILcom/dolphin/browser/bookmark/a/a;)Z
    .locals 10

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 456
    .line 460
    invoke-virtual {p5}, Lcom/dolphin/browser/bookmark/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    const-string v1, "bookmarks"

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    sget-object v3, Lcom/dolphin/browser/bookmark/at;->a:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {p5}, Lcom/dolphin/browser/bookmark/a/a;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p5}, Lcom/dolphin/browser/bookmark/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 479
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v8

    .line 483
    :goto_2
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/database/Cursor;)V

    .line 485
    return v0

    .line 461
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 469
    :cond_1
    const-string v1, "bookmarks"

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    sget-object v3, Lcom/dolphin/browser/bookmark/at;->b:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {p5}, Lcom/dolphin/browser/bookmark/a/a;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p5}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v6, 0x4

    invoke-virtual {p5}, Lcom/dolphin/browser/bookmark/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_3
    aput-object v0, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    const-string v0, "0"

    goto :goto_3

    :cond_3
    move v0, v9

    goto :goto_2
.end method

.method static synthetic a(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/at;->c(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/at;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/at;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/at;->d(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;JJ)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/dolphin/browser/bookmark/at;->b(Ljava/util/List;JJ)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/util/List;JJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;JJ)Z"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 350
    cmp-long v0, p2, p4

    if-nez v0, :cond_1

    move v0, v7

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    cmp-long v0, p4, v2

    if-gez v0, :cond_4

    .line 361
    :goto_1
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/at;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/dolphin/browser/provider/Browser;->d(Landroid/content/ContentResolver;J)I

    move-result v4

    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/at;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/provider/Browser;->d(Landroid/content/ContentResolver;J)I

    move-result v5

    .line 370
    if-eq v5, v4, :cond_3

    move-object v0, p0

    move-object v6, p1

    .line 372
    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/database/sqlite/SQLiteDatabase;JIILjava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int v2, v7, v0

    .line 379
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    const/4 v0, 0x1

    .line 384
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 387
    :goto_3
    if-eqz v0, :cond_0

    if-lez v2, :cond_0

    .line 388
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/at;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/s;->n()V

    .line 393
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/at;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 376
    :cond_3
    :try_start_2
    invoke-direct {p0, v1, v2, v3, p1}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/List;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    add-int v2, v7, v0

    goto :goto_2

    .line 381
    :catch_0
    move-exception v0

    move v2, v7

    .line 382
    :goto_4
    :try_start_3
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 384
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v7

    .line 385
    goto :goto_3

    .line 384
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 381
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_4
    move-wide v2, p4

    goto :goto_1
.end method

.method private c(Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    .line 131
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 133
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v3, v2

    move v4, v2

    .line 135
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 136
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 137
    const-string v0, "deleted"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string v0, "sync_status"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/a/a;

    .line 141
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Lcom/dolphin/browser/bookmark/at;->a(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v0

    add-int/2addr v0, v4

    .line 135
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0

    .line 144
    :cond_0
    const-string v7, "bookmarks"

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {v5, v7, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    .line 158
    :goto_2
    if-eqz v0, :cond_3

    if-lez v4, :cond_3

    .line 159
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/bookmark/at;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/s;->n()V

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/at;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 168
    :cond_3
    return v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v2

    .line 156
    goto :goto_2

    .line 155
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private d(Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    .line 228
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 230
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 232
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 233
    const-string v0, "deleted"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v0, "title"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "sync_status"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v2

    move v1, v2

    .line 238
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 239
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/a/a;

    .line 240
    const-string v7, "history"

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {v5, v7, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 238
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v2, v3

    .line 253
    :goto_1
    if-eqz v2, :cond_2

    if-lez v1, :cond_2

    .line 254
    invoke-static {}, Lcom/dolphin/browser/sync/aq;->a()Lcom/dolphin/browser/sync/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/at;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/aq;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ab;->n()V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/at;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 263
    :cond_2
    return v2

    .line 247
    :catch_0
    move-exception v0

    move v1, v2

    .line 248
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 247
    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a(JLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/at;->d:Landroid/content/Context;

    .line 273
    new-instance v5, Lcom/dolphin/browser/bookmark/b/d;

    invoke-static {v0, p3}, Lcom/dolphin/browser/bookmark/bt;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/dolphin/browser/bookmark/b/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 275
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/dolphin/browser/bookmark/b/d;->a(Z)V

    .line 277
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 278
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 279
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0148

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 280
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 281
    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0201b8

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 283
    new-instance v3, Lcom/dolphin/browser/bookmark/aw;

    invoke-direct {v3, p0, v5}, Lcom/dolphin/browser/bookmark/aw;-><init>(Lcom/dolphin/browser/bookmark/at;Lcom/dolphin/browser/bookmark/b/d;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 292
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0026

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 294
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b002f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 297
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0557

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v7, 0x7f0e03c1

    new-instance v0, Lcom/dolphin/browser/bookmark/ax;

    move-object v1, p0

    move-object v2, p3

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/bookmark/ax;-><init>(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;JLcom/dolphin/browser/bookmark/b/d;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 309
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    new-instance v0, Lcom/dolphin/browser/bookmark/au;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/bookmark/au;-><init>(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    new-instance v0, Lcom/dolphin/browser/bookmark/av;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/bookmark/av;-><init>(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    goto :goto_0
.end method
