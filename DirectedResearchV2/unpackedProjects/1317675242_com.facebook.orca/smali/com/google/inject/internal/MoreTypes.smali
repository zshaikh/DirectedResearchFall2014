.class public Lcom/google/inject/internal/MoreTypes;
.super Ljava/lang/Object;
.source "MoreTypes.java"


# static fields
.field public static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

.field private static final PRIMITIVE_TO_WRAPPER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    sput-object v0, Lcom/google/inject/internal/MoreTypes;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    .line 52
    new-instance v0, Lcom/google/inject/internal/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/inject/internal/ImmutableMap$Builder;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Byte;

    invoke-static {v2}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Short;

    invoke-static {v2}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-static {v2}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    invoke-static {v2}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Float;

    invoke-static {v2}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Double;

    invoke-static {v2}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Character;

    invoke-static {v2}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    invoke-static {v2}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/inject/internal/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableMap$Builder;->build()Lcom/google/inject/internal/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/MoreTypes;->PRIMITIVE_TO_WRAPPER:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/inject/internal/MoreTypes;->checkNotPrimitive(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/reflect/Type;)Z
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes;->isFullySpecified(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public static canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 5

    .prologue
    .line 108
    instance-of v1, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/google/inject/internal/MoreTypes$GenericArrayTypeImpl;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, p0

    .line 132
    :goto_0
    return-object v1

    .line 113
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 114
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 115
    new-instance v1, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 118
    :cond_2
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_3

    .line 119
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 120
    new-instance v1, Lcom/google/inject/internal/MoreTypes$GenericArrayTypeImpl;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/inject/internal/MoreTypes$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 122
    :cond_3
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    check-cast p0, Ljava/lang/Class;

    .line 124
    new-instance v1, Lcom/google/inject/internal/MoreTypes$GenericArrayTypeImpl;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/inject/internal/MoreTypes$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 126
    :cond_4
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_5

    .line 127
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 128
    new-instance v1, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_5
    move-object v1, p0

    .line 132
    goto :goto_0
.end method

.method private static checkNotPrimitive(Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 628
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v5

    :goto_0
    const-string v2, "Primitive types are not allowed in %s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 630
    return-void

    :cond_1
    move v1, v4

    .line 628
    goto :goto_0
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 460
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object p0

    .line 461
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 232
    :goto_0
    return v0

    .line 186
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 190
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4

    .line 191
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_2

    move v0, v2

    .line 192
    goto :goto_0

    .line 196
    :cond_2
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 197
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 198
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/inject/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 202
    :cond_4
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_6

    .line 203
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_5

    move v0, v2

    .line 204
    goto :goto_0

    .line 207
    :cond_5
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 208
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 209
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/inject/internal/MoreTypes;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 211
    :cond_6
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_9

    .line 212
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_7

    move v0, v2

    .line 213
    goto :goto_0

    .line 216
    :cond_7
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 217
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 218
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_0

    .line 221
    :cond_9
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_c

    .line 222
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_a

    move v0, v2

    .line 223
    goto/16 :goto_0

    .line 225
    :cond_a
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 226
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .line 227
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    if-ne v0, v1, :cond_b

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 232
    goto/16 :goto_0
.end method

.method public static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 396
    if-ne p2, p1, :cond_0

    move-object v0, p0

    .line 426
    :goto_0
    return-object v0

    .line 401
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 403
    const/4 v1, 0x0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 404
    aget-object v3, v0, v1

    if-ne v3, p2, :cond_1

    .line 405
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_0

    .line 406
    :cond_1
    aget-object v3, v0, v1

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v1

    aget-object v0, v0, v1

    invoke-static {v2, v0, p2}, Lcom/google/inject/internal/MoreTypes;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 413
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, p1

    .line 414
    :goto_2
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_6

    .line 415
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 416
    if-ne v1, p2, :cond_4

    .line 417
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 418
    :cond_4
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 419
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, v1, p2}, Lcom/google/inject/internal/MoreTypes;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 422
    goto :goto_2

    :cond_6
    move-object v0, p2

    .line 426
    goto :goto_0
.end method

.method public static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 148
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 150
    check-cast p0, Ljava/lang/Class;

    move-object v1, p0

    .line 170
    :goto_0
    return-object v1

    .line 152
    :cond_0
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 153
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v1, v0

    .line 158
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 159
    instance-of v2, v1, Ljava/lang/Class;

    const-string v3, "Expected a Class, but <%s> is of type %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 161
    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 163
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_2

    .line 165
    const-class v1, [Ljava/lang/Object;

    goto :goto_0

    .line 167
    :cond_2
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_3

    .line 170
    const-class v1, Ljava/lang/Object;

    goto :goto_0

    .line 173
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hashCode(Ljava/lang/reflect/Type;)I
    .locals 2

    .prologue
    .line 240
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 259
    :goto_0
    return v0

    .line 244
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 245
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 246
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/inject/internal/MoreTypes;->hashCodeOrZero(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0

    .line 250
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 251
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->hashCode(Ljava/lang/reflect/Type;)I

    move-result v0

    goto :goto_0

    .line 253
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 254
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 255
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0

    .line 259
    :cond_3
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes;->hashCodeOrZero(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private static hashCodeOrZero(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 264
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 447
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 448
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    return v0

    .line 447
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method private static isFullySpecified(Ljava/lang/reflect/Type;)Z
    .locals 1

    .prologue
    .line 88
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    .line 91
    :cond_0
    instance-of v0, p0, Lcom/google/inject/internal/MoreTypes$CompositeType;

    if-eqz v0, :cond_1

    .line 92
    check-cast p0, Lcom/google/inject/internal/MoreTypes$CompositeType;

    invoke-interface {p0}, Lcom/google/inject/internal/MoreTypes$CompositeType;->isFullySpecified()Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    .line 95
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Lcom/google/inject/internal/MoreTypes$CompositeType;

    invoke-interface {p0}, Lcom/google/inject/internal/MoreTypes$CompositeType;->isFullySpecified()Z

    move-result v0

    goto :goto_0
.end method

.method public static makeKeySafe(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/TypeLiteral;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->isFullySpecified(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannot be used as a key; It is not fully specified."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/google/inject/ConfigurationException;

    new-instance v2, Lcom/google/inject/spi/Message;

    invoke-direct {v2, v0}, Lcom/google/inject/spi/Message;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/inject/internal/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v1

    .line 78
    :cond_0
    sget-object v0, Lcom/google/inject/internal/MoreTypes;->PRIMITIVE_TO_WRAPPER:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/TypeLiteral;

    .line 79
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static memberType(Ljava/lang/reflect/Member;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    const-string v0, "member"

    invoke-static {p0, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    instance-of v0, p0, Lcom/google/inject/internal/MoreTypes$MemberImpl;

    if-eqz v0, :cond_0

    .line 325
    check-cast p0, Lcom/google/inject/internal/MoreTypes$MemberImpl;

    # getter for: Lcom/google/inject/internal/MoreTypes$MemberImpl;->memberType:Ljava/lang/Class;
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes$MemberImpl;->access$100(Lcom/google/inject/internal/MoreTypes$MemberImpl;)Ljava/lang/Class;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    .line 327
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 328
    const-class v0, Ljava/lang/reflect/Field;

    goto :goto_0

    .line 330
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 331
    const-class v0, Ljava/lang/reflect/Method;

    goto :goto_0

    .line 333
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    .line 334
    const-class v0, Ljava/lang/reflect/Constructor;

    goto :goto_0

    .line 337
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported implementation class for Member, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 430
    invoke-static {p2}, Lcom/google/inject/internal/MoreTypes;->declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v0

    .line 433
    if-nez v0, :cond_0

    move-object v0, p2

    .line 443
    :goto_0
    return-object v0

    .line 437
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/inject/internal/MoreTypes;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 438
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 439
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/inject/internal/MoreTypes;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 440
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 443
    goto :goto_0
.end method

.method public static toString(Ljava/lang/reflect/Member;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes;->memberType(Ljava/lang/reflect/Member;)Ljava/lang/Class;

    move-result-object v0

    .line 349
    const-class v1, Ljava/lang/reflect/Method;

    if-ne v0, v1, :cond_0

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    .line 351
    :cond_0
    const-class v1, Ljava/lang/reflect/Field;

    if-ne v0, v1, :cond_1

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_1
    const-class v1, Ljava/lang/reflect/Constructor;

    if-ne v0, v1, :cond_2

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".<init>()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 356
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static toString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 268
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 269
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 314
    :goto_0
    return-object v1

    .line 271
    :cond_0
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_3

    .line 272
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 273
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 274
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    if-eqz v2, :cond_1

    .line 277
    invoke-static {v2}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    array-length v2, v1

    if-lez v2, :cond_2

    .line 281
    const-string v2, "<"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v1, v5

    invoke-static {v4}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v6

    .line 284
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 285
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-static {v5}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 288
    :cond_2
    const-string v1, ">"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 290
    :cond_3
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_4

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 293
    :cond_4
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_a

    .line 294
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    move-object v1, v0

    .line 295
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 296
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 298
    array-length v3, v1

    if-ne v3, v6, :cond_5

    array-length v3, v2

    if-le v3, v6, :cond_6

    .line 299
    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported wildcard type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_6
    array-length v3, v2

    if-ne v3, v6, :cond_8

    .line 303
    aget-object v1, v1, v5

    const-class v3, Ljava/lang/Object;

    if-eq v1, v3, :cond_7

    .line 304
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported wildcard type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "? super "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v2, v5

    invoke-static {v2}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 307
    :cond_8
    aget-object v2, v1, v5

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_9

    .line 308
    const-string v1, "?"

    goto/16 :goto_0

    .line 310
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "? extends "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 314
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method
