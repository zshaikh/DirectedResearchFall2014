.class public final Lcom/google/inject/util/Types;
.super Ljava/lang/Object;
.source "Types.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/google/inject/internal/MoreTypes$GenericArrayTypeImpl;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/MoreTypes$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/google/inject/internal/MoreTypes;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-direct {v0, v1, v2}, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/reflect/Type;

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/inject/internal/MoreTypes$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method
