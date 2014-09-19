.class public Lcom/fusepowered/m1/google/gson/reflect/TypeToken;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 64
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 65
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->hashCode:I

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 72
    .local p0, this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 74
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 75
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->hashCode:I

    .line 76
    return-void
.end method

.method private static varargs buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;
    .locals 7
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/AssertionError;"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, expected:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected type. Expected one of: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, exceptionMessage:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Class;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 261
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const-string v5, "but got: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", for type token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    new-instance v5, Ljava/lang/AssertionError;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    return-object v5
.end method

.method public static get(Ljava/lang/Class;)Lcom/fusepowered/m1/google/gson/reflect/TypeToken;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/fusepowered/m1/google/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/fusepowered/m1/google/gson/reflect/TypeToken;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/fusepowered/m1/google/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, subclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 84
    .local v2, superclass:Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 85
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Missing type parameter."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    :cond_0
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v1, v0

    .line 88
    .local v1, parameterized:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    return-object v3
.end method

.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z
    .locals 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 162
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 163
    .local v3, toGenericComponentType:Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_3

    .line 164
    move-object v2, p0

    .line 165
    .local v2, t:Ljava/lang/reflect/Type;
    instance-of v4, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_1

    .line 166
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 174
    :cond_0
    :goto_0
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .end local v3           #toGenericComponentType:Ljava/lang/reflect/Type;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v4

    .line 179
    .end local v2           #t:Ljava/lang/reflect/Type;
    :goto_1
    return v4

    .line 167
    .restart local v2       #t:Ljava/lang/reflect/Type;
    .restart local v3       #toGenericComponentType:Ljava/lang/reflect/Type;
    .restart local p0
    :cond_1
    instance-of v4, p0, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 168
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 169
    .local v1, classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 172
    :cond_2
    move-object v2, v1

    goto :goto_0

    .line 179
    .end local v1           #classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #t:Ljava/lang/reflect/Type;
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .locals 7
    .parameter "from"
    .parameter "to"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, typeVarMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;"
    if-nez p0, :cond_0

    .line 190
    const/4 p0, 0x0

    .line 232
    .end local p0
    :goto_0
    return p0

    .line 193
    .restart local p0
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    const/4 p0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {p0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 199
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 200
    .local v1, ptype:Ljava/lang/reflect/ParameterizedType;
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_7

    .line 201
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local v1           #ptype:Ljava/lang/reflect/ParameterizedType;
    .local p0, ptype:Ljava/lang/reflect/ParameterizedType;
    move-object v2, p0

    .line 205
    .end local p0           #ptype:Ljava/lang/reflect/ParameterizedType;
    .local v2, ptype:Ljava/lang/reflect/ParameterizedType;
    :goto_1
    if-eqz v2, :cond_4

    .line 206
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 207
    .local v3, tArgs:[Ljava/lang/reflect/Type;
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 208
    .local v4, tParams:[Ljava/lang/reflect/TypeVariable;,"[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 p0, 0x0

    .local p0, i:I
    move v1, p0

    .end local p0           #i:I
    .local v1, i:I
    :goto_2
    array-length p0, v3

    if-ge v1, p0, :cond_3

    .line 209
    aget-object p0, v3, v1

    .line 210
    .local p0, arg:Ljava/lang/reflect/Type;
    aget-object v5, v4, v1

    .line 211
    .local v5, var:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    :goto_3
    instance-of v6, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_2

    .line 212
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 213
    .local p0, v:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p0

    .end local p0           #v:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    .line 214
    .local p0, arg:Ljava/lang/reflect/Type;
    goto :goto_3

    .line 215
    :cond_2
    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    .end local v5           #var:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .end local p0           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 219
    :cond_3
    invoke-static {v2, p1, p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 220
    const/4 p0, 0x1

    goto :goto_0

    .line 224
    .end local v1           #i:I
    .end local v3           #tArgs:[Ljava/lang/reflect/Type;
    .end local v4           #tParams:[Ljava/lang/reflect/TypeVariable;,"[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    .local p0, arr$:[Ljava/lang/reflect/Type;
    array-length v3, p0

    .local v3, len$:I
    const/4 v1, 0x0

    .end local v2           #ptype:Ljava/lang/reflect/ParameterizedType;
    .local v1, i$:I
    :goto_4
    if-ge v1, v3, :cond_6

    aget-object v2, p0, v1

    .line 225
    .local v2, itype:Ljava/lang/reflect/Type;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2, p1, v4}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v2

    .end local v2           #itype:Ljava/lang/reflect/Type;
    if-eqz v2, :cond_5

    .line 226
    const/4 p0, 0x1

    goto :goto_0

    .line 224
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 231
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 232
    .local p0, sType:Ljava/lang/reflect/Type;
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p0, p1, v0}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result p0

    goto :goto_0

    .end local v3           #len$:I
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v1, ptype:Ljava/lang/reflect/ParameterizedType;
    .local p0, from:Ljava/lang/reflect/Type;
    :cond_7
    move-object v2, v1

    .end local v1           #ptype:Ljava/lang/reflect/ParameterizedType;
    .local v2, ptype:Ljava/lang/reflect/ParameterizedType;
    goto :goto_1
.end method

.method private static matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 274
    .local p2, typeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method private static typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .locals 6
    .parameter "from"
    .parameter "to"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, typeVarMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;"
    const/4 v5, 0x0

    .line 241
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 243
    .local v0, fromArgs:[Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 244
    .local v2, toArgs:[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 245
    aget-object v3, v0, v1

    aget-object v4, v2, v1

    invoke-static {v3, v4, p2}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    .line 251
    .end local v0           #fromArgs:[Ljava/lang/reflect/Type;
    .end local v1           #i:I
    .end local v2           #toArgs:[Ljava/lang/reflect/Type;
    :goto_1
    return v3

    .line 244
    .restart local v0       #fromArgs:[Ljava/lang/reflect/Type;
    .restart local v1       #i:I
    .restart local v2       #toArgs:[Ljava/lang/reflect/Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .end local v0           #fromArgs:[Ljava/lang/reflect/Type;
    .end local v1           #i:I
    .end local v2           #toArgs:[Ljava/lang/reflect/Type;
    :cond_2
    move v3, v5

    .line 251
    goto :goto_1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 285
    .local p0, this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    instance-of v0, p1, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;

    .end local p1
    iget-object v1, p1, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    return-object v0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 102
    .local p0, this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 281
    .local p0, this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    iget v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->hashCode:I

    return v0
.end method

.method public isAssignableFrom(Lcom/fusepowered/m1/google/gson/reflect/TypeToken;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m1/google/gson/reflect/TypeToken",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    .local p0, this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    .local p1, token:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<*>;"
    invoke-virtual {p1}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public isAssignableFrom(Ljava/lang/reflect/Type;)Z
    .locals 5
    .parameter "from"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    if-nez p1, :cond_0

    move v0, v3

    .line 138
    .end local p0           #this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    :goto_0
    return v0

    .line 128
    .restart local p0       #this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 129
    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    invoke-static {p1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    .line 135
    iget-object p0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .end local p0           #this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p0, v0}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    .line 137
    .restart local p0       #this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    :cond_3
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    invoke-static {p1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .end local p0           #this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p1, p0}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    .line 141
    .restart local p0       #this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    :cond_5
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Class;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/reflect/ParameterizedType;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v3, Ljava/lang/reflect/GenericArrayType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    .local p0, this:Lcom/fusepowered/m1/google/gson/reflect/TypeToken;,"Lcom/fusepowered/m1/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
