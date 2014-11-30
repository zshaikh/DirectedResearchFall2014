.class public final Lcom/google/inject/internal/PrivateElementsImpl;
.super Ljava/lang/Object;
.source "PrivateElementsImpl.java"

# interfaces
.implements Lcom/google/inject/spi/PrivateElements;


# instance fields
.field private elements:Lcom/google/inject/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private elementsMutable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private exposedKeysToSources:Lcom/google/inject/internal/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableMap",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private exposureBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/internal/ExposureBuilder",
            "<*>;>;"
        }
    .end annotation
.end field

.field private injector:Lcom/google/inject/Injector;

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    .line 57
    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->source:Ljava/lang/Object;

    .line 58
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ElementVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-interface {p1, p0}, Lcom/google/inject/spi/ElementVisitor;->visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public addExposureBuilder(Lcom/google/inject/internal/ExposureBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/ExposureBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->source:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Binder;->newPrivateBinder()Lcom/google/inject/PrivateBinder;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Element;

    .line 111
    invoke-interface {v0, v1}, Lcom/google/inject/spi/Element;->applyTo(Lcom/google/inject/Binder;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getExposedKeys()Ljava/util/Set;

    .line 115
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lcom/google/inject/internal/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableMap;->entrySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/inject/PrivateBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/PrivateBinder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/Key;

    invoke-interface {v2, p0}, Lcom/google/inject/PrivateBinder;->expose(Lcom/google/inject/Key;)V

    goto :goto_1

    .line 118
    :cond_1
    return-void
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elements:Lcom/google/inject/internal/ImmutableList;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elements:Lcom/google/inject/internal/ImmutableList;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elements:Lcom/google/inject/internal/ImmutableList;

    return-object v0
.end method

.method public getElementsMutable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    return-object v0
.end method

.method public getExposedKeys()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lcom/google/inject/internal/ImmutableMap;

    if-nez v0, :cond_1

    .line 84
    invoke-static {}, Lcom/google/inject/internal/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 85
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/ExposureBuilder;

    .line 86
    invoke-virtual {v0}, Lcom/google/inject/internal/ExposureBuilder;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/inject/internal/ExposureBuilder;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {v1}, Lcom/google/inject/internal/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/inject/internal/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lcom/google/inject/internal/ImmutableMap;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lcom/google/inject/internal/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableMap;->keySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getExposedSource(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getExposedKeys()Ljava/util/Set;

    .line 122
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lcom/google/inject/internal/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    move v1, v5

    :goto_0
    const-string v2, "%s not exposed by %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-object v0

    :cond_0
    move v1, v4

    .line 123
    goto :goto_0
.end method

.method public getInjector()Lcom/google/inject/Injector;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->injector:Lcom/google/inject/Injector;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public initInjector(Lcom/google/inject/Injector;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->injector:Lcom/google/inject/Injector;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "injector already initialized"

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 79
    const-string v0, "injector"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Injector;

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->injector:Lcom/google/inject/Injector;

    .line 80
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lcom/google/inject/internal/ToStringBuilder;

    const-class v1, Lcom/google/inject/spi/PrivateElements;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ToStringBuilder;-><init>(Ljava/lang/Class;)V

    const-string v1, "exposedKeys"

    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getExposedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
