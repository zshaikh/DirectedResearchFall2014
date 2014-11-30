.class Lcom/google/inject/InjectorBuilder;
.super Ljava/lang/Object;
.source "InjectorBuilder.java"


# instance fields
.field private final bindingProcesor:Lcom/google/inject/BindingProcessor;

.field private final errors:Lcom/google/inject/internal/Errors;

.field private final initializer:Lcom/google/inject/Initializer;

.field private final injectionRequestProcessor:Lcom/google/inject/InjectionRequestProcessor;

.field private final shellBuilder:Lcom/google/inject/InjectorShell$Builder;

.field private shells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/InjectorShell;",
            ">;"
        }
    .end annotation
.end field

.field private stage:Lcom/google/inject/Stage;

.field private final stopwatch:Lcom/google/inject/internal/Stopwatch;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/google/inject/internal/Stopwatch;

    invoke-direct {v0}, Lcom/google/inject/internal/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/inject/InjectorBuilder;->stopwatch:Lcom/google/inject/internal/Stopwatch;

    .line 54
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/google/inject/internal/Errors;-><init>()V

    iput-object v0, p0, Lcom/google/inject/InjectorBuilder;->errors:Lcom/google/inject/internal/Errors;

    .line 58
    new-instance v0, Lcom/google/inject/Initializer;

    invoke-direct {v0}, Lcom/google/inject/Initializer;-><init>()V

    iput-object v0, p0, Lcom/google/inject/InjectorBuilder;->initializer:Lcom/google/inject/Initializer;

    .line 62
    new-instance v0, Lcom/google/inject/InjectorShell$Builder;

    invoke-direct {v0}, Lcom/google/inject/InjectorShell$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/inject/InjectorBuilder;->shellBuilder:Lcom/google/inject/InjectorShell$Builder;

    .line 66
    new-instance v0, Lcom/google/inject/InjectionRequestProcessor;

    iget-object v1, p0, Lcom/google/inject/InjectorBuilder;->errors:Lcom/google/inject/internal/Errors;

    iget-object v2, p0, Lcom/google/inject/InjectorBuilder;->initializer:Lcom/google/inject/Initializer;

    invoke-direct {v0, v1, v2}, Lcom/google/inject/InjectionRequestProcessor;-><init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/Initializer;)V

    iput-object v0, p0, Lcom/google/inject/InjectorBuilder;->injectionRequestProcessor:Lcom/google/inject/InjectionRequestProcessor;

    .line 67
    new-instance v0, Lcom/google/inject/BindingProcessor;

    iget-object v1, p0, Lcom/google/inject/InjectorBuilder;->errors:Lcom/google/inject/internal/Errors;

    iget-object v2, p0, Lcom/google/inject/InjectorBuilder;->initializer:Lcom/google/inject/Initializer;

    invoke-direct {v0, v1, v2}, Lcom/google/inject/BindingProcessor;-><init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/Initializer;)V

    iput-object v0, p0, Lcom/google/inject/InjectorBuilder;->bindingProcesor:Lcom/google/inject/BindingProcessor;

    .line 68
    return-void
.end method

.method private initializeStatically()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->bindingProcesor:Lcom/google/inject/BindingProcessor;

    invoke-virtual {v0}, Lcom/google/inject/BindingProcessor;->initializeBindings()V

    .line 121
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->stopwatch:Lcom/google/inject/internal/Stopwatch;

    const-string v1, "Binding initialization"

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->shells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/InjectorShell;

    .line 124
    invoke-virtual {v0}, Lcom/google/inject/InjectorShell;->getInjector()Lcom/google/inject/InjectorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/InjectorImpl;->index()V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->stopwatch:Lcom/google/inject/internal/Stopwatch;

    const-string v1, "Binding indexing"

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->injectionRequestProcessor:Lcom/google/inject/InjectionRequestProcessor;

    iget-object v1, p0, Lcom/google/inject/InjectorBuilder;->shells:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/inject/InjectionRequestProcessor;->process(Ljava/lang/Iterable;)V

    .line 129
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->stopwatch:Lcom/google/inject/internal/Stopwatch;

    const-string v1, "Collecting injection requests"

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->bindingProcesor:Lcom/google/inject/BindingProcessor;

    invoke-virtual {v0}, Lcom/google/inject/BindingProcessor;->runCreationListeners()V

    .line 132
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->stopwatch:Lcom/google/inject/internal/Stopwatch;

    const-string v1, "Binding validation"

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->injectionRequestProcessor:Lcom/google/inject/InjectionRequestProcessor;

    invoke-virtual {v0}, Lcom/google/inject/InjectionRequestProcessor;->validate()V

    .line 135
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->stopwatch:Lcom/google/inject/internal/Stopwatch;

    const-string v1, "Static validation"

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->initializer:Lcom/google/inject/Initializer;

    iget-object v1, p0, Lcom/google/inject/InjectorBuilder;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0, v1}, Lcom/google/inject/Initializer;->validateOustandingInjections(Lcom/google/inject/internal/Errors;)V

    .line 138
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->stopwatch:Lcom/google/inject/internal/Stopwatch;

    const-string v1, "Instance member validation"

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/google/inject/LookupProcessor;

    iget-object v1, p0, Lcom/google/inject/InjectorBuilder;->errors:Lcom/google/inject/internal/Errors;

    invoke-direct {v0, v1}, Lcom/google/inject/LookupProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    iget-object v1, p0, Lcom/google/inject/InjectorBuilder;->shells:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/inject/LookupProcessor;->process(Ljava/lang/Iterable;)V

    .line 141
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->shells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/InjectorShell;

    .line 142
    invoke-virtual {v0}, Lcom/google/inject/InjectorShell;->getInjector()Lcom/google/inject/InjectorImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/inject/InjectorImpl;->lookups:Lcom/google/inject/Lookups;

    check-cast v0, Lcom/google/inject/DeferredLookups;

    iget-object v2, p0, Lcom/google/inject/InjectorBuilder;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0, v2}, Lcom/google/inject/DeferredLookups;->initialize(Lcom/google/inject/internal/Errors;)V

    goto :goto_1

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->stopwatch:Lcom/google/inject/internal/Stopwatch;

    const-string v1, "Provider verification"

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->shells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/InjectorShell;

    .line 147
    invoke-virtual {v0}, Lcom/google/inject/InjectorShell;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 148
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/inject/InjectorShell;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->throwCreationExceptionIfErrorsExist()V

    .line 153
    return-void
.end method

.method private injectDynamically()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->injectionRequestProcessor:Lcom/google/inject/InjectionRequestProcessor;

    invoke-virtual {v0}, Lcom/google/inject/InjectionRequestProcessor;->injectMembers()V

    .line 169
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->stopwatch:Lcom/google/inject/internal/Stopwatch;

    const-string v1, "Static member injection"

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->initializer:Lcom/google/inject/Initializer;

    iget-object v1, p0, Lcom/google/inject/InjectorBuilder;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0, v1}, Lcom/google/inject/Initializer;->injectAll(Lcom/google/inject/internal/Errors;)V

    .line 172
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->stopwatch:Lcom/google/inject/internal/Stopwatch;

    const-string v1, "Instance injection"

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->throwCreationExceptionIfErrorsExist()V

    .line 175
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->shells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/InjectorShell;

    .line 176
    invoke-virtual {v0}, Lcom/google/inject/InjectorShell;->getInjector()Lcom/google/inject/InjectorImpl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/inject/InjectorBuilder;->stage:Lcom/google/inject/Stage;

    iget-object v3, p0, Lcom/google/inject/InjectorBuilder;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/inject/InjectorBuilder;->loadEagerSingletons(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Stage;Lcom/google/inject/internal/Errors;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->stopwatch:Lcom/google/inject/internal/Stopwatch;

    const-string v1, "Preloading singletons"

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->throwCreationExceptionIfErrorsExist()V

    .line 180
    return-void
.end method

.method private primaryInjector()Lcom/google/inject/Injector;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->shells:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/InjectorShell;

    invoke-virtual {p0}, Lcom/google/inject/InjectorShell;->getInjector()Lcom/google/inject/InjectorImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addModules(Ljava/lang/Iterable;)Lcom/google/inject/InjectorBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Lcom/google/inject/InjectorBuilder;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->shellBuilder:Lcom/google/inject/InjectorShell$Builder;

    invoke-virtual {v0, p1}, Lcom/google/inject/InjectorShell$Builder;->addModules(Ljava/lang/Iterable;)V

    .line 91
    return-object p0
.end method

.method build()Lcom/google/inject/Injector;
    .locals 6

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->shellBuilder:Lcom/google/inject/InjectorShell$Builder;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Already built, builders are not reusable."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->shellBuilder:Lcom/google/inject/InjectorShell$Builder;

    invoke-virtual {v0}, Lcom/google/inject/InjectorShell$Builder;->lock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/InjectorBuilder;->shellBuilder:Lcom/google/inject/InjectorShell$Builder;

    iget-object v2, p0, Lcom/google/inject/InjectorBuilder;->initializer:Lcom/google/inject/Initializer;

    iget-object v3, p0, Lcom/google/inject/InjectorBuilder;->bindingProcesor:Lcom/google/inject/BindingProcessor;

    iget-object v4, p0, Lcom/google/inject/InjectorBuilder;->stopwatch:Lcom/google/inject/internal/Stopwatch;

    iget-object v5, p0, Lcom/google/inject/InjectorBuilder;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/inject/InjectorShell$Builder;->build(Lcom/google/inject/Initializer;Lcom/google/inject/BindingProcessor;Lcom/google/inject/internal/Stopwatch;Lcom/google/inject/internal/Errors;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/inject/InjectorBuilder;->shells:Ljava/util/List;

    .line 103
    iget-object v1, p0, Lcom/google/inject/InjectorBuilder;->stopwatch:Lcom/google/inject/internal/Stopwatch;

    const-string v2, "Injector construction"

    invoke-virtual {v1, v2}, Lcom/google/inject/internal/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/google/inject/InjectorBuilder;->initializeStatically()V

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->stage:Lcom/google/inject/Stage;

    sget-object v1, Lcom/google/inject/Stage;->TOOL:Lcom/google/inject/Stage;

    if-ne v0, v1, :cond_1

    .line 110
    new-instance v0, Lcom/google/inject/InjectorBuilder$ToolStageInjector;

    invoke-direct {p0}, Lcom/google/inject/InjectorBuilder;->primaryInjector()Lcom/google/inject/Injector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/InjectorBuilder$ToolStageInjector;-><init>(Lcom/google/inject/Injector;)V

    .line 115
    :goto_0
    return-object v0

    .line 106
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/google/inject/InjectorBuilder;->injectDynamically()V

    .line 115
    invoke-direct {p0}, Lcom/google/inject/InjectorBuilder;->primaryInjector()Lcom/google/inject/Injector;

    move-result-object v0

    goto :goto_0
.end method

.method public loadEagerSingletons(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Stage;Lcom/google/inject/internal/Errors;)V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p1, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v0}, Lcom/google/inject/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p1, Lcom/google/inject/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/inject/internal/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/BindingImpl;

    .line 192
    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/inject/internal/Scoping;->isEagerSingleton(Lcom/google/inject/Stage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    :try_start_0
    new-instance v2, Lcom/google/inject/InjectorBuilder$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/google/inject/InjectorBuilder$1;-><init>(Lcom/google/inject/InjectorBuilder;Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/Errors;)V

    invoke-virtual {p1, v2}, Lcom/google/inject/InjectorImpl;->callInContext(Lcom/google/inject/ContextualCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 215
    :cond_1
    return-void
.end method

.method parentInjector(Lcom/google/inject/InjectorImpl;)Lcom/google/inject/InjectorBuilder;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->shellBuilder:Lcom/google/inject/InjectorShell$Builder;

    invoke-virtual {v0, p1}, Lcom/google/inject/InjectorShell$Builder;->parent(Lcom/google/inject/InjectorImpl;)Lcom/google/inject/InjectorShell$Builder;

    .line 86
    const-class v0, Lcom/google/inject/Stage;

    invoke-virtual {p1, v0}, Lcom/google/inject/InjectorImpl;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Stage;

    invoke-virtual {p0, v0}, Lcom/google/inject/InjectorBuilder;->stage(Lcom/google/inject/Stage;)Lcom/google/inject/InjectorBuilder;

    move-result-object v0

    return-object v0
.end method

.method stage(Lcom/google/inject/Stage;)Lcom/google/inject/InjectorBuilder;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/inject/InjectorBuilder;->shellBuilder:Lcom/google/inject/InjectorShell$Builder;

    invoke-virtual {v0, p1}, Lcom/google/inject/InjectorShell$Builder;->stage(Lcom/google/inject/Stage;)Lcom/google/inject/InjectorShell$Builder;

    .line 76
    iput-object p1, p0, Lcom/google/inject/InjectorBuilder;->stage:Lcom/google/inject/Stage;

    .line 77
    return-object p0
.end method
