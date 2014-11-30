.class public abstract Lcom/j256/ormlite/dao/BaseForeignCollection;
.super Ljava/lang/Object;
.source "BaseForeignCollection.java"

# interfaces
.implements Lcom/j256/ormlite/dao/ForeignCollection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/ForeignCollection",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4797e276d525d695L


# instance fields
.field private final transient columnName:Ljava/lang/String;

.field protected final transient dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private final transient orderColumn:Ljava/lang/String;

.field private final transient parent:Ljava/lang/Object;

.field private final transient parentId:Ljava/lang/Object;

.field private transient preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "parent"    # Ljava/lang/Object;
    .param p3, "parentId"    # Ljava/lang/Object;
    .param p4, "columnName"    # Ljava/lang/String;
    .param p5, "orderColumn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 38
    iput-object p4, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->columnName:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parentId:Ljava/lang/Object;

    .line 40
    iput-object p5, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->orderColumn:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parent:Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 55
    :goto_0
    return v1

    .line 54
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v1, 0x1

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 57
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create data element in dao"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v4, :cond_0

    .line 68
    const/4 v4, 0x0

    .line 79
    :goto_0
    return v4

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 71
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "data":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v0, 0x1

    goto :goto_1

    .line 75
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 76
    .local v2, "e":Ljava/sql/SQLException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Could not create data elements in dao"

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v1    # "data":Ljava/lang/Object;, "TT;"
    .end local v2    # "e":Ljava/sql/SQLException;
    :cond_1
    move v4, v0

    .line 79
    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 136
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseForeignCollection;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 141
    .local v0, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :goto_1
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    .line 143
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 146
    :catchall_0
    move-exception v1

    .line 147
    :try_start_1
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :goto_2
    throw v1

    .line 147
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method protected getPreparedQuery()Lcom/j256/ormlite/stmt/PreparedQuery;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v3, :cond_0

    .line 172
    const/4 v3, 0x0

    .line 188
    :goto_0
    return-object v3

    .line 174
    :cond_0
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    if-nez v3, :cond_2

    .line 175
    new-instance v0, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v0}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 176
    .local v0, "fieldArg":Lcom/j256/ormlite/stmt/SelectArg;
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parentId:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    .line 177
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 178
    .local v2, "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->orderColumn:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 179
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->orderColumn:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 181
    :cond_1
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->columnName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v3

    iput-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    .line 182
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    instance-of v3, v3, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    if-eqz v3, :cond_2

    .line 184
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    check-cast v1, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    .line 185
    .local v1, "mappedStmt":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parent:Ljava/lang/Object;

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parentId:Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->setParentInformation(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .end local v0    # "fieldArg":Lcom/j256/ormlite/stmt/SelectArg;
    .end local v1    # "mappedStmt":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;Ljava/lang/Object;>;"
    .end local v2    # "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    :cond_2
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    goto :goto_0
.end method

.method public refresh(Ljava/lang/Object;)I
    .locals 1
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
    .line 163
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->refresh(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public abstract removeAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v3, :cond_0

    .line 108
    const/4 v3, 0x0

    .line 126
    :goto_0
    return v3

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseForeignCollection;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v2

    .line 113
    .local v2, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, "data":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    const/4 v0, 0x1

    goto :goto_1

    .line 123
    .end local v1    # "data":Ljava/lang/Object;, "TT;"
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move v3, v0

    .line 126
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v3

    .line 123
    :try_start_2
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    :goto_3
    throw v3

    .line 124
    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public update(Ljava/lang/Object;)I
    .locals 1
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
    .line 155
    .local p0, "this":Lcom/j256/ormlite/dao/BaseForeignCollection;, "Lcom/j256/ormlite/dao/BaseForeignCollection<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
