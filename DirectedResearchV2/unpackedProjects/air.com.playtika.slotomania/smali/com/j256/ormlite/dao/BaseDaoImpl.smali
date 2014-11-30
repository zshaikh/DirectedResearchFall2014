.class public abstract Lcom/j256/ormlite/dao/BaseDaoImpl;
.super Ljava/lang/Object;
.source "BaseDaoImpl.java"

# interfaces
.implements Lcom/j256/ormlite/dao/Dao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;
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
        "Lcom/j256/ormlite/dao/Dao",
        "<TT;TID;>;"
    }
.end annotation


# static fields
.field private static final daoConfigLevelLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultObjectCache:Lcom/j256/ormlite/dao/ReferenceObjectCache;


# instance fields
.field protected connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

.field protected final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field private initialized:Z

.field protected lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private objectCache:Lcom/j256/ormlite/dao/ObjectCache;

.field protected statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/StatementExecutor",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field protected tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected tableInfo:Lcom/j256/ormlite/table/TableInfo;
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
    .line 67
    new-instance v0, Lcom/j256/ormlite/dao/BaseDaoImpl$1;

    invoke-direct {v0}, Lcom/j256/ormlite/dao/BaseDaoImpl$1;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoConfigLevelLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p2, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-virtual {p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 116
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 104
    return-void
.end method

.method private constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    .line 121
    iput-object p3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 124
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->initialize()V

    .line 126
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/j256/ormlite/dao/BaseDaoImpl;I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .param p0, "x0"    # Lcom/j256/ormlite/dao/BaseDaoImpl;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .param p0, "x0"    # Lcom/j256/ormlite/dao/BaseDaoImpl;
    .param p1, "x1"    # Lcom/j256/ormlite/stmt/PreparedQuery;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createIterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized clearAllInternalObjectCaches()V
    .locals 2

    .prologue
    .line 750
    const-class v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/j256/ormlite/dao/BaseDaoImpl;->defaultObjectCache:Lcom/j256/ormlite/dao/ReferenceObjectCache;

    if-eqz v1, :cond_0

    .line 751
    sget-object v1, Lcom/j256/ormlite/dao/BaseDaoImpl;->defaultObjectCache:Lcom/j256/ormlite/dao/ReferenceObjectCache;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/ReferenceObjectCache;->clearAll()V

    .line 752
    const/4 v1, 0x0

    sput-object v1, Lcom/j256/ormlite/dao/BaseDaoImpl;->defaultObjectCache:Lcom/j256/ormlite/dao/ReferenceObjectCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    :cond_0
    monitor-exit v0

    return-void

    .line 750
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 868
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    new-instance v0, Lcom/j256/ormlite/dao/BaseDaoImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl$5;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    return-object v0
.end method

.method static createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 854
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/j256/ormlite/dao/BaseDaoImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl$4;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    return-object v0
.end method

.method private createIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 5
    .param p1, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 880
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v2, p0, v3, p1, v4}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;ILcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/stmt/SelectIterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 882
    .local v1, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    return-object v1

    .line 883
    .end local v1    # "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 884
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not build iterator for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private createIterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 8
    .param p2, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 890
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 892
    .local v7, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    return-object v7

    .line 893
    .end local v7    # "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 894
    .local v6, "e":Ljava/sql/SQLException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not build prepared-query iterator for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private queryForFieldValues(Ljava/util/Map;Z)Ljava/util/List;
    .locals 7
    .param p2, "useArgs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
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
    .line 922
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 923
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    .line 924
    .local v4, "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 925
    .local v5, "where":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0    # "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 926
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 927
    .local v1, "fieldValue":Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 928
    new-instance v2, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v2, v1}, Lcom/j256/ormlite/stmt/SelectArg;-><init>(Ljava/lang/Object;)V

    .local v2, "fieldValue":Lcom/j256/ormlite/stmt/SelectArg;
    move-object v1, v2

    .line 930
    .end local v2    # "fieldValue":Lcom/j256/ormlite/stmt/SelectArg;
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p0, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_0

    .line 932
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 933
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 936
    :goto_1
    return-object v6

    .line 935
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/Where;->and(I)Lcom/j256/ormlite/stmt/Where;

    .line 936
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v6

    goto :goto_1
.end method

.method private queryForMatching(Ljava/lang/Object;Z)Ljava/util/List;
    .locals 10
    .param p2, "useArgs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
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
    .line 899
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "matchObj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 900
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v7

    .line 901
    .local v7, "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    .line 902
    .local v8, "where":Lcom/j256/ormlite/stmt/Where;, "Lcom/j256/ormlite/stmt/Where<TT;TID;>;"
    const/4 v1, 0x0

    .line 903
    .local v1, "fieldC":I
    iget-object v9, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v9}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v2, v0, v5

    .line 904
    .local v2, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v2, p1}, Lcom/j256/ormlite/field/FieldType;->getFieldValueIfNotDefault(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 905
    .local v3, "fieldValue":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 906
    if-eqz p2, :cond_0

    .line 907
    new-instance v4, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v4, v3}, Lcom/j256/ormlite/stmt/SelectArg;-><init>(Ljava/lang/Object;)V

    .local v4, "fieldValue":Lcom/j256/ormlite/stmt/SelectArg;
    move-object v3, v4

    .line 909
    .end local v4    # "fieldValue":Lcom/j256/ormlite/stmt/SelectArg;
    :cond_0
    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 910
    add-int/lit8 v1, v1, 0x1

    .line 903
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 913
    .end local v2    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v3    # "fieldValue":Ljava/lang/Object;
    :cond_2
    if-nez v1, :cond_3

    .line 914
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 917
    :goto_1
    return-object v9

    .line 916
    :cond_3
    invoke-virtual {v8, v1}, Lcom/j256/ormlite/stmt/Where;->and(I)Lcom/j256/ormlite/stmt/Where;

    .line 917
    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v9

    goto :goto_1
.end method


# virtual methods
.method public callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
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
    .line 587
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TCT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 588
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 594
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z

    move-result v1

    .line 595
    .local v1, "saved":Z
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v2, v0, v1, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->callBatchTasks(Lcom/j256/ormlite/support/DatabaseConnection;ZLjava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 597
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 598
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-object v2

    .line 597
    .end local v1    # "saved":Z
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 598
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v2
.end method

.method protected checkForInitialized()V
    .locals 2

    .prologue
    .line 873
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->initialized:Z

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must call initialize() before you can use the dao"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_0
    return-void
.end method

.method public clearObjectCache()V
    .locals 2

    .prologue
    .line 741
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/ObjectCache;->clear(Ljava/lang/Class;)V

    .line 744
    :cond_0
    return-void
.end method

.method public closeLastIterator()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 517
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 521
    :cond_0
    return-void
.end method

.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public commit(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 811
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    .line 812
    return-void
.end method

.method public countOf()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 661
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 663
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForCountStar(Lcom/j256/ormlite/support/DatabaseConnection;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 665
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-wide v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public countOf(Lcom/j256/ormlite/stmt/PreparedQuery;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 671
    invoke-interface {p1}, Lcom/j256/ormlite/stmt/PreparedQuery;->getType()Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    move-result-object v1

    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_LONG:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    if-eq v1, v2, :cond_0

    .line 672
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepared query is not of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_LONG:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", did you call QueryBuilder.setCountOf(true)?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 677
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForCountStar(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 679
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-wide v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public create(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 296
    if-nez p1, :cond_0

    .line 297
    const/4 v3, 0x0

    .line 308
    :goto_0
    return v3

    .line 299
    :cond_0
    instance-of v3, p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v3, :cond_1

    .line 301
    move-object v0, p1

    check-cast v0, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    move-object v2, v0

    .line 302
    .local v2, "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    invoke-virtual {v2, p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->setDao(Lcom/j256/ormlite/dao/Dao;)V

    .line 304
    .end local v2    # "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    :cond_1
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    .line 306
    .local v1, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v3, v1, p1, v4}, Lcom/j256/ormlite/stmt/StatementExecutor;->create(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 308
    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v4, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v4, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v3
.end method

.method public createIfNotExists(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 314
    const/4 v1, 0x0

    .line 321
    :goto_0
    return-object v1

    .line 316
    :cond_0
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryForSameId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    .local v0, "existing":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1

    .line 318
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->create(Ljava/lang/Object;)I

    move-object v1, p1

    .line 319
    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 321
    goto :goto_0
.end method

.method public createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 326
    if-nez p1, :cond_0

    .line 327
    new-instance v2, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    invoke-direct {v2, v3, v3, v3}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;-><init>(ZZI)V

    .line 336
    :goto_0
    return-object v2

    .line 329
    :cond_0
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->extractId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 331
    .local v0, "id":Ljava/lang/Object;, "TID;"
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->idExists(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 332
    :cond_1
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->create(Ljava/lang/Object;)I

    move-result v1

    .line 333
    .local v1, "numRows":I
    new-instance v2, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    invoke-direct {v2, v4, v3, v1}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;-><init>(ZZI)V

    goto :goto_0

    .line 335
    .end local v1    # "numRows":I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->update(Ljava/lang/Object;)I

    move-result v1

    .line 336
    .restart local v1    # "numRows":I
    new-instance v2, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    invoke-direct {v2, v3, v4, v1}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;-><init>(ZZI)V

    goto :goto_0
.end method

.method public delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 461
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedDelete":Lcom/j256/ormlite/stmt/PreparedDelete;, "Lcom/j256/ormlite/stmt/PreparedDelete<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 462
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 464
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->delete(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedDelete;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 466
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public delete(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 401
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 403
    if-nez p1, :cond_0

    .line 404
    const/4 v1, 0x0

    .line 410
    :goto_0
    return v1

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 408
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->delete(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 410
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public delete(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "datas":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 433
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    :cond_0
    const/4 v1, 0x0

    .line 440
    :goto_0
    return v1

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 438
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->deleteObjects(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 440
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/DeleteBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 256
    new-instance v0, Lcom/j256/ormlite/stmt/DeleteBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-direct {v0, v1, v2, p0}, Lcom/j256/ormlite/stmt/DeleteBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    return-object v0
.end method

.method public deleteById(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "id":Ljava/lang/Object;, "TID;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 418
    if-nez p1, :cond_0

    .line 419
    const/4 v1, 0x0

    .line 425
    :goto_0
    return v1

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 423
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->deleteById(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 425
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public deleteIds(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TID;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 448
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    :cond_0
    const/4 v1, 0x0

    .line 455
    :goto_0
    return v1

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 453
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->deleteIds(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 455
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public endThreadConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 781
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 782
    return-void
.end method

.method public varargs executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 564
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 566
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v2, v0, p1, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->executeRaw(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 570
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return v2

    .line 567
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 568
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not run raw execute statement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v2
.end method

.method public extractId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TID;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 621
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 622
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    .line 623
    .local v1, "idField":Lcom/j256/ormlite/field/FieldType;
    if-nez v1, :cond_0

    .line 624
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have an id field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 627
    :cond_0
    invoke-virtual {v1, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 628
    .local v0, "id":Ljava/lang/Object;, "TID;"
    return-object v0
.end method

.method public findForeignFieldType(Ljava/lang/Class;)Lcom/j256/ormlite/field/FieldType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .prologue
    .line 636
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 637
    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 638
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->getType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_0

    move-object v4, v1

    .line 642
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :goto_1
    return-object v4

    .line 637
    .restart local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 642
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getEmptyForeignCollection(Ljava/lang/String;)Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/dao/ForeignCollection",
            "<TFT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    const/4 v5, 0x0

    .line 684
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 685
    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 686
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 687
    const/4 v4, 0x1

    invoke-virtual {v1, v5, v5, v4}, Lcom/j256/ormlite/field/FieldType;->buildForeignCollection(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/j256/ormlite/dao/BaseForeignCollection;

    move-result-object v4

    return-object v4

    .line 685
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find a field named "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getObjectCache()Lcom/j256/ormlite/dao/ObjectCache;
    .locals 1

    .prologue
    .line 737
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    return-object v0
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
    .line 761
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementExecutor;->getSelectStarRowMapper()Lcom/j256/ormlite/stmt/GenericRowMapper;

    move-result-object v0

    return-object v0
.end method

.method public getTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 822
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    return-object v0
.end method

.method public getTableInfo()Lcom/j256/ormlite/table/TableInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 829
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    return-object v0
.end method

.method public getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 485
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 486
    new-instance v0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;

    new-instance v1, Lcom/j256/ormlite/dao/BaseDaoImpl$2;

    invoke-direct {v1, p0}, Lcom/j256/ormlite/dao/BaseDaoImpl$2;-><init>(Lcom/j256/ormlite/dao/BaseDaoImpl;)V

    invoke-direct {v0, v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;-><init>(Lcom/j256/ormlite/dao/CloseableIterable;)V

    return-object v0
.end method

.method public getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 502
    new-instance v0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;

    new-instance v1, Lcom/j256/ormlite/dao/BaseDaoImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl$3;-><init>(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/stmt/PreparedQuery;)V

    invoke-direct {v0, v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;-><init>(Lcom/j256/ormlite/dao/CloseableIterable;)V

    return-object v0
.end method

.method public idExists(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 765
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "id":Ljava/lang/Object;, "TID;"
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 767
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExists(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 769
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public initialize()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-boolean v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->initialized:Z

    if-eqz v8, :cond_0

    .line 213
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    if-nez v8, :cond_1

    .line 138
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connectionSource was never set on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 141
    :cond_1
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v8}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v8

    iput-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 142
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    if-nez v8, :cond_2

    .line 143
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connectionSource is getting a null DatabaseType in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 146
    :cond_2
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    if-nez v8, :cond_3

    .line 147
    new-instance v8, Lcom/j256/ormlite/table/TableInfo;

    iget-object v9, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v10, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-direct {v8, v9, p0, v10}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;Ljava/lang/Class;)V

    iput-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 152
    :goto_1
    new-instance v8, Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v9, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v10, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-direct {v8, v9, v10, p0}, Lcom/j256/ormlite/stmt/StatementExecutor;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    iput-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    .line 167
    sget-object v8, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoConfigLevelLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;

    .line 168
    .local v2, "daoConfigLevel":Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;
    invoke-virtual {v2}, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 170
    invoke-virtual {v2, p0}, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->addDao(Lcom/j256/ormlite/dao/BaseDaoImpl;)V

    goto :goto_0

    .line 149
    .end local v2    # "daoConfigLevel":Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;
    :cond_3
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    iget-object v9, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v8, v9}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 150
    new-instance v8, Lcom/j256/ormlite/table/TableInfo;

    iget-object v9, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v10, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-direct {v8, v9, p0, v10}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    iput-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    goto :goto_1

    .line 174
    .restart local v2    # "daoConfigLevel":Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;
    :cond_4
    invoke-virtual {v2, p0}, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->addDao(Lcom/j256/ormlite/dao/BaseDaoImpl;)V

    .line 183
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    :try_start_0
    invoke-virtual {v2}, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 184
    invoke-virtual {v2, v5}, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->get(I)Lcom/j256/ormlite/dao/BaseDaoImpl;

    move-result-object v1

    .line 193
    .local v1, "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {v8, v1}, Lcom/j256/ormlite/dao/DaoManager;->registerDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    invoke-virtual {v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v7, :cond_5

    aget-object v4, v0, v6

    .line 198
    .local v4, "fieldType":Lcom/j256/ormlite/field/FieldType;
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getDataClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/j256/ormlite/field/FieldType;->configDaoInformation(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 200
    .end local v0    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .end local v4    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 202
    .local v3, "e":Ljava/sql/SQLException;
    :try_start_2
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {v8, v1}, Lcom/j256/ormlite/dao/DaoManager;->unregisterDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 203
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    .end local v1    # "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    .end local v3    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->clear()V

    throw v8

    .line 207
    .restart local v0    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .restart local v1    # "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_5
    const/4 v8, 0x1

    :try_start_3
    iput-boolean v8, v1, Lcom/j256/ormlite/dao/BaseDaoImpl;->initialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 211
    .end local v0    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .end local v1    # "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_6
    invoke-virtual {v2}, Lcom/j256/ormlite/dao/BaseDaoImpl$DaoConfigArray;->clear()V

    goto/16 :goto_0
.end method

.method public isAutoCommit()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 798
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 800
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->isAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 802
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public isAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 1
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 807
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommit()Z

    move-result v0

    return v0
.end method

.method public isTableExists()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 651
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 653
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/DatabaseConnection;->isTableExists(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 655
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public isUpdatable()Z
    .locals 1

    .prologue
    .line 646
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->isUpdatable()Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .param p1, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 480
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 481
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    return-object v0
.end method

.method public iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .param p2, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 528
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createIterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 530
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapSelectStarRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 1
    .param p1, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseResults;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 757
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementExecutor;->getSelectStarRowMapper()Lcom/j256/ormlite/stmt/GenericRowMapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/j256/ormlite/stmt/GenericRowMapper;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 604
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/table/TableInfo;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 608
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data1":Ljava/lang/Object;, "TT;"
    .local p2, "data2":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 609
    iget-object v6, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v6}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 610
    .local v3, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v3, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 611
    .local v1, "fieldObj1":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 613
    .local v2, "fieldObj2":Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v6

    invoke-interface {v6, v1, v2}, Lcom/j256/ormlite/field/DataPersister;->dataIsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 614
    const/4 v6, 0x0

    .line 617
    .end local v1    # "fieldObj1":Ljava/lang/Object;
    .end local v2    # "fieldObj2":Ljava/lang/Object;
    .end local v3    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :goto_1
    return v6

    .line 609
    .restart local v1    # "fieldObj1":Ljava/lang/Object;
    .restart local v2    # "fieldObj2":Ljava/lang/Object;
    .restart local v3    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 617
    .end local v1    # "fieldObj1":Ljava/lang/Object;
    .end local v2    # "fieldObj2":Ljava/lang/Object;
    .end local v3    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)",
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
    .line 260
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 261
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v0, v1, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->query(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 246
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-direct {v0, v1, v2, p0}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    return-object v0
.end method

.method public queryForAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 236
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 237
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForAll(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
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
    .line 241
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForFieldValues(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
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
    .line 273
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryForFieldValues(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForFieldValuesArgs(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
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
    .line 277
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryForFieldValues(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 227
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 229
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForFirst(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public queryForId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "id":Ljava/lang/Object;, "TID;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 217
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 219
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 221
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public queryForMatching(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
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
    .line 265
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "matchObj":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryForMatching(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForMatchingArgs(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
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
    .line 269
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "matchObj":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryForMatching(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForSameId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 282
    if-nez p1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-object v1

    .line 285
    :cond_1
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->extractId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "id":Ljava/lang/Object;, "TID;"
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public varargs queryRaw(Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<GR:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/RawRowMapper",
            "<TGR;>;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults",
            "<TGR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p2, "mapper":Lcom/j256/ormlite/dao/RawRowMapper;, "Lcom/j256/ormlite/dao/RawRowMapper<TGR;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v5, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 547
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 548
    .local v6, "e":Ljava/sql/SQLException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not build iterator for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public varargs queryRaw(Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnTypes"    # [Lcom/j256/ormlite/field/DataType;
    .param p3, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/DataType;",
            "[",
            "Ljava/lang/String;",
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
    .line 554
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v5, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 557
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 558
    .local v6, "e":Ljava/sql/SQLException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not build iterator for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public varargs queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
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
    .line 534
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 537
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 538
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not build iterator for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public refresh(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 383
    if-nez p1, :cond_0

    .line 384
    const/4 v3, 0x0

    .line 395
    :goto_0
    return v3

    .line 386
    :cond_0
    instance-of v3, p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v3, :cond_1

    .line 388
    move-object v0, p1

    check-cast v0, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    move-object v2, v0

    .line 389
    .local v2, "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    invoke-virtual {v2, p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->setDao(Lcom/j256/ormlite/dao/Dao;)V

    .line 391
    .end local v2    # "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    :cond_1
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    .line 393
    .local v1, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v3, v1, p1, v4}, Lcom/j256/ormlite/stmt/StatementExecutor;->refresh(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 395
    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v4, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v4, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v3
.end method

.method public rollBack(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 815
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V

    .line 816
    return-void
.end method

.method public setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    .locals 0
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "autoCommit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 794
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 795
    return-void
.end method

.method public setAutoCommit(Z)V
    .locals 3
    .param p1, "autoCommit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 785
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 787
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 791
    return-void

    .line 789
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public setConnectionSource(Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;

    .prologue
    .line 833
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 834
    return-void
.end method

.method public setObjectCache(Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 3
    .param p1, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 717
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    if-nez p1, :cond_1

    .line 718
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/ObjectCache;->clear(Ljava/lang/Class;)V

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    if-eq v0, p1, :cond_2

    .line 726
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/ObjectCache;->clear(Ljava/lang/Class;)V

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    if-nez v0, :cond_3

    .line 729
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have an id field to enable the object cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_3
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    .line 732
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/ObjectCache;->registerClass(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setObjectCache(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    if-eqz p1, :cond_3

    .line 695
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    if-nez v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have an id field to enable the object cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    monitor-enter v0

    .line 700
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/dao/BaseDaoImpl;->defaultObjectCache:Lcom/j256/ormlite/dao/ReferenceObjectCache;

    if-nez v1, :cond_1

    .line 702
    invoke-static {}, Lcom/j256/ormlite/dao/ReferenceObjectCache;->makeWeakCache()Lcom/j256/ormlite/dao/ReferenceObjectCache;

    move-result-object v1

    sput-object v1, Lcom/j256/ormlite/dao/BaseDaoImpl;->defaultObjectCache:Lcom/j256/ormlite/dao/ReferenceObjectCache;

    .line 704
    :cond_1
    sget-object v1, Lcom/j256/ormlite/dao/BaseDaoImpl;->defaultObjectCache:Lcom/j256/ormlite/dao/ReferenceObjectCache;

    iput-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    .line 705
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/ObjectCache;->registerClass(Ljava/lang/Class;)V

    .line 714
    :cond_2
    :goto_0
    return-void

    .line 705
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    if-eqz v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/ObjectCache;->clear(Ljava/lang/Class;)V

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    goto :goto_0
.end method

.method public setTableConfig(Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 841
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 842
    return-void
.end method

.method public startThreadConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 774
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 775
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z

    .line 776
    return-object v0
.end method

.method public update(Lcom/j256/ormlite/stmt/PreparedUpdate;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 371
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedUpdate":Lcom/j256/ormlite/stmt/PreparedUpdate;, "Lcom/j256/ormlite/stmt/PreparedUpdate<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 372
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 374
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->update(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedUpdate;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 376
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public update(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 343
    if-nez p1, :cond_0

    .line 344
    const/4 v1, 0x0

    .line 350
    :goto_0
    return v1

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 348
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 350
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/UpdateBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 251
    new-instance v0, Lcom/j256/ormlite/stmt/UpdateBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-direct {v0, v1, v2, p0}, Lcom/j256/ormlite/stmt/UpdateBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    return-object v0
.end method

.method public updateId(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TID;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p2, "newId":Ljava/lang/Object;, "TID;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 358
    if-nez p1, :cond_0

    .line 359
    const/4 v1, 0x0

    .line 365
    :goto_0
    return v1

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 363
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->updateId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 365
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public varargs updateRaw(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 575
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 576
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 578
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v2, v0, p1, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->updateRaw(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 582
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return v2

    .line 579
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 580
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not run raw update statement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v2
.end method
