.class public Lcom/google/inject/TypeLiteral;
.super Ljava/lang/Object;
.source "TypeLiteral.java"


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
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    .line 84
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    .line 85
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->hashCode(Ljava/lang/reflect/Type;)I

    move-result v0

    iput v0, p0, Lcom/google/inject/TypeLiteral;->hashCode:I

    .line 86
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    .line 94
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    .line 95
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->hashCode(Ljava/lang/reflect/Type;)I

    move-result v0

    iput v0, p0, Lcom/google/inject/TypeLiteral;->hashCode:I

    .line 96
    return-void
.end method

.method static fromSuperclassTypeParameter(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/google/inject/TypeLiteral;

    invoke-static {p0}, Lcom/google/inject/TypeLiteral;->getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/TypeLiteral;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/google/inject/TypeLiteral;

    invoke-direct {v0, p0}, Lcom/google/inject/TypeLiteral;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/google/inject/TypeLiteral;

    invoke-direct {v0, p0}, Lcom/google/inject/TypeLiteral;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 104
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing type parameter."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 108
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private resolveAll([Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 174
    array-length v0, p1

    new-array v0, v0, [Lcom/google/inject/TypeLiteral;

    .line 175
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 176
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/inject/TypeLiteral;->resolve(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v2

    aput-object v2, v0, v1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {v0}, Lcom/google/inject/internal/ImmutableList;->of([Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 149
    instance-of v0, p1, Lcom/google/inject/TypeLiteral;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/google/inject/TypeLiteral;

    iget-object v1, p1, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/google/inject/internal/MoreTypes;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFieldType(Ljava/lang/reflect/Field;)Lcom/google/inject/TypeLiteral;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not defined by a supertype of %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/TypeLiteral;->resolve(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 287
    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 288
    check-cast p1, Ljava/lang/reflect/Method;

    .line 289
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not defined by a supertype of %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 303
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/inject/TypeLiteral;->resolveAll([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 293
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 294
    check-cast p1, Ljava/lang/reflect/Constructor;

    .line 295
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s does not construct a supertype of %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a method or a constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 124
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType(Ljava/lang/reflect/Method;)Lcom/google/inject/TypeLiteral;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not defined by a supertype of %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 343
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/TypeLiteral;->resolve(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    return-object v0
.end method

.method public getSupertype(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not a supertype of %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lcom/google/inject/internal/MoreTypes;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/TypeLiteral;->resolve(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/google/inject/TypeLiteral;->hashCode:I

    return v0
.end method

.method resolve(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    return-object v0
.end method

.method resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 191
    move-object v0, p1

    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_2

    .line 192
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 193
    iget-object v1, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-static {v1, v2, v0}, Lcom/google/inject/internal/MoreTypes;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 194
    if-ne v1, v0, :cond_1

    move-object v0, v1

    .line 247
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    .line 198
    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_3

    .line 199
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 200
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 201
    invoke-virtual {p0, v1}, Lcom/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 202
    if-eq v1, v2, :cond_0

    invoke-static {v2}, Lcom/google/inject/util/Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object v0

    goto :goto_1

    .line 206
    :cond_3
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_8

    .line 207
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 208
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 209
    invoke-virtual {p0, v1}, Lcom/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 210
    if-eq v2, v1, :cond_6

    move v1, v8

    .line 212
    :goto_2
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 213
    array-length v4, v3

    move v9, v5

    move v5, v1

    move-object v1, v3

    move v3, v9

    :goto_3
    if-ge v3, v4, :cond_7

    .line 214
    aget-object v6, v1, v3

    invoke-virtual {p0, v6}, Lcom/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 215
    aget-object v7, v1, v3

    if-eq v6, v7, :cond_5

    .line 216
    if-nez v5, :cond_4

    .line 217
    invoke-virtual {v1}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Type;

    move v5, v8

    .line 220
    :cond_4
    aput-object v6, v1, v3

    .line 213
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move v1, v5

    .line 210
    goto :goto_2

    .line 224
    :cond_7
    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/google/inject/util/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    goto :goto_1

    .line 228
    :cond_8
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    .line 229
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 230
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 231
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 233
    array-length v3, v1

    if-ne v3, v8, :cond_9

    .line 234
    aget-object v2, v1, v5

    invoke-virtual {p0, v2}, Lcom/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 235
    aget-object v1, v1, v5

    if-eq v2, v1, :cond_0

    .line 236
    invoke-static {v2}, Lcom/google/inject/util/Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    goto :goto_1

    .line 238
    :cond_9
    array-length v1, v2

    if-ne v1, v8, :cond_0

    .line 239
    aget-object v1, v2, v5

    invoke-virtual {p0, v1}, Lcom/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 240
    aget-object v2, v2, v5

    if-eq v1, v2, :cond_0

    .line 241
    invoke-static {v1}, Lcom/google/inject/util/Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
