.class final Lcom/google/inject/assistedinject/FactoryProvider2;
.super Ljava/lang/Object;
.source "FactoryProvider2.java"

# interfaces
.implements Lcom/google/inject/Provider;
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;",
        "Lcom/google/inject/Provider",
        "<TF;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_ANNOTATION:Lcom/google/inject/assistedinject/Assisted;


# instance fields
.field private final factory:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private injector:Lcom/google/inject/Injector;

.field private final paramTypes:Lcom/google/inject/internal/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableMap",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Lcom/google/inject/Key",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final producedType:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation
.end field

.field private final returnTypesByMethod:Lcom/google/inject/internal/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableMap",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lcom/google/inject/Key",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/inject/assistedinject/FactoryProvider2$1;

    invoke-direct {v0}, Lcom/google/inject/assistedinject/FactoryProvider2$1;-><init>()V

    sput-object v0, Lcom/google/inject/assistedinject/FactoryProvider2;->DEFAULT_ANNOTATION:Lcom/google/inject/assistedinject/Assisted;

    return-void
.end method

.method constructor <init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<TF;>;",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->producedType:Lcom/google/inject/Key;

    .line 99
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/google/inject/internal/Errors;-><init>()V

    .line 102
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 105
    :try_start_0
    invoke-static {}, Lcom/google/inject/internal/ImmutableMap;->builder()Lcom/google/inject/internal/ImmutableMap$Builder;

    move-result-object v2

    .line 106
    invoke-static {}, Lcom/google/inject/internal/ImmutableMap;->builder()Lcom/google/inject/internal/ImmutableMap$Builder;

    move-result-object v3

    .line 109
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 110
    invoke-virtual {p1, v7}, Lcom/google/inject/TypeLiteral;->getReturnType(Ljava/lang/reflect/Method;)Lcom/google/inject/TypeLiteral;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v9

    invoke-static {v8, v7, v9, v0}, Lcom/google/inject/internal/Annotations;->getKey(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;

    move-result-object v8

    .line 112
    invoke-virtual {v2, v7, v8}, Lcom/google/inject/internal/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap$Builder;

    .line 113
    invoke-virtual {p1, v7}, Lcom/google/inject/TypeLiteral;->getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v8

    .line 114
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    .line 115
    const/4 v10, 0x0

    .line 116
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 117
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/inject/TypeLiteral;

    .line 118
    add-int/lit8 v12, v10, 0x1

    aget-object v10, v9, v10

    invoke-static {p2, v7, v10, v0}, Lcom/google/inject/internal/Annotations;->getKey(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;

    move-result-object v10

    .line 119
    invoke-direct {p0, v7, v10, v0}, Lcom/google/inject/assistedinject/FactoryProvider2;->assistKey(Ljava/lang/reflect/Method;Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v12

    .line 120
    goto :goto_1

    .line 121
    :cond_0
    invoke-static {v11}, Lcom/google/inject/internal/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/google/inject/internal/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap$Builder;

    .line 109
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v2}, Lcom/google/inject/internal/ImmutableMap$Builder;->build()Lcom/google/inject/internal/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->returnTypesByMethod:Lcom/google/inject/internal/ImmutableMap;

    .line 124
    invoke-virtual {v3}, Lcom/google/inject/internal/ImmutableMap$Builder;->build()Lcom/google/inject/internal/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->paramTypes:Lcom/google/inject/internal/ImmutableMap;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->factory:Ljava/lang/Object;

    .line 131
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/google/inject/assistedinject/FactoryProvider2;)Lcom/google/inject/internal/ImmutableMap;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->paramTypes:Lcom/google/inject/internal/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/inject/assistedinject/FactoryProvider2;)Lcom/google/inject/Key;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->producedType:Lcom/google/inject/Key;

    return-object v0
.end method

.method private assistKey(Ljava/lang/reflect/Method;Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p2}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p2}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    sget-object v1, Lcom/google/inject/assistedinject/FactoryProvider2;->DEFAULT_ANNOTATION:Lcom/google/inject/assistedinject/Assisted;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 145
    :cond_0
    invoke-virtual {p2}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/inject/assistedinject/Assisted;

    if-ne v0, v1, :cond_1

    move-object v0, p2

    .line 146
    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p3, p1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    const-string v1, "Only @Assisted is allowed for factory parameters, but found @%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    .line 151
    invoke-virtual {p3}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0
.end method

.method static canRethrow(Ljava/lang/reflect/Method;Ljava/lang/Throwable;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 243
    instance-of v0, p1, Ljava/lang/Error;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    :cond_0
    move v0, v5

    .line 253
    :goto_0
    return v0

    .line 247
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 248
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v5

    .line 249
    goto :goto_0

    .line 247
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    .line 253
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 238
    if-eq p1, p0, :cond_0

    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->factory:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->factory:Ljava/lang/Object;

    return-object v0
.end method

.method public getBindingFromNewInjector(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/google/inject/Binding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/Binding",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 179
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->injector:Lcom/google/inject/Injector;

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    const-string v1, "Factories.create() factories cannot be used until they\'re initialized by Guice."

    invoke-static {v0, v1}, Lcom/google/inject/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->returnTypesByMethod:Lcom/google/inject/internal/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    .line 184
    new-instance v1, Lcom/google/inject/assistedinject/FactoryProvider2$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/inject/assistedinject/FactoryProvider2$2;-><init>(Lcom/google/inject/assistedinject/FactoryProvider2;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/google/inject/Key;)V

    .line 203
    iget-object v2, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->injector:Lcom/google/inject/Injector;

    new-array v3, v3, [Lcom/google/inject/Module;

    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lcom/google/inject/Injector;->createChildInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;

    move-result-object v1

    .line 204
    invoke-interface {v1, v0}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v4

    .line 179
    goto :goto_0
.end method

.method initialize(Lcom/google/inject/Injector;)V
    .locals 4
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->injector:Lcom/google/inject/Injector;

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Lcom/google/inject/ConfigurationException;

    new-instance v1, Lcom/google/inject/spi/Message;

    const-class v2, Lcom/google/inject/assistedinject/FactoryProvider2;

    const-string v3, "Factories.create() factories may only be used in one Injector!"

    invoke-direct {v1, v2, v3}, Lcom/google/inject/spi/Message;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/inject/internal/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v0

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->injector:Lcom/google/inject/Injector;

    .line 168
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->returnTypesByMethod:Lcom/google/inject/internal/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableMap;->keySet()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 169
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 170
    const-string v3, "dummy object for validating Factories"

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p0, v0, v2}, Lcom/google/inject/assistedinject/FactoryProvider2;->getBindingFromNewInjector(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/google/inject/Binding;

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 213
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 216
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/inject/assistedinject/FactoryProvider2;->getBindingFromNewInjector(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/google/inject/Binding;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Binding;->getProvider()Lcom/google/inject/Provider;

    move-result-object v0

    .line 218
    :try_start_0
    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/ProvisionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Lcom/google/inject/ProvisionException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 222
    invoke-virtual {v0}, Lcom/google/inject/ProvisionException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/inject/internal/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/spi/Message;

    .line 223
    invoke-virtual {p0}, Lcom/google/inject/spi/Message;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_1

    invoke-static {p2, v1}, Lcom/google/inject/assistedinject/FactoryProvider2;->canRethrow(Ljava/lang/reflect/Method;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    throw v1

    .line 228
    :cond_1
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->factory:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/assistedinject/FactoryProvider2;->producedType:Lcom/google/inject/Key;

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
