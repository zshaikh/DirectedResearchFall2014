.class Lcom/google/common/collect/Sets$CartesianSet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/List",
        "<TB;>;>;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/google/common/collect/Sets$CartesianSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$CartesianSet;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->b:Lcom/google/common/collect/Sets$CartesianSet;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->b:Lcom/google/common/collect/Sets$CartesianSet;

    iget-object v0, v0, Lcom/google/common/collect/Sets$CartesianSet;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    .line 897
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->b:Lcom/google/common/collect/Sets$CartesianSet;

    iget-object v0, v0, Lcom/google/common/collect/Sets$CartesianSet;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    iget v3, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->a:I

    invoke-virtual {v0, v3}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->a(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v2

    .line 897
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 900
    :cond_1
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->a:I

    .line 903
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 904
    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 887
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->a:I

    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->b:Lcom/google/common/collect/Sets$CartesianSet;

    iget v1, v1, Lcom/google/common/collect/Sets$CartesianSet;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet$1;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
