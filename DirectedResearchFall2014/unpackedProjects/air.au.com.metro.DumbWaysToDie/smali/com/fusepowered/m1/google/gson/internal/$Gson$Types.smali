.class public final Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;
.super Ljava/lang/Object;
.source "$Gson$Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$WildcardTypeImpl;,
        Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;,
        Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;
    }
.end annotation


# static fields
.field static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    sput-object v0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->hashCodeOrZero(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .locals 1
    .parameter "componentType"

    .prologue
    .line 65
    new-instance v0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 9
    .parameter "type"

    .prologue
    .line 93
    instance-of v5, p0, Ljava/lang/Class;

    if-eqz v5, :cond_1

    .line 94
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 95
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    move-object p0, v5

    .end local p0
    :goto_0
    check-cast p0, Ljava/lang/reflect/Type;

    move-object v5, p0

    .line 112
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    return-object v5

    .restart local v1       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0
    :cond_0
    move-object p0, v1

    .line 95
    goto :goto_0

    .line 97
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    instance-of v5, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_2

    .line 98
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v3, v0

    .line 99
    .local v3, p:Ljava/lang/reflect/ParameterizedType;
    new-instance v5, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 102
    .end local v3           #p:Ljava/lang/reflect/ParameterizedType;
    :cond_2
    instance-of v5, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_3

    .line 103
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    move-object v2, v0

    .line 104
    .local v2, g:Ljava/lang/reflect/GenericArrayType;
    new-instance v5, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 106
    .end local v2           #g:Ljava/lang/reflect/GenericArrayType;
    :cond_3
    instance-of v5, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_4

    .line 107
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    move-object v4, v0

    .line 108
    .local v4, w:Ljava/lang/reflect/WildcardType;
    new-instance v5, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto :goto_1

    .end local v4           #w:Ljava/lang/reflect/WildcardType;
    :cond_4
    move-object v5, p0

    .line 112
    goto :goto_1
.end method

.method private static checkNotPrimitive(Ljava/lang/reflect/Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 429
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 430
    return-void

    .line 429
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, typeVariable:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 423
    .local v0, genericDeclaration:Ljava/lang/reflect/GenericDeclaration;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    .end local v0           #genericDeclaration:Ljava/lang/reflect/GenericDeclaration;
    move-object v1, v0

    :goto_0
    return-object v1

    .restart local v0       #genericDeclaration:Ljava/lang/reflect/GenericDeclaration;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 151
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 13
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 158
    if-ne p0, p1, :cond_0

    move v9, v12

    .line 207
    :goto_0
    return v9

    .line 162
    :cond_0
    instance-of v9, p0, Ljava/lang/Class;

    if-eqz v9, :cond_1

    .line 164
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0

    .line 166
    :cond_1
    instance-of v9, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_4

    .line 167
    instance-of v9, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v9, :cond_2

    move v9, v11

    .line 168
    goto :goto_0

    .line 171
    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v3, v0

    .line 172
    .local v3, pa:Ljava/lang/reflect/ParameterizedType;
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v4, v0

    .line 173
    .local v4, pb:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v12

    goto :goto_0

    :cond_3
    move v9, v11

    goto :goto_0

    .line 177
    .end local v3           #pa:Ljava/lang/reflect/ParameterizedType;
    .end local v4           #pb:Ljava/lang/reflect/ParameterizedType;
    :cond_4
    instance-of v9, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v9, :cond_6

    .line 178
    instance-of v9, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v9, :cond_5

    move v9, v11

    .line 179
    goto :goto_0

    .line 182
    :cond_5
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    move-object v1, v0

    .line 183
    .local v1, ga:Ljava/lang/reflect/GenericArrayType;
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    move-object v2, v0

    .line 184
    .local v2, gb:Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v9

    goto :goto_0

    .line 186
    .end local v1           #ga:Ljava/lang/reflect/GenericArrayType;
    .end local v2           #gb:Ljava/lang/reflect/GenericArrayType;
    :cond_6
    instance-of v9, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v9, :cond_9

    .line 187
    instance-of v9, p1, Ljava/lang/reflect/WildcardType;

    if-nez v9, :cond_7

    move v9, v11

    .line 188
    goto :goto_0

    .line 191
    :cond_7
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    move-object v7, v0

    .line 192
    .local v7, wa:Ljava/lang/reflect/WildcardType;
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    move-object v8, v0

    .line 193
    .local v8, wb:Ljava/lang/reflect/WildcardType;
    invoke-interface {v7}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v9, v12

    goto/16 :goto_0

    :cond_8
    move v9, v11

    goto/16 :goto_0

    .line 196
    .end local v7           #wa:Ljava/lang/reflect/WildcardType;
    .end local v8           #wb:Ljava/lang/reflect/WildcardType;
    :cond_9
    instance-of v9, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v9, :cond_c

    .line 197
    instance-of v9, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v9, :cond_a

    move v9, v11

    .line 198
    goto/16 :goto_0

    .line 200
    :cond_a
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    move-object v5, v0

    .line 201
    .local v5, va:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    move-object v6, v0

    .line 202
    .local v6, vb:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v9

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v10

    if-ne v9, v10, :cond_b

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    move v9, v12

    goto/16 :goto_0

    :cond_b
    move v9, v11

    goto/16 :goto_0

    .end local v5           #va:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    .end local v6           #vb:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    :cond_c
    move v9, v11

    .line 207
    goto/16 :goto_0
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .parameter "array"

    .prologue
    .line 276
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .local p1, contextRawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 286
    const-class v1, Ljava/util/Collection;

    invoke-static {p0, p1, v1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 288
    .local v0, collectionType:Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    .line 289
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .end local v0           #collectionType:Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v2

    .line 291
    .restart local v0       #collectionType:Ljava/lang/reflect/Type;
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 292
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0           #collectionType:Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 294
    :goto_0
    return-object v1

    .restart local v0       #collectionType:Ljava/lang/reflect/Type;
    :cond_1
    const-class v1, Ljava/lang/Object;

    goto :goto_0
.end method

.method static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 6
    .parameter "context"
    .parameter
    .parameter
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
    .line 225
    .local p1, rawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, toResolve:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-ne p2, p1, :cond_0

    move-object v4, p0

    .line 255
    :goto_0
    return-object v4

    .line 230
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 231
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 232
    .local v1, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, i:I
    array-length v2, v1

    .local v2, length:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 233
    aget-object v4, v1, v0

    if-ne v4, p2, :cond_1

    .line 234
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v0

    goto :goto_0

    .line 235
    :cond_1
    aget-object v4, v1, v0

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v0

    aget-object v5, v1, v0

    invoke-static {v4, v5, p2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    goto :goto_0

    .line 232
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v0           #i:I
    .end local v1           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v2           #length:I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_6

    .line 243
    :goto_2
    const-class v4, Ljava/lang/Object;

    if-eq p1, v4, :cond_6

    .line 244
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 245
    .local v3, rawSupertype:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-ne v3, p2, :cond_4

    .line 246
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    goto :goto_0

    .line 247
    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 248
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v3, p2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    goto :goto_0

    .line 250
    :cond_5
    move-object p1, v3

    .line 251
    goto :goto_2

    .end local v3           #rawSupertype:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_6
    move-object v4, p2

    .line 255
    goto :goto_0
.end method

.method public static getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .local p1, contextRawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-class v8, Ljava/lang/String;

    const-class v7, Ljava/lang/Object;

    .line 307
    const-class v3, Ljava/util/Properties;

    if-ne p0, v3, :cond_0

    .line 308
    new-array v3, v4, [Ljava/lang/reflect/Type;

    const-class v4, Ljava/lang/String;

    aput-object v8, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v8, v3, v6

    .line 316
    :goto_0
    return-object v3

    .line 311
    :cond_0
    const-class v3, Ljava/util/Map;

    invoke-static {p0, p1, v3}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 312
    .local v2, mapType:Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 313
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v1, v0

    .line 314
    .local v1, mapParameterizedType:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_0

    .line 316
    .end local v1           #mapParameterizedType:Ljava/lang/reflect/ParameterizedType;
    :cond_1
    new-array v3, v4, [Ljava/lang/reflect/Type;

    const-class v4, Ljava/lang/Object;

    aput-object v7, v3, v5

    const-class v4, Ljava/lang/Object;

    aput-object v7, v3, v6

    goto :goto_0
.end method

.method public static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 8
    .parameter "type"
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
    const/4 v6, 0x0

    .line 117
    instance-of v5, p0, Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 119
    check-cast p0, Ljava/lang/Class;

    .end local p0
    move-object v5, p0

    .line 141
    :goto_0
    return-object v5

    .line 121
    .restart local p0
    :cond_0
    instance-of v5, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_1

    .line 122
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v3, v0

    .line 127
    .local v3, parameterizedType:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 128
    .local v4, rawType:Ljava/lang/reflect/Type;
    instance-of v5, v4, Ljava/lang/Class;

    invoke-static {v5}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 129
    check-cast v4, Ljava/lang/Class;

    .end local v4           #rawType:Ljava/lang/reflect/Type;
    move-object v5, v4

    goto :goto_0

    .line 131
    .end local v3           #parameterizedType:Ljava/lang/reflect/ParameterizedType;
    :cond_1
    instance-of v5, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_2

    .line 132
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 133
    .local v2, componentType:Ljava/lang/reflect/Type;
    invoke-static {v2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_0

    .line 135
    .end local v2           #componentType:Ljava/lang/reflect/Type;
    .restart local p0
    :cond_2
    instance-of v5, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_3

    .line 138
    const-class v5, Ljava/lang/Object;

    goto :goto_0

    .line 140
    :cond_3
    instance-of v5, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_4

    .line 141
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    goto :goto_0

    .line 144
    .restart local p0
    :cond_4
    if-nez p0, :cond_5

    const-string v5, "null"

    move-object v1, v5

    .line 145
    .local v1, className:Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> is of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 144
    .end local v1           #className:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_1
.end method

.method static getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .parameter "context"
    .parameter
    .parameter
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
    .line 266
    .local p1, contextRawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, supertype:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 267
    invoke-static {p0, p1, p2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private static hashCodeOrZero(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 212
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
    .parameter "array"
    .parameter "toFind"

    .prologue
    .line 409
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 410
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    return v0

    .line 409
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1
    .parameter "ownerType"
    .parameter "rawType"
    .parameter "typeArguments"

    .prologue
    .line 55
    new-instance v0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 9
    .parameter "context"
    .parameter
    .parameter "toResolve"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, contextRawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    instance-of v1, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_1

    .line 323
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    move-object v1, v0

    .line 324
    .local v1, typeVariable:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {p0, p1, v1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 325
    if-ne p2, v1, :cond_0

    move-object p0, p2

    .line 386
    .end local v1           #typeVariable:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    .end local p0
    .end local p1           #contextRawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object p0

    .line 329
    .restart local p0
    .restart local p1       #contextRawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 330
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    .line 331
    .local v2, original:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 332
    .local v1, componentType:Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 333
    .local p0, newComponentType:Ljava/lang/reflect/Type;
    if-ne v1, p0, :cond_2

    move-object p0, v2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p0

    goto :goto_0

    .line 337
    .end local v1           #componentType:Ljava/lang/reflect/Type;
    .end local v2           #original:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p0, context:Ljava/lang/reflect/Type;
    :cond_3
    instance-of v1, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_5

    .line 338
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    move-object v2, v0

    .line 339
    .local v2, original:Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 340
    .restart local v1       #componentType:Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 341
    .local p0, newComponentType:Ljava/lang/reflect/Type;
    if-ne v1, p0, :cond_4

    move-object p0, v2

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p0

    goto :goto_0

    .line 345
    .end local v1           #componentType:Ljava/lang/reflect/Type;
    .end local v2           #original:Ljava/lang/reflect/GenericArrayType;
    .local p0, context:Ljava/lang/reflect/Type;
    :cond_5
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_b

    .line 346
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v5, v0

    .line 347
    .local v5, original:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 348
    .local v1, ownerType:Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 349
    .local v4, newOwnerType:Ljava/lang/reflect/Type;
    if-eq v4, v1, :cond_8

    const/4 v1, 0x1

    move v2, v1

    .line 351
    .end local v1           #ownerType:Ljava/lang/reflect/Type;
    .local v2, changed:Z
    :goto_1
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 352
    .local v1, args:[Ljava/lang/reflect/Type;
    const/4 v6, 0x0

    .local v6, t:I
    array-length v3, v1

    .local v3, length:I
    move v7, v6

    .end local v6           #t:I
    .local v7, t:I
    :goto_2
    if-ge v7, v3, :cond_9

    .line 353
    aget-object v6, v1, v7

    invoke-static {p0, p1, v6}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 354
    .local v6, resolvedTypeArgument:Ljava/lang/reflect/Type;
    aget-object v8, v1, v7

    if-eq v6, v8, :cond_7

    .line 355
    if-nez v2, :cond_6

    .line 356
    invoke-virtual {v1}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #args:[Ljava/lang/reflect/Type;
    check-cast v1, [Ljava/lang/reflect/Type;

    .line 357
    .restart local v1       #args:[Ljava/lang/reflect/Type;
    const/4 v2, 0x1

    .line 359
    :cond_6
    aput-object v6, v1, v7

    .line 352
    :cond_7
    add-int/lit8 v6, v7, 0x1

    .end local v7           #t:I
    .local v6, t:I
    move v7, v6

    .end local v6           #t:I
    .restart local v7       #t:I
    goto :goto_2

    .line 349
    .end local v2           #changed:Z
    .end local v3           #length:I
    .end local v7           #t:I
    .local v1, ownerType:Ljava/lang/reflect/Type;
    :cond_8
    const/4 v1, 0x0

    move v2, v1

    goto :goto_1

    .line 363
    .local v1, args:[Ljava/lang/reflect/Type;
    .restart local v2       #changed:Z
    .restart local v3       #length:I
    .restart local v7       #t:I
    :cond_9
    if-eqz v2, :cond_a

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    .end local p0           #context:Ljava/lang/reflect/Type;
    invoke-static {v4, p0, v1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    goto :goto_0

    .restart local p0       #context:Ljava/lang/reflect/Type;
    :cond_a
    move-object p0, v5

    goto/16 :goto_0

    .line 367
    .end local v1           #args:[Ljava/lang/reflect/Type;
    .end local v2           #changed:Z
    .end local v3           #length:I
    .end local v4           #newOwnerType:Ljava/lang/reflect/Type;
    .end local v5           #original:Ljava/lang/reflect/ParameterizedType;
    .end local v7           #t:I
    :cond_b
    instance-of v1, p2, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_e

    .line 368
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/WildcardType;

    move-object v1, v0

    .line 369
    .local v1, original:Ljava/lang/reflect/WildcardType;
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 370
    .local v2, originalLowerBound:[Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 372
    .local v3, originalUpperBound:[Ljava/lang/reflect/Type;
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 373
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .end local v3           #originalUpperBound:[Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v3}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 374
    .local p0, lowerBound:Ljava/lang/reflect/Type;
    const/4 p1, 0x0

    aget-object p1, v2, p1

    .end local p1           #contextRawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eq p0, p1, :cond_d

    .line 375
    invoke-static {p0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p0

    goto/16 :goto_0

    .line 377
    .restart local v3       #originalUpperBound:[Ljava/lang/reflect/Type;
    .local p0, context:Ljava/lang/reflect/Type;
    .restart local p1       #contextRawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_c
    array-length v2, v3

    .end local v2           #originalLowerBound:[Ljava/lang/reflect/Type;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    .line 378
    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-static {p0, p1, v2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 379
    .local p0, upperBound:Ljava/lang/reflect/Type;
    const/4 p1, 0x0

    aget-object p1, v3, p1

    .end local p1           #contextRawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eq p0, p1, :cond_d

    .line 380
    invoke-static {p0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p0

    goto/16 :goto_0

    .end local v3           #originalUpperBound:[Ljava/lang/reflect/Type;
    .end local p0           #upperBound:Ljava/lang/reflect/Type;
    :cond_d
    move-object p0, v1

    .line 383
    goto/16 :goto_0

    .end local v1           #original:Ljava/lang/reflect/WildcardType;
    .local p0, context:Ljava/lang/reflect/Type;
    .restart local p1       #contextRawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_e
    move-object p0, p2

    .line 386
    goto/16 :goto_0
.end method

.method static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 4
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, contextRawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, unknown:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {p2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v1

    .line 395
    .local v1, declaredByRaw:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    move-object v3, p2

    .line 405
    :goto_0
    return-object v3

    .line 399
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 400
    .local v0, declaredBy:Ljava/lang/reflect/Type;
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 401
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 402
    .local v2, index:I
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0           #declaredBy:Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v2

    goto :goto_0

    .end local v2           #index:I
    .restart local v0       #declaredBy:Ljava/lang/reflect/Type;
    :cond_1
    move-object v3, p2

    .line 405
    goto :goto_0
.end method

.method public static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 3
    .parameter "bound"

    .prologue
    .line 75
    new-instance v0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 5
    .parameter "bound"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    new-instance v0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/reflect/Type;

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 216
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
