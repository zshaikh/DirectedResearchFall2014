.class Lcom/google/inject/BoundProviderFactory;
.super Ljava/lang/Object;
.source "BoundProviderFactory.java"

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

.field private providerFactory:Lcom/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/InternalFactory",
            "<+",
            "Lcom/google/inject/Provider",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final providerKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<+",
            "Lcom/google/inject/Provider",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/InjectorImpl;",
            "Lcom/google/inject/Key",
            "<+",
            "Lcom/google/inject/Provider",
            "<+TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/inject/BoundProviderFactory;->injector:Lcom/google/inject/InjectorImpl;

    .line 41
    iput-object p2, p0, Lcom/google/inject/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    .line 42
    iput-object p3, p0, Lcom/google/inject/BoundProviderFactory;->source:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    .locals 3
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
    .line 55
    iget-object v0, p0, Lcom/google/inject/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    .line 56
    iget-object v0, p0, Lcom/google/inject/BoundProviderFactory;->providerFactory:Lcom/google/inject/internal/InternalFactory;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Provider;

    .line 58
    :try_start_0
    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/inject/BoundProviderFactory;->source:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, p3}, Lcom/google/inject/internal/Errors;->checkForNull(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v1, v0}, Lcom/google/inject/internal/Errors;->errorInProvider(Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0
.end method

.method public notify(Lcom/google/inject/internal/Errors;)V
    .locals 3

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/BoundProviderFactory;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/BoundProviderFactory;->source:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/InjectorImpl;->getInternalFactory(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/BoundProviderFactory;->providerFactory:Lcom/google/inject/internal/InternalFactory;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/inject/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    invoke-virtual {v0}, Lcom/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
