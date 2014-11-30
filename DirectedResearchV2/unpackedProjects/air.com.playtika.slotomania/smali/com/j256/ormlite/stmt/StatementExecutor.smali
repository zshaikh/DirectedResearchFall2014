.class public Lcom/j256/ormlite/stmt/StatementExecutor;
.super Ljava/lang/Object;
.source "StatementExecutor.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;,
        Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static final noFieldTypes:[Lcom/j256/ormlite/field/FieldType;


# instance fields
.field private countStarQuery:Ljava/lang/String;

.field private final dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private final databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field private ifExistsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

.field private ifExistsQuery:Ljava/lang/String;

.field private mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedDelete",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedCreate",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedQueryForId",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedRefresh:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedRefresh",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedUpdate",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedUpdateId:Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedUpdateId",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final tableInfo:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    sput-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p3, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->countStarQuery:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 70
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 71
    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 72
    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 73
    return-void
.end method

.method private assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V
    .locals 3
    .param p1, "compiledStatement"    # Lcom/j256/ormlite/support/CompiledStatement;
    .param p2, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 511
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 512
    aget-object v1, p2, v0

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    invoke-interface {p1, v0, v1, v2}, Lcom/j256/ormlite/support/CompiledStatement;->setObject(ILjava/lang/Object;Lcom/j256/ormlite/field/SqlType;)V

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_0
    return-void
.end method

.method private extractColumnNames(Lcom/j256/ormlite/support/CompiledStatement;)[Ljava/lang/String;
    .locals 4
    .param p1, "compiledStatement"    # Lcom/j256/ormlite/support/CompiledStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 517
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    invoke-interface {p1}, Lcom/j256/ormlite/support/CompiledStatement;->getColumnCount()I

    move-result v1

    .line 518
    .local v1, "colN":I
    new-array v2, v1, [Ljava/lang/String;

    .line 519
    .local v2, "columnNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "colC":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 520
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/CompiledStatement;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_0
    return-object v2
.end method

.method private prepareQueryForAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    .line 529
    :cond_0
    return-void
.end method


# virtual methods
.method public buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;ILcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/stmt/SelectIterator;
    .locals 6
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p3, "resultFlags"    # I
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "I",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/stmt/SelectIterator",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p1, "classDao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/StatementExecutor;->prepareQueryForAll()V

    .line 175
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;

    move-result-object v0

    return-object v0
.end method

.method public buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;
    .locals 9
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .param p5, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/stmt/PreparedStmt",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            "I)",
            "Lcom/j256/ormlite/stmt/SelectIterator",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p1, "classDao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p3, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    invoke-interface {p2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v5

    .line 192
    .local v5, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v6, 0x0

    .line 194
    .local v6, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p3, v5, v1, p5}, Lcom/j256/ormlite/stmt/PreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;I)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v6

    .line 195
    new-instance v0, Lcom/j256/ormlite/stmt/SelectIterator;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p3}, Lcom/j256/ormlite/stmt/PreparedStmt;->getStatement()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/stmt/SelectIterator;-><init>(Ljava/lang/Class;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/support/CompiledStatement;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .local v0, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    const/4 v5, 0x0

    .line 199
    const/4 v6, 0x0

    .line 202
    if-eqz v6, :cond_0

    .line 203
    invoke-interface {v6}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    .line 205
    :cond_0
    if-eqz v5, :cond_1

    .line 206
    invoke-interface {p2, v5}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_1
    return-object v0

    .line 202
    .end local v0    # "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 203
    invoke-interface {v6}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    .line 205
    :cond_2
    if-eqz v5, :cond_3

    .line 206
    invoke-interface {p2, v5}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_3
    throw v1
.end method

.method public callBatchTasks(Lcom/j256/ormlite/support/DatabaseConnection;ZLjava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 7
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "saved"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Z",
            "Ljava/util/concurrent/Callable",
            "<TCT;>;)TCT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p3, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TCT;>;"
    const/4 v5, 0x1

    const-string v6, "re-enabled auto-commit on table {} after batch tasks"

    .line 454
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v2}, Lcom/j256/ormlite/db/DatabaseType;->isBatchUseTransaction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-static {p1, p2, v2, p3}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/DatabaseConnection;ZLcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    .line 483
    :cond_0
    :goto_0
    return-object v2

    .line 457
    :cond_1
    const/4 v0, 0x0

    .line 459
    .local v0, "autoCommitAtStart":Z
    :try_start_0
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommitSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommit()Z

    move-result v0

    .line 461
    if-eqz v0, :cond_2

    .line 463
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 464
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "disabled auto-commit on table {} before batch tasks"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :cond_2
    :try_start_1
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 475
    if-eqz v0, :cond_0

    .line 482
    invoke-interface {p1, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 483
    sget-object v3, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "re-enabled auto-commit on table {} after batch tasks"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 482
    invoke-interface {p1, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 483
    sget-object v3, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "re-enabled auto-commit on table {} after batch tasks"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    throw v2

    .line 471
    :catch_1
    move-exception v1

    .line 472
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "Batch tasks callable threw non-SQL exception"

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public create(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->insert(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    return v0
.end method

.method public delete(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedDelete;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedDelete",
            "<TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedDelete":Lcom/j256/ormlite/stmt/PreparedDelete;, "Lcom/j256/ormlite/stmt/PreparedDelete<TT;>;"
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->DELETE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v1}, Lcom/j256/ormlite/stmt/PreparedDelete;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 443
    .local v0, "stmt":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->runUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 445
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    throw v1
.end method

.method public delete(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->delete(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    return v0
.end method

.method public deleteById(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->deleteById(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    return v0
.end method

.method public deleteIds(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/util/Collection",
            "<TID;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "ids":Ljava/util/Collection;, "Ljava/util/Collection<TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->deleteIds(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    return v0
.end method

.method public deleteObjects(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "datas":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->deleteObjects(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    return v0
.end method

.method public executeRaw(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "running raw execute statement: {}"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    array-length v1, p3

    if-lez v1, :cond_0

    .line 333
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "execute arguments: {}"

    invoke-virtual {v1, v2, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    :cond_0
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->EXECUTE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, p2, v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 338
    .local v0, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    invoke-direct {p0, v0, p3}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 339
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->runExecute()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 341
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    throw v1
.end method

.method public getSelectStarRowMapper()Lcom/j256/ormlite/stmt/GenericRowMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/StatementExecutor;->prepareQueryForAll()V

    .line 183
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    return-object v0
.end method

.method public ifExists(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 498
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 499
    new-instance v2, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    iget-object v5, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v2, v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    .line 500
    .local v2, "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "COUNT(*)"

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 501
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v5}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 502
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    .line 503
    new-array v3, v8, [Lcom/j256/ormlite/field/FieldType;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    aput-object v4, v3, v7

    iput-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 505
    .end local v2    # "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    :cond_0
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v7

    iget-object v5, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, v3, v4, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForLong(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)J

    move-result-wide v0

    .line 506
    .local v0, "count":J
    sget-object v3, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "query of \'{}\' returned {}"

    iget-object v5, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 507
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    move v3, v8

    :goto_0
    return v3

    :cond_1
    move v3, v7

    goto :goto_0
.end method

.method public bridge synthetic mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/j256/ormlite/support/DatabaseResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/String;
    .locals 4
    .param p1, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 489
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseResults;->getColumnCount()I

    move-result v1

    .line 490
    .local v1, "columnN":I
    new-array v2, v1, [Ljava/lang/String;

    .line 491
    .local v2, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "colC":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 492
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseResults;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    :cond_0
    return-object v2
.end method

.method public query(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;
    .locals 8
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/stmt/PreparedStmt",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    const/4 v1, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;

    move-result-object v6

    .line 158
    .local v6, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/SelectIterator;->hasNextThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/SelectIterator;->nextThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 165
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/SelectIterator;->close()V

    throw v0

    .line 162
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    :try_start_1
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "query of \'{}\' returned {} results"

    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->getStatement()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/SelectIterator;->close()V

    return-object v7
.end method

.method public queryForAll(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/StatementExecutor;->prepareQueryForAll()V

    .line 112
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    invoke-virtual {p0, p1, v0, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->query(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForCountStar(Lcom/j256/ormlite/support/DatabaseConnection;)J
    .locals 7
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->countStarQuery:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 121
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "SELECT COUNT(*) FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->countStarQuery:Ljava/lang/String;

    .line 125
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->countStarQuery:Ljava/lang/String;

    invoke-interface {p1, v3}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 126
    .local v0, "count":J
    sget-object v3, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "query of \'{}\' returned {}"

    iget-object v5, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->countStarQuery:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    return-wide v0
.end method

.method public queryForCountStar(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;)J
    .locals 4
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedStmt",
            "<TT;>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_LONG:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v2}, Lcom/j256/ormlite/stmt/PreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v1

    .line 137
    .local v1, "stmt":Lcom/j256/ormlite/support/CompiledStatement;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v0

    .line 138
    .local v0, "results":Lcom/j256/ormlite/support/DatabaseResults;
    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/j256/ormlite/support/DatabaseResults;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 144
    invoke-interface {v1}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    :goto_0
    return-wide v2

    .line 141
    :cond_0
    const-wide/16 v2, 0x0

    .line 144
    invoke-interface {v1}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    goto :goto_0

    .end local v0    # "results":Lcom/j256/ormlite/support/DatabaseResults;
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    throw v2
.end method

.method public queryForFirst(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 5
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedStmt",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v2}, Lcom/j256/ormlite/stmt/PreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v1

    .line 93
    .local v1, "stmt":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    invoke-interface {v1, p3}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v0

    .line 94
    .local v0, "results":Lcom/j256/ormlite/support/DatabaseResults;
    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query-for-first of \'{}\' returned at least 1 result"

    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->getStatement()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    invoke-interface {p2, v0}, Lcom/j256/ormlite/stmt/PreparedStmt;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 102
    invoke-interface {v1}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    :goto_0
    return-object v2

    .line 98
    :cond_0
    :try_start_1
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query-for-first of \'{}\' returned at 0 results"

    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->getStatement()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    const/4 v2, 0x0

    .line 102
    invoke-interface {v1}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    goto :goto_0

    .end local v0    # "results":Lcom/j256/ormlite/support/DatabaseResults;
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    throw v2
.end method

.method public queryForId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 3
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForId;->execute(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 9
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "query"    # Ljava/lang/String;
    .param p4, "arguments"    # [Ljava/lang/String;
    .param p5, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/RawRowMapper",
            "<TUO;>;[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults",
            "<TUO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p3, "rowMapper":Lcom/j256/ormlite/dao/RawRowMapper;, "Lcom/j256/ormlite/dao/RawRowMapper<TUO;>;"
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "executing raw query for: {}"

    invoke-virtual {v1, v3, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    array-length v1, p4

    if-lez v1, :cond_0

    .line 251
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query arguments: {}"

    invoke-virtual {v1, v3, p4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    :cond_0
    invoke-interface {p1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v2

    .line 254
    .local v2, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v5, 0x0

    .line 256
    .local v5, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v3, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v2, p2, v1, v3}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v5

    .line 257
    invoke-direct {p0, v5, p4}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->extractColumnNames(Lcom/j256/ormlite/support/CompiledStatement;)[Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, "columnNames":[Ljava/lang/String;
    new-instance v0, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v4, [Ljava/lang/String;

    new-instance v7, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;

    invoke-direct {v7, p3, v6, p0}, Lcom/j256/ormlite/stmt/StatementExecutor$UserObjectRowMapper;-><init>(Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;Lcom/j256/ormlite/stmt/GenericRowMapper;)V

    move-object v1, p1

    move-object v3, p2

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .local v0, "rawResults":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TUO;>;"
    const/4 v5, 0x0

    .line 263
    const/4 v2, 0x0

    .line 266
    if-eqz v5, :cond_1

    .line 267
    invoke-interface {v5}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    .line 269
    :cond_1
    if-eqz v2, :cond_2

    .line 270
    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_2
    return-object v0

    .line 266
    .end local v0    # "rawResults":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TUO;>;"
    .end local v6    # "columnNames":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v5, :cond_3

    .line 267
    invoke-interface {v5}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    .line 269
    :cond_3
    if-eqz v2, :cond_4

    .line 270
    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_4
    throw v1
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 9
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "columnTypes"    # [Lcom/j256/ormlite/field/DataType;
    .param p4, "arguments"    # [Ljava/lang/String;
    .param p5, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/DataType;",
            "[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "executing raw query for: {}"

    invoke-virtual {v1, v3, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    array-length v1, p4

    if-lez v1, :cond_0

    .line 283
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query arguments: {}"

    invoke-virtual {v1, v3, p4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    :cond_0
    invoke-interface {p1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v2

    .line 286
    .local v2, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v5, 0x0

    .line 288
    .local v5, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v3, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v2, p2, v1, v3}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v5

    .line 289
    invoke-direct {p0, v5, p4}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->extractColumnNames(Lcom/j256/ormlite/support/CompiledStatement;)[Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "columnNames":[Ljava/lang/String;
    new-instance v0, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v4, [Ljava/lang/Object;

    new-instance v7, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;

    invoke-direct {v7, p3}, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;-><init>([Lcom/j256/ormlite/field/DataType;)V

    move-object v1, p1

    move-object v3, p2

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .local v0, "rawResults":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<[Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 295
    const/4 v2, 0x0

    .line 298
    if-eqz v5, :cond_1

    .line 299
    invoke-interface {v5}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    .line 301
    :cond_1
    if-eqz v2, :cond_2

    .line 302
    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_2
    return-object v0

    .line 298
    .end local v0    # "rawResults":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<[Ljava/lang/Object;>;"
    .end local v6    # "columnNames":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v5, :cond_3

    .line 299
    invoke-interface {v5}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    .line 301
    :cond_3
    if-eqz v2, :cond_4

    .line 302
    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_4
    throw v1
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 9
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/String;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "executing raw query for: {}"

    invoke-virtual {v1, v3, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    array-length v1, p3

    if-lez v1, :cond_0

    .line 219
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query arguments: {}"

    invoke-virtual {v1, v3, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_0
    invoke-interface {p1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v2

    .line 222
    .local v2, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v5, 0x0

    .line 224
    .local v5, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v3, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v2, p2, v1, v3}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v5

    .line 225
    invoke-direct {p0, v5, p3}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->extractColumnNames(Lcom/j256/ormlite/support/CompiledStatement;)[Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "columnNames":[Ljava/lang/String;
    new-instance v0, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v4, [Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    move-object v7, p0

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .local v0, "rawResults":Lcom/j256/ormlite/dao/GenericRawResults;, "Lcom/j256/ormlite/dao/GenericRawResults<[Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 231
    const/4 v2, 0x0

    .line 234
    if-eqz v5, :cond_1

    .line 235
    invoke-interface {v5}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    .line 237
    :cond_1
    if-eqz v2, :cond_2

    .line 238
    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_2
    return-object v0

    .line 234
    .end local v0    # "rawResults":Lcom/j256/ormlite/dao/GenericRawResults;, "Lcom/j256/ormlite/dao/GenericRawResults<[Ljava/lang/String;>;"
    .end local v6    # "columnNames":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v5, :cond_3

    .line 235
    invoke-interface {v5}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    .line 237
    :cond_3
    if-eqz v2, :cond_4

    .line 238
    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_4
    throw v1
.end method

.method public refresh(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedRefresh:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedRefresh:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedRefresh:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;->executeRefresh(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    return v0
.end method

.method public update(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedUpdate;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedUpdate",
            "<TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedUpdate":Lcom/j256/ormlite/stmt/PreparedUpdate;, "Lcom/j256/ormlite/stmt/PreparedUpdate<TT;>;"
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->UPDATE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v1}, Lcom/j256/ormlite/stmt/PreparedUpdate;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 382
    .local v0, "stmt":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->runUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 384
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    throw v1
.end method

.method public update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    return v0
.end method

.method public updateId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;TID;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    .local p3, "newId":Ljava/lang/Object;, "TID;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdateId:Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdateId:Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdateId:Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;->execute(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    return v0
.end method

.method public updateRaw(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "running raw update statement: {}"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    array-length v1, p3

    if-lez v1, :cond_0

    .line 314
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "update arguments: {}"

    invoke-virtual {v1, v2, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    :cond_0
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->UPDATE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, p2, v1, v2}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 319
    .local v0, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    invoke-direct {p0, v0, p3}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 320
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->runUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 322
    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    throw v1
.end method
