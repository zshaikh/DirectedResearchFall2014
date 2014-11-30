.class public Lcom/dolphin/browser/sync/r;
.super Ljava/lang/Object;
.source "BookmarkSyncClientStore.java"

# interfaces
.implements Lcom/dolphin/browser/sync/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/sync/ag",
        "<",
        "Lcom/dolphin/browser/sync/q;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/sync/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/dolphin/browser/sync/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/r;->b:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 213
    const/4 v9, -0x1

    .line 214
    invoke-static {p1}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    const-string v1, "%s=?"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "sync_id"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 220
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    .line 226
    :try_start_0
    const-string v1, "bookmarks"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 229
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 233
    :goto_1
    if-eqz v1, :cond_0

    .line 234
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_2

    .line 234
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 233
    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_3
    move v0, v9

    goto :goto_1
.end method

.method private a(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Landroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/q;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 524
    const-string v0, "create bookmark on server:"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->f()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_0

    .line 527
    const-string v1, "create bookmark on server, result=%s, exception=%s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->c()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->b()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 535
    :try_start_0
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 539
    const-string v3, "sync_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v3, "parent_sync_id"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v3, "sync_status"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 542
    const-string v3, "bookmarks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p3, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 545
    invoke-virtual {p2, v1}, Lcom/dolphin/browser/sync/q;->a(Ljava/lang/String;)V

    .line 546
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/dolphin/browser/sync/q;->a(I)V

    .line 548
    const-string v1, "sid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 549
    int-to-long v0, v0

    invoke-virtual {p1, p3, v0, v1}, Lcom/dolphin/browser/sync/k;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 550
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_0
    return-object p2

    .line 551
    :catch_0
    move-exception v0

    .line 552
    sget-object v1, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Lcom/dolphin/browser/sync/q;Landroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/q;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 459
    const-string v0, "update bookmark on server:"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    if-nez p3, :cond_1

    const-string v0, ""

    .line 462
    :goto_0
    invoke-virtual {p2, v0}, Lcom/dolphin/browser/sync/q;->c(Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->f()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/WebService/g;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_0

    .line 466
    const-string v1, "Updated bookmark on server, result=%s, exception=%s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->c()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->b()Ljava/lang/Throwable;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 473
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 474
    const-string v2, "sync_status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    const-string v2, "bookmarks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p4, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 477
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/dolphin/browser/sync/q;->a(I)V

    .line 479
    const-string v1, "sid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 480
    int-to-long v0, v0

    invoke-virtual {p1, p4, v0, v1}, Lcom/dolphin/browser/sync/k;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 481
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_1
    return-object p2

    .line 461
    :cond_1
    invoke-virtual {p3}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    sget-object v1, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private a(Lcom/dolphin/browser/sync/k;Lorg/json/JSONArray;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/sync/k;",
            "Lorg/json/JSONArray;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 607
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 608
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 610
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 611
    const-string v4, "cid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 612
    const-string v5, "sid"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 615
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 616
    const-string v6, "sync_id"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v6, "sync_status"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    const-string v6, "bookmarks"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p3, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 619
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    int-to-long v3, v0

    invoke-virtual {p1, p3, v3, v4}, Lcom/dolphin/browser/sync/k;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 622
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->j()V

    .line 607
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 624
    :cond_0
    return-object v2
.end method

.method private a(Ljava/util/List;II)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/q;",
            ">;II)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 589
    add-int v0, p2, p3

    .line 590
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 591
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 594
    :goto_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 595
    :goto_1
    if-ge p2, v1, :cond_0

    .line 596
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/q;

    .line 597
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 595
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 600
    :cond_0
    return-object v2

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/sync/k;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/sync/k;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/q;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 489
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 493
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 495
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->f()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    invoke-direct {p0, p2, v1, v4}, Lcom/dolphin/browser/sync/r;->a(Ljava/util/List;II)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/dolphin/browser/DolphinService/WebService/g;->b(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 499
    const-string v3, "Updated bookmarks [%d, %d) on server, result=%s, exception=%s."

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    add-int/lit8 v6, v1, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->c()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->b()Ljava/lang/Throwable;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 507
    :try_start_0
    invoke-direct {p0, p1, v0, p3}, Lcom/dolphin/browser/sync/r;->a(Lcom/dolphin/browser/sync/k;Lorg/json/JSONArray;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_1
    add-int/lit8 v0, v1, 0x14

    move v1, v0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    sget-object v3, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method private b(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Lcom/dolphin/browser/sync/q;Landroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/q;
    .locals 1

    .prologue
    .line 518
    if-nez p3, :cond_0

    const-string v0, ""

    .line 519
    :goto_0
    invoke-virtual {p2, v0}, Lcom/dolphin/browser/sync/q;->c(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0, p1, p2, p4}, Lcom/dolphin/browser/sync/r;->a(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Landroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/q;

    move-result-object v0

    return-object v0

    .line 518
    :cond_0
    invoke-virtual {p3}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/sync/k;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/sync/k;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/q;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 558
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 560
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object v3, v0

    .line 585
    :cond_1
    return-object v3

    :cond_2
    move v1, v2

    move-object v3, v0

    .line 564
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 566
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->f()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    invoke-direct {p0, p2, v1, v5}, Lcom/dolphin/browser/sync/r;->a(Ljava/util/List;II)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 569
    const-string v4, "Created bookmarks [%d, %d) on server, result=%s, exception=%s."

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    add-int/lit8 v7, v1, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->c()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->b()Ljava/lang/Throwable;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 577
    :try_start_0
    invoke-direct {p0, p1, v0, p3}, Lcom/dolphin/browser/sync/r;->a(Lcom/dolphin/browser/sync/k;Lorg/json/JSONArray;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 564
    :goto_1
    add-int/lit8 v0, v1, 0x14

    move v1, v0

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    sget-object v4, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private b(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/sync/k;",
            "Lcom/dolphin/browser/sync/q;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/sync/q;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 125
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string v0, "Speed Dial"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    sget-object v0, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    const-string v1, "speed dial, skip apply"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_2
    sget-object v0, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply bookmark "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->j()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 140
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/q;

    .line 141
    if-eqz v0, :cond_4

    .line 142
    const-string v2, "Speed Dial"

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    sget-object v0, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    const-string v1, "speed dial item, skip apply"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_3
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/dolphin/browser/sync/r;->b(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    :cond_4
    invoke-direct {p0, v1, p4}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 154
    const/4 v0, -0x1

    if-ne v0, v1, :cond_5

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/sync/r;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 159
    :cond_5
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->b()Landroid/content/ContentValues;

    move-result-object v2

    .line 160
    const-string v0, "folder"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v0, "sync_status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    invoke-virtual {p2, v8}, Lcom/dolphin/browser/sync/q;->a(I)V

    .line 165
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 167
    const-string v3, "%s=?"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "sync_id"

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 169
    const-string v4, "bookmarks"

    new-array v5, v8, [Ljava/lang/String;

    aput-object v0, v5, v9

    invoke-virtual {p4, v4, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->i()V

    goto/16 :goto_0

    .line 177
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 178
    const-string v0, "%s=?"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "title"

    aput-object v5, v4, v9

    invoke-static {v0, v4}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->l()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->m()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND (%s is null OR %s=\'\')"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "url"

    aput-object v6, v5, v9

    const-string v6, "url"

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND %s=?"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "is_folder"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->i()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND %s=?"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "type"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND %s=?"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "folder"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND %s<>1"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "deleted"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 202
    const-string v5, "bookmarks"

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p4, v5, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 203
    if-nez v0, :cond_7

    .line 204
    sget-object v0, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    const-string v3, "not found %s, insert it"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v9

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 205
    const-string v0, "folder"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v0, "bookmarks"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 208
    :cond_7
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->i()V

    goto/16 :goto_0

    .line 185
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND %s=?"

    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "url"

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private b(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 242
    sget-object v0, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete bookmark on local:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 244
    const-string v1, "deleted"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 245
    const-string v1, "sync_status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v1, "%s=? AND %s is not null"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "sync_id"

    aput-object v3, v2, v5

    const-string v3, "sync_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 248
    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v5

    .line 249
    const-string v3, "bookmarks"

    invoke-virtual {p2, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method private c()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/sync/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/sync/r;->b:Ljava/util/HashMap;

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dolphin/browser/sync/r;->b:Ljava/util/HashMap;

    .line 84
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;Lcom/dolphin/browser/sync/q;)Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 718
    const-string v0, "title"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v0, "url"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v0, "type"

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    return-object p1
.end method

.method public bridge synthetic a(Landroid/content/ContentValues;Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 30
    check-cast p2, Lcom/dolphin/browser/sync/q;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/sync/r;->a(Landroid/content/ContentValues;Lcom/dolphin/browser/sync/q;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/sync/k;",
            "Lcom/dolphin/browser/sync/q;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/sync/q;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Lcom/dolphin/browser/sync/q;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 422
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->e()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->o()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 424
    :cond_0
    sget-object v0, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    const-string v1, "speed dial or its item, skip sync"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_1
    :goto_0
    return-object p2

    .line 427
    :cond_2
    const-string v0, "Uploading folder: %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/q;

    .line 431
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 432
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/dolphin/browser/sync/r;->a(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/q;

    move-result-object v0

    .line 436
    :cond_3
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 437
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/dolphin/browser/sync/r;->b(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Lcom/dolphin/browser/sync/q;Landroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/q;

    move-result-object p2

    .line 438
    const-string v0, "Created folder: %s => %s."

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 440
    :cond_4
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 441
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v1

    if-ne v6, v1, :cond_1

    .line 442
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/dolphin/browser/sync/r;->b(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Lcom/dolphin/browser/sync/q;Landroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/q;

    move-result-object p2

    .line 443
    const-string v0, "Created folder (update not synced): %s => %s."

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 446
    :cond_5
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v1

    if-eq v1, v6, :cond_6

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 448
    :cond_6
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/dolphin/browser/sync/r;->a(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Lcom/dolphin/browser/sync/q;Landroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/q;

    move-result-object p2

    .line 449
    const-string v0, "Update or deleted folder: %s => %s."

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 452
    :cond_7
    const-string v0, "Bypass folder: %s(SyncStatus=%d, SyncId=%d)."

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    const-string v0, "bookmarks"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;Lcom/dolphin/browser/sync/q;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 701
    invoke-virtual {p2}, Lcom/dolphin/browser/sync/q;->k()I

    move-result v0

    .line 703
    if-ne v1, v0, :cond_0

    .line 704
    :try_start_0
    const-string v0, "type"

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 713
    :goto_0
    return-object p1

    .line 705
    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 706
    const-string v0, "type"

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    goto :goto_0

    .line 708
    :cond_1
    const-string v0, "type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 30
    check-cast p2, Lcom/dolphin/browser/sync/q;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/sync/r;->a(Lorg/json/JSONObject;Lcom/dolphin/browser/sync/q;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/sync/k;)V
    .locals 6

    .prologue
    .line 641
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ao;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 643
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    const/16 v2, 0x27

    if-ge v0, v2, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    :try_start_0
    check-cast p1, Lcom/dolphin/browser/sync/a;

    .line 650
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/a;->b()I

    move-result v0

    .line 652
    const-string v2, "%s=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 653
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 654
    const-string v4, "sync_id"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v4, "parent_sync_id"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v4, "sync_status"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    const-string v0, "bookmarks"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 659
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/dolphin/browser/sync/a;->a(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Lcom/dolphin/browser/sync/k;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/sync/k;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/sync/q;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 293
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/q;

    .line 295
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/sync/q;

    .line 297
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 298
    invoke-virtual {v1}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/sync/q;->c(Ljava/lang/String;)V

    .line 300
    :cond_0
    if-nez v1, :cond_1

    .line 301
    const-string v5, ""

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/sync/q;->c(Ljava/lang/String;)V

    .line 303
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 304
    const-string v1, "Upload folder (not synced): %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v5}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/dolphin/browser/sync/r;->a(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;)Lcom/dolphin/browser/sync/q;

    goto :goto_0

    .line 307
    :cond_2
    const-string v5, "Bypass folder: %s (Parent=%s, ParentSyncStatus=%d)."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v7, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    .line 313
    :cond_4
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/q;

    .line 315
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/sync/q;

    .line 317
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    .line 318
    :cond_6
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->e()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v5, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->o()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_8

    .line 320
    :cond_7
    const-string v0, "speed dial or its item, skip sync"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 324
    :cond_8
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 325
    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v5

    if-eq v1, v5, :cond_5

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->h()I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_5

    .line 326
    const-string v1, "Folder to create: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v5}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 329
    :cond_9
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_a

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_b

    .line 331
    :cond_a
    const-string v1, "Folder to update or delete: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v5}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 334
    :cond_b
    const-string v1, "Bypass folder: %s (SyncStatus=%d, SyncId=%s)."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1, v5}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 338
    :cond_c
    const-string v5, "Bypass folder: %s (Parent=%s, ParentSyncStatus=%d)."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 343
    :cond_d
    invoke-direct {p0, p1, v2, p3}, Lcom/dolphin/browser/sync/r;->b(Lcom/dolphin/browser/sync/k;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;

    move-result-object v4

    .line 344
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/sync/q;

    .line 346
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/sync/q;->a(Ljava/lang/String;)V

    .line 347
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/sync/q;->a(I)V

    .line 348
    const-string v2, "Created %s => SyncId=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 352
    :cond_e
    invoke-direct {p0, p1, v3, p3}, Lcom/dolphin/browser/sync/r;->a(Lcom/dolphin/browser/sync/k;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 353
    return-void
.end method

.method public a(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 45
    if-nez p2, :cond_0

    move v0, v2

    .line 78
    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/sync/r;->c()Ljava/util/HashMap;

    move-result-object v4

    .line 53
    sget-object v0, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    const-string v1, "Handling %d lost children..."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v1, v5}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 56
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 59
    :try_start_0
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/sync/q;

    .line 61
    invoke-direct {p0, p1, v1, v4, p2}, Lcom/dolphin/browser/sync/r;->b(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 68
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 74
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 64
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 76
    :goto_3
    sget-object v0, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    const-string v1, "%d lost children reamaining."

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/dolphin/browser/sync/r;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v3

    .line 78
    goto :goto_0

    .line 71
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/dolphin/browser/sync/r;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 72
    sget-object v0, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    const-string v4, "Failed to handleLostChildren."

    invoke-static {v0, v4, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3
.end method

.method public a(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/sync/k;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/sync/q;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 90
    if-nez p2, :cond_0

    .line 121
    :goto_0
    return v1

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 98
    if-eqz p3, :cond_2

    .line 99
    :try_start_0
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/q;

    .line 101
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/dolphin/browser/sync/r;->b(Lcom/dolphin/browser/sync/k;Lcom/dolphin/browser/sync/q;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    :try_start_1
    sget-object v2, Lcom/dolphin/browser/sync/r;->a:Ljava/lang/String;

    const-string v3, "Failed to applayServerDateToDatebase."

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    :goto_2
    move v1, v0

    .line 121
    goto :goto_0

    .line 103
    :cond_1
    :try_start_2
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 106
    :cond_2
    if-eqz p4, :cond_4

    .line 107
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    invoke-direct {p0, v0, p2}, Lcom/dolphin/browser/sync/r;->b(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 118
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 110
    :cond_3
    :try_start_3
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 112
    :cond_4
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    const/4 v0, 0x1

    .line 118
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    .prologue
    .line 253
    move-object v0, p1

    check-cast v0, Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/a;->b()I

    move-result v9

    .line 254
    const-string v0, "Uploading local changes for bookmark type: %d."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    const-string v0, "(%s=1) AND (%s=%d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "is_folder"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 260
    const/4 v8, 0x0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/r;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 265
    :try_start_1
    invoke-static {v1}, Lcom/dolphin/browser/sync/q;->d(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 266
    const-string v2, "%d local folder(s)."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 268
    if-eqz v1, :cond_0

    .line 269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/q;

    .line 275
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v3, "Folder:%s, CID=%s, Deleted=%d, SyncStatus=%d, SyncId=%s, Parent=%d, ParentSyncId=%s."

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->l()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->h()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->o()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->j()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_1

    .line 269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 281
    :cond_2
    invoke-virtual {p0, p1, v1, p2, v9}, Lcom/dolphin/browser/sync/r;->a(Lcom/dolphin/browser/sync/k;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 284
    invoke-virtual {p0, p1, v1, p2, v9}, Lcom/dolphin/browser/sync/r;->b(Lcom/dolphin/browser/sync/k;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 285
    return-void

    .line 268
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected b(Lcom/dolphin/browser/sync/k;Ljava/util/HashMap;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/sync/k;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/sync/q;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 357
    const-string v0, "(%s=%d OR %s=%d OR %s=%d) AND (%s=0) AND (%s=%d)"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sync_status"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sync_status"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "sync_status"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "is_folder"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "type"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 364
    const/4 v8, 0x0

    .line 367
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/r;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 368
    :try_start_1
    invoke-static {v1}, Lcom/dolphin/browser/sync/q;->d(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 369
    const-string v2, "%d local bookmark(s) to update."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 372
    if-eqz v1, :cond_0

    .line 373
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 378
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 380
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/q;

    .line 381
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/sync/q;

    .line 383
    if-eqz v1, :cond_2

    .line 384
    invoke-virtual {v1}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/sync/q;->c(Ljava/lang/String;)V

    .line 386
    :cond_2
    if-nez v1, :cond_3

    .line 387
    const-string v5, ""

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/sync/q;->c(Ljava/lang/String;)V

    .line 389
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 390
    :cond_4
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->e()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v5, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->o()I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_7

    .line 392
    :cond_5
    const-string v0, "speed dial or its item, skip sync"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_6

    .line 373
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 396
    :cond_7
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 397
    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v5

    if-eq v1, v5, :cond_1

    .line 398
    const-string v1, "Item to create: %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v5}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 401
    :cond_8
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_9

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_a

    .line 403
    :cond_9
    const-string v1, "Item to update or delete: %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v5}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 406
    :cond_a
    const-string v1, "Bypass item: %s (SyncStatus=%d, SyncId=%s)."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/q;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1, v5}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 410
    :cond_b
    const-string v5, "Bypass item: %s (Parent=%s, ParentSyncStatus=%d)."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/q;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Lcom/dolphin/browser/sync/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 415
    :cond_c
    invoke-direct {p0, p1, v2, p3}, Lcom/dolphin/browser/sync/r;->b(Lcom/dolphin/browser/sync/k;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;

    .line 416
    invoke-direct {p0, p1, v3, p3}, Lcom/dolphin/browser/sync/r;->a(Lcom/dolphin/browser/sync/k;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 417
    return-void

    .line 372
    :catchall_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public c(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v8, 0x0

    .line 668
    invoke-virtual {p1}, Lcom/dolphin/browser/sync/k;->e()Lcom/dolphin/browser/sync/b;

    move-result-object v11

    .line 669
    if-eqz v11, :cond_1

    .line 670
    const-string v0, "(%s=%d OR %s=%d OR %s=%d) AND (%s=%d)"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sync_status"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "sync_status"

    aput-object v2, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "sync_status"

    aput-object v2, v1, v6

    const/4 v2, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    check-cast p1, Lcom/dolphin/browser/sync/a;

    invoke-virtual {p1}, Lcom/dolphin/browser/sync/a;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 676
    const-wide/16 v9, 0x0

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/r;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 679
    if-eqz v1, :cond_3

    .line 680
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    int-to-long v2, v0

    .line 684
    :goto_0
    if-eqz v1, :cond_0

    .line 685
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 690
    :cond_0
    invoke-virtual {v11, v2, v3}, Lcom/dolphin/browser/sync/b;->b(J)V

    .line 692
    :cond_1
    return-void

    .line 684
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_2

    .line 685
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 684
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_3
    move-wide v2, v9

    goto :goto_0
.end method
