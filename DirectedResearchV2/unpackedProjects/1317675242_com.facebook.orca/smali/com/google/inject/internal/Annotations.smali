.class public Lcom/google/inject/internal/Annotations;
.super Ljava/lang/Object;
.source "Annotations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p0}, Lcom/google/inject/internal/Classes;->isConcrete(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {p2, p0}, Lcom/google/inject/internal/Annotations;->findScopeAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p2, p0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Lcom/google/inject/internal/Errors;->scopeAnnotationOnAbstractType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    goto :goto_0
.end method

.method public static findBindingAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 7

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    array-length v1, p2

    const/4 v2, 0x0

    move v6, v2

    move-object v2, v0

    move v0, v6

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, p2, v0

    .line 103
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/google/inject/BindingAnnotation;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    if-eqz v2, :cond_1

    .line 105
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, p1, v4, v3}, Lcom/google/inject/internal/Errors;->duplicateBindingAnnotations(Ljava/lang/reflect/Member;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 108
    goto :goto_1

    .line 113
    :cond_2
    return-object v2
.end method

.method public static findScopeAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/inject/internal/Annotations;->findScopeAnnotation(Lcom/google/inject/internal/Errors;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static findScopeAnnotation(Lcom/google/inject/internal/Errors;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 53
    array-length v1, p1

    const/4 v2, 0x0

    move v6, v2

    move-object v2, v0

    move v0, v6

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, p1, v0

    .line 54
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/google/inject/ScopeAnnotation;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    if-eqz v2, :cond_1

    .line 56
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/inject/internal/Errors;->duplicateScopeAnnotations(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 53
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    .line 63
    :cond_2
    return-object v2
.end method

.method public static getKey(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/lang/reflect/Member;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p3}, Lcom/google/inject/internal/Errors;->size()I

    move-result v0

    .line 90
    invoke-static {p3, p1, p2}, Lcom/google/inject/internal/Annotations;->findBindingAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 91
    invoke-virtual {p3, v0}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 92
    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v0

    goto :goto_0
.end method

.method public static isRetainedAtRuntime(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 39
    const-class v0, Ljava/lang/annotation/Retention;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Retention;

    .line 40
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/annotation/Retention;->value()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v0

    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScopeAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 67
    const-class v0, Lcom/google/inject/ScopeAnnotation;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
