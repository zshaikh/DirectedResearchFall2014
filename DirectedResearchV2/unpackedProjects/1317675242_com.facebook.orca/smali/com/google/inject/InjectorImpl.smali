.class Lcom/google/inject/InjectorImpl;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/google/inject/Injector;
.implements Lcom/google/inject/Lookups;


# instance fields
.field final bindingsMultimap:Lcom/google/inject/InjectorImpl$BindingsMultimap;

.field final constructors:Lcom/google/inject/ConstructorInjectorStore;

.field final initializer:Lcom/google/inject/Initializer;

.field final jitBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/internal/BindingImpl",
            "<*>;>;"
        }
    .end annotation
.end field

.field final localContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field lookups:Lcom/google/inject/Lookups;

.field membersInjectorStore:Lcom/google/inject/MembersInjectorStore;

.field final parent:Lcom/google/inject/InjectorImpl;

.field final state:Lcom/google/inject/State;


# direct methods
.method constructor <init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/State;Lcom/google/inject/Initializer;)V
    .locals 2
    .param p1    # Lcom/google/inject/InjectorImpl;
        .annotation runtime Lcom/google/inject/internal/Nullable;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/google/inject/InjectorImpl$BindingsMultimap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/inject/InjectorImpl$BindingsMultimap;-><init>(Lcom/google/inject/InjectorImpl$1;)V

    iput-object v0, p0, Lcom/google/inject/InjectorImpl;->bindingsMultimap:Lcom/google/inject/InjectorImpl$BindingsMultimap;

    .line 70
    invoke-static {}, Lcom/google/inject/internal/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/InjectorImpl;->jitBindings:Ljava/util/Map;

    .line 72
    new-instance v0, Lcom/google/inject/DeferredLookups;

    invoke-direct {v0, p0}, Lcom/google/inject/DeferredLookups;-><init>(Lcom/google/inject/InjectorImpl;)V

    iput-object v0, p0, Lcom/google/inject/InjectorImpl;->lookups:Lcom/google/inject/Lookups;

    .line 718
    new-instance v0, Lcom/google/inject/ConstructorInjectorStore;

    invoke-direct {v0, p0}, Lcom/google/inject/ConstructorInjectorStore;-><init>(Lcom/google/inject/InjectorImpl;)V

    iput-object v0, p0, Lcom/google/inject/InjectorImpl;->constructors:Lcom/google/inject/ConstructorInjectorStore;

    .line 75
    iput-object p1, p0, Lcom/google/inject/InjectorImpl;->parent:Lcom/google/inject/InjectorImpl;

    .line 76
    iput-object p2, p0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    .line 77
    iput-object p3, p0, Lcom/google/inject/InjectorImpl;->initializer:Lcom/google/inject/Initializer;

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p1, Lcom/google/inject/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    iput-object v0, p0, Lcom/google/inject/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    .line 88
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Lcom/google/inject/InjectorImpl$1;

    invoke-direct {v0, p0}, Lcom/google/inject/InjectorImpl$1;-><init>(Lcom/google/inject/InjectorImpl;)V

    iput-object v0, p0, Lcom/google/inject/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    goto :goto_0
.end method

.method private convertConstantStringBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 277
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/inject/Key;->ofType(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v1, v0}, Lcom/google/inject/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->isConstant()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v5

    .line 310
    :goto_0
    return-object v0

    .line 283
    :cond_1
    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getProvider()Lcom/google/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 284
    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    .line 287
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v3

    .line 288
    iget-object v4, p0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v4, v1, v3, p2, v2}, Lcom/google/inject/State;->getConverter(Ljava/lang/String;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;Ljava/lang/Object;)Lcom/google/inject/internal/MatcherAndConverter;

    move-result-object v4

    .line 290
    if-nez v4, :cond_2

    move-object v0, v5

    .line 292
    goto :goto_0

    .line 298
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Lcom/google/inject/internal/MatcherAndConverter;->getTypeConverter()Lcom/google/inject/spi/TypeConverter;

    move-result-object v5

    invoke-interface {v5, v1, v3}, Lcom/google/inject/spi/TypeConverter;->convert(Ljava/lang/String;Lcom/google/inject/TypeLiteral;)Ljava/lang/Object;

    move-result-object v5

    .line 300
    if-nez v5, :cond_3

    .line 301
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/google/inject/internal/Errors;->converterReturnedNull(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/MatcherAndConverter;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    throw v0

    .line 305
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object v0, p2

    .line 306
    invoke-virtual/range {v0 .. v5}, Lcom/google/inject/internal/Errors;->conversionTypeError(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/MatcherAndConverter;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, p2

    .line 314
    invoke-virtual/range {v0 .. v5}, Lcom/google/inject/internal/Errors;->conversionError(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/MatcherAndConverter;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 310
    :cond_4
    :try_start_2
    new-instance v6, Lcom/google/inject/InjectorImpl$ConvertedConstantBindingImpl;

    invoke-direct {v6, p0, p1, v5, v0}, Lcom/google/inject/InjectorImpl$ConvertedConstantBindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/Binding;)V
    :try_end_2
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v6

    goto :goto_0
.end method

.method private createJustInTimeBindingRecursive(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/inject/InjectorImpl;->parent:Lcom/google/inject/InjectorImpl;

    if-eqz v0, :cond_0

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/InjectorImpl;->parent:Lcom/google/inject/InjectorImpl;

    new-instance v1, Lcom/google/inject/internal/Errors;

    invoke-direct {v1}, Lcom/google/inject/internal/Errors;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/google/inject/InjectorImpl;->createJustInTimeBindingRecursive(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 584
    :goto_0
    return-object v0

    .line 573
    :catch_0
    move-exception v0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v0, p1}, Lcom/google/inject/State;->isBlacklisted(Lcom/google/inject/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p2, p1}, Lcom/google/inject/internal/Errors;->childBindingAlreadySet(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 581
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/inject/InjectorImpl;->createJustInTimeBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v1}, Lcom/google/inject/State;->parent()Lcom/google/inject/State;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/inject/State;->blacklist(Lcom/google/inject/Key;)V

    .line 583
    iget-object v1, p0, Lcom/google/inject/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createMembersInjectorBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 190
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->cannotInjectRawMembersInjector()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 195
    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/google/inject/InjectorImpl;->membersInjectorStore:Lcom/google/inject/MembersInjectorStore;

    invoke-virtual {v1, v0, p2}, Lcom/google/inject/MembersInjectorStore;->get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/MembersInjectorImpl;

    move-result-object v6

    .line 199
    new-instance v4, Lcom/google/inject/ConstantFactory;

    invoke-static {v6}, Lcom/google/inject/Initializables;->of(Ljava/lang/Object;)Lcom/google/inject/Initializable;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/inject/ConstantFactory;-><init>(Lcom/google/inject/Initializable;)V

    .line 203
    new-instance v0, Lcom/google/inject/internal/InstanceBindingImpl;

    sget-object v3, Lcom/google/inject/internal/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-static {}, Lcom/google/inject/internal/ImmutableSet;->of()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method private createProviderBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<",
            "Lcom/google/inject/Provider",
            "<TT;>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<",
            "Lcom/google/inject/Provider",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 216
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_0

    .line 217
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->cannotInjectRawProvider()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 220
    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 223
    invoke-virtual {p1, v0}, Lcom/google/inject/Key;->ofType(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;

    move-result-object v0

    .line 225
    invoke-virtual {p0, v0, p2}, Lcom/google/inject/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 226
    new-instance v1, Lcom/google/inject/InjectorImpl$ProviderBindingImpl;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/inject/InjectorImpl$ProviderBindingImpl;-><init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/Binding;)V

    return-object v1
.end method

.method private createTypeLiteralBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 452
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_0

    .line 453
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->cannotInjectRawTypeLiteral()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 456
    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 457
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 461
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_1

    .line 464
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->cannotInjectTypeLiteralOf(Ljava/lang/reflect/Type;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 468
    :cond_1
    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v6

    .line 469
    new-instance v4, Lcom/google/inject/ConstantFactory;

    invoke-static {v6}, Lcom/google/inject/Initializables;->of(Ljava/lang/Object;)Lcom/google/inject/Initializable;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/inject/ConstantFactory;-><init>(Lcom/google/inject/Initializable;)V

    .line 471
    new-instance v0, Lcom/google/inject/internal/InstanceBindingImpl;

    sget-object v3, Lcom/google/inject/internal/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-static {}, Lcom/google/inject/internal/ImmutableSet;->of()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getJustInTimeBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v0}, Lcom/google/inject/State;->lock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    move-object v2, p0

    .line 163
    :goto_0
    if-eqz v2, :cond_1

    .line 165
    :try_start_0
    iget-object v0, v2, Lcom/google/inject/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/BindingImpl;

    .line 167
    if-eqz v0, :cond_0

    .line 168
    monitor-exit v1

    .line 172
    :goto_1
    return-object v0

    .line 163
    :cond_0
    iget-object v0, v2, Lcom/google/inject/InjectorImpl;->parent:Lcom/google/inject/InjectorImpl;

    move-object v2, v0

    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/inject/InjectorImpl;->createJustInTimeBindingRecursive(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    monitor-exit v1

    goto :goto_1

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static isMembersInjector(Lcom/google/inject/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/inject/MembersInjector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/inject/Key;->hasAnnotationType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isProvider(Lcom/google/inject/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/inject/Provider;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method callInContext(Lcom/google/inject/ContextualCallable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/ContextualCallable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 800
    iget-object v0, p0, Lcom/google/inject/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 801
    aget-object v0, p0, v1

    if-nez v0, :cond_0

    .line 802
    new-instance v0, Lcom/google/inject/internal/InternalContext;

    invoke-direct {v0}, Lcom/google/inject/internal/InternalContext;-><init>()V

    aput-object v0, p0, v1

    .line 804
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    check-cast v0, Lcom/google/inject/internal/InternalContext;

    invoke-interface {p1, v0}, Lcom/google/inject/ContextualCallable;->call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 807
    aput-object v2, p0, v1

    .line 811
    :goto_0
    return-object v0

    .line 807
    :catchall_0
    move-exception v0

    aput-object v2, p0, v1

    throw v0

    .line 811
    :cond_0
    aget-object p0, p0, v1

    check-cast p0, Lcom/google/inject/internal/InternalContext;

    invoke-interface {p1, p0}, Lcom/google/inject/ContextualCallable;->call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public createChildInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Lcom/google/inject/Injector;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lcom/google/inject/InjectorBuilder;

    invoke-direct {v0}, Lcom/google/inject/InjectorBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/inject/InjectorBuilder;->parentInjector(Lcom/google/inject/InjectorImpl;)Lcom/google/inject/InjectorBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/inject/InjectorBuilder;->addModules(Ljava/lang/Iterable;)Lcom/google/inject/InjectorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/InjectorBuilder;->build()Lcom/google/inject/Injector;

    move-result-object v0

    return-object v0
.end method

.method public varargs createChildInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 1

    .prologue
    .line 151
    invoke-static {p1}, Lcom/google/inject/internal/ImmutableList;->of([Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/InjectorImpl;->createChildInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;

    move-result-object v0

    return-object v0
.end method

.method createImplementedByBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ImplementedBy;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/ImplementedBy;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v3

    .line 527
    invoke-interface {p3}, Lcom/google/inject/ImplementedBy;->value()Ljava/lang/Class;

    move-result-object v0

    .line 530
    if-ne v0, v3, :cond_0

    .line 531
    invoke-virtual {p4}, Lcom/google/inject/internal/Errors;->recursiveImplementationType()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 535
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 536
    invoke-virtual {p4, v0, v3}, Lcom/google/inject/internal/Errors;->notASubtype(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 543
    :cond_1
    invoke-static {v0}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v6

    .line 544
    invoke-virtual {p0, v6, p4}, Lcom/google/inject/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 546
    new-instance v1, Lcom/google/inject/InjectorImpl$3;

    invoke-direct {v1, p0, v0, v6}, Lcom/google/inject/InjectorImpl$3;-><init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/Key;)V

    .line 554
    new-instance v0, Lcom/google/inject/internal/LinkedBindingImpl;

    invoke-static {p1, p0, v1, p2}, Lcom/google/inject/Scopes;->scope(Lcom/google/inject/Key;Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/LinkedBindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    return-object v0
.end method

.method createJustInTimeBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v0, p1}, Lcom/google/inject/State;->isBlacklisted(Lcom/google/inject/Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p2, p1}, Lcom/google/inject/internal/Errors;->childBindingAlreadySet(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 606
    :cond_0
    invoke-static {p1}, Lcom/google/inject/InjectorImpl;->isProvider(Lcom/google/inject/Key;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    invoke-direct {p0, p1, p2}, Lcom/google/inject/InjectorImpl;->createProviderBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 646
    :cond_1
    :goto_0
    return-object v0

    .line 615
    :cond_2
    invoke-static {p1}, Lcom/google/inject/InjectorImpl;->isMembersInjector(Lcom/google/inject/Key;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    invoke-direct {p0, p1, p2}, Lcom/google/inject/InjectorImpl;->createMembersInjectorBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    goto :goto_0

    .line 624
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/inject/InjectorImpl;->convertConstantStringBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 625
    if-nez v0, :cond_1

    .line 630
    invoke-virtual {p1}, Lcom/google/inject/Key;->hasAnnotationType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 632
    invoke-virtual {p1}, Lcom/google/inject/Key;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 634
    :try_start_0
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/google/inject/internal/Errors;-><init>()V

    .line 635
    invoke-virtual {p1}, Lcom/google/inject/Key;->withoutAttributes()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/inject/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 640
    :cond_4
    invoke-virtual {p2, p1}, Lcom/google/inject/internal/Errors;->missingImplementation(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 643
    :cond_5
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 644
    sget-object v1, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/inject/InjectorImpl;->createUnitializedBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 645
    invoke-virtual {p0, v0, p2}, Lcom/google/inject/InjectorImpl;->initializeBinding(Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/Errors;)V

    goto :goto_0
.end method

.method createParameterInjector(Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/Errors;)Lcom/google/inject/SingleParameterInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/Dependency",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/SingleParameterInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 707
    invoke-virtual {p1}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/inject/InjectorImpl;->getInternalFactory(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v0

    .line 708
    new-instance v1, Lcom/google/inject/SingleParameterInjector;

    invoke-direct {v1, p1, v0}, Lcom/google/inject/SingleParameterInjector;-><init>(Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/InternalFactory;)V

    return-object v1
.end method

.method createProvidedByBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ProvidedBy;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/ProvidedBy;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v8

    .line 479
    invoke-interface/range {p3 .. p3}, Lcom/google/inject/ProvidedBy;->value()Ljava/lang/Class;

    move-result-object v9

    .line 482
    if-ne v9, v8, :cond_0

    .line 483
    invoke-virtual/range {p4 .. p4}, Lcom/google/inject/internal/Errors;->recursiveProviderType()Lcom/google/inject/internal/Errors;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v4

    throw v4

    .line 488
    :cond_0
    invoke-static {v9}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v6

    .line 490
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v7

    .line 493
    new-instance v4, Lcom/google/inject/InjectorImpl$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/inject/InjectorImpl$2;-><init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 513
    new-instance v9, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/google/inject/Scopes;->scope(Lcom/google/inject/Key;Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v13

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v8

    move-object/from16 v14, p2

    move-object v15, v6

    invoke-direct/range {v9 .. v15}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    return-object v9
.end method

.method createUnitializedBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 396
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    :cond_0
    invoke-virtual {p4, p1}, Lcom/google/inject/internal/Errors;->missingImplementation(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 401
    :cond_1
    const-class v0, Lcom/google/inject/TypeLiteral;

    if-ne v1, v0, :cond_2

    .line 403
    invoke-direct {p0, p1, p4}, Lcom/google/inject/InjectorImpl;->createTypeLiteralBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 442
    :goto_0
    return-object v0

    .line 409
    :cond_2
    const-class v0, Lcom/google/inject/ImplementedBy;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/inject/ImplementedBy;

    .line 410
    if-eqz v0, :cond_3

    .line 411
    invoke-static {v1, p3, p4}, Lcom/google/inject/internal/Annotations;->checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    .line 412
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/inject/InjectorImpl;->createImplementedByBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ImplementedBy;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    goto :goto_0

    .line 416
    :cond_3
    const-class v0, Lcom/google/inject/ProvidedBy;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/inject/ProvidedBy;

    .line 417
    if-eqz v0, :cond_4

    .line 418
    invoke-static {v1, p3, p4}, Lcom/google/inject/internal/Annotations;->checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    .line 419
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/inject/InjectorImpl;->createProvidedByBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ProvidedBy;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    goto :goto_0

    .line 425
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 426
    invoke-virtual {p4, p1}, Lcom/google/inject/internal/Errors;->missingImplementation(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 430
    :cond_5
    invoke-static {v1}, Lcom/google/inject/internal/Classes;->isInnerClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 431
    invoke-virtual {p4, v1}, Lcom/google/inject/internal/Errors;->cannotInjectInnerClass(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 434
    :cond_6
    invoke-virtual {p2}, Lcom/google/inject/internal/Scoping;->isExplicitlyScoped()Z

    move-result v0

    if-nez v0, :cond_7

    .line 435
    invoke-static {p4, v1}, Lcom/google/inject/internal/Annotations;->findScopeAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_7

    .line 437
    invoke-static {v0}, Lcom/google/inject/internal/Scoping;->forAnnotation(Ljava/lang/Class;)Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {p4, v1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/google/inject/Scopes;->makeInjectable(Lcom/google/inject/internal/Scoping;Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Scoping;

    move-result-object v0

    .line 442
    :goto_1
    invoke-static {p0, p1, p3, v0}, Lcom/google/inject/ConstructorBindingImpl;->create(Lcom/google/inject/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/ConstructorBindingImpl;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, p2

    goto :goto_1
.end method

.method public bridge synthetic getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/google/inject/InjectorImpl;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    return-object v0
.end method

.method public getBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 109
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/inject/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v1

    .line 110
    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-object v1

    .line 112
    :catch_0
    move-exception v1

    .line 113
    new-instance v2, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v2
.end method

.method public getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v0, p1}, Lcom/google/inject/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/inject/InjectorImpl;->getJustInTimeBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual {p0, p1}, Lcom/google/inject/InjectorImpl;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Lcom/google/inject/InjectorImpl;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getInternalFactory(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/InternalFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/google/inject/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/google/inject/internal/InternalFactory;

    move-result-object v0

    return-object v0
.end method

.method public getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 730
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/InjectorImpl;->membersInjectorStore:Lcom/google/inject/MembersInjectorStore;

    invoke-virtual {v1, p1, v0}, Lcom/google/inject/MembersInjectorStore;->get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/MembersInjectorImpl;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 733
    :catch_0
    move-exception v1

    .line 734
    new-instance v2, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v2
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 739
    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/InjectorImpl;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object v0

    return-object v0
.end method

.method getParametersInjectors(Ljava/util/List;Lcom/google/inject/internal/Errors;)[Lcom/google/inject/SingleParameterInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")[",
            "Lcom/google/inject/SingleParameterInjector",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 686
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    const/4 v0, 0x0

    .line 702
    :goto_0
    return-object v0

    .line 690
    :cond_0
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->size()I

    move-result v1

    .line 691
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/inject/SingleParameterInjector;

    .line 692
    const/4 v0, 0x0

    .line 693
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Dependency;

    .line 695
    add-int/lit8 v5, v4, 0x1

    :try_start_0
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/google/inject/InjectorImpl;->createParameterInjector(Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/Errors;)Lcom/google/inject/SingleParameterInjector;

    move-result-object v0

    aput-object v0, v2, v4
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v4, v5

    .line 698
    goto :goto_1

    .line 701
    :cond_1
    invoke-virtual {p2, v1}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    move-object v0, v2

    .line 702
    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 778
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 780
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/inject/InjectorImpl;->getProviderOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Provider;

    move-result-object v1

    .line 781
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    return-object v1

    .line 783
    :catch_0
    move-exception v1

    .line 784
    new-instance v2, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v2
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 743
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/InjectorImpl;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method getProviderOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Provider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 747
    invoke-virtual {p0, p1, p2}, Lcom/google/inject/InjectorImpl;->getInternalFactory(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v0

    .line 748
    invoke-static {p1}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v1

    .line 750
    new-instance v2, Lcom/google/inject/InjectorImpl$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/inject/InjectorImpl$4;-><init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/InternalFactory;)V

    return-object v2
.end method

.method index()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v0}, Lcom/google/inject/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Binding;

    .line 93
    invoke-virtual {p0, v0}, Lcom/google/inject/InjectorImpl;->index(Lcom/google/inject/Binding;)V

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method index(Lcom/google/inject/Binding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/inject/InjectorImpl;->bindingsMultimap:Lcom/google/inject/InjectorImpl$BindingsMultimap;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/InjectorImpl$BindingsMultimap;->put(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Binding;)V

    .line 99
    return-void
.end method

.method initializeBinding(Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/Errors;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    instance-of v0, p1, Lcom/google/inject/ConstructorBindingImpl;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p1}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/google/inject/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const/4 v1, 0x0

    .line 377
    :try_start_0
    check-cast p1, Lcom/google/inject/ConstructorBindingImpl;

    invoke-virtual {p1, p0, p2}, Lcom/google/inject/ConstructorBindingImpl;->initialize(Lcom/google/inject/InjectorImpl;Lcom/google/inject/internal/Errors;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    const/4 v1, 0x1

    .line 380
    if-nez v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/google/inject/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_0
    return-void

    .line 380
    :catchall_0
    move-exception v2

    if-nez v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/google/inject/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    throw v2
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/InjectorImpl;->getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;

    move-result-object v0

    .line 726
    invoke-interface {v0, p1}, Lcom/google/inject/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 727
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 816
    new-instance v0, Lcom/google/inject/internal/ToStringBuilder;

    const-class v1, Lcom/google/inject/Injector;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/ToStringBuilder;-><init>(Ljava/lang/Class;)V

    const-string v1, "bindings"

    iget-object v2, p0, Lcom/google/inject/InjectorImpl;->state:Lcom/google/inject/State;

    invoke-interface {v2}, Lcom/google/inject/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/inject/internal/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
