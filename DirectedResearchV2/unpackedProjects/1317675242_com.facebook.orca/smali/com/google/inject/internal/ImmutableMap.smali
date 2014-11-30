.class public abstract Lcom/google/inject/internal/ImmutableMap;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY_IMMUTABLE_MAP:Lcom/google/inject/internal/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableMap",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/google/inject/internal/ImmutableMap$EmptyImmutableMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ImmutableMap$EmptyImmutableMap;-><init>(Lcom/google/inject/internal/ImmutableMap$1;)V

    sput-object v0, Lcom/google/inject/internal/ImmutableMap;->EMPTY_IMMUTABLE_MAP:Lcom/google/inject/internal/ImmutableMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/google/inject/internal/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/google/inject/internal/ImmutableMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/inject/internal/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/google/inject/internal/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/inject/internal/ImmutableMap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;)Lcom/google/inject/internal/ImmutableMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/inject/internal/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 227
    instance-of v0, p0, Lcom/google/inject/internal/ImmutableMap;

    if-eqz v0, :cond_0

    .line 229
    check-cast p0, Lcom/google/inject/internal/ImmutableMap;

    move-object v0, p0

    .line 256
    :goto_0
    return-object v0

    .line 233
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 234
    packed-switch v0, :pswitch_data_0

    .line 248
    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 249
    const/4 v1, 0x0

    .line 250
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 254
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/inject/internal/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_1

    .line 236
    :pswitch_0
    invoke-static {}, Lcom/google/inject/internal/ImmutableMap;->of()Lcom/google/inject/internal/ImmutableMap;

    move-result-object v0

    goto :goto_0

    .line 238
    :pswitch_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/inject/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_1
    new-instance v1, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;-><init>([Ljava/util/Map$Entry;Lcom/google/inject/internal/ImmutableMap$1;)V

    move-object v0, v1

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/inject/internal/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static of()Lcom/google/inject/internal/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/inject/internal/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/google/inject/internal/ImmutableMap;->EMPTY_IMMUTABLE_MAP:Lcom/google/inject/internal/ImmutableMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/inject/internal/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;

    invoke-static {p0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/inject/internal/ImmutableMap$1;)V

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract entrySet()Lcom/google/inject/internal/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap;->entrySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param

    .prologue
    .line 362
    if-ne p1, p0, :cond_0

    .line 363
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    .line 365
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 366
    check-cast p1, Ljava/util/Map;

    .line 367
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap;->entrySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 369
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap;->entrySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract keySet()Lcom/google/inject/internal/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableSet",
            "<TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap;->keySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap;->entrySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/ImmutableSet;->iterator()Lcom/google/inject/internal/UnmodifiableIterator;

    move-result-object v1

    .line 381
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 385
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract values()Lcom/google/inject/internal/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/inject/internal/ImmutableMap;->values()Lcom/google/inject/internal/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
