.class abstract Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;
.super Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
.source "MapperConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/MapperConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CFG::",
        "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;",
        "T:",
        "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl",
        "<TCFG;TT;>;>",
        "Lcom/flurry/org/codehaus/jackson/map/MapperConfig",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected _featureFlags:I


# direct methods
.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;I)V
    .locals 0
    .parameter
    .parameter "ai"
    .parameter
    .parameter "str"
    .parameter "pns"
    .parameter "tf"
    .parameter "hi"
    .parameter "defaultFeatures"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lcom/flurry/org/codehaus/jackson/map/BeanDescription;",
            ">;",
            "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            "Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;",
            "Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;",
            "Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1025
    .local p0, this:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;,"Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, ci:Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;,"Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector<+Lcom/flurry/org/codehaus/jackson/map/BeanDescription;>;"
    .local p3, vc:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;,"Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker<*>;"
    invoke-direct/range {p0 .. p7}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/ClassIntrospector;Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;Lcom/flurry/org/codehaus/jackson/map/PropertyNamingStrategy;Lcom/flurry/org/codehaus/jackson/map/type/TypeFactory;Lcom/flurry/org/codehaus/jackson/map/HandlerInstantiator;)V

    .line 1026
    iput p8, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1027
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl",
            "<TCFG;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p0, this:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;,"Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, src:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;,"Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;)V

    .line 1031
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1032
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;I)V
    .locals 0
    .parameter
    .parameter "features"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl",
            "<TCFG;TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 1035
    .local p0, this:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;,"Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, src:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;,"Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;)V

    .line 1036
    iput p2, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1037
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V
    .locals 1
    .parameter
    .parameter "base"
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl",
            "<TCFG;TT;>;",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;",
            "Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1044
    .local p0, this:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;,"Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, src:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;,"Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig;-><init>(Lcom/flurry/org/codehaus/jackson/map/MapperConfig;Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Base;Lcom/flurry/org/codehaus/jackson/map/jsontype/SubtypeResolver;)V

    .line 1045
    iget v0, p1, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1046
    return-void
.end method

.method static collectFeatureDefaults(Ljava/lang/Class;)I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Enum",
            "<TF;>;:",
            "Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;",
            ">(",
            "Ljava/lang/Class",
            "<TF;>;)I"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, enumClass:Ljava/lang/Class;,"Ljava/lang/Class<TF;>;"
    const/4 v2, 0x0

    .line 1055
    .local v2, flags:I
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    .local v1, arr$:[Ljava/lang/Enum;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 1056
    .local v5, value:Ljava/lang/Enum;,"TF;"
    move-object v0, v5

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;

    move-object v6, v0

    invoke-interface {v6}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->enabledByDefault()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1057
    check-cast v5, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;

    .end local v5           #value:Ljava/lang/Enum;,"TF;"
    invoke-interface {v5}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

    move-result v6

    or-int/2addr v2, v6

    .line 1055
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    return v2
.end method


# virtual methods
.method public disable(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1132
    .local p0, this:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;,"Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, f:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;,"TCFG;"
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1133
    return-void
.end method

.method public enable(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1120
    .local p0, this:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;,"Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, f:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;,"TCFG;"
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    .line 1121
    return-void
.end method

.method public isEnabled(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 1102
    .local p0, this:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;,"Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;->getMask()I

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

.method public set(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;Z)V
    .locals 0
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1147
    .local p0, this:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;,"Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl<TCFG;TT;>;"
    .local p1, f:Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;,"TCFG;"
    if-eqz p2, :cond_0

    .line 1148
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->enable(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    .line 1152
    :goto_0
    return-void

    .line 1150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;->disable(Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)V

    goto :goto_0
.end method

.method public varargs abstract with([Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TCFG;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract without([Lcom/flurry/org/codehaus/jackson/map/MapperConfig$ConfigFeature;)Lcom/flurry/org/codehaus/jackson/map/MapperConfig$Impl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TCFG;)TT;"
        }
    .end annotation
.end method
