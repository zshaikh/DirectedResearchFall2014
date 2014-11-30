.class final Lcom/google/inject/internal/ImmutableList$EmptyImmutableList;
.super Lcom/google/inject/internal/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/internal/ImmutableList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/inject/internal/ImmutableList$EmptyImmutableList;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/inject/internal/ImmutableList;-><init>(Lcom/google/inject/internal/ImmutableList$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/internal/ImmutableList$1;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableList$EmptyImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

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
    .line 318
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param

    .prologue
    .line 322
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 323
    check-cast p1, Ljava/util/List;

    .line 324
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkElementIndex(II)V

    .line 292
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 296
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/inject/internal/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {}, Lcom/google/inject/internal/Iterators;->emptyIterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableList$EmptyImmutableList;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 300
    const/4 v0, -0x1

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, Lcom/google/inject/internal/Iterators;->emptyListIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkPositionIndex(II)V

    .line 314
    invoke-static {}, Lcom/google/inject/internal/Iterators;->emptyListIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public subList(II)Lcom/google/inject/internal/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/inject/internal/Preconditions;->checkPositionIndexes(III)V

    .line 305
    return-object p0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/google/inject/internal/ImmutableList$EmptyImmutableList;->subList(II)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/google/inject/internal/ImmutableList$EmptyImmutableList;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 283
    array-length v0, p1

    if-lez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 286
    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string v0, "[]"

    return-object v0
.end method
