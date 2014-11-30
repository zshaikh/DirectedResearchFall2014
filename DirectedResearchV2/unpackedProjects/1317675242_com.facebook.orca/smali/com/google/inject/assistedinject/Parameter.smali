.class Lcom/google/inject/assistedinject/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"


# instance fields
.field private final bindingAnnotation:Ljava/lang/annotation/Annotation;

.field private final isAssisted:Z

.field private final isProvider:Z

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/inject/assistedinject/Parameter;->type:Ljava/lang/reflect/Type;

    .line 44
    invoke-direct {p0, p2}, Lcom/google/inject/assistedinject/Parameter;->getBindingAnnotation([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/assistedinject/Parameter;->bindingAnnotation:Ljava/lang/annotation/Annotation;

    .line 45
    invoke-direct {p0, p2}, Lcom/google/inject/assistedinject/Parameter;->hasAssistedAnnotation([Ljava/lang/annotation/Annotation;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/inject/assistedinject/Parameter;->isAssisted:Z

    .line 46
    invoke-direct {p0, p1}, Lcom/google/inject/assistedinject/Parameter;->isProvider(Ljava/lang/reflect/Type;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/inject/assistedinject/Parameter;->isProvider:Z

    .line 47
    return-void
.end method

.method private getBindingAnnotation([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 146
    const/4 v0, 0x0

    .line 147
    array-length v1, p1

    move-object v2, v0

    move v0, v7

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, p1, v0

    .line 148
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/google/inject/BindingAnnotation;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 149
    if-nez v2, :cond_1

    move v4, v8

    :goto_1
    const-string v5, "Parameter has multiple binding annotations: %s and %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    aput-object v3, v6, v8

    invoke-static {v4, v5, v6}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v4, v7

    .line 149
    goto :goto_1

    .line 154
    :cond_2
    return-object v2
.end method

.method private getBindingForType(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/inject/assistedinject/Parameter;->bindingAnnotation:Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/assistedinject/Parameter;->bindingAnnotation:Ljava/lang/annotation/Annotation;

    invoke-static {p1, v0}, Lcom/google/inject/Key;->get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;

    move-result-object v0

    goto :goto_0
.end method

.method private getProvidedType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 125
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private hasAssistedAnnotation([Ljava/lang/annotation/Annotation;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    array-length v0, p1

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 74
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/inject/assistedinject/Assisted;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 78
    :goto_1
    return v0

    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 78
    goto :goto_1
.end method

.method private isBound(Lcom/google/inject/Injector;Lcom/google/inject/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Injector;",
            "Lcom/google/inject/Key",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 99
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/inject/Injector;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    move v0, v1

    .line 101
    goto :goto_0
.end method

.method private isProvider(Ljava/lang/reflect/Type;)Z
    .locals 2

    .prologue
    .line 129
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lcom/google/inject/Provider;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public fixAnnotations(Lcom/google/inject/Key;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)",
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    goto :goto_0
.end method

.method getPrimaryBindingKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/inject/assistedinject/Parameter;->isProvider:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/assistedinject/Parameter;->type:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0}, Lcom/google/inject/assistedinject/Parameter;->getProvidedType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/inject/assistedinject/Parameter;->getBindingForType(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/assistedinject/Parameter;->type:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0}, Lcom/google/inject/assistedinject/Parameter;->getBindingForType(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/inject/assistedinject/Parameter;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getValue(Lcom/google/inject/Injector;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/inject/assistedinject/Parameter;->isProvider:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/assistedinject/Parameter;->type:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0}, Lcom/google/inject/assistedinject/Parameter;->getProvidedType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/inject/assistedinject/Parameter;->getBindingForType(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Injector;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/assistedinject/Parameter;->getPrimaryBindingKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/inject/Injector;->getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isBound(Lcom/google/inject/Injector;)Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/inject/assistedinject/Parameter;->getPrimaryBindingKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/inject/assistedinject/Parameter;->isBound(Lcom/google/inject/Injector;Lcom/google/inject/Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/inject/assistedinject/Parameter;->getPrimaryBindingKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/assistedinject/Parameter;->fixAnnotations(Lcom/google/inject/Key;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/inject/assistedinject/Parameter;->isBound(Lcom/google/inject/Injector;Lcom/google/inject/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProvidedByFactory()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/inject/assistedinject/Parameter;->isAssisted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    iget-boolean v1, p0, Lcom/google/inject/assistedinject/Parameter;->isAssisted:Z

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "@Assisted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/google/inject/assistedinject/Parameter;->bindingAnnotation:Ljava/lang/annotation/Annotation;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/google/inject/assistedinject/Parameter;->bindingAnnotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/google/inject/assistedinject/Parameter;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
