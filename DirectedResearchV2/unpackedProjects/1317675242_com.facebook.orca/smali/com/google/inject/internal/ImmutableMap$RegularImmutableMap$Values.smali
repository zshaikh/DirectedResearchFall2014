.class Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$Values;
.super Lcom/google/inject/internal/ImmutableCollection;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ImmutableCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final map:Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableCollection;-><init>()V

    .line 707
    iput-object p1, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$Values;->map:Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;

    .line 708
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$Values;->map:Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/inject/internal/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 719
    new-instance v0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$Values$1;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$Values$1;-><init>(Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$Values;)V

    .line 729
    invoke-static {v0}, Lcom/google/inject/internal/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$Values;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$Values;->map:Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;

    # getter for: Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;
    invoke-static {v0}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->access$500(Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
