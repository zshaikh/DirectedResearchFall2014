.class public Lcom/dolphin/browser/mostvisit/b;
.super Ljava/lang/Object;
.source "MostVisitedManager.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static volatile b:Lcom/dolphin/browser/mostvisit/b;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "^http(s)?://([\\w-]+\\.)+(com|cn|mobi|co|net|com\\.cn|net\\.cn|so|org|gov\\.cn|org\\.cn|tel|tv|biz|cc|me|info|asia)(/)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/mostvisit/b;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/dolphin/browser/mostvisit/b;->c:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    .line 53
    return-void
.end method

.method private a(ILandroid/content/ContentValues;)I
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/mostvisit/b;ILandroid/content/ContentValues;)I
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/mostvisit/b;->a(ILandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/mostvisit/b;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/mostvisit/b;Ljava/util/List;)I
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dolphin/browser/mostvisit/b;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 349
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return p3

    .line 353
    :cond_1
    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    .line 355
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 357
    invoke-static {v0, p2}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0, p1}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    :cond_2
    const/4 p3, 0x4

    goto :goto_0

    .line 365
    :cond_3
    invoke-static {p1}, Lcom/dolphin/browser/f/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {p2}, Lcom/dolphin/browser/f/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    const/4 p3, 0x2

    goto :goto_0
.end method

.method private a(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/mostvisit/a/b;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 461
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v2, v0

    .line 471
    :cond_1
    return v2

    :cond_2
    move v1, v0

    move v2, v0

    .line 466
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 467
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/mostvisit/a/b;

    .line 468
    invoke-virtual {v0}, Lcom/dolphin/browser/mostvisit/a/b;->d()I

    move-result v0

    add-int/2addr v2, v0

    .line 466
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a()Lcom/dolphin/browser/mostvisit/b;
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/dolphin/browser/mostvisit/b;->b:Lcom/dolphin/browser/mostvisit/b;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/dolphin/browser/mostvisit/b;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/mostvisit/b;->b:Lcom/dolphin/browser/mostvisit/b;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/dolphin/browser/mostvisit/b;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/mostvisit/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/mostvisit/b;->b:Lcom/dolphin/browser/mostvisit/b;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/dolphin/browser/mostvisit/b;->b:Lcom/dolphin/browser/mostvisit/b;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/mostvisit/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 254
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "total_visits"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "score"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "last_visit_date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 262
    if-eqz v1, :cond_0

    .line 263
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 265
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 266
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 267
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 268
    new-instance v5, Lcom/dolphin/browser/mostvisit/a/a;

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/dolphin/browser/mostvisit/a/a;-><init>(ILjava/lang/String;II)V

    .line 269
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    invoke-direct {p0, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    .line 278
    :goto_2
    return-object v7

    .line 275
    :cond_0
    invoke-direct {p0, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    invoke-direct {p0, v6}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 272
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/mostvisit/b;II)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/mostvisit/b;->a(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;JJI)V
    .locals 5

    .prologue
    .line 505
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 506
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_0
    const-string v1, "total_visits"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 510
    const-string v1, "last_visit_date"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 511
    const-string v1, "score"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    iget-object v1, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v2, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 222
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/mostvisit/b;ILjava/lang/String;JJI)V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p7}, Lcom/dolphin/browser/mostvisit/b;->a(ILjava/lang/String;JJI)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;IJI)V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/dolphin/browser/mostvisit/b;->a(Ljava/lang/String;IJI)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p6}, Lcom/dolphin/browser/mostvisit/b;->a(Ljava/lang/String;Ljava/lang/String;IJI)V

    return-void
.end method

.method private a(Ljava/lang/String;IJI)V
    .locals 3

    .prologue
    .line 476
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 477
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v1, "visit_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    const-string v1, "visit_date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 480
    const-string v1, "point"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 481
    iget-object v1, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v2, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->e:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 3

    .prologue
    .line 490
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 491
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v1, "total_visits"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    const-string v1, "last_visit_date"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 495
    const-string v1, "score"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    iget-object v1, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v2, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/mostvisit/b;)Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/mostvisit/b;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dolphin/browser/mostvisit/b;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(II)I
    .locals 6

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 338
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 339
    const-string v2, "point"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    iget-object v2, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v3, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->e:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 345
    :goto_0
    return v0

    .line 342
    :catch_0
    move-exception v1

    .line 343
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/mostvisit/b;)I
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/mostvisit/b;->f()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/mostvisit/b;II)I
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/mostvisit/b;->b(II)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dolphin/browser/mostvisit/b;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/mostvisit/b;)I
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/mostvisit/b;->h()I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;)Lcom/dolphin/browser/mostvisit/a/a;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dolphin/browser/mostvisit/b;->e(Ljava/lang/String;)Lcom/dolphin/browser/mostvisit/a/a;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 199
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 204
    if-eqz v2, :cond_1

    .line 205
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 208
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    :goto_1
    invoke-direct {p0, v2}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    .line 216
    :goto_2
    return v0

    .line 210
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move v0, v6

    .line 211
    :goto_3
    :try_start_3
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    invoke-direct {p0, v2}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    invoke-direct {p0, v7}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v7, v2

    goto :goto_4

    .line 210
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v6

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)Lcom/dolphin/browser/mostvisit/a/a;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 282
    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "total_visits"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "score"

    aput-object v4, v2, v3

    const-string v3, "url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 290
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 292
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 293
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 294
    new-instance v0, Lcom/dolphin/browser/mostvisit/a/a;

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/dolphin/browser/mostvisit/a/a;-><init>(ILjava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    :goto_0
    invoke-direct {p0, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    .line 302
    :goto_1
    return-object v0

    .line 296
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 297
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    invoke-direct {p0, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    move-object v0, v6

    .line 300
    goto :goto_1

    .line 299
    :catchall_0
    move-exception v0

    :goto_3
    invoke-direct {p0, v6}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 296
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method private f()I
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 88
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "total_visit"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "date"

    aput-object v4, v2, v3

    const-string v3, "title is not null"

    const/4 v4, 0x0

    const-string v5, "total_visit DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 96
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    .line 100
    :goto_0
    if-ge v0, v2, :cond_2

    .line 101
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 102
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-virtual {p0, v7}, Lcom/dolphin/browser/mostvisit/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 100
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0, v7}, Lcom/dolphin/browser/mostvisit/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 111
    const-string v7, "title"

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    const-string v5, "url"

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v5, "total_visits"

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v5, "last_visit_date"

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    invoke-direct {p0, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    move v0, v6

    .line 141
    :goto_3
    return v0

    .line 122
    :cond_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 123
    if-lez v0, :cond_3

    .line 124
    new-array v0, v0, [Landroid/content/ContentValues;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    :try_start_4
    iget-object v2, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v4, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    .line 138
    :goto_4
    invoke-direct {p0, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    goto :goto_3

    .line 130
    :catch_1
    move-exception v0

    .line 131
    :try_start_5
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    move v0, v6

    goto :goto_4

    .line 138
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_5
    invoke-direct {p0, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 135
    :catch_2
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method private f(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/mostvisit/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 306
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->e:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "visit_type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "visit_date"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "point"

    aput-object v4, v2, v3

    const-string v3, "url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 316
    if-eqz v7, :cond_0

    .line 317
    :goto_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 319
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 320
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 321
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 322
    new-instance v0, Lcom/dolphin/browser/mostvisit/a/b;

    int-to-long v4, v2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/mostvisit/a/b;-><init>(ILjava/lang/String;IJI)V

    .line 323
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 327
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 329
    invoke-direct {p0, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    .line 332
    :goto_2
    return-object v8

    .line 329
    :cond_0
    invoke-direct {p0, v7}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    invoke-direct {p0, v6}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 326
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method private g()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 180
    const/4 v7, 0x0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 186
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 192
    :goto_0
    invoke-direct {p0, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    .line 195
    :goto_1
    return v0

    .line 189
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 190
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    invoke-direct {p0, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    move v0, v7

    .line 193
    goto :goto_1

    .line 192
    :catchall_0
    move-exception v0

    :goto_3
    invoke-direct {p0, v8}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    .line 189
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method private h()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 235
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 240
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 246
    :goto_0
    invoke-direct {p0, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    .line 249
    :goto_1
    return v0

    .line 243
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 244
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 246
    invoke-direct {p0, v1}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    move v0, v6

    .line 247
    goto :goto_1

    .line 246
    :catchall_0
    move-exception v0

    :goto_3
    invoke-direct {p0, v7}, Lcom/dolphin/browser/mostvisit/b;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    .line 243
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 377
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->R()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0, p3}, Lcom/dolphin/browser/mostvisit/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/dolphin/browser/mostvisit/d;

    move-object v1, p0

    move-object v3, p2

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/mostvisit/d;-><init>(Lcom/dolphin/browser/mostvisit/b;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->a:Lcom/dolphin/browser/util/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/mostvisit/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const/4 v0, 0x1

    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "http://"

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->c:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    const-string v1, "has_init_most_visit_once"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 69
    if-eqz v1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v1, Lcom/dolphin/browser/mostvisit/c;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/mostvisit/c;-><init>(Lcom/dolphin/browser/mostvisit/b;Landroid/content/SharedPreferences;)V

    sget-object v0, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    const-string v2, "url=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->e:Landroid/net/Uri;

    const-string v2, "url=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 434
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 435
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v2, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/b;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/mostvisit/MostVisitedUrlProvider;->e:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 520
    new-instance v0, Lcom/dolphin/browser/mostvisit/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/mostvisit/e;-><init>(Lcom/dolphin/browser/mostvisit/b;Lcom/dolphin/browser/mostvisit/c;)V

    .line 521
    sget-object v1, Lcom/dolphin/browser/util/t;->a:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 522
    return-void
.end method
