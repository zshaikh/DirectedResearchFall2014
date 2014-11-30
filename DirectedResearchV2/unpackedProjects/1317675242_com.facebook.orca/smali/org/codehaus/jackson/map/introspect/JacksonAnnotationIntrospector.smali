.class public Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;
.super Lorg/codehaus/jackson/map/AnnotationIntrospector;
.source "JacksonAnnotationIntrospector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonCachable;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/annotate/JsonCachable;

    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/codehaus/jackson/map/annotate/JsonCachable;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
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
    .line 512
    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 513
    if-eqz p0, :cond_1

    .line 514
    invoke-interface {p0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->as()Ljava/lang/Class;

    move-result-object v0

    .line 515
    const-class v1, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v0, v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-object v0

    .line 524
    :cond_1
    const-class v0, Lorg/codehaus/jackson/annotate/JsonClass;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonClass;

    .line 525
    if-eqz p0, :cond_2

    .line 527
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonClass;->value()Ljava/lang/Class;

    move-result-object v0

    .line 528
    const-class v1, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-ne v0, v1, :cond_0

    .line 532
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Class;

    move-result-object v0

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
    .line 62
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    if-eqz p1, :cond_0

    .line 683
    const-class v0, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 684
    if-eqz p0, :cond_0

    .line 685
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v0

    .line 692
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 7
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
    .line 202
    const-class v0, Lorg/codehaus/jackson/annotate/JsonSubTypes;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonSubTypes;

    .line 203
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonSubTypes;->a()[Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 207
    new-instance v5, Lorg/codehaus/jackson/map/jsontype/NamedType;

    invoke-interface {v4}, Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;->value()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4}, Lorg/codehaus/jackson/annotate/JsonSubTypes$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/codehaus/jackson/map/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 209
    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 1

    .prologue
    .line 144
    const-class v0, Lorg/codehaus/jackson/annotate/JsonManagedReference;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonManagedReference;

    .line 145
    if-eqz p0, :cond_0

    .line 146
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonManagedReference;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->a(Ljava/lang/String;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const-class v0, Lorg/codehaus/jackson/annotate/JsonBackReference;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonBackReference;

    .line 149
    if-eqz p0, :cond_1

    .line 150
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonBackReference;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->b(Ljava/lang/String;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
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
    .line 130
    const-class v0, Lorg/codehaus/jackson/annotate/JsonAutoDetect;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonAutoDetect;

    .line 131
    if-nez p0, :cond_0

    move-object v0, p2

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2, p0}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->a(Lorg/codehaus/jackson/annotate/JsonAutoDetect;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 716
    const-class v0, Lorg/codehaus/jackson/annotate/JsonTypeInfo;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/annotate/JsonTypeInfo;

    .line 717
    const-class v1, Lorg/codehaus/jackson/map/annotate/JsonTypeResolver;

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/annotate/JsonTypeResolver;

    .line 718
    if-eqz v1, :cond_2

    .line 722
    if-nez v0, :cond_0

    move-object v0, v3

    .line 746
    :goto_0
    return-object v0

    .line 729
    :cond_0
    invoke-interface {v1}, Lorg/codehaus/jackson/map/annotate/JsonTypeResolver;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lorg/codehaus/jackson/map/MapperConfig;->c(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 737
    :goto_1
    const-class v2, Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;

    .line 738
    if-nez p0, :cond_5

    move-object v2, v3

    .line 740
    :goto_2
    if-eqz v2, :cond_1

    .line 741
    invoke-interface {v2, p3}, Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;->a(Lorg/codehaus/jackson/type/JavaType;)V

    .line 743
    :cond_1
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonTypeInfo;->use()Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->a(Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 744
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonTypeInfo;->include()Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->a(Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 745
    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonTypeInfo;->property()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;->a(Ljava/lang/String;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    goto :goto_0

    .line 731
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/codehaus/jackson/annotate/JsonTypeInfo;->use()Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-ne v1, v2, :cond_4

    :cond_3
    move-object v0, v3

    .line 732
    goto :goto_0

    .line 734
    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->a()Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v1

    goto :goto_1

    .line 738
    :cond_5
    invoke-interface {p0}, Lorg/codehaus/jackson/map/annotate/JsonTypeIdResolver;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/codehaus/jackson/map/MapperConfig;->d(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    move-result-object v2

    goto :goto_2
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
    .line 165
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

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
    .line 178
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method protected a()Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    .prologue
    .line 757
    new-instance v0, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    return-object v0
.end method

.method public a(Ljava/lang/annotation/Annotation;)Z
    .locals 2

    .prologue
    .line 40
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 50
    const-class v1, Lorg/codehaus/jackson/annotate/JacksonAnnotation;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->f(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->f(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->f(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    return v0
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 470
    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 471
    if-eqz p0, :cond_0

    .line 472
    invoke-interface {p0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->using()Ljava/lang/Class;

    move-result-object v0

    .line 473
    const-class v1, Lorg/codehaus/jackson/map/JsonDeserializer$None;

    if-eq v0, v1, :cond_0

    .line 478
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
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
    .line 540
    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 541
    if-eqz p0, :cond_1

    .line 542
    invoke-interface {p0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->keyAs()Ljava/lang/Class;

    move-result-object v0

    .line 543
    const-class v1, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v0, v1, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-object v0

    .line 552
    :cond_1
    const-class v0, Lorg/codehaus/jackson/annotate/JsonKeyClass;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonKeyClass;

    .line 553
    if-eqz p0, :cond_2

    .line 555
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonKeyClass;->value()Ljava/lang/Class;

    move-result-object v0

    .line 556
    const-class v1, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-ne v0, v1, :cond_0

    .line 560
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    const-class v0, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 447
    if-eqz p0, :cond_0

    .line 448
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_0
    return-object v0

    .line 452
    :cond_0
    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 455
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    const-class v0, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 409
    if-eqz p0, :cond_0

    .line 410
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v0

    .line 426
    :goto_0
    return-object v0

    .line 415
    :cond_0
    const-class v0, Lorg/codehaus/jackson/annotate/JsonGetter;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonGetter;

    .line 416
    if-eqz p0, :cond_1

    .line 417
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonGetter;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 423
    :cond_1
    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 426
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 3
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
    .line 193
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must call method with a container type (got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-class v0, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;

    .line 91
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;->a()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 96
    const-class v0, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;

    .line 97
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
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
    .line 484
    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 485
    if-eqz p0, :cond_0

    .line 486
    invoke-interface {p0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->keyUsing()Ljava/lang/Class;

    move-result-object v0

    .line 487
    const-class v1, Lorg/codehaus/jackson/map/KeyDeserializer$None;

    if-eq v0, v1, :cond_0

    .line 491
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
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
    .line 569
    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 570
    if-eqz p0, :cond_1

    .line 571
    invoke-interface {p0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->contentAs()Ljava/lang/Class;

    move-result-object v0

    .line 572
    const-class v1, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-eq v0, v1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-object v0

    .line 580
    :cond_1
    const-class v0, Lorg/codehaus/jackson/annotate/JsonContentClass;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonContentClass;

    .line 581
    if-eqz p0, :cond_2

    .line 582
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonContentClass;->value()Ljava/lang/Class;

    move-result-object v0

    .line 583
    const-class v1, Lorg/codehaus/jackson/map/annotate/NoClass;

    if-ne v0, v1, :cond_0

    .line 587
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    const-class v0, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 662
    if-eqz p0, :cond_0

    .line 663
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v0

    .line 670
    :goto_0
    return-object v0

    .line 667
    :cond_0
    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 670
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    const-class v0, Lorg/codehaus/jackson/annotate/JsonProperty;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonProperty;

    .line 606
    if-eqz p0, :cond_0

    .line 607
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonProperty;->value()Ljava/lang/String;

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    .line 609
    :cond_0
    const-class v0, Lorg/codehaus/jackson/annotate/JsonSetter;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonSetter;

    .line 610
    if-eqz p0, :cond_1

    .line 611
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonSetter;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 617
    :cond_1
    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonView;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 618
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 620
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lorg/codehaus/jackson/annotate/JsonIgnoreType;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonIgnoreType;

    .line 103
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonIgnoreType;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
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
    .line 497
    const-class v0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;

    .line 498
    if-eqz p0, :cond_0

    .line 499
    invoke-interface {p0}, Lorg/codehaus/jackson/map/annotate/JsonDeserialize;->contentUsing()Ljava/lang/Class;

    move-result-object v0

    .line 500
    const-class v1, Lorg/codehaus/jackson/map/JsonDeserializer$None;

    if-eq v0, v1, :cond_0

    .line 504
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 630
    const-class v0, Lorg/codehaus/jackson/annotate/JsonAnySetter;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->b(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public e(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-class v0, Lorg/codehaus/jackson/annotate/JsonTypeName;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonTypeName;

    .line 216
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonTypeName;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Lorg/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1

    .prologue
    .line 649
    const-class v0, Lorg/codehaus/jackson/annotate/JsonCreator;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->b(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public e(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 639
    const-class v0, Lorg/codehaus/jackson/annotate/JsonAnyGetter;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->b(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected f(Lorg/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1

    .prologue
    .line 703
    const-class v0, Lorg/codehaus/jackson/annotate/JsonIgnore;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/introspect/Annotated;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/annotate/JsonIgnore;

    .line 704
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/codehaus/jackson/annotate/JsonIgnore;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
