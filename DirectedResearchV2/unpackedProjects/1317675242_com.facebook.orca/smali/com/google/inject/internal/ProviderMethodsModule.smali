.class public final Lcom/google/inject/internal/ProviderMethodsModule;
.super Ljava/lang/Object;
.source "ProviderMethodsModule.java"

# interfaces
.implements Lcom/google/inject/Module;


# instance fields
.field private final delegate:Ljava/lang/Object;

.field private final typeLiteral:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 48
    return-void
.end method

.method public static forModule(Lcom/google/inject/Module;)Lcom/google/inject/Module;
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lcom/google/inject/internal/ProviderMethodsModule;->forObject(Ljava/lang/Object;)Lcom/google/inject/Module;

    move-result-object v0

    return-object v0
.end method

.method public static forObject(Ljava/lang/Object;)Lcom/google/inject/Module;
    .locals 1

    .prologue
    .line 63
    instance-of v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/google/inject/util/Modules;->EMPTY_MODULE:Lcom/google/inject/Module;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/ProviderMethodsModule;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/ProviderMethodsModule;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized configure(Lcom/google/inject/Binder;)V
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ProviderMethodsModule;->getProviderMethods(Lcom/google/inject/Binder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/ProviderMethod;

    .line 71
    invoke-virtual {v0, p1}, Lcom/google/inject/internal/ProviderMethod;->configure(Lcom/google/inject/Binder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_0
    monitor-exit p0

    return-void
.end method

.method createProviderMethod(Lcom/google/inject/Binder;Ljava/lang/reflect/Method;)Lcom/google/inject/internal/ProviderMethod;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binder;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/google/inject/internal/ProviderMethod",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-interface {p1, p2}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v2

    .line 89
    new-instance v3, Lcom/google/inject/internal/Errors;

    invoke-direct {v3, p2}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 93
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 94
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0, p2}, Lcom/google/inject/TypeLiteral;->getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v1

    .line 95
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 96
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 97
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/TypeLiteral;

    aget-object v8, v6, v7

    invoke-virtual {p0, v3, v0, p2, v8}, Lcom/google/inject/internal/ProviderMethodsModule;->getKey(Lcom/google/inject/internal/Errors;Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v2, v0}, Lcom/google/inject/Binder;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0, p2}, Lcom/google/inject/TypeLiteral;->getReturnType(Ljava/lang/reflect/Method;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    .line 105
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v3, v0, p2, v1}, Lcom/google/inject/internal/ProviderMethodsModule;->getKey(Lcom/google/inject/internal/Errors;Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v1

    .line 106
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/inject/internal/Annotations;->findScopeAnnotation(Lcom/google/inject/internal/Errors;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;

    move-result-object v6

    .line 109
    invoke-virtual {v3}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Message;

    .line 110
    invoke-interface {v2, v0}, Lcom/google/inject/Binder;->addError(Lcom/google/inject/spi/Message;)V

    goto :goto_1

    .line 113
    :cond_1
    new-instance v0, Lcom/google/inject/internal/ProviderMethod;

    iget-object v3, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/inject/internal/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v4

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/ProviderMethod;-><init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lcom/google/inject/internal/ImmutableSet;Ljava/util/List;Ljava/lang/Class;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 123
    instance-of v0, p1, Lcom/google/inject/internal/ProviderMethodsModule;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/inject/internal/ProviderMethodsModule;

    iget-object v0, p1, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getKey(Lcom/google/inject/internal/Errors;Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;",
            "Ljava/lang/reflect/Member;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {p1, p3, p4}, Lcom/google/inject/internal/Annotations;->findBindingAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 119
    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2, v0}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v0

    goto :goto_0
.end method

.method public getProviderMethods(Lcom/google/inject/Binder;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/internal/ProviderMethod",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 79
    const-class v6, Lcom/google/inject/Provides;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    invoke-virtual {p0, p1, v5}, Lcom/google/inject/internal/ProviderMethodsModule;->createProviderMethod(Lcom/google/inject/Binder;Ljava/lang/reflect/Method;)Lcom/google/inject/internal/ProviderMethod;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 84
    :cond_2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
