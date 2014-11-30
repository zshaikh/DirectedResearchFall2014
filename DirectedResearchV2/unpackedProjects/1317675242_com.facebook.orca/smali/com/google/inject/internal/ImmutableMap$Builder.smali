.class public Lcom/google/inject/internal/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ImmutableMap$Builder;->entries:Ljava/util/List;

    .line 161
    return-void
.end method

.method private static fromEntryList(Ljava/util/List;)Lcom/google/inject/internal/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/inject/internal/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 200
    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    .line 208
    new-instance v0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;-><init>([Ljava/util/Map$Entry;Lcom/google/inject/internal/ImmutableMap$1;)V

    :goto_0
    return-object v0

    .line 202
    :pswitch_0
    invoke-static {}, Lcom/google/inject/internal/ImmutableMap;->of()Lcom/google/inject/internal/ImmutableMap;

    move-result-object v0

    goto :goto_0

    .line 204
    :pswitch_1
    new-instance v0, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;

    invoke-static {p0}, Lcom/google/inject/internal/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/internal/ImmutableMap$SingletonImmutableMap;-><init>(Ljava/util/Map$Entry;Lcom/google/inject/internal/ImmutableMap$1;)V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/google/inject/internal/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$Builder;->entries:Ljava/util/List;

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableMap$Builder;->fromEntryList(Ljava/util/List;)Lcom/google/inject/internal/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/inject/internal/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$Builder;->entries:Ljava/util/List;

    # invokes: Lcom/google/inject/internal/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    invoke-static {p1, p2}, Lcom/google/inject/internal/ImmutableMap;->access$300(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-object p0
.end method
