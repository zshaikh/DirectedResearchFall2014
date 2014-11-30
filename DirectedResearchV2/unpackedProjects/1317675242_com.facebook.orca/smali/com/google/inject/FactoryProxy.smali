.class Lcom/google/inject/FactoryProxy;
.super Ljava/lang/Object;
.source "FactoryProxy.java"

# interfaces
.implements Lcom/google/inject/BindingProcessor$CreationListener;
.implements Lcom/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory",
        "<TT;>;",
        "Lcom/google/inject/BindingProcessor$CreationListener;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/google/inject/InjectorImpl;

.field private final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;

.field private targetFactory:Lcom/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final targetKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/InjectorImpl;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/Key",
            "<+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/inject/FactoryProxy;->injector:Lcom/google/inject/InjectorImpl;

    .line 41
    iput-object p2, p0, Lcom/google/inject/FactoryProxy;->key:Lcom/google/inject/Key;

    .line 42
    iput-object p3, p0, Lcom/google/inject/FactoryProxy;->targetKey:Lcom/google/inject/Key;

    .line 43
    iput-object p4, p0, Lcom/google/inject/FactoryProxy;->source:Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/inject/FactoryProxy;->targetFactory:Lcom/google/inject/internal/InternalFactory;

    iget-object v1, p0, Lcom/google/inject/FactoryProxy;->targetKey:Lcom/google/inject/Key;

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public notify(Lcom/google/inject/internal/Errors;)V
    .locals 3

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/FactoryProxy;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/FactoryProxy;->targetKey:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/FactoryProxy;->source:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/InjectorImpl;->getInternalFactory(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/FactoryProxy;->targetFactory:Lcom/google/inject/internal/InternalFactory;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/google/inject/internal/ToStringBuilder;

    const-class v1, Lcom/google/inject/FactoryProxy;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ToStringBuilder;-><init>(Ljava/lang/Class;)V

    const-string v1, "key"

    iget-object v2, p0, Lcom/google/inject/FactoryProxy;->key:Lcom/google/inject/Key;

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    const-string v1, "provider"

    iget-object v2, p0, Lcom/google/inject/FactoryProxy;->targetFactory:Lcom/google/inject/internal/InternalFactory;

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
