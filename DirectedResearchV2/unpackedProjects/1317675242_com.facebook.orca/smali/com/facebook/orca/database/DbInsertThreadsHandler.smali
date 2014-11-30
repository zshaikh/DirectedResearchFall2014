.class public Lcom/facebook/orca/database/DbInsertThreadsHandler;
.super Ljava/lang/Object;
.source "DbInsertThreadsHandler.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/database/sqlite/SQLiteDatabase;

.field private final c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

.field private final d:Lcom/facebook/orca/database/DbFetchThreadHandler;

.field private final e:Lcom/facebook/orca/database/DbParticipantsSerialization;

.field private final f:Lcom/facebook/orca/database/DbAttachmentSerialization;

.field private final g:Lcom/facebook/orca/database/DbSharesSerialization;

.field private final h:Lcom/facebook/orca/database/DbCoordinatesSerialization;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Lcom/facebook/orca/database/DbFetchThreadHandler;Lcom/facebook/orca/database/DbParticipantsSerialization;Lcom/facebook/orca/database/DbAttachmentSerialization;Lcom/facebook/orca/database/DbSharesSerialization;Lcom/facebook/orca/database/DbCoordinatesSerialization;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "orca:DbInsertThreadsHandler"

    iput-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    iput-object p2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    .line 62
    iput-object p3, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d:Lcom/facebook/orca/database/DbFetchThreadHandler;

    .line 63
    iput-object p4, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->e:Lcom/facebook/orca/database/DbParticipantsSerialization;

    .line 64
    iput-object p5, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->f:Lcom/facebook/orca/database/DbAttachmentSerialization;

    .line 65
    iput-object p6, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->g:Lcom/facebook/orca/database/DbSharesSerialization;

    .line 66
    iput-object p7, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->h:Lcom/facebook/orca/database/DbCoordinatesSerialization;

    .line 67
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "threads"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->d:Lcom/facebook/orca/database/DbThreadPropertyKey;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->c(Lcom/facebook/orca/common/util/TypedKey;)V

    .line 358
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 365
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    :try_start_1
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private a(Lcom/facebook/orca/threads/Message;Z)V
    .locals 3

    .prologue
    .line 443
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 445
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;Z)V

    .line 449
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/MessagesCollection;Z)V
    .locals 9

    .prologue
    .line 453
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 455
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 456
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v2

    .line 457
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 458
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->q()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->p()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 462
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 467
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offline_threading_id IN "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "messages"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 472
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->e()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 473
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 474
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v8

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg_id IN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 476
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "msg_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 479
    :goto_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 480
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 484
    :catchall_1
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v1, v8

    .line 488
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 489
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 493
    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b(Lcom/facebook/orca/threads/Message;Z)V

    goto :goto_3

    .line 495
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 496
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 497
    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b(Lcom/facebook/orca/threads/Message;Z)V

    .line 503
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 505
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 507
    return-void

    :cond_7
    move-object v1, v0

    goto :goto_2
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;J)V
    .locals 4

    .prologue
    .line 399
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 400
    const-string v1, "thread_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v1, "action_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    const-string v1, "refetch_action_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 403
    const-string v1, "last_visible_action_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 404
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    const-string v1, "pic_hash"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    const-string v1, "pic"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->r()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_2
    const-string v1, "participants"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->e:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v1, "former_participants"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->e:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->w()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v1, "object_participants"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->e:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v1, "senders"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->e:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v1, "single_recipient_thread"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    const-string v1, "single_recipient_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v1, "snippet"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "snippet_sender"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->e:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->o()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v1, "admin_snippet"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v1, "timestamp_ms"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 430
    const-string v1, "last_fetch_time_ms"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 431
    const-string v1, "unread"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->t()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 432
    const-string v1, "can_reply_to"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 433
    const-string v1, "is_subscribed"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->v()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 434
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "threads"

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 435
    return-void

    .line 422
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 368
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "threads"

    const-string v2, "thread_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const-string v2, "thread_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-static {p1}, Lcom/facebook/orca/database/DbProperties;->a(Ljava/lang/String;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;)V

    .line 373
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 380
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    :try_start_1
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private b()Lcom/facebook/orca/threads/ThreadSummary;
    .locals 3

    .prologue
    .line 549
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->u()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/orca/threads/Message;)V
    .locals 4

    .prologue
    .line 438
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 440
    return-void
.end method

.method private b(Lcom/facebook/orca/threads/Message;Z)V
    .locals 4

    .prologue
    .line 510
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 511
    const-string v1, "msg_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v1, "thread_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v1, "action_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 514
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 515
    const-string v1, "text"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_0
    const-string v1, "sender"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->e:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v1, "timestamp_ms"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 520
    const-string v1, "msg_type"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    const-string v1, "affected_users"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->e:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v1, "attachments"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->f:Lcom/facebook/orca/database/DbAttachmentSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbAttachmentSerialization;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v1, "shares"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->g:Lcom/facebook/orca/database/DbSharesSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v1, "coordinates"

    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->h:Lcom/facebook/orca/database/DbCoordinatesSerialization;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->g()Lcom/facebook/orca/location/Coordinates;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/database/DbCoordinatesSerialization;->a(Lcom/facebook/orca/location/Coordinates;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v1, "offline_threading_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v1, "source"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    if-eqz p2, :cond_1

    .line 531
    const-string v1, "is_non_authoritative"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 536
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 537
    return-void

    .line 533
    :cond_1
    const-string v1, "is_non_authoritative"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->q()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 383
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const-string v2, "thread_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;
    .locals 3

    .prologue
    .line 540
    new-instance v0, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/facebook/orca/server/DeleteThreadParams;)V
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/facebook/orca/server/DeleteThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method a(Lcom/facebook/orca/server/FetchMoreMessagesResult;Lcom/facebook/orca/server/FetchMoreMessagesResult;)V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 312
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/threads/MessagesCollection;->b(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const-string v0, "orca:DbInsertThreadsHandler"

    const-string v1, "Performance warning - can\'t add more messages"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 327
    :goto_0
    return-void

    .line 319
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 320
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    :try_start_2
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method a(Lcom/facebook/orca/server/FetchMoreThreadsResult;)V
    .locals 5

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 136
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->i()J

    move-result-wide v1

    .line 137
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v3

    .line 138
    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 139
    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    :try_start_1
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 141
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 151
    return-void
.end method

.method a(Lcom/facebook/orca/server/FetchThreadResult;)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->h()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v1, v2, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 206
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 207
    return-void
.end method

.method a(Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchThreadResult;)V
    .locals 7

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 165
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 166
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadResult;->h()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v1, v2, :cond_0

    .line 170
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/threads/MessagesCollection;->b(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "Performance warning - deleting old messages to avoid hole"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    const-string v3, "thread_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 181
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->i()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 182
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 183
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/database/DbProperties;->a(Ljava/lang/String;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 186
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 193
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    :try_start_1
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method a(Lcom/facebook/orca/server/FetchThreadsResult;)V
    .locals 10

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 78
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadsResult;->i()J

    move-result-wide v1

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    sget-object v3, Lcom/facebook/orca/database/DbProperties;->a:Lcom/facebook/orca/database/DbThreadPropertyKey;

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    sget-object v3, Lcom/facebook/orca/database/DbProperties;->b:Lcom/facebook/orca/database/DbThreadPropertyKey;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadsResult;->g()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;J)V

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    sget-object v3, Lcom/facebook/orca/database/DbProperties;->c:Lcom/facebook/orca/database/DbThreadPropertyKey;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;Z)V

    .line 84
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadsResult;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadsResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    :try_start_1
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 92
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a()V

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadsResult;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadsCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 99
    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 101
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadsResult;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 102
    iget-object v5, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v5

    .line 104
    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchThreadResult;->h()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v6

    sget-object v7, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v6, v7, :cond_2

    .line 105
    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v5

    .line 106
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->c()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/facebook/orca/threads/ThreadSummary;->c()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 107
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    invoke-direct {p0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 117
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadsResult;->d()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/FolderCounts;)V

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 126
    return-void
.end method

.method a(Lcom/facebook/orca/server/MarkThreadParams;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 339
    invoke-virtual {p1}, Lcom/facebook/orca/server/MarkThreadParams;->b()Lcom/facebook/orca/server/MarkThreadParams$Mark;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/MarkThreadParams$Mark;->READ:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/server/MarkThreadParams;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/facebook/orca/server/MarkThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 342
    const-string v2, "unread"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "threads"

    const-string v4, "thread_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    :cond_0
    return-void
.end method

.method a(Lcom/facebook/orca/server/SendMessageResult;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    invoke-virtual {p1}, Lcom/facebook/orca/server/SendMessageResult;->a()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lcom/facebook/orca/server/SendMessageResult;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 222
    if-nez v1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    .line 251
    :goto_1
    if-eqz v0, :cond_3

    .line 253
    invoke-virtual {p1}, Lcom/facebook/orca/server/SendMessageResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/server/SendMessageResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v3

    .line 241
    goto :goto_1

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->d:Lcom/facebook/orca/database/DbFetchThreadHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v0, v3}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 246
    invoke-virtual {p1}, Lcom/facebook/orca/server/SendMessageResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/threads/MessagesCollection;->b(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z

    move-result v0

    goto :goto_1

    .line 255
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/Message;Z)V

    goto :goto_0
.end method

.method a(Lcom/facebook/orca/threads/FolderCounts;)V
    .locals 4

    .prologue
    .line 330
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 331
    const-string v1, "folder"

    const-string v2, "inbox"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v1, "unread_count"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/FolderCounts;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v1, "unseen_count"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/FolderCounts;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string v1, "last_seen_time"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/FolderCounts;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "folder_counts"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 336
    return-void
.end method

.method a(Lcom/facebook/orca/threads/Message;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b(Lcom/facebook/orca/threads/Message;)V

    .line 211
    return-void
.end method

.method a(Ljava/lang/String;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchMoreMessagesResult;)V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 282
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {p3}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/threads/MessagesCollection;->b(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    const-string v0, "orca:DbInsertThreadsHandler"

    const-string v1, "Performance warning - can\'t add more messages"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 297
    :goto_0
    return-void

    .line 289
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 290
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    iget-object v0, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    :try_start_2
    const-string v1, "orca:DbInsertThreadsHandler"

    const-string v2, "SQLException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbInsertThreadsHandler;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
