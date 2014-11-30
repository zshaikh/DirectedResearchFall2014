.class final Lcom/google/inject/internal/ImmutableMap$EmptyImmutableMap;
.super Lcom/google/inject/internal/ImmutableMap;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/internal/ImmutableMap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/internal/ImmutableMap$1;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/google/inject/internal/ImmutableMap$EmptyImmutableMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

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
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 412
    invoke-static {}, Lcom/google/inject/internal/ImmutableSet;->of()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap$EmptyImmutableMap;->entrySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param

    .prologue
    .line 424
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 425
    check-cast p1, Ljava/util/Map;

    .line 426
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Lcom/google/inject/internal/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-static {}, Lcom/google/inject/internal/ImmutableSet;->of()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap$EmptyImmutableMap;->keySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    const-string v0, "{}"

    return-object v0
.end method

.method public values()Lcom/google/inject/internal/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableCollection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    sget-object v0, Lcom/google/inject/internal/ImmutableCollection;->EMPTY_IMMUTABLE_COLLECTION:Lcom/google/inject/internal/ImmutableCollection;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap$EmptyImmutableMap;->values()Lcom/google/inject/internal/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
