.class public Lorg/codehaus/jackson/map/DeserializationConfig;
.super Lorg/codehaus/jackson/map/MapperConfig;
.source "DeserializationConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/MapperConfig",
        "<",
        "Lorg/codehaus/jackson/map/DeserializationConfig;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:I


# instance fields
.field protected b:I

.field protected c:Lorg/codehaus/jackson/map/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<",
            "Lorg/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lorg/codehaus/jackson/map/AbstractTypeResolver;

.field protected e:Lorg/codehaus/jackson/node/JsonNodeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 354
    invoke-static {}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/map/DeserializationConfig;->a:I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;",
            "Lorg/codehaus/jackson/map/PropertyNamingStrategy;",
            "Lorg/codehaus/jackson/map/type/TypeFactory;",
            "Lorg/codehaus/jackson/map/HandlerInstantiator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 407
    invoke-direct/range {p0 .. p7}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    .line 365
    sget v0, Lorg/codehaus/jackson/map/DeserializationConfig;->a:I

    iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->b:I

    .line 408
    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->e:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 409
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/util/HashMap;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->g:Lorg/codehaus/jackson/map/MapperConfig$Base;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V

    .line 428
    iput-object p2, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->h:Ljava/util/HashMap;

    .line 429
    iput-object p3, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->j:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    .line 430
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->j:Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/MapperConfig$Base;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    .line 365
    sget v0, Lorg/codehaus/jackson/map/DeserializationConfig;->a:I

    iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->b:I

    .line 438
    iget v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->b:I

    iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->b:I

    .line 439
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->d:Lorg/codehaus/jackson/map/AbstractTypeResolver;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->d:Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 440
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->c:Lorg/codehaus/jackson/map/util/LinkedNode;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->c:Lorg/codehaus/jackson/map/util/LinkedNode;

    .line 441
    iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->e:Lorg/codehaus/jackson/node/JsonNodeFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->e:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 442
    return-void
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 634
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-super {p0}, Lorg/codehaus/jackson/map/MapperConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 637
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;->a:Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 649
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->h()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->b(Lorg/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 752
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->h()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->d(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->h:Ljava/util/HashMap;

    .line 620
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->i:Z

    .line 621
    new-instance v1, Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-direct {v1, p0, v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/util/HashMap;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    return-object v1
.end method

.method public a(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 774
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->k()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    .line 775
    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {v0, p0, p1, p2}, Lorg/codehaus/jackson/map/HandlerInstantiator;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 777
    if-eqz v0, :cond_0

    .line 781
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/JsonDeserializer;

    move-object v0, p0

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 2

    .prologue
    .line 559
    iget v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->b:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 761
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->h()Lorg/codehaus/jackson/map/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lorg/codehaus/jackson/map/ClassIntrospector;->c(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;)",
            "Lorg/codehaus/jackson/map/KeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 787
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->k()Lorg/codehaus/jackson/map/HandlerInstantiator;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0, p0, p1, p2}, Lorg/codehaus/jackson/map/HandlerInstantiator;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v0

    .line 790
    if-eqz v0, :cond_0

    .line 794
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/KeyDeserializer;

    move-object v0, p0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 667
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 672
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public d()Lorg/codehaus/jackson/map/util/LinkedNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/util/LinkedNode",
            "<",
            "Lorg/codehaus/jackson/map/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->c:Lorg/codehaus/jackson/map/util/LinkedNode;

    return-object v0
.end method

.method public e()Lorg/codehaus/jackson/Base64Variant;
    .locals 1

    .prologue
    .line 728
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->a()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lorg/codehaus/jackson/node/JsonNodeFactory;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->e:Lorg/codehaus/jackson/node/JsonNodeFactory;

    return-object v0
.end method

.method public g()Lorg/codehaus/jackson/map/AbstractTypeResolver;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->d:Lorg/codehaus/jackson/map/AbstractTypeResolver;

    return-object v0
.end method
