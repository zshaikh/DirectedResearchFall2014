.class public Lcom/j256/ormlite/dao/LazyForeignCollection;
.super Lcom/j256/ormlite/dao/BaseForeignCollection;
.source "LazyForeignCollection.java"

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
        "Lcom/j256/ormlite/dao/BaseForeignCollection",
        "<TT;TID;>;",
        "Lcom/j256/ormlite/dao/ForeignCollection",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4bc855175671af79L


# instance fields
.field private transient lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 34
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-direct/range {p0 .. p5}, Lcom/j256/ormlite/dao/BaseForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public closeLastIterator()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 97
    :cond_0
    return-void
.end method

.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iteratorThrow()Lcom/j256/ormlite/dao/CloseableIterator;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not build lazy iterator for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 135
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 137
    .local v0, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x1

    .line 145
    :try_start_1
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :goto_0
    return v1

    .line 142
    :cond_1
    const/4 v1, 0x0

    .line 145
    :try_start_2
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v2

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v1

    .line 145
    :try_start_3
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 148
    :goto_1
    throw v1

    .line 146
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 154
    .local v1, "leftOvers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 156
    .local v0, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v2

    .line 162
    :try_start_1
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    :goto_1
    throw v2

    .line 159
    :cond_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 162
    :try_start_3
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 165
    :goto_2
    return v2

    .line 163
    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 289
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 78
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;

    new-instance v1, Lcom/j256/ormlite/dao/LazyForeignCollection$1;

    invoke-direct {v1, p0}, Lcom/j256/ormlite/dao/LazyForeignCollection$1;-><init>(Lcom/j256/ormlite/dao/LazyForeignCollection;)V

    invoke-direct {v0, v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;-><init>(Lcom/j256/ormlite/dao/CloseableIterable;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 302
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEager()Z
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 122
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 124
    .local v0, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 127
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    :goto_1
    return v1

    .line 124
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v1

    .line 127
    :try_start_2
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    :goto_2
    throw v1

    .line 128
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2
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
    .line 44
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorThrow()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 59
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->seperateIteratorThrow()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 60
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    return-object v0
.end method

.method public refreshAll()I
    .locals 2

    .prologue
    .line 271
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call updateAll() on a lazy collection."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshCollection()I
    .locals 1

    .prologue
    .line 276
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 171
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 173
    .local v0, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    const/4 v1, 0x1

    .line 182
    :try_start_1
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :goto_0
    return v1

    .line 179
    :cond_1
    const/4 v1, 0x0

    .line 182
    :try_start_2
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v2

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v1

    .line 182
    :try_start_3
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 185
    :goto_1
    throw v1

    .line 183
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 192
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v1

    .line 194
    .local v1, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    :goto_1
    return v0

    .line 202
    :catchall_0
    move-exception v2

    .line 203
    :try_start_2
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 206
    :goto_2
    throw v2

    .line 204
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public seperateIteratorThrow()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 69
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal DAO object is null.  Lazy collections cannot be used if they have been deserialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/LazyForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->getPreparedQuery()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 104
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 107
    .local v0, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    const/4 v1, 0x0

    .local v1, "sizeC":I
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->moveToNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :goto_1
    return v1

    .line 113
    :catchall_0
    move-exception v2

    .line 114
    :try_start_2
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    :goto_2
    throw v2

    .line 115
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 211
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v1

    .line 214
    .local v1, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    :goto_0
    :try_start_0
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v2

    .line 220
    :try_start_1
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    :goto_1
    throw v2

    .line 217
    :cond_0
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 220
    :try_start_3
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 223
    :goto_2
    return-object v2

    .line 221
    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    const/4 v5, 0x0

    .line 229
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v4, 0x0

    .line 230
    .local v4, "itemC":I
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LazyForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v7

    .local v7, "iterator":Lcom/j256/ormlite/dao/CloseableIterator;, "Lcom/j256/ormlite/dao/CloseableIterator<TT;>;"
    move-object v6, v5

    .line 232
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_0
    :try_start_0
    invoke-interface {v7}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 234
    invoke-interface {v7}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 236
    .local v2, "castData":Ljava/lang/Object;, "TE;"
    array-length v9, p1

    if-lt v4, v9, :cond_2

    .line 237
    if-nez v6, :cond_0

    .line 238
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    :try_start_1
    array-length v8, v0

    .local v8, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v8, :cond_1

    aget-object v1, v0, v3

    .line 240
    .local v1, "arrayData":Ljava/lang/Object;, "TE;"
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "arrayData":Ljava/lang/Object;, "TE;"
    .end local v3    # "i$":I
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .end local v8    # "len$":I
    .restart local v6    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_0
    move-object v5, v6

    .line 243
    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_1
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    .line 248
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .restart local v6    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    goto :goto_0

    .line 245
    :cond_2
    :try_start_2
    aput-object v2, p1, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v6

    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    goto :goto_2

    .line 251
    .end local v2    # "castData":Ljava/lang/Object;, "TE;"
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .restart local v6    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_3
    :try_start_3
    invoke-interface {v7}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 256
    :goto_3
    if-nez v6, :cond_5

    .line 257
    array-length v9, p1

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ge v4, v9, :cond_4

    .line 258
    const/4 v9, 0x0

    aput-object v9, p1, v4

    :cond_4
    move-object v9, p1

    .line 262
    :goto_4
    return-object v9

    .line 250
    :catchall_0
    move-exception v9

    move-object v5, v6

    .line 251
    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_5
    :try_start_4
    invoke-interface {v7}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 254
    :goto_6
    throw v9

    .line 262
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .restart local v6    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_5
    invoke-interface {v6, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    goto :goto_4

    .line 252
    :catch_0
    move-exception v9

    goto :goto_3

    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :catch_1
    move-exception v10

    goto :goto_6

    .line 250
    .restart local v2    # "castData":Ljava/lang/Object;, "TE;"
    :catchall_1
    move-exception v9

    goto :goto_5
.end method

.method public updateAll()I
    .locals 2

    .prologue
    .line 267
    .local p0, "this":Lcom/j256/ormlite/dao/LazyForeignCollection;, "Lcom/j256/ormlite/dao/LazyForeignCollection<TT;TID;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call updateAll() on a lazy collection."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
