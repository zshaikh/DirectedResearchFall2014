.class Lcom/google/inject/MembersInjectorStore;
.super Ljava/lang/Object;
.source "MembersInjectorStore.java"


# instance fields
.field private final cache:Lcom/google/inject/internal/FailableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/FailableCache",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/MembersInjectorImpl",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final injector:Lcom/google/inject/InjectorImpl;

.field private final typeListenerBindings:Lcom/google/inject/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Lcom/google/inject/spi/TypeListenerBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/InjectorImpl;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/InjectorImpl;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/TypeListenerBinding;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/inject/MembersInjectorStore$1;

    invoke-direct {v0, p0}, Lcom/google/inject/MembersInjectorStore$1;-><init>(Lcom/google/inject/MembersInjectorStore;)V

    iput-object v0, p0, Lcom/google/inject/MembersInjectorStore;->cache:Lcom/google/inject/internal/FailableCache;

    .line 49
    iput-object p1, p0, Lcom/google/inject/MembersInjectorStore;->injector:Lcom/google/inject/InjectorImpl;

    .line 50
    invoke-static {p2}, Lcom/google/inject/internal/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/MembersInjectorStore;->typeListenerBindings:Lcom/google/inject/internal/ImmutableList;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/MembersInjectorStore;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/MembersInjectorImpl;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/inject/MembersInjectorStore;->createWithListeners(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/MembersInjectorImpl;

    move-result-object v0

    return-object v0
.end method

.method private createWithListeners(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/MembersInjectorImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/MembersInjectorImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->size()I

    move-result v1

    .line 78
    :try_start_0
    invoke-static {p1}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 83
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/google/inject/MembersInjectorStore;->getInjectors(Ljava/util/Set;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v2

    .line 84
    invoke-virtual {p2, v1}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 86
    new-instance v3, Lcom/google/inject/EncounterImpl;

    iget-object v0, p0, Lcom/google/inject/MembersInjectorStore;->injector:Lcom/google/inject/InjectorImpl;

    iget-object v0, v0, Lcom/google/inject/InjectorImpl;->lookups:Lcom/google/inject/Lookups;

    invoke-direct {v3, p2, v0}, Lcom/google/inject/EncounterImpl;-><init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/Lookups;)V

    .line 87
    iget-object v0, p0, Lcom/google/inject/MembersInjectorStore;->typeListenerBindings:Lcom/google/inject/internal/ImmutableList;

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/TypeListenerBinding;

    .line 88
    invoke-virtual {v0}, Lcom/google/inject/spi/TypeListenerBinding;->getTypeMatcher()Lcom/google/inject/matcher/Matcher;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    :try_start_1
    invoke-virtual {v0}, Lcom/google/inject/spi/TypeListenerBinding;->getListener()Lcom/google/inject/spi/TypeListener;

    move-result-object v5

    invoke-interface {v5, p1, v3}, Lcom/google/inject/spi/TypeListener;->hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 91
    :catch_0
    move-exception v5

    .line 92
    invoke-virtual {p2, v0, p1, v5}, Lcom/google/inject/internal/Errors;->errorNotifyingTypeListener(Lcom/google/inject/spi/TypeListenerBinding;Lcom/google/inject/TypeLiteral;Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;

    goto :goto_1

    .line 79
    :catch_1
    move-exception v0

    .line 80
    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    .line 81
    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v3}, Lcom/google/inject/EncounterImpl;->invalidate()V

    .line 97
    invoke-virtual {p2, v1}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 99
    new-instance v0, Lcom/google/inject/MembersInjectorImpl;

    iget-object v1, p0, Lcom/google/inject/MembersInjectorStore;->injector:Lcom/google/inject/InjectorImpl;

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/google/inject/MembersInjectorImpl;-><init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/TypeLiteral;Lcom/google/inject/EncounterImpl;Lcom/google/inject/internal/ImmutableList;)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/MembersInjectorImpl;
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
            "Lcom/google/inject/MembersInjectorImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/inject/MembersInjectorStore;->cache:Lcom/google/inject/internal/FailableCache;

    invoke-virtual {v0, p1, p2}, Lcom/google/inject/internal/FailableCache;->get(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/MembersInjectorImpl;

    return-object p0
.end method

.method getInjectors(Ljava/util/Set;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Lcom/google/inject/SingleMemberInjector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 108
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/InjectionPoint;

    .line 110
    :try_start_0
    invoke-virtual {v0}, Lcom/google/inject/spi/InjectionPoint;->isOptional()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/inject/internal/Errors;

    invoke-direct {v3, v0}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 113
    :goto_1
    invoke-virtual {v0}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_1

    new-instance v4, Lcom/google/inject/SingleFieldInjector;

    iget-object v5, p0, Lcom/google/inject/MembersInjectorStore;->injector:Lcom/google/inject/InjectorImpl;

    invoke-direct {v4, v5, v0, v3}, Lcom/google/inject/SingleFieldInjector;-><init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)V

    move-object v0, v4

    .line 116
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v3

    goto :goto_1

    .line 113
    :cond_1
    new-instance v4, Lcom/google/inject/SingleMethodInjector;

    iget-object v5, p0, Lcom/google/inject/MembersInjectorStore;->injector:Lcom/google/inject/InjectorImpl;

    invoke-direct {v4, v5, v0, v3}, Lcom/google/inject/SingleMethodInjector;-><init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_2

    .line 121
    :cond_2
    invoke-static {v1}, Lcom/google/inject/internal/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public hasTypeListeners()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/inject/MembersInjectorStore;->typeListenerBindings:Lcom/google/inject/internal/ImmutableList;

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
