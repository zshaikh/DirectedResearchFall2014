.class public Lcom/j256/ormlite/stmt/RawResultsImpl;
.super Ljava/lang/Object;
.source "RawResultsImpl.java"

# interfaces
.implements Lcom/j256/ormlite/dao/GenericRawResults;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/GenericRawResults",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final columnNames:[Ljava/lang/String;

.field private iterator:Lcom/j256/ormlite/stmt/SelectIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/SelectIterator",
            "<TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 9
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "query"    # Ljava/lang/String;
    .param p5, "compiledStmt"    # Lcom/j256/ormlite/support/CompiledStatement;
    .param p6, "columnNames"    # [Ljava/lang/String;
    .param p8, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/j256/ormlite/support/CompiledStatement;",
            "[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TT;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p7, "rowMapper":Lcom/j256/ormlite/stmt/GenericRowMapper;, "Lcom/j256/ormlite/stmt/GenericRowMapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/j256/ormlite/stmt/SelectIterator;

    const/4 v2, 0x0

    move-object v1, p4

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p3

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/stmt/SelectIterator;-><init>(Ljava/lang/Class;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/support/CompiledStatement;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    .line 31
    iput-object p6, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->columnNames:[Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/SelectIterator;->close()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    .line 79
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
    .line 71
    .local p0, "this":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getFirstResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/SelectIterator;->hasNextThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/SelectIterator;->nextThrow()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/RawResultsImpl;->close()V

    :goto_0
    return-object v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/RawResultsImpl;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/RawResultsImpl;->close()V

    throw v0
.end method

.method public getNumberColumns()I
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->columnNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getResults()Ljava/util/List;
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
    .line 43
    .local p0, "this":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/SelectIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/SelectIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/SelectIterator;->close()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/SelectIterator;->close()V

    return-object v0
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
    .line 67
    .local p0, "this":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/j256/ormlite/stmt/RawResultsImpl;, "Lcom/j256/ormlite/stmt/RawResultsImpl<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method
