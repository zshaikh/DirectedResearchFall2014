.class Lcom/google/inject/ProviderToInternalFactoryAdapter;
.super Ljava/lang/Object;
.source "ProviderToInternalFactoryAdapter.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/google/inject/InjectorImpl;

.field private final internalFactory:Lcom/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/InternalFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/InjectorImpl;",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/inject/ProviderToInternalFactoryAdapter;->injector:Lcom/google/inject/InjectorImpl;

    .line 36
    iput-object p2, p0, Lcom/google/inject/ProviderToInternalFactoryAdapter;->internalFactory:Lcom/google/inject/internal/InternalFactory;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/ProviderToInternalFactoryAdapter;)Lcom/google/inject/internal/InternalFactory;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/inject/ProviderToInternalFactoryAdapter;->internalFactory:Lcom/google/inject/internal/InternalFactory;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/google/inject/internal/Errors;-><init>()V

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/ProviderToInternalFactoryAdapter;->injector:Lcom/google/inject/InjectorImpl;

    new-instance v2, Lcom/google/inject/ProviderToInternalFactoryAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/google/inject/ProviderToInternalFactoryAdapter$1;-><init>(Lcom/google/inject/ProviderToInternalFactoryAdapter;Lcom/google/inject/internal/Errors;)V

    invoke-virtual {v1, v2}, Lcom/google/inject/InjectorImpl;->callInContext(Lcom/google/inject/ContextualCallable;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-object v1

    .line 50
    :catch_0
    move-exception v1

    .line 51
    new-instance v2, Lcom/google/inject/ProvisionException;

    invoke-virtual {v1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/inject/ProvisionException;-><init>(Ljava/lang/Iterable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/inject/ProviderToInternalFactoryAdapter;->internalFactory:Lcom/google/inject/internal/InternalFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
