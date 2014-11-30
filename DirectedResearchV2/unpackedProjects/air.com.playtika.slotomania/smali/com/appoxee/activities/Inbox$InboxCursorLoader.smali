.class public final Lcom/appoxee/activities/Inbox$InboxCursorLoader;
.super Lcom/appoxee/inbox/SimpleCursorLoader;
.source "Inbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/activities/Inbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InboxCursorLoader"
.end annotation


# instance fields
.field private mHelper:Lcom/appoxee/inbox/DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appoxee/inbox/DatabaseHelper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/appoxee/inbox/DatabaseHelper;

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/appoxee/inbox/SimpleCursorLoader;-><init>(Landroid/content/Context;)V

    .line 347
    iput-object p2, p0, Lcom/appoxee/activities/Inbox$InboxCursorLoader;->mHelper:Lcom/appoxee/inbox/DatabaseHelper;

    .line 348
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 21

    .prologue
    .line 353
    const/4 v5, 0x0

    .line 354
    .local v5, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appoxee/activities/Inbox$InboxCursorLoader;->mHelper:Lcom/appoxee/inbox/DatabaseHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/appoxee/inbox/DatabaseHelper;->getMessageDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v11

    .line 357
    .local v11, "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<Lcom/appoxee/inbox/Message;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v17, "SERVER_DEVICE_TIME_DIFF"

    const-wide/16 v18, 0x0

    invoke-interface/range {v16 .. v19}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 358
    .local v6, "diff":J
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 360
    .local v13, "serverNow":Ljava/util/Date;
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-eqz v16, :cond_0

    .line 361
    new-instance v14, Ljava/util/Date;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    add-long v16, v16, v6

    move-object v0, v14

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .end local v13    # "serverNow":Ljava/util/Date;
    .local v14, "serverNow":Ljava/util/Date;
    move-object v13, v14

    .line 365
    .end local v14    # "serverNow":Ljava/util/Date;
    .restart local v13    # "serverNow":Ljava/util/Date;
    :cond_0
    :try_start_0
    invoke-virtual {v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v15

    .line 367
    .local v15, "where":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<Lcom/appoxee/inbox/Message;Ljava/lang/Long;>;"
    const-string v16, "deleted"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v16

    .line 368
    const-string v17, "expiration"

    new-instance v18, Ljava/util/Date;

    const-wide/16 v19, 0x0

    invoke-direct/range {v18 .. v20}, Ljava/util/Date;-><init>(J)V

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v17

    .line 369
    const-string v18, "expiration"

    move-object v0, v15

    move-object/from16 v1, v18

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/j256/ormlite/stmt/Where;

    move-object/from16 v19, v0

    .line 368
    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/j256/ormlite/stmt/Where;

    move-object/from16 v18, v0

    .line 366
    invoke-virtual/range {v15 .. v18}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    .line 372
    const-string v16, "_id"

    const/16 v17, 0x0

    move-object v0, v11

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    :try_start_1
    invoke-virtual {v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v12

    .line 377
    .local v12, "query":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<Lcom/appoxee/inbox/Message;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appoxee/activities/Inbox$InboxCursorLoader;->mHelper:Lcom/appoxee/inbox/DatabaseHelper;

    move-object/from16 v16, v0

    .line 378
    invoke-virtual/range {v16 .. v16}, Lcom/appoxee/inbox/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v16

    sget-object v17, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 377
    move-object v0, v12

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/stmt/PreparedQuery;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v4

    check-cast v4, Lcom/j256/ormlite/android/AndroidCompiledStatement;

    .line 380
    .local v4, "compiledStatement":Lcom/j256/ormlite/android/AndroidCompiledStatement;
    invoke-virtual {v4}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    .line 383
    new-instance v10, Landroid/content/Intent;

    const-string v16, "APPOXEE_INBOX_STATUS"

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v10, "inboxUpdate":Landroid/content/Intent;
    const-string v16, "count"

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v17

    move-object v0, v10

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 394
    .end local v4    # "compiledStatement":Lcom/j256/ormlite/android/AndroidCompiledStatement;
    .end local v10    # "inboxUpdate":Landroid/content/Intent;
    .end local v12    # "query":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<Lcom/appoxee/inbox/Message;>;"
    .end local v15    # "where":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<Lcom/appoxee/inbox/Message;Ljava/lang/Long;>;"
    :goto_0
    return-object v5

    .line 386
    .restart local v15    # "where":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<Lcom/appoxee/inbox/Message;Ljava/lang/Long;>;"
    :catch_0
    move-exception v16

    move-object/from16 v8, v16

    .line 387
    .local v8, "e":Ljava/sql/SQLException;
    :try_start_2
    invoke-static {v8}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 389
    .end local v8    # "e":Ljava/sql/SQLException;
    .end local v15    # "where":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<Lcom/appoxee/inbox/Message;Ljava/lang/Long;>;"
    :catch_1
    move-exception v16

    move-object/from16 v9, v16

    .line 390
    .local v9, "e1":Ljava/sql/SQLException;
    const-string v16, "Inbox messages query problem - bad SQL query"

    invoke-static/range {v16 .. v16}, Lcom/appoxee/utils/Utils;->Debug(Ljava/lang/String;)V

    .line 391
    invoke-static {v9}, Lcom/appoxee/utils/Utils;->DebugException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
