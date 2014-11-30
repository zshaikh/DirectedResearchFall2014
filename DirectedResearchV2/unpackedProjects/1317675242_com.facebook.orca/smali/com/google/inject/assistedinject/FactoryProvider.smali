.class public Lcom/google/inject/assistedinject/FactoryProvider;
.super Ljava/lang/Object;
.source "FactoryProvider.java"

# interfaces
.implements Lcom/google/inject/Provider;
.implements Lcom/google/inject/spi/HasDependencies;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<TF;>;",
        "Lcom/google/inject/spi/HasDependencies;"
    }
.end annotation


# instance fields
.field private final factoryMethodToConstructor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lcom/google/inject/assistedinject/AssistedConstructor",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final factoryType:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral",
            "<TF;>;"
        }
    .end annotation
.end field

.field private injector:Lcom/google/inject/Injector;


# direct methods
.method private constructor <init>(Lcom/google/inject/TypeLiteral;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<TF;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lcom/google/inject/assistedinject/AssistedConstructor",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/google/inject/assistedinject/FactoryProvider;->factoryType:Lcom/google/inject/TypeLiteral;

    .line 173
    iput-object p2, p0, Lcom/google/inject/assistedinject/FactoryProvider;->factoryMethodToConstructor:Ljava/util/Map;

    .line 174
    invoke-direct {p0}, Lcom/google/inject/assistedinject/FactoryProvider;->checkDeclaredExceptionsMatch()V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/assistedinject/FactoryProvider;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider;->factoryMethodToConstructor:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/inject/assistedinject/FactoryProvider;)Lcom/google/inject/Injector;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider;->injector:Lcom/google/inject/Injector;

    return-object v0
.end method

.method private checkDeclaredExceptionsMatch()V
    .locals 5

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider;->factoryMethodToConstructor:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/assistedinject/AssistedConstructor;

    invoke-virtual {v1}, Lcom/google/inject/assistedinject/AssistedConstructor;->getDeclaredExceptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/inject/assistedinject/FactoryProvider;->isConstructorExceptionCompatibleWithFactoryExeception(Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    const-string v1, "Constructor %s declares an exception, but no compatible exception is thrown by the factory method %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/inject/assistedinject/FactoryProvider;->newConfigurationException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;

    move-result-object v0

    throw v0

    .line 203
    :cond_2
    return-void
.end method

.method private static createMethodMapping(Lcom/google/inject/TypeLiteral;Lcom/google/inject/TypeLiteral;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lcom/google/inject/assistedinject/AssistedConstructor",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 224
    const-class v7, Lcom/google/inject/assistedinject/AssistedInject;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 226
    new-instance v7, Lcom/google/inject/assistedinject/AssistedConstructor;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/inject/TypeLiteral;->getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/google/inject/assistedinject/AssistedConstructor;-><init>(Ljava/lang/reflect/Constructor;Ljava/util/List;)V

    .line 228
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 232
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    invoke-static {}, Lcom/google/inject/internal/ImmutableMap;->of()Lcom/google/inject/internal/ImmutableMap;

    move-result-object p0

    .line 288
    :goto_1
    return-object p0

    .line 236
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 238
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    array-length v5, v3

    if-eq v4, v5, :cond_3

    .line 239
    const-string v4, "Constructor mismatch: %s has %s @AssistedInject constructors, factory %s has %s creation methods"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/16 p1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, p1

    const/16 p1, 0x2

    aput-object p0, v5, p1

    const/16 p0, 0x3

    move-object v0, v3

    array-length v0, v0

    move/from16 p1, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, p0

    invoke-static {v4, v5}, Lcom/google/inject/assistedinject/FactoryProvider;->newConfigurationException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;

    move-result-object p0

    throw p0

    .line 244
    :cond_3
    invoke-static {}, Lcom/google/inject/internal/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 246
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/assistedinject/AssistedConstructor;

    .line 247
    invoke-virtual {v2}, Lcom/google/inject/assistedinject/AssistedConstructor;->getAssistedParameters()Lcom/google/inject/assistedinject/ParameterListKey;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 248
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate constructor, "

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :cond_4
    invoke-virtual {v2}, Lcom/google/inject/assistedinject/AssistedConstructor;->getAssistedParameters()Lcom/google/inject/assistedinject/ParameterListKey;

    move-result-object v6

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 253
    :cond_5
    invoke-static {}, Lcom/google/inject/internal/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 254
    array-length v6, v3

    const/4 v2, 0x0

    move v7, v2

    :goto_3
    if-ge v7, v6, :cond_c

    aget-object v8, v3, v7

    .line 255
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 256
    const-string p0, "Return type of method %s is not assignable from %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/google/inject/assistedinject/FactoryProvider;->newConfigurationException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;

    move-result-object p0

    throw p0

    .line 260
    :cond_6
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 261
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/google/inject/TypeLiteral;->getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/TypeLiteral;

    .line 262
    invoke-virtual {v2}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 264
    :cond_7
    new-instance v2, Lcom/google/inject/assistedinject/ParameterListKey;

    invoke-direct {v2, v9}, Lcom/google/inject/assistedinject/ParameterListKey;-><init>(Ljava/util/List;)V

    .line 266
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 267
    const-string p0, "%s has no @AssistInject constructor that takes the @Assisted parameters %s in that order. @AssistInject constructors are %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    const/16 p1, 0x1

    aput-object v2, v3, p1

    const/16 p1, 0x2

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v3, p1

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/google/inject/assistedinject/FactoryProvider;->newConfigurationException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;

    move-result-object p0

    throw p0

    .line 272
    :cond_8
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    .line 273
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_b

    aget-object v12, v9, v11

    .line 274
    array-length v13, v12

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v13, :cond_a

    aget-object v15, v12, v14

    .line 275
    invoke-interface {v15}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v15

    const-class v16, Lcom/google/inject/assistedinject/Assisted;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 276
    const-string p0, "Factory method %s has an @Assisted parameter, which is incompatible with the deprecated @AssistedInject annotation. Please replace @AssistedInject with @Inject on the %s constructor."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/google/inject/assistedinject/FactoryProvider;->newConfigurationException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;

    move-result-object p0

    throw p0

    .line 274
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 273
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 284
    :cond_b
    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/assistedinject/AssistedConstructor;

    .line 286
    invoke-interface {v5, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_3

    :cond_c
    move-object/from16 p0, v5

    .line 288
    goto/16 :goto_1
.end method

.method private isConstructorExceptionCompatibleWithFactoryExeception(Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 207
    array-length v0, p2

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 208
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 212
    :goto_1
    return v0

    .line 207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 212
    goto :goto_1
.end method

.method private static varargs newConfigurationException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;
    .locals 3

    .prologue
    .line 345
    new-instance v0, Lcom/google/inject/ConfigurationException;

    new-instance v1, Lcom/google/inject/spi/Message;

    invoke-static {p0, p1}, Lcom/google/inject/internal/Errors;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/inject/spi/Message;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/inject/internal/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static newFactory(Lcom/google/inject/TypeLiteral;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TF;>;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;)",
            "Lcom/google/inject/Provider",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p0, p1}, Lcom/google/inject/assistedinject/FactoryProvider;->createMethodMapping(Lcom/google/inject/TypeLiteral;Lcom/google/inject/TypeLiteral;)Ljava/util/Map;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lcom/google/inject/assistedinject/FactoryProvider;

    invoke-direct {v1, p0, v0}, Lcom/google/inject/assistedinject/FactoryProvider;-><init>(Lcom/google/inject/TypeLiteral;Ljava/util/Map;)V

    move-object v0, v1

    .line 166
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/assistedinject/FactoryProvider2;

    invoke-static {p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/inject/assistedinject/FactoryProvider2;-><init>(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Key;)V

    goto :goto_0
.end method

.method public static newFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TF;>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/Provider",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/inject/assistedinject/FactoryProvider;->newFactory(Lcom/google/inject/TypeLiteral;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method private paramCanBeInjected(Lcom/google/inject/assistedinject/Parameter;Lcom/google/inject/Injector;)Z
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p1, p2}, Lcom/google/inject/assistedinject/Parameter;->isBound(Lcom/google/inject/Injector;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lcom/google/inject/assistedinject/FactoryProvider$1;

    invoke-direct {v0, p0}, Lcom/google/inject/assistedinject/FactoryProvider$1;-><init>(Lcom/google/inject/assistedinject/FactoryProvider;)V

    .line 339
    iget-object v1, p0, Lcom/google/inject/assistedinject/FactoryProvider;->factoryType:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 292
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/google/inject/assistedinject/FactoryProvider;->factoryMethodToConstructor:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/assistedinject/AssistedConstructor;

    .line 294
    invoke-virtual {p0}, Lcom/google/inject/assistedinject/AssistedConstructor;->getAllParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/assistedinject/Parameter;

    .line 295
    invoke-virtual {p0}, Lcom/google/inject/assistedinject/Parameter;->isProvidedByFactory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/google/inject/assistedinject/Parameter;->getPrimaryBindingKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-static {v3}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_2
    invoke-static {v0}, Lcom/google/inject/internal/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method setInjectorAndCheckUnboundParametersAreInjectable(Lcom/google/inject/Injector;)V
    .locals 5
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/inject/assistedinject/FactoryProvider;->injector:Lcom/google/inject/Injector;

    .line 180
    iget-object v0, p0, Lcom/google/inject/assistedinject/FactoryProvider;->factoryMethodToConstructor:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/assistedinject/AssistedConstructor;

    .line 181
    invoke-virtual {v0}, Lcom/google/inject/assistedinject/AssistedConstructor;->getAllParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/assistedinject/Parameter;

    .line 182
    invoke-virtual {v1}, Lcom/google/inject/assistedinject/Parameter;->isProvidedByFactory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/google/inject/assistedinject/FactoryProvider;->paramCanBeInjected(Lcom/google/inject/assistedinject/Parameter;Lcom/google/inject/Injector;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 186
    const-string v2, "Parameter of type \'%s\' is not injectable or annotated with @Assisted for Constructor \'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/google/inject/assistedinject/FactoryProvider;->newConfigurationException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;

    move-result-object v0

    throw v0

    .line 191
    :cond_2
    return-void
.end method
