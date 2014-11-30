.class public final Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;
.super Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;
.source "BasicClassIntrospector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Method;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 95
    :goto_0
    return v0

    .line 86
    :cond_0
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 87
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 91
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v3

    .line 93
    goto :goto_0

    :cond_3
    move v0, v2

    .line 95
    goto :goto_0
.end method
