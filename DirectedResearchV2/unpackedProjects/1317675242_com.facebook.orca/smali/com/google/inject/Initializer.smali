.class Lcom/google/inject/Initializer;
.super Ljava/lang/Object;
.source "Initializer.java"


# instance fields
.field private final creatingThread:Ljava/lang/Thread;

.field private final pendingInjection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Initializer$InjectableReference",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final ready:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Initializer;->creatingThread:Ljava/lang/Thread;

    .line 41
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/inject/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;

    .line 44
    invoke-static {}, Lcom/google/inject/internal/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/Initializer;->pendingInjection:Ljava/util/Map;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/Initializer;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/inject/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/inject/Initializer;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/inject/Initializer;->creatingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/inject/Initializer;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/inject/Initializer;->pendingInjection:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method injectAll(Lcom/google/inject/internal/Errors;)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/inject/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Initializer$InjectableReference;

    .line 92
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/inject/Initializer$InjectableReference;->get(Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/inject/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to satisfy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/google/inject/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 103
    return-void
.end method

.method public requestInjection(Lcom/google/inject/InjectorImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;)Lcom/google/inject/Initializable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/InjectorImpl;",
            "TT;",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;)",
            "Lcom/google/inject/Initializable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p3}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    if-eqz p2, :cond_0

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/inject/InjectorImpl;->membersInjectorStore:Lcom/google/inject/MembersInjectorStore;

    invoke-virtual {v0}, Lcom/google/inject/MembersInjectorStore;->hasTypeListeners()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    invoke-static {p2}, Lcom/google/inject/Initializables;->of(Ljava/lang/Object;)Lcom/google/inject/Initializable;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 63
    :cond_1
    new-instance v0, Lcom/google/inject/Initializer$InjectableReference;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/inject/Initializer$InjectableReference;-><init>(Lcom/google/inject/Initializer;Lcom/google/inject/InjectorImpl;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    iget-object v1, p0, Lcom/google/inject/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method validateOustandingInjections(Lcom/google/inject/internal/Errors;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/inject/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/Initializer$InjectableReference;

    .line 75
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/inject/Initializer$InjectableReference;->validate(Lcom/google/inject/internal/Errors;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    invoke-virtual {v1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method
