.class Lcom/google/inject/assistedinject/AssistedConstructor;
.super Ljava/lang/Object;
.source "AssistedConstructor.java"


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
.field private final allParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/assistedinject/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private final assistedParameters:Lcom/google/inject/assistedinject/ParameterListKey;

.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/inject/assistedinject/AssistedConstructor;->constructor:Ljava/lang/reflect/Constructor;

    .line 49
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 51
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/inject/assistedinject/AssistedConstructor;->allParameters:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 56
    new-instance v4, Lcom/google/inject/assistedinject/Parameter;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v5, v1, v3

    invoke-direct {v4, v0, v5}, Lcom/google/inject/assistedinject/Parameter;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    .line 57
    iget-object v0, p0, Lcom/google/inject/assistedinject/AssistedConstructor;->allParameters:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v4}, Lcom/google/inject/assistedinject/Parameter;->isProvidedByFactory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v4}, Lcom/google/inject/assistedinject/Parameter;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lcom/google/inject/assistedinject/ParameterListKey;

    invoke-direct {v0, v2}, Lcom/google/inject/assistedinject/ParameterListKey;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/inject/assistedinject/AssistedConstructor;->assistedParameters:Lcom/google/inject/assistedinject/ParameterListKey;

    .line 63
    return-void
.end method


# virtual methods
.method public getAllParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/assistedinject/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/inject/assistedinject/AssistedConstructor;->allParameters:Ljava/util/List;

    return-object v0
.end method

.method public getAssistedParameters()Lcom/google/inject/assistedinject/ParameterListKey;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/inject/assistedinject/AssistedConstructor;->assistedParameters:Lcom/google/inject/assistedinject/ParameterListKey;

    return-object v0
.end method

.method public getDeclaredExceptions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/inject/assistedinject/AssistedConstructor;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/inject/assistedinject/AssistedConstructor;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/assistedinject/AssistedConstructor;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/inject/assistedinject/AssistedConstructor;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
