.class Lcom/google/inject/ConstructorInjector;
.super Ljava/lang/Object;
.source "ConstructorInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final constructionProxy:Lcom/google/inject/ConstructionProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/ConstructionProxy",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final injectableMembers:Lcom/google/inject/internal/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final membersInjector:Lcom/google/inject/MembersInjectorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/MembersInjectorImpl",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final parameterInjectors:[Lcom/google/inject/SingleParameterInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/inject/SingleParameterInjector",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/ImmutableSet;Lcom/google/inject/ConstructionProxy;[Lcom/google/inject/SingleParameterInjector;Lcom/google/inject/MembersInjectorImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;",
            "Lcom/google/inject/ConstructionProxy",
            "<TT;>;[",
            "Lcom/google/inject/SingleParameterInjector",
            "<*>;",
            "Lcom/google/inject/MembersInjectorImpl",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/inject/ConstructorInjector;->injectableMembers:Lcom/google/inject/internal/ImmutableSet;

    .line 46
    iput-object p2, p0, Lcom/google/inject/ConstructorInjector;->constructionProxy:Lcom/google/inject/ConstructionProxy;

    .line 47
    iput-object p3, p0, Lcom/google/inject/ConstructorInjector;->parameterInjectors:[Lcom/google/inject/SingleParameterInjector;

    .line 48
    iput-object p4, p0, Lcom/google/inject/ConstructorInjector;->membersInjector:Lcom/google/inject/MembersInjectorImpl;

    .line 49
    return-void
.end method


# virtual methods
.method construct(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p2, p0}, Lcom/google/inject/internal/InternalContext;->getConstructionContext(Ljava/lang/Object;)Lcom/google/inject/internal/ConstructionContext;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->isConstructing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0, p1, p3}, Lcom/google/inject/internal/ConstructionContext;->createProxy(Lcom/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->getCurrentReference()Ljava/lang/Object;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 77
    goto :goto_0

    .line 82
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->startConstruction()V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    iget-object v1, p0, Lcom/google/inject/ConstructorInjector;->parameterInjectors:[Lcom/google/inject/SingleParameterInjector;

    invoke-static {p1, p2, v1}, Lcom/google/inject/SingleParameterInjector;->getAll(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;[Lcom/google/inject/SingleParameterInjector;)[Ljava/lang/Object;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/google/inject/ConstructorInjector;->constructionProxy:Lcom/google/inject/ConstructionProxy;

    invoke-interface {v2, v1}, Lcom/google/inject/ConstructionProxy;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/inject/internal/ConstructionContext;->setProxyDelegates(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/inject/internal/ConstructionContext;->setCurrentReference(Ljava/lang/Object;)V

    .line 94
    iget-object v2, p0, Lcom/google/inject/ConstructorInjector;->membersInjector:Lcom/google/inject/MembersInjectorImpl;

    invoke-virtual {v2, v1, p1, p2}, Lcom/google/inject/MembersInjectorImpl;->injectMembers(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;)V

    .line 95
    iget-object v2, p0, Lcom/google/inject/ConstructorInjector;->membersInjector:Lcom/google/inject/MembersInjectorImpl;

    invoke-virtual {v2, v1, p1}, Lcom/google/inject/MembersInjectorImpl;->notifyListeners(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->removeCurrentReference()V

    move-object v0, v1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    throw v1
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    :catch_0
    move-exception v1

    .line 99
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/google/inject/ConstructorInjector;->constructionProxy:Lcom/google/inject/ConstructionProxy;

    invoke-interface {v2}, Lcom/google/inject/ConstructionProxy;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/inject/internal/Errors;->errorInjectingConstructor(Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v1

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 105
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->removeCurrentReference()V

    throw v1
.end method
