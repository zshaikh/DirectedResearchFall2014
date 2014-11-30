.class interface abstract Lcom/google/inject/State;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field public static final NONE:Lcom/google/inject/State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/inject/State$1;

    invoke-direct {v0}, Lcom/google/inject/State$1;-><init>()V

    sput-object v0, Lcom/google/inject/State;->NONE:Lcom/google/inject/State;

    return-void
.end method


# virtual methods
.method public abstract addConverter(Lcom/google/inject/internal/MatcherAndConverter;)V
.end method

.method public abstract addTypeListener(Lcom/google/inject/spi/TypeListenerBinding;)V
.end method

.method public abstract blacklist(Lcom/google/inject/Key;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract getConverter(Ljava/lang/String;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;Ljava/lang/Object;)Lcom/google/inject/internal/MatcherAndConverter;
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
.end method

.method public abstract getConvertersThisLevel()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/inject/internal/MatcherAndConverter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
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
.end method

.method public abstract getExplicitBindingsThisLevel()Ljava/util/Map;
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
.end method

.method public abstract getScope(Ljava/lang/Class;)Lcom/google/inject/Scope;
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
.end method

.method public abstract getTypeListenerBindings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/TypeListenerBinding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isBlacklisted(Lcom/google/inject/Key;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public abstract lock()Ljava/lang/Object;
.end method

.method public abstract parent()Lcom/google/inject/State;
.end method

.method public abstract putAnnotation(Ljava/lang/Class;Lcom/google/inject/Scope;)V
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
.end method

.method public abstract putBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/internal/BindingImpl",
            "<*>;)V"
        }
    .end annotation
.end method
