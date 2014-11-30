.class abstract Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;
.super Lcom/google/inject/internal/ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final source:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TD;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TD;I)V"
        }
    .end annotation

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableSet;-><init>()V

    .line 466
    iput-object p1, p0, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    .line 467
    iput p2, p0, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;->hashCode:I

    .line 468
    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;->hashCode:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 518
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
    .line 481
    new-instance v0, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet$1;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet$1;-><init>(Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;)V

    .line 491
    invoke-static {v0}, Lcom/google/inject/internal/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

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
    .line 500
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;->size()I

    move-result v0

    .line 501
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 502
    invoke-static {p1, v0}, Lcom/google/inject/internal/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 507
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 508
    iget-object v2, p0, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 503
    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 504
    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    move-object v0, p1

    goto :goto_0

    .line 510
    :cond_2
    return-object v0
.end method

.method abstract transform(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation
.end method
