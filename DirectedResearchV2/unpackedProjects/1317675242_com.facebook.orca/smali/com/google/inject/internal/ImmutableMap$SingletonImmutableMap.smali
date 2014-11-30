.class final Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;
.super Lcom/google/inject/internal/ImmutableMap;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/google/inject/internal/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lcom/google/inject/internal/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final transient singleKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final transient singleValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private transient values:Lcom/google/inject/internal/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableMap;-><init>()V

    .line 447
    iput-object p1, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    .line 448
    iput-object p2, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    .line 449
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/inject/internal/ImmutableMap$1;)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableMap;-><init>()V

    .line 452
    iput-object p1, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->entry:Ljava/util/Map$Entry;

    .line 453
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    .line 454
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    .line 455
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map$Entry;Lcom/google/inject/internal/ImmutableMap$1;)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;-><init>(Ljava/util/Map$Entry;)V

    return-void
.end method

.method private entry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->entry:Ljava/util/Map$Entry;

    .line 459
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/inject/internal/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->entry:Ljava/util/Map$Entry;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Lcom/google/inject/internal/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->entrySet:Lcom/google/inject/internal/ImmutableSet;

    .line 487
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->entry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->entrySet:Lcom/google/inject/internal/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->entrySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 529
    if-ne p1, p0, :cond_0

    move v0, v4

    .line 541
    :goto_0
    return v0

    .line 532
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 533
    check-cast p1, Ljava/util/Map;

    .line 534
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v0, v4, :cond_1

    move v0, v3

    .line 535
    goto :goto_0

    .line 537
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 538
    iget-object v1, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    .line 541
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public keySet()Lcom/google/inject/internal/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->keySet:Lcom/google/inject/internal/ImmutableSet;

    .line 494
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->keySet:Lcom/google/inject/internal/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->keySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/google/inject/internal/ImmutableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->values:Lcom/google/inject/internal/ImmutableCollection;

    .line 501
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap$Values;

    iget-object v1, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap$Values;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->values:Lcom/google/inject/internal/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;->values()Lcom/google/inject/internal/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
