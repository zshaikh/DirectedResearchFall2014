.class Lcom/google/inject/InternalFactoryToProviderAdapter;
.super Ljava/lang/Object;
.source "InternalFactoryToProviderAdapter.java"

# interfaces
.implements Lcom/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final initializable:Lcom/google/inject/Initializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Initializable",
            "<",
            "Lcom/google/inject/Provider",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/inject/Initializable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Initializable",
            "<",
            "Lcom/google/inject/Provider",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/google/inject/internal/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/inject/InternalFactoryToProviderAdapter;-><init>(Lcom/google/inject/Initializable;Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/inject/Initializable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Initializable",
            "<",
            "Lcom/google/inject/Provider",
            "<+TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "provider"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Initializable;

    iput-object v0, p0, Lcom/google/inject/InternalFactoryToProviderAdapter;->initializable:Lcom/google/inject/Initializable;

    .line 42
    const-string v0, "source"

    invoke-static {p2, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InternalFactoryToProviderAdapter;->source:Ljava/lang/Object;

    .line 43
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
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/InternalFactoryToProviderAdapter;->initializable:Lcom/google/inject/Initializable;

    invoke-interface {v0, p1}, Lcom/google/inject/Initializable;->get(Lcom/google/inject/internal/Errors;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/InternalFactoryToProviderAdapter;->source:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, p3}, Lcom/google/inject/internal/Errors;->checkForNull(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    iget-object v1, p0, Lcom/google/inject/InternalFactoryToProviderAdapter;->source:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/Errors;->errorInProvider(Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/inject/InternalFactoryToProviderAdapter;->initializable:Lcom/google/inject/Initializable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
