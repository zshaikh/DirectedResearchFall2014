.class Lcom/google/inject/ConstructorInjectorStore;
.super Ljava/lang/Object;
.source "ConstructorInjectorStore.java"


# instance fields
.field private final cache:Lcom/google/inject/internal/FailableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/FailableCache",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/ConstructorInjector",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final injector:Lcom/google/inject/InjectorImpl;


# direct methods
.method constructor <init>(Lcom/google/inject/InjectorImpl;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/google/inject/ConstructorInjectorStore$1;

    invoke-direct {v0, p0}, Lcom/google/inject/ConstructorInjectorStore$1;-><init>(Lcom/google/inject/ConstructorInjectorStore;)V

    iput-object v0, p0, Lcom/google/inject/ConstructorInjectorStore;->cache:Lcom/google/inject/internal/FailableCache;

    .line 44
    iput-object p1, p0, Lcom/google/inject/ConstructorInjectorStore;->injector:Lcom/google/inject/InjectorImpl;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/ConstructorInjectorStore;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/ConstructorInjector;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/inject/ConstructorInjectorStore;->createConstructor(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/ConstructorInjector;

    move-result-object v0

    return-object v0
.end method

.method private createConstructor(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/ConstructorInjector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/ConstructorInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->size()I

    move-result v0

    .line 61
    :try_start_0
    invoke-static {p1}, Lcom/google/inject/spi/InjectionPoint;->forConstructorOf(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/spi/InjectionPoint;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/google/inject/ConstructorInjectorStore;->injector:Lcom/google/inject/InjectorImpl;

    invoke-virtual {v1}, Lcom/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/google/inject/InjectorImpl;->getParametersInjectors(Ljava/util/List;Lcom/google/inject/internal/Errors;)[Lcom/google/inject/SingleParameterInjector;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/google/inject/ConstructorInjectorStore;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v3, v3, Lcom/google/inject/InjectorImpl;->membersInjectorStore:Lcom/google/inject/MembersInjectorStore;

    invoke-virtual {v3, p1, p2}, Lcom/google/inject/MembersInjectorStore;->get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/MembersInjectorImpl;

    move-result-object v3

    .line 79
    new-instance v4, Lcom/google/inject/DefaultConstructionProxyFactory;

    invoke-direct {v4, v1}, Lcom/google/inject/DefaultConstructionProxyFactory;-><init>(Lcom/google/inject/spi/InjectionPoint;)V

    .line 82
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 84
    new-instance v0, Lcom/google/inject/ConstructorInjector;

    invoke-virtual {v3}, Lcom/google/inject/MembersInjectorImpl;->getInjectionPoints()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v1

    invoke-interface {v4}, Lcom/google/inject/ConstructionProxyFactory;->create()Lcom/google/inject/ConstructionProxy;

    move-result-object v4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/inject/ConstructorInjector;-><init>(Lcom/google/inject/internal/ImmutableSet;Lcom/google/inject/ConstructionProxy;[Lcom/google/inject/SingleParameterInjector;Lcom/google/inject/MembersInjectorImpl;)V

    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    .line 64
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/ConstructorInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/ConstructorInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/inject/ConstructorInjectorStore;->cache:Lcom/google/inject/internal/FailableCache;

    invoke-virtual {v0, p1, p2}, Lcom/google/inject/internal/FailableCache;->get(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/ConstructorInjector;

    return-object p0
.end method
