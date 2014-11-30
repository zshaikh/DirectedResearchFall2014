.class public Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;
.super Lorg/codehaus/jackson/map/AnnotationIntrospector;
.source "AnnotationIntrospector.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field protected final b:Lorg/codehaus/jackson/map/AnnotationIntrospector;


# virtual methods
.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 907
    if-nez v0, :cond_0

    .line 908
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 910
    :cond_0
    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1325
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1326
    if-nez v0, :cond_0

    .line 1327
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1329
    :cond_0
    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;

    move-result-object v0

    .line 1295
    if-nez v0, :cond_0

    .line 1296
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;

    move-result-object v0

    .line 1298
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1252
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    .line 1253
    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    .line 1256
    :cond_0
    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v0

    .line 1419
    if-nez v0, :cond_0

    .line 1420
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v0

    .line 1422
    :cond_0
    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1026
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v0

    .line 1027
    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v1

    .line 1028
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 1033
    :cond_1
    :goto_0
    return-object v0

    .line 1029
    :cond_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1030
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1031
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1032
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v0, v2

    .line 1033
    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    .line 1052
    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    .line 1055
    :cond_0
    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;)",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 980
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 994
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 995
    if-nez v0, :cond_0

    .line 996
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 998
    :cond_0
    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1006
    if-nez v0, :cond_0

    .line 1007
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1009
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/annotation/Annotation;)Z

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

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

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

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

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

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

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

.method public b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1336
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1337
    if-nez v0, :cond_0

    .line 1338
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1340
    :cond_0
    return-object v0
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1285
    if-nez v0, :cond_0

    .line 1286
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1288
    :cond_0
    return-object v0
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1264
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1265
    if-nez v0, :cond_1

    .line 1266
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1276
    :cond_0
    :goto_0
    return-object v0

    .line 1267
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1271
    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    .line 1272
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 1273
    goto :goto_0
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    if-nez v0, :cond_1

    .line 1230
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    :cond_0
    :goto_0
    return-object v0

    .line 1231
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1235
    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 1236
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 1237
    goto :goto_0
.end method

.method public b(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1016
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1017
    if-nez v0, :cond_0

    .line 1018
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1020
    :cond_0
    return-object v0
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 931
    if-nez v0, :cond_0

    .line 932
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 934
    :cond_0
    return-object v0
.end method

.method public c(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 941
    if-nez v0, :cond_0

    .line 942
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 944
    :cond_0
    return-object v0
.end method

.method public c(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1304
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1305
    if-eqz v0, :cond_0

    const-class v1, Lorg/codehaus/jackson/map/KeyDeserializer$None;

    if-ne v0, v1, :cond_1

    .line 1306
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1308
    :cond_1
    return-object v0
.end method

.method public c(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1347
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1348
    if-nez v0, :cond_0

    .line 1349
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1351
    :cond_0
    return-object v0
.end method

.method public c(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1398
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1399
    if-nez v0, :cond_1

    .line 1400
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    .line 1410
    :cond_0
    :goto_0
    return-object v0

    .line 1401
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1405
    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    .line 1406
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 1407
    goto :goto_0
.end method

.method public c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1360
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1361
    if-nez v0, :cond_1

    .line 1362
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 1372
    :cond_0
    :goto_0
    return-object v0

    .line 1363
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1367
    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    .line 1368
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 1369
    goto :goto_0
.end method

.method public d(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 951
    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 954
    :cond_0
    return-object v0
.end method

.method public d(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1314
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1315
    if-eqz v0, :cond_0

    const-class v1, Lorg/codehaus/jackson/map/JsonDeserializer$None;

    if-ne v0, v1, :cond_1

    .line 1316
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 1318
    :cond_1
    return-object v0
.end method

.method public d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

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

.method public e(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1041
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 1043
    :cond_1
    return-object v0
.end method

.method public e(Lorg/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

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

.method public e(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->b:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

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
