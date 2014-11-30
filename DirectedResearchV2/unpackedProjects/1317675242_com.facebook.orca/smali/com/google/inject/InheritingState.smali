.class Lcom/google/inject/InheritingState;
.super Ljava/lang/Object;
.source "InheritingState.java"

# interfaces
.implements Lcom/google/inject/State;


# instance fields
.field private final blacklistedKeys:Lcom/google/inject/WeakKeySet;

.field private final converters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/internal/MatcherAndConverter;",
            ">;"
        }
    .end annotation
.end field

.field private final explicitBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/Binding",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final explicitBindingsMutable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/Binding",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final listenerBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/TypeListenerBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final parent:Lcom/google/inject/State;

.field private final scopes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/State;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/inject/internal/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InheritingState;->explicitBindingsMutable:Ljava/util/Map;

    .line 42
    iget-object v0, p0, Lcom/google/inject/InheritingState;->explicitBindingsMutable:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InheritingState;->explicitBindings:Ljava/util/Map;

    .line 44
    invoke-static {}, Lcom/google/inject/internal/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InheritingState;->scopes:Ljava/util/Map;

    .line 45
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InheritingState;->converters:Ljava/util/List;

    .line 49
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InheritingState;->listenerBindings:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/google/inject/WeakKeySet;

    invoke-direct {v0}, Lcom/google/inject/WeakKeySet;-><init>()V

    iput-object v0, p0, Lcom/google/inject/InheritingState;->blacklistedKeys:Lcom/google/inject/WeakKeySet;

    .line 54
    const-string v0, "parent"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/State;

    iput-object v0, p0, Lcom/google/inject/InheritingState;->parent:Lcom/google/inject/State;

    .line 55
    sget-object v0, Lcom/google/inject/State;->NONE:Lcom/google/inject/State;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    :goto_0
    iput-object v0, p0, Lcom/google/inject/InheritingState;->lock:Ljava/lang/Object;

    .line 56
    return-void

    .line 55
    :cond_0
    invoke-interface {p1}, Lcom/google/inject/State;->lock()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addConverter(Lcom/google/inject/internal/MatcherAndConverter;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/inject/InheritingState;->converters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public addTypeListener(Lcom/google/inject/spi/TypeListenerBinding;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/inject/InheritingState;->listenerBindings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public blacklist(Lcom/google/inject/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/inject/InheritingState;->parent:Lcom/google/inject/State;

    invoke-interface {v0, p1}, Lcom/google/inject/State;->blacklist(Lcom/google/inject/Key;)V

    .line 137
    iget-object v0, p0, Lcom/google/inject/InheritingState;->blacklistedKeys:Lcom/google/inject/WeakKeySet;

    invoke-virtual {v0, p1}, Lcom/google/inject/WeakKeySet;->add(Lcom/google/inject/Key;)Z

    .line 138
    return-void
.end method

.method public getConverter(Ljava/lang/String;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;Ljava/lang/Object;)Lcom/google/inject/internal/MatcherAndConverter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/internal/Errors;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/internal/MatcherAndConverter;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    move-object v6, p0

    .line 96
    :goto_0
    sget-object v1, Lcom/google/inject/State;->NONE:Lcom/google/inject/State;

    if-eq v6, v1, :cond_2

    .line 97
    invoke-interface {v6}, Lcom/google/inject/State;->getConvertersThisLevel()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/inject/internal/MatcherAndConverter;

    .line 98
    invoke-virtual {v5}, Lcom/google/inject/internal/MatcherAndConverter;->getTypeMatcher()Lcom/google/inject/matcher/Matcher;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    if-eqz v4, :cond_0

    move-object v0, p3

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/google/inject/internal/Errors;->ambiguousTypeConversion(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/MatcherAndConverter;Lcom/google/inject/internal/MatcherAndConverter;)Lcom/google/inject/internal/Errors;

    :cond_0
    move-object v0, v5

    :goto_2
    move-object v4, v0

    .line 102
    goto :goto_1

    .line 96
    :cond_1
    invoke-interface {v6}, Lcom/google/inject/State;->parent()Lcom/google/inject/State;

    move-result-object v0

    move-object v6, v0

    move-object v0, v4

    goto :goto_0

    .line 106
    :cond_2
    return-object v0

    :cond_3
    move-object v0, v4

    goto :goto_2
.end method

.method public getConvertersThisLevel()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/inject/internal/MatcherAndConverter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/inject/InheritingState;->converters:Ljava/util/List;

    return-object v0
.end method

.method public getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/inject/InheritingState;->explicitBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Binding;

    .line 65
    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/inject/internal/BindingImpl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/InheritingState;->parent:Lcom/google/inject/State;

    invoke-interface {v0, p1}, Lcom/google/inject/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public getExplicitBindingsThisLevel()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/Binding",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/inject/InheritingState;->explicitBindings:Ljava/util/Map;

    return-object v0
.end method

.method public getScope(Ljava/lang/Class;)Lcom/google/inject/Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/Scope;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/inject/InheritingState;->scopes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Scope;

    .line 78
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/InheritingState;->parent:Lcom/google/inject/State;

    invoke-interface {v0, p1}, Lcom/google/inject/State;->getScope(Ljava/lang/Class;)Lcom/google/inject/Scope;

    move-result-object v0

    goto :goto_0
.end method

.method public getTypeListenerBindings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/TypeListenerBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/inject/InheritingState;->parent:Lcom/google/inject/State;

    invoke-interface {v0}, Lcom/google/inject/State;->getTypeListenerBindings()Ljava/util/List;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    iget-object v0, p0, Lcom/google/inject/InheritingState;->listenerBindings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    return-object v1
.end method

.method public isBlacklisted(Lcom/google/inject/Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/inject/InheritingState;->blacklistedKeys:Lcom/google/inject/WeakKeySet;

    invoke-virtual {v0, p1}, Lcom/google/inject/WeakKeySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public lock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/inject/InheritingState;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public parent()Lcom/google/inject/State;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/inject/InheritingState;->parent:Lcom/google/inject/State;

    return-object v0
.end method

.method public putAnnotation(Ljava/lang/Class;Lcom/google/inject/Scope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/inject/InheritingState;->scopes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public putBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/internal/BindingImpl",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/inject/InheritingState;->explicitBindingsMutable:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method
