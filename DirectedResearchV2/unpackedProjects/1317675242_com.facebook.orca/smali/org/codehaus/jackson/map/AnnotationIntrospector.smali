.class public abstract Lorg/codehaus/jackson/map/AnnotationIntrospector;
.super Ljava/lang/Object;
.source "AnnotationIntrospector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    return-void
.end method

.method public static b()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;->a:Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
.end method

.method public abstract a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
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
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 649
    if-eqz p2, :cond_0

    .line 650
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 652
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a(Ljava/lang/Enum;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 1
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
    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 0
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
    .line 245
    return-object p2
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
    .line 272
    const/4 v0, 0x0

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
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Ljava/lang/annotation/Annotation;)Z
.end method

.method public abstract a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
.end method

.method public abstract a(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
.end method

.method public abstract a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method

.method public abstract b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
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
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
.end method

.method public abstract b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
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
    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
.end method

.method public abstract c(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
.end method

.method public abstract c(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
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
.end method

.method public abstract c(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
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
.end method

.method public abstract c(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
.end method

.method public abstract c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
.end method

.method public d(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract d(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
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
.end method

.method public d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method public e(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Lorg/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1

    .prologue
    .line 791
    const/4 v0, 0x0

    return v0
.end method

.method public e(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

    return v0
.end method
