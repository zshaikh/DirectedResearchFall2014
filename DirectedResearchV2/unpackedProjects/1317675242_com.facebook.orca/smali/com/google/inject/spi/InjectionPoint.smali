.class public final Lcom/google/inject/spi/InjectionPoint;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# instance fields
.field private final dependencies:Lcom/google/inject/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final member:Ljava/lang/reflect/Member;

.field private final optional:Z


# direct methods
.method constructor <init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/inject/spi/InjectionPoint;->optional:Z

    .line 78
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/google/inject/spi/InjectionPoint;->forMember(Ljava/lang/reflect/Member;Lcom/google/inject/TypeLiteral;[[Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->dependencies:Lcom/google/inject/internal/ImmutableList;

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Field;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    .line 84
    const-class v0, Lcom/google/inject/Inject;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Inject;

    .line 85
    invoke-interface {v0}, Lcom/google/inject/Inject;->optional()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/inject/spi/InjectionPoint;->optional:Z

    .line 87
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/google/inject/internal/Errors;

    invoke-direct {v1, p2}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 90
    const/4 v2, 0x0

    .line 92
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/inject/TypeLiteral;->getFieldType(Ljava/lang/reflect/Field;)Lcom/google/inject/TypeLiteral;

    move-result-object v3

    invoke-static {v3, p2, v0, v1}, Lcom/google/inject/internal/Annotations;->getKey(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 96
    :goto_0
    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    .line 98
    invoke-static {v0}, Lcom/google/inject/internal/Nullability;->allowsNull([Ljava/lang/annotation/Annotation;)Z

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/google/inject/spi/InjectionPoint;->newDependency(Lcom/google/inject/Key;ZI)Lcom/google/inject/spi/Dependency;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->dependencies:Lcom/google/inject/internal/ImmutableList;

    .line 100
    return-void

    .line 93
    :catch_0
    move-exception v3

    .line 94
    invoke-virtual {v3}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Method;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    .line 69
    const-class v0, Lcom/google/inject/Inject;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Inject;

    .line 70
    invoke-interface {v0}, Lcom/google/inject/Inject;->optional()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/inject/spi/InjectionPoint;->optional:Z

    .line 72
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/google/inject/spi/InjectionPoint;->forMember(Ljava/lang/reflect/Member;Lcom/google/inject/TypeLiteral;[[Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->dependencies:Lcom/google/inject/internal/ImmutableList;

    .line 73
    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)V
    .locals 0

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/google/inject/spi/InjectionPoint;->checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)V

    return-void
.end method

.method private static addInjectionPoints(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/InjectionPoint$Factory;ZLjava/util/Collection;Lcom/google/inject/internal/Errors;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Ljava/lang/reflect/Member;",
            ":",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/spi/InjectionPoint$Factory",
            "<TM;>;Z",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;",
            "Lcom/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/TypeLiteral;->getSupertype(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    .line 350
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/inject/spi/InjectionPoint;->addInjectionPoints(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/InjectionPoint$Factory;ZLjava/util/Collection;Lcom/google/inject/internal/Errors;)V

    .line 353
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/inject/spi/InjectionPoint;->addInjectorsForMembers(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/InjectionPoint$Factory;ZLjava/util/Collection;Lcom/google/inject/internal/Errors;)V

    goto :goto_0
.end method

.method private static addInjectorsForMembers(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/InjectionPoint$Factory;ZLjava/util/Collection;Lcom/google/inject/internal/Errors;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Ljava/lang/reflect/Member;",
            ":",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/spi/InjectionPoint$Factory",
            "<TM;>;Z",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;",
            "Lcom/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/inject/internal/MoreTypes;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/inject/spi/InjectionPoint$Factory;->getMembers(Ljava/lang/Class;)[Ljava/lang/reflect/Member;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v2, v3, v5

    .line 360
    invoke-static {v2}, Lcom/google/inject/spi/InjectionPoint;->isStatic(Ljava/lang/reflect/Member;)Z

    move-result v1

    if-eq v1, p2, :cond_1

    .line 359
    :cond_0
    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 364
    :cond_1
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    move-object v1, v0

    const-class v6, Lcom/google/inject/Inject;

    invoke-interface {v1, v6}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/inject/Inject;

    .line 365
    if-eqz v1, :cond_0

    .line 370
    :try_start_0
    invoke-interface {p1, p0, v2, p4}, Lcom/google/inject/spi/InjectionPoint$Factory;->create(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)Lcom/google/inject/spi/InjectionPoint;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 371
    :catch_0
    move-exception v2

    .line 372
    invoke-interface {v1}, Lcom/google/inject/Inject;->optional()Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    invoke-virtual {v2}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    goto :goto_1

    .line 377
    :cond_2
    return-void
.end method

.method private static checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)V
    .locals 4

    .prologue
    .line 321
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/google/inject/internal/Annotations;->findBindingAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 323
    if-nez v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    instance-of v2, p0, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 331
    :try_start_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 338
    :cond_2
    :goto_1
    invoke-virtual {p1, p0, v1}, Lcom/google/inject/internal/Errors;->misplacedBindingAnnotation(Ljava/lang/reflect/Member;Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 334
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static forConstructorOf(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/spi/InjectionPoint;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;)",
            "Lcom/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 182
    new-instance v2, Lcom/google/inject/internal/Errors;

    invoke-direct {v2, v1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 184
    const/4 v0, 0x0

    .line 185
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v4, v3

    move-object v6, v0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v7, v3, v5

    .line 186
    const-class v0, Lcom/google/inject/Inject;

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Inject;

    .line 187
    if-eqz v0, :cond_5

    .line 188
    invoke-interface {v0}, Lcom/google/inject/Inject;->optional()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v2, v7}, Lcom/google/inject/internal/Errors;->optionalConstructor(Ljava/lang/reflect/Constructor;)Lcom/google/inject/internal/Errors;

    .line 192
    :cond_0
    if-eqz v6, :cond_1

    .line 193
    invoke-virtual {v2, v1}, Lcom/google/inject/internal/Errors;->tooManyConstructors(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 197
    :cond_1
    invoke-static {v7, v2}, Lcom/google/inject/spi/InjectionPoint;->checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)V

    move-object v0, v7

    .line 185
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {v2}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    .line 203
    if-eqz v6, :cond_3

    .line 204
    new-instance v0, Lcom/google/inject/spi/InjectionPoint;

    invoke-direct {v0, p0, v6}, Lcom/google/inject/spi/InjectionPoint;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V

    .line 219
    :goto_2
    return-object v0

    .line 209
    :cond_3
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 214
    invoke-virtual {v2, v1}, Lcom/google/inject/internal/Errors;->missingConstructor(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 215
    new-instance v0, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v2}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v2, v1}, Lcom/google/inject/internal/Errors;->missingConstructor(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 222
    new-instance v0, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v2}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v0

    .line 218
    :cond_4
    :try_start_1
    invoke-static {v0, v2}, Lcom/google/inject/spi/InjectionPoint;->checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)V

    .line 219
    new-instance v3, Lcom/google/inject/spi/InjectionPoint;

    invoke-direct {v3, p0, v0}, Lcom/google/inject/spi/InjectionPoint;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Constructor;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    goto :goto_2

    :cond_5
    move-object v0, v6

    goto :goto_1
.end method

.method public static forInstanceMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 291
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 292
    new-instance v1, Lcom/google/inject/internal/Errors;

    invoke-direct {v1}, Lcom/google/inject/internal/Errors;-><init>()V

    .line 295
    sget-object v2, Lcom/google/inject/spi/InjectionPoint$Factory;->FIELDS:Lcom/google/inject/spi/InjectionPoint$Factory;

    invoke-static {p0, v2, v3, v0, v1}, Lcom/google/inject/spi/InjectionPoint;->addInjectionPoints(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/InjectionPoint$Factory;ZLjava/util/Collection;Lcom/google/inject/internal/Errors;)V

    .line 296
    sget-object v2, Lcom/google/inject/spi/InjectionPoint$Factory;->METHODS:Lcom/google/inject/spi/InjectionPoint$Factory;

    invoke-static {p0, v2, v3, v0, v1}, Lcom/google/inject/spi/InjectionPoint;->addInjectionPoints(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/InjectionPoint$Factory;ZLjava/util/Collection;Lcom/google/inject/internal/Errors;)V

    .line 298
    invoke-static {v0}, Lcom/google/inject/internal/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    .line 299
    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    new-instance v2, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v2, v0}, Lcom/google/inject/ConfigurationException;->withPartialValue(Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;

    move-result-object v0

    throw v0

    .line 302
    :cond_0
    return-object v0
.end method

.method public static forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {p0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private forMember(Ljava/lang/reflect/Member;Lcom/google/inject/TypeLiteral;[[Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;[[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v2, Lcom/google/inject/internal/Errors;

    invoke-direct {v2, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 105
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 107
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 108
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p2, p1}, Lcom/google/inject/TypeLiteral;->getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/TypeLiteral;

    .line 112
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/annotation/Annotation;

    .line 113
    invoke-static {v0, p1, v1, v2}, Lcom/google/inject/internal/Annotations;->getKey(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;

    move-result-object v0

    .line 114
    invoke-static {v1}, Lcom/google/inject/internal/Nullability;->allowsNull([Ljava/lang/annotation/Annotation;)Z

    move-result v1

    invoke-direct {p0, v0, v1, v6}, Lcom/google/inject/spi/InjectionPoint;->newDependency(Lcom/google/inject/Key;ZI)Lcom/google/inject/spi/Dependency;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v0, v6, 0x1

    :goto_1
    move v6, v0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move v0, v6

    goto :goto_1

    .line 121
    :cond_0
    invoke-virtual {v2}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V

    .line 122
    invoke-static {v4}, Lcom/google/inject/internal/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static forStaticMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 251
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/google/inject/internal/Errors;

    invoke-direct {v1}, Lcom/google/inject/internal/Errors;-><init>()V

    .line 254
    sget-object v2, Lcom/google/inject/spi/InjectionPoint$Factory;->FIELDS:Lcom/google/inject/spi/InjectionPoint$Factory;

    invoke-static {p0, v2, v3, v0, v1}, Lcom/google/inject/spi/InjectionPoint;->addInjectionPoints(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/InjectionPoint$Factory;ZLjava/util/Collection;Lcom/google/inject/internal/Errors;)V

    .line 255
    sget-object v2, Lcom/google/inject/spi/InjectionPoint$Factory;->METHODS:Lcom/google/inject/spi/InjectionPoint$Factory;

    invoke-static {p0, v2, v3, v0, v1}, Lcom/google/inject/spi/InjectionPoint;->addInjectionPoints(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/InjectionPoint$Factory;ZLjava/util/Collection;Lcom/google/inject/internal/Errors;)V

    .line 257
    invoke-static {v0}, Lcom/google/inject/internal/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    .line 258
    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    new-instance v2, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v2, v0}, Lcom/google/inject/ConfigurationException;->withPartialValue(Ljava/lang/Object;)Lcom/google/inject/ConfigurationException;

    move-result-object v0

    throw v0

    .line 261
    :cond_0
    return-object v0
.end method

.method public static forStaticMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {p0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/InjectionPoint;->forStaticMethodsAndFields(Lcom/google/inject/TypeLiteral;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static isStatic(Ljava/lang/reflect/Member;)Z
    .locals 1

    .prologue
    .line 380
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method private newDependency(Lcom/google/inject/Key;ZI)Lcom/google/inject/spi/Dependency;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;ZI)",
            "Lcom/google/inject/spi/Dependency",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/google/inject/spi/Dependency;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/inject/spi/Dependency;-><init>(Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/Key;ZI)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 159
    instance-of v0, p1, Lcom/google/inject/spi/InjectionPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    check-cast p1, Lcom/google/inject/spi/InjectionPoint;

    iget-object v1, p1, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->dependencies:Lcom/google/inject/internal/ImmutableList;

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOptional()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/inject/spi/InjectionPoint;->optional:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint;->member:Ljava/lang/reflect/Member;

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
