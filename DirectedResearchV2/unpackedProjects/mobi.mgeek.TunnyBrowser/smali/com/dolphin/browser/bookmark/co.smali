.class public Lcom/dolphin/browser/bookmark/co;
.super Lcom/dolphin/browser/bookmark/j;
.source "MostVisitedAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/j;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/co;->p()V

    .line 23
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

    .line 52
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 53
    if-eqz p1, :cond_1

    .line 54
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 57
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 60
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 61
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v12, :cond_0

    move v8, v12

    .line 63
    :goto_1
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    const-wide/16 v10, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;Ljava/lang/String;[BJZZJ)V

    .line 65
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    move v8, v9

    .line 61
    goto :goto_1

    .line 69
    :cond_1
    return-object v13
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/co;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0603

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 79
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/co;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Landroid/content/Context;Z)V

    .line 93
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/co;->getCount()I

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
    .line 32
    monitor-enter p0

    :try_start_0
    const-string v3, "visits != 0"

    .line 33
    const-string v5, "visits DESC"

    .line 34
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    .line 35
    sget-object v2, Lcom/dolphin/browser/bookmark/co;->c:[Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/co;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/co;->a(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 40
    if-eqz v0, :cond_0

    .line 42
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected t()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    return-object v0
.end method
