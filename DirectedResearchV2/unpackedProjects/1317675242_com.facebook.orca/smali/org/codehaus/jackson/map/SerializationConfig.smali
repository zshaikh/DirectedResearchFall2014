.class public Lorg/codehaus/jackson/map/SerializationConfig;
.super Lorg/codehaus/jackson/map/MapperConfig;
.source "SerializationConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/MapperConfig",
        "<",
        "Lorg/codehaus/jackson/map/SerializationConfig;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:I


# instance fields
.field protected b:I

.field protected c:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

.field protected d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected e:Lorg/codehaus/jackson/map/ser/FilterProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 388
    invoke-static {}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/map/SerializationConfig;->a:I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 441
    invoke-direct/range {p0 .. p7}, Lorg/codehaus/jackson/map/MapperConfig;-><init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/jsontype/SubtypeResolver;Lorg/codehaus/jackson/map/PropertyNamingStrategy;Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/map/HandlerInstantiator;)V

    .line 396
    sget v0, Lorg/codehaus/jackson/map/SerializationConfig;->a:I

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->b:I

    .line 410
    iput-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->c:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 442
    iput-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->e:Lorg/codehaus/jackson/map/ser/FilterProvider;

    .line 443
    return-void
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 646
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-super {p0}, Lorg/codehaus/jackson/map/MapperConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 649
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->b()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z
    .locals 2

    .prologue
    .line 725
    iget v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->b:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

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

.method public b()Z
    .locals 1

    .prologue
    .line 679
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 684
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SerializationConfig: flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
