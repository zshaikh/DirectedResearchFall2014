.class public Lcom/j256/ormlite/dao/EagerForeignCollection;
.super Lcom/j256/ormlite/dao/BaseForeignCollection;
.source "EagerForeignCollection.java"

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableWrappedIterable;
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
        "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2304b05d8755d8d9L


# instance fields
.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-direct/range {p0 .. p5}, Lcom/j256/ormlite/dao/BaseForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    if-nez p3, :cond_0

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->getPreparedQuery()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/j256/ormlite/dao/EagerForeignCollection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/j256/ormlite/dao/EagerForeignCollection;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-super {p0, p1}, Lcom/j256/ormlite/dao/BaseForeignCollection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-super {p0, p1}, Lcom/j256/ormlite/dao/BaseForeignCollection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 225
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 226
    invoke-super {p0}, Lcom/j256/ormlite/dao/BaseForeignCollection;->clear()V

    .line 227
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 139
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    return-void
.end method

.method public closeLastIterator()V
    .locals 0

    .prologue
    .line 143
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
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
    .line 45
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->iteratorThrow()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 158
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 255
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    instance-of v2, p1, Lcom/j256/ormlite/dao/EagerForeignCollection;

    if-nez v2, :cond_0

    .line 256
    const/4 v2, 0x0

    .line 260
    :goto_0
    return v2

    .line 259
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/j256/ormlite/dao/EagerForeignCollection;

    move-object v1, v0

    .line 260
    .local v1, "other":Lcom/j256/ormlite/dao/EagerForeignCollection;
    iget-object v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    iget-object v3, v1, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 268
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEager()Z
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 154
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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
    .line 41
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->iteratorThrow()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

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

    .prologue
    .line 50
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    new-instance v0, Lcom/j256/ormlite/dao/EagerForeignCollection$1;

    invoke-direct {v0, p0}, Lcom/j256/ormlite/dao/EagerForeignCollection$1;-><init>(Lcom/j256/ormlite/dao/EagerForeignCollection;)V

    return-object v0
.end method

.method public refreshAll()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    const/4 v2, 0x0

    .line 239
    .local v2, "updatedC":I
    iget-object v3, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "data":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->refresh(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 242
    .end local v0    # "data":Ljava/lang/Object;, "TT;"
    :cond_0
    return v2
.end method

.method public refreshCollection()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/dao/EagerForeignCollection;->getPreparedQuery()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    .line 247
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 193
    iget-object v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 200
    :goto_0
    return v2

    .line 198
    :cond_1
    move-object v0, p1

    .line 200
    .local v0, "castData":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v4, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 201
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 202
    .local v1, "e":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not delete data element from dao"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
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
    .line 208
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 209
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, "data":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/j256/ormlite/dao/EagerForeignCollection;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "data":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-super {p0, p1}, Lcom/j256/ormlite/dao/BaseForeignCollection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateAll()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/j256/ormlite/dao/EagerForeignCollection;, "Lcom/j256/ormlite/dao/EagerForeignCollection<TT;TID;>;"
    const/4 v2, 0x0

    .line 231
    .local v2, "updatedC":I
    iget-object v3, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->results:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, "data":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/j256/ormlite/dao/EagerForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 234
    .end local v0    # "data":Ljava/lang/Object;, "TT;"
    :cond_0
    return v2
.end method
