.class final Lcom/google/inject/State$1;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Lcom/google/inject/State;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addConverter(Lcom/google/inject/internal/MatcherAndConverter;)V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addTypeListener(Lcom/google/inject/spi/TypeListenerBinding;)V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist(Lcom/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method public getConverter(Ljava/lang/String;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;Ljava/lang/Object;)Lcom/google/inject/internal/MatcherAndConverter;
    .locals 1
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
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 72
    invoke-static {}, Lcom/google/inject/internal/ImmutableSet;->of()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

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
    .line 43
    const/4 v0, 0x0

    return-object v0
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
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeListenerBindings()Ljava/util/List;
    .locals 1
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
    .line 90
    invoke-static {}, Lcom/google/inject/internal/ImmutableList;->of()Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    return-object v0
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
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public lock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public parent()Lcom/google/inject/State;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
