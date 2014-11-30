.class final Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;
.super Lcom/google/inject/internal/ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final hashCode:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableSet;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 266
    iput p2, p0, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;->hashCode:I

    .line 267
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 301
    if-ne p1, p0, :cond_0

    move v0, v2

    .line 308
    :goto_0
    return v0

    .line 304
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 305
    check-cast p1, Ljava/util/Set;

    .line 306
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v3

    .line 308
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;->hashCode:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/inject/internal/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/inject/internal/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 286
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 291
    array-length v0, p1

    if-nez v0, :cond_0

    .line 292
    invoke-static {p1, v1}, Lcom/google/inject/internal/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 296
    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 297
    return-object v0

    .line 293
    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 294
    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
