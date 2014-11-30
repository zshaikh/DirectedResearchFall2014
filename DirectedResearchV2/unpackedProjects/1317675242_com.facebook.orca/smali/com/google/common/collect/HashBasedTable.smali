.class public Lcom/google/common/collect/HashBasedTable;
.super Lcom/google/common/collect/StandardTable;
.source "HashBasedTable.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardTable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/common/collect/StandardTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
