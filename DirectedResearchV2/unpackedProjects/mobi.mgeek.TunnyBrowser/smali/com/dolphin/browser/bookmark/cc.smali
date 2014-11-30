.class public abstract Lcom/dolphin/browser/bookmark/cc;
.super Lcom/dolphin/browser/bookmark/j;
.source "HistoryAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/j;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 54
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 55
    if-eqz p1, :cond_1

    .line 56
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 59
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 60
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 62
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 63
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v12, :cond_0

    move v8, v12

    .line 65
    :goto_1
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    const-wide/16 v10, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;Ljava/lang/String;[BJZZJ)V

    .line 67
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    move v8, v9

    .line 63
    goto :goto_1

    .line 71
    :cond_1
    return-object v13
.end method

.method private a(JJ)V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/bookmark/cc;->b(JJ)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cc;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method private b(JJ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visits >= 0 AND date < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    return-object v0
.end method


# virtual methods
.method protected abstract A()J
.end method

.method protected abstract B()J
.end method

.method protected abstract C()Ljava/lang/String;
.end method

.method protected D()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cc;->p()V

    .line 76
    return-void
.end method

.method protected a(JJLjava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/bookmark/cc;->b(JJ)Ljava/lang/String;

    move-result-object v3

    .line 90
    const-string v5, "date DESC"

    .line 91
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    invoke-static {v0, p5}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 92
    sget-object v2, Lcom/dolphin/browser/bookmark/cc;->c:[Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cc;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cc;->A()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cc;->B()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dolphin/browser/bookmark/cc;->a(JJ)V

    .line 80
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cc;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized q()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cc;->A()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cc;->B()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cc;->C()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/bookmark/cc;->a(JJLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 40
    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/cc;->a(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 42
    if-eqz v0, :cond_0

    .line 44
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected t()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    return-object v0
.end method
