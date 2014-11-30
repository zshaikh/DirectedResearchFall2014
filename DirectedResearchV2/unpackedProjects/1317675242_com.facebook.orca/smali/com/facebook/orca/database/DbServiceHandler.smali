.class public Lcom/facebook/orca/database/DbServiceHandler;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.source "DbServiceHandler.java"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/cache/DataCache;

.field private final c:Lcom/facebook/orca/database/DbFetchThreadsHandler;

.field private final d:Lcom/facebook/orca/database/DbFetchThreadHandler;

.field private final e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

.field private final f:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

.field private final g:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

.field private final h:Landroid/database/sqlite/SQLiteDatabase;

.field private final i:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final j:Lcom/facebook/orca/appconfig/AppConfigSerialization;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/database/DbFetchThreadsHandler;Lcom/facebook/orca/database/DbFetchThreadHandler;Lcom/facebook/orca/database/DbInsertThreadsHandler;Lcom/facebook/orca/database/DbInsertThreadUsersHandler;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/appconfig/AppConfigSerialization;)V
    .locals 1

    .prologue
    .line 48
    const-string v0, "DbServiceHandler"

    invoke-direct {p0, v0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;-><init>(Ljava/lang/String;)V

    .line 26
    const-string v0, "orca:DbServiceHandler"

    iput-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->a:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/facebook/orca/database/DbServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    .line 50
    iput-object p2, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadsHandler;

    .line 51
    iput-object p3, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbFetchThreadHandler;

    .line 52
    iput-object p4, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    .line 53
    iput-object p5, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    .line 54
    iput-object p6, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    .line 55
    iput-object p7, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    iput-object p8, p0, Lcom/facebook/orca/database/DbServiceHandler;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 57
    iput-object p9, p0, Lcom/facebook/orca/database/DbServiceHandler;->j:Lcom/facebook/orca/appconfig/AppConfigSerialization;

    .line 58
    return-void
.end method

.method private a(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 366
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    .line 368
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    const/4 v0, 0x0

    .line 381
    :goto_0
    return-object v0

    .line 373
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->c()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    if-ne v0, v1, :cond_2

    move-object v0, p2

    .line 375
    goto :goto_0

    .line 378
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/database/DbServiceHandler;->b(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 380
    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/orca/database/DbServiceHandler;->c(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 560
    if-nez p1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 564
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->C:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    .line 565
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 566
    invoke-static {p0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v2

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)V

    goto :goto_1

    .line 568
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/appconfig/AppConfig;)V
    .locals 4

    .prologue
    .line 550
    if-nez p1, :cond_0

    .line 557
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 554
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->z:Lcom/facebook/orca/prefs/PrefKey;

    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->j:Lcom/facebook/orca/appconfig/AppConfigSerialization;

    invoke-virtual {v2, p1}, Lcom/facebook/orca/appconfig/AppConfigSerialization;->a(Lcom/facebook/orca/appconfig/AppConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)V

    .line 555
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->y:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    .line 556
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/DataFreshnessParam;Lcom/facebook/orca/server/FetchThreadResult;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 453
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 457
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->h()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 389
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->c()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v1

    .line 390
    invoke-direct {p0, v1, p2}, Lcom/facebook/orca/database/DbServiceHandler;->a(Lcom/facebook/orca/server/DataFreshnessParam;Lcom/facebook/orca/server/FetchThreadResult;)Z

    move-result v1

    .line 393
    if-nez v1, :cond_0

    move-object v1, p2

    .line 441
    :goto_0
    return-object v1

    .line 399
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v2

    .line 401
    invoke-virtual {v2}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/Message;

    .line 402
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->q()Z

    move-result v4

    if-nez v4, :cond_1

    .line 408
    :goto_1
    const-wide/16 v3, -0x1

    .line 409
    if-eqz v1, :cond_2

    .line 410
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v3

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    .line 413
    :cond_2
    new-instance v1, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    sget-object v5, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v1, v5}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->f()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->b(J)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->d()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Z)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(J)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->h()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v1

    .line 422
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 423
    const-string v4, "fetchThreadParams"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 424
    new-instance v1, Lcom/facebook/orca/server/OperationParams;

    const-string v4, "fetch_thread"

    invoke-direct {v1, v4, v3}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p3, v1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 426
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    move-object v5, v0

    .line 428
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, p2, v5}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 431
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 432
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 438
    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/facebook/orca/threads/MessagesCollection;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v4

    .line 441
    new-instance v1, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct/range {v1 .. v8}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    goto/16 :goto_0

    .line 434
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    :cond_3
    move-object v1, v6

    goto/16 :goto_1
.end method

.method private c(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 9

    .prologue
    .line 467
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 504
    :goto_0
    return-object v0

    .line 473
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v8

    .line 474
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v7

    .line 475
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->f()I

    move-result v0

    .line 476
    invoke-virtual {v7}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v1

    .line 477
    sub-int v6, v0, v1

    .line 480
    if-gtz v6, :cond_1

    move-object v0, p2

    .line 481
    goto :goto_0

    .line 484
    :cond_1
    invoke-virtual {v7}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v7, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v4

    .line 486
    new-instance v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v4

    add-int/lit8 v6, v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/FetchMoreMessagesParams;-><init>(Ljava/lang/String;JJI)V

    .line 488
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 489
    const-string v2, "fetchMoreMessagesParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 490
    new-instance v0, Lcom/facebook/orca/server/OperationParams;

    const-string v2, "fetch_more_messages"

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p3, v0}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 495
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchMoreMessagesResult;)V

    .line 499
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    .line 500
    invoke-static {v7, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 504
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    goto :goto_0
.end method


# virtual methods
.method protected c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2

    .prologue
    .line 532
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 533
    const-string v0, "appConfig"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/OperationResult;->a(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/appconfig/AppConfig;

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->a(Lcom/facebook/orca/appconfig/AppConfig;)V

    .line 534
    const-string v0, "gateKeepers"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/OperationResult;->a(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->a(Landroid/os/Bundle;)V

    .line 535
    return-object v1
.end method

.method protected e(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 102
    const-string v4, "fetchThreadsParams"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/server/FetchThreadsParams;

    .line 103
    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadsParams;->a()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v4

    .line 105
    const-string v5, "DbServiceHandler.handleFetchThreads"

    invoke-static {v5}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v14

    .line 109
    :try_start_0
    iget-object v5, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadsHandler;

    invoke-virtual {v5, v2}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadsParams;)Lcom/facebook/orca/server/FetchThreadsResult;

    move-result-object v5

    .line 113
    sget-object v6, Lcom/facebook/orca/database/DbServiceHandler$1;->a:[I

    invoke-virtual {v4}, Lcom/facebook/orca/server/DataFreshnessParam;->ordinal()I

    move-result v4

    aget v4, v6, v4

    packed-switch v4, :pswitch_data_0

    move v4, v8

    .line 134
    :goto_0
    if-eqz v4, :cond_2

    .line 136
    invoke-static {v5}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 183
    :goto_1
    invoke-virtual {v14}, Lcom/facebook/orca/debug/Tracer;->c()J

    return-object v2

    .line 115
    :pswitch_0
    :try_start_1
    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchThreadsResult;->h()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v4

    sget-object v6, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v4, v6, :cond_0

    move v4, v9

    goto :goto_0

    :cond_0
    move v4, v8

    goto :goto_0

    :pswitch_1
    move v4, v9

    .line 120
    goto :goto_0

    .line 124
    :pswitch_2
    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchThreadsResult;->h()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v4

    sget-object v6, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v4, v6, :cond_1

    move v4, v9

    goto :goto_0

    :cond_1
    move v4, v8

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchThreadsResult;->g()J

    move-result-wide v4

    .line 139
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    move v6, v9

    .line 142
    :goto_2
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadsParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadsParamsBuilder;

    move-result-object v7

    sget-object v8, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v7, v8}, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadsParamsBuilder;

    move-result-object v7

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v7, v4, v5}, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->a(J)Lcom/facebook/orca/server/FetchThreadsParamsBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->d()Lcom/facebook/orca/server/FetchThreadsParams;

    move-result-object v4

    .line 146
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string v7, "fetchThreadsParams"

    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 149
    new-instance v4, Lcom/facebook/orca/server/OperationParams;

    invoke-direct {v4, v3, v5}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v4

    .line 151
    invoke-virtual {v4}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/facebook/orca/server/FetchThreadsResult;

    move-object v8, v0

    .line 152
    const-string v3, "DbServiceHandler.handleFetchThreads#insertData"

    invoke-static {v3}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v3

    .line 153
    iget-object v5, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    :try_start_2
    iget-object v5, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v5, v8}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadsResult;)V

    .line 156
    iget-object v5, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v8}, Lcom/facebook/orca/server/FetchThreadsResult;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 157
    iget-object v5, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    :try_start_3
    iget-object v5, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 160
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 162
    if-eqz v6, :cond_5

    .line 165
    iget-object v3, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadsHandler;

    invoke-virtual {v3, v2}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadsParams;)Lcom/facebook/orca/server/FetchThreadsResult;

    move-result-object v12

    .line 168
    new-instance v2, Lcom/facebook/orca/server/FetchThreadsResult;

    invoke-virtual {v12}, Lcom/facebook/orca/server/FetchThreadsResult;->h()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v3

    invoke-virtual {v12}, Lcom/facebook/orca/server/FetchThreadsResult;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v4

    invoke-virtual {v12}, Lcom/facebook/orca/server/FetchThreadsResult;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v12}, Lcom/facebook/orca/server/FetchThreadsResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {v12}, Lcom/facebook/orca/server/FetchThreadsResult;->d()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v7

    invoke-virtual {v8}, Lcom/facebook/orca/server/FetchThreadsResult;->e()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v8

    invoke-virtual {v12}, Lcom/facebook/orca/server/FetchThreadsResult;->f()Z

    move-result v9

    invoke-virtual {v12}, Lcom/facebook/orca/server/FetchThreadsResult;->i()J

    move-result-wide v10

    invoke-virtual {v12}, Lcom/facebook/orca/server/FetchThreadsResult;->g()J

    move-result-wide v12

    invoke-direct/range {v2 .. v13}, Lcom/facebook/orca/server/FetchThreadsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;ZJJ)V

    .line 178
    invoke-static {v2}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    goto/16 :goto_1

    :cond_3
    move v6, v8

    .line 139
    goto/16 :goto_2

    .line 142
    :cond_4
    const-wide/16 v4, -0x1

    goto/16 :goto_3

    .line 159
    :catchall_0
    move-exception v2

    iget-object v4, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 160
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 183
    :catchall_1
    move-exception v2

    invoke-virtual {v14}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v2

    :cond_5
    move-object v2, v4

    goto/16 :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected f(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 192
    const-string v1, "fetchMoreThreadsParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    .line 195
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Lcom/facebook/orca/server/FetchMoreThreadsParams;)Lcom/facebook/orca/server/FetchMoreThreadsResult;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadsCollection;->e()I

    move-result v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 199
    :cond_0
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 201
    :cond_1
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 203
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchMoreThreadsResult;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected g(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 213
    const-string v1, "fetchThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadParams;

    .line 214
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->c()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v1

    .line 215
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->f()I

    move-result v2

    .line 216
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->a()Ljava/lang/String;

    move-result-object v3

    .line 218
    const-string v4, "DbServiceHandler.handleFetchThread"

    invoke-static {v4}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v4

    .line 222
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 226
    iget-object v5, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v5, v3, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v2

    .line 235
    :goto_0
    sget-object v3, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    if-ne v1, v3, :cond_2

    .line 236
    invoke-static {v2}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 263
    :goto_1
    invoke-virtual {v4}, Lcom/facebook/orca/debug/Tracer;->c()J

    return-object v0

    .line 227
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->b(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v2

    goto :goto_0

    .line 231
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No threadid or userid specified for thread fetch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v0

    .line 239
    :cond_2
    :try_start_2
    invoke-direct {p0, v0, v2, p2}, Lcom/facebook/orca/database/DbServiceHandler;->a(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_3

    .line 242
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_1

    .line 244
    :cond_3
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 246
    iget-object v3, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :try_start_3
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 249
    iget-object v3, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v3, v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 251
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 252
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 257
    :try_start_4
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v0, v1

    .line 258
    goto :goto_1

    .line 257
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected h(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    const-string v1, "addMembersParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/AddMembersParams;

    .line 90
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 92
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 93
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 94
    return-object v1
.end method

.method protected i(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 63
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 65
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 68
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 73
    return-object v1

    .line 71
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected j(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 79
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/SendMessageResult;

    .line 81
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/SendMessageResult;)V

    .line 82
    return-object v1
.end method

.method protected l(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 7

    .prologue
    .line 271
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 272
    const-string v1, "fetchMoreMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    .line 274
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->a()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->b()J

    .line 277
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->b()J

    move-result-wide v2

    .line 278
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->c()J

    move-result-wide v4

    .line 279
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->d()I

    move-result v6

    .line 284
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;JJI)Lcom/facebook/orca/server/FetchMoreMessagesResult;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    .line 291
    :cond_1
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    .line 292
    invoke-virtual {v2}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 293
    iget-object v3, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchMoreMessagesResult;Lcom/facebook/orca/server/FetchMoreMessagesResult;)V

    move-object v0, v2

    .line 294
    goto :goto_0
.end method

.method protected m(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 302
    const-string v1, "removeMemberParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RemoveMemberParams;

    .line 303
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 304
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->c()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    .line 305
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 306
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 309
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 310
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 314
    return-object v1

    .line 312
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected n(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 322
    const-string v1, "markThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/MarkThreadParams;

    .line 323
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 324
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/MarkThreadParams;)V

    .line 325
    return-object v1
.end method

.method protected o(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 333
    const-string v1, "deleteThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteThreadParams;

    .line 334
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 335
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/DeleteThreadParams;)V

    .line 336
    return-object v1
.end method

.method protected p(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 343
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    .line 344
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 346
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 349
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 350
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 354
    return-object v1

    .line 352
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected r(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->c:Lcom/facebook/orca/database/DbThreadPropertyKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;Z)V

    .line 520
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 521
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 522
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/Message;)V

    .line 525
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected u(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2

    .prologue
    .line 542
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 543
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/appconfig/AppConfig;

    .line 544
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->a(Lcom/facebook/orca/appconfig/AppConfig;)V

    .line 545
    const-string v0, "gateKeepers"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/OperationResult;->a(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->a(Landroid/os/Bundle;)V

    .line 546
    return-object v1
.end method
