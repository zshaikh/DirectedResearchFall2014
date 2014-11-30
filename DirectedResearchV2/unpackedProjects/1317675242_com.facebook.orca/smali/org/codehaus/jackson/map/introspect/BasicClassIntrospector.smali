.class public Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;
.super Lorg/codehaus/jackson/map/ClassIntrospector;
.source "BasicClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ClassIntrospector",
        "<",
        "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;

.field public static final b:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;

.field public static final c:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;

.field public static final d:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;-><init>(Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$1;)V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->a:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;

    .line 107
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->b:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;

    .line 112
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->c:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;

    .line 120
    new-instance v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->d:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ClassIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 155
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->b()Z

    move-result v0

    .line 156
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 157
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v2

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {v2, v0, p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 159
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->a(Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/introspect/MethodFilter;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Lorg/codehaus/jackson/map/introspect/MethodFilter;Z)V

    .line 161
    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Z)V

    .line 163
    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->b(Z)V

    .line 165
    new-instance v1, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-direct {v1, p1, p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)V

    return-object v1

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/MapperConfig",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;",
            ")",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->b()Z

    move-result v0

    .line 184
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/MapperConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 185
    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {p2, v0, p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 186
    new-instance v1, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/map/MapperConfig;->c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)V

    return-object v1

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/introspect/MethodFilter;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_GETTERS_AS_SETTERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->c:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;

    .line 227
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->b:Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;

    goto :goto_0
.end method

.method public bridge synthetic b(Lorg/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->b()Z

    move-result v0

    .line 173
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 174
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v2

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {v2, v0, p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 175
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->a(Z)V

    .line 176
    new-instance v1, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-direct {v1, p1, p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)V

    return-object v1

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic c(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/BeanDescription;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/ClassIntrospector$MixInResolver;)Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-result-object v0

    return-object v0
.end method
