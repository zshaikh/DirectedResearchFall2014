.class public Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
.super Lorg/codehaus/jackson/map/BeanDescription;
.source "BasicBeanDescription.java"


# instance fields
.field protected final b:Lorg/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;"
        }
    .end annotation
.end field

.field protected final c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field protected final d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

.field protected e:Lorg/codehaus/jackson/map/type/TypeBindings;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/map/BeanDescription;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 57
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b:Lorg/codehaus/jackson/map/MapperConfig;

    .line 58
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 59
    iput-object p3, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 60
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 907
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 910
    if-nez v0, :cond_0

    move-object v0, v2

    .line 926
    :goto_0
    return-object v0

    .line 915
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 916
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 917
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 918
    if-ne v3, v4, :cond_2

    .line 926
    :cond_1
    if-nez v2, :cond_4

    move-object v0, p0

    goto :goto_0

    .line 921
    :cond_2
    if-nez v2, :cond_3

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 924
    :cond_3
    invoke-virtual {v2, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 926
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    invoke-static {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    if-nez v0, :cond_0

    .line 643
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    :cond_0
    return-object v0
.end method

.method public varargs a([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 303
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 308
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->g()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 309
    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->b(I)Ljava/lang/Class;

    move-result-object v1

    .line 310
    array-length v2, p1

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 311
    if-ne v4, v1, :cond_1

    .line 312
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->f()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 317
    :goto_1
    return-object v0

    .line 310
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 317
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Ljava/util/LinkedHashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 446
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig;->j()Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    move-result-object v3

    .line 447
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 451
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->g()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 460
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 461
    if-eqz v1, :cond_2

    .line 465
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 466
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 468
    if-nez v1, :cond_1

    .line 469
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a()Ljava/lang/String;

    move-result-object v1

    .line 472
    :cond_1
    if-eqz v3, :cond_5

    .line 473
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3, v5, v0, v1}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->b(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 493
    :goto_1
    invoke-virtual {v2, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 494
    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->d()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->d()Ljava/lang/Class;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 500
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->j()Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->j()Ljava/lang/String;

    move-result-object v0

    .line 502
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflicting setter definitions for property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 477
    :cond_2
    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 481
    if-eqz v1, :cond_0

    .line 485
    if-eqz v3, :cond_5

    .line 486
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3, v5, v0, v1}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->b(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    .line 505
    :cond_3
    invoke-virtual {v2, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 509
    :cond_4
    return-object v2

    :cond_5
    move-object v5, v1

    goto :goto_1
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig;->j()Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    move-result-object v3

    .line 152
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 157
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->g()I

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_3

    .line 169
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 170
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    if-nez v1, :cond_1

    .line 172
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a()Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_1
    if-eqz v3, :cond_6

    .line 176
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3, v5, v0, v1}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 204
    :goto_0
    if-eqz p2, :cond_2

    .line 205
    invoke-interface {p2, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    :cond_2
    invoke-virtual {v2, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 214
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->j()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->j()Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflicting getter definitions for property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_3
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a()Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string v5, "get"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 183
    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    :goto_1
    if-eqz v1, :cond_0

    .line 196
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v5, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 199
    if-eqz v3, :cond_6

    .line 200
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3, v5, v0, v1}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    .line 188
    :cond_4
    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 220
    :cond_5
    return-object v2

    :cond_6
    move-object v5, v1

    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 826
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/MapperConfig;->j()Lorg/codehaus/jackson/map/PropertyNamingStrategy;

    move-result-object v3

    .line 827
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->j()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 838
    if-eqz p3, :cond_2

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    .line 842
    :goto_0
    if-eqz v1, :cond_3

    .line 843
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 844
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->a()Ljava/lang/String;

    move-result-object v1

    .line 846
    if-eqz v3, :cond_5

    .line 847
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3, v5, v0, v1}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 861
    :goto_1
    if-eqz p2, :cond_1

    .line 862
    invoke-interface {p2, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 871
    :cond_1
    invoke-virtual {v2, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 872
    if-eqz v1, :cond_0

    .line 882
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->d()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->d()Ljava/lang/Class;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 883
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->g()Ljava/lang/String;

    move-result-object v1

    .line 884
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->g()Ljava/lang/String;

    move-result-object v0

    .line 885
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple fields representing property \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 838
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 851
    :cond_3
    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->a()Ljava/lang/String;

    move-result-object v1

    .line 856
    if-eqz v3, :cond_5

    .line 857
    iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3, v5, v0, v1}, Lorg/codehaus/jackson/map/PropertyNamingStrategy;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    .line 889
    :cond_4
    return-object v2

    :cond_5
    move-object v5, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 353
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->c()Ljava/lang/Class;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 368
    :goto_0
    return v0

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 363
    goto :goto_0

    .line 365
    :cond_1
    const-string v0, "valueOf"

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 366
    goto :goto_0

    :cond_2
    move v0, v2

    .line 368
    goto :goto_0
.end method

.method protected b(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 800
    invoke-static {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 650
    const-string v0, "get"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    const-string v0, "getCallbacks"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 672
    :goto_0
    return-object v0

    .line 662
    :cond_0
    const-string v0, "getMetaClass"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 667
    goto :goto_0

    .line 670
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 672
    goto :goto_0
.end method

.method public varargs b([Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 332
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 333
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->b(I)Ljava/lang/Class;

    move-result-object v2

    .line 336
    array-length v3, p1

    move v4, v6

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    .line 338
    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->f()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 344
    :goto_1
    return-object v0

    .line 336
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 344
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 711
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->c()Ljava/lang/Class;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, v2

    .line 731
    :goto_0
    return v0

    .line 720
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 723
    if-eqz v0, :cond_3

    .line 724
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 725
    const-string v1, "net.sf.cglib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "org.hibernate.repackage.cglib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 728
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 731
    goto :goto_0
.end method

.method public c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 677
    const-string v0, "is"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->c()Ljava/lang/Class;

    move-result-object v0

    .line 680
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    move-object v0, v2

    .line 686
    :goto_0
    return-object v0

    .line 683
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 686
    goto :goto_0
.end method

.method public c()Lorg/codehaus/jackson/map/util/Annotations;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->d()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 740
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->b(I)Ljava/lang/Class;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "groovy.lang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const/4 v0, 0x1

    .line 745
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public d()Lorg/codehaus/jackson/map/type/TypeBindings;
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e:Lorg/codehaus/jackson/map/type/TypeBindings;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeBindings;

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b:Lorg/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/MapperConfig;->m()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/type/JavaType;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e:Lorg/codehaus/jackson/map/type/TypeBindings;

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e:Lorg/codehaus/jackson/map/type/TypeBindings;

    return-object v0
.end method

.method protected d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 753
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->c()Ljava/lang/Class;

    move-result-object v0

    .line 754
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    .line 761
    :goto_0
    return v0

    .line 757
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 758
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "groovy.lang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 761
    goto :goto_0
.end method

.method public e(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 772
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a()Ljava/lang/String;

    move-result-object v0

    .line 778
    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 779
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    if-nez v0, :cond_1

    move-object v0, v2

    .line 791
    :cond_0
    :goto_0
    return-object v0

    .line 783
    :cond_1
    const-string v1, "metaClass"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 786
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 791
    goto :goto_0
.end method

.method public e()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    return-object v0
.end method

.method public f()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->e()Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    .line 268
    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->f()Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->g()Ljava/util/List;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    :goto_0
    return-object v0

    .line 286
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 288
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 292
    goto :goto_0
.end method

.method public i()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 5

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 527
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 530
    if-eqz v2, :cond_1

    .line 531
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple methods with \'any-setter\' annotation ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->g()I

    move-result v2

    .line 534
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 535
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid \'any-setter\' annotation on method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(): takes "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " parameters, should take 2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 545
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->b(I)Ljava/lang/Class;

    move-result-object v2

    .line 546
    const-class v3, Ljava/lang/String;

    if-eq v2, v3, :cond_3

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    .line 547
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid \'any-setter\' annotation on method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(): first argument not of type String or Object, but "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v2, v0

    .line 550
    goto/16 :goto_0

    .line 551
    :cond_4
    return-object v2
.end method

.method public j()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    const/4 v0, 0x0

    .line 593
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->h()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 594
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->g()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 595
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v3

    .line 596
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 597
    if-nez v2, :cond_0

    .line 598
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 600
    :cond_0
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple back-reference properties with name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v2

    move-object v2, v0

    .line 604
    goto :goto_0

    .line 607
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->j()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 608
    iget-object v3, p0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v3

    .line 609
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 610
    if-nez v2, :cond_3

    .line 611
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 613
    :cond_3
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple back-reference properties with name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v0, v2

    move-object v2, v0

    .line 617
    goto :goto_1

    .line 618
    :cond_5
    return-object v2
.end method
