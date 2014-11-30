.class public Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "MoreTypes.java"

# interfaces
.implements Lcom/google/inject/internal/MoreTypes$CompositeType;
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;

.field private final typeArguments:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 475
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 476
    if-nez p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_0
    move v2, v6

    :goto_0
    const-string v3, "No owner type for enclosed %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 478
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_1
    move v1, v6

    :goto_1
    const-string v2, "Owner type for unenclosed %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/inject/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 482
    :cond_2
    if-nez p1, :cond_5

    const/4 v1, 0x0

    :goto_2
    iput-object v1, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 483
    invoke-static {p2}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    iput-object v1, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 484
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Type;

    iput-object v1, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    move v1, v5

    .line 485
    :goto_3
    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 486
    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v1

    const-string v3, "type parameter"

    invoke-static {v2, v3}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v1

    const-string v3, "type parameters"

    # invokes: Lcom/google/inject/internal/MoreTypes;->checkNotPrimitive(Ljava/lang/reflect/Type;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/google/inject/internal/MoreTypes;->access$200(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 488
    iget-object v2, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v2, v1

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v2, v5

    .line 476
    goto :goto_0

    :cond_4
    move v1, v5

    .line 478
    goto :goto_1

    .line 482
    :cond_5
    invoke-static {p1}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_2

    .line 490
    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 523
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lcom/google/inject/internal/MoreTypes;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 528
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes;->hashCode(Ljava/lang/reflect/Type;)I

    move-result v0

    return v0
.end method

.method public isFullySpecified()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 505
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    # invokes: Lcom/google/inject/internal/MoreTypes;->isFullySpecified(Ljava/lang/reflect/Type;)Z
    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->access$300(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 519
    :goto_0
    return v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    # invokes: Lcom/google/inject/internal/MoreTypes;->isFullySpecified(Ljava/lang/reflect/Type;)Z
    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->access$300(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    .line 510
    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 514
    # invokes: Lcom/google/inject/internal/MoreTypes;->isFullySpecified(Ljava/lang/reflect/Type;)Z
    invoke-static {v3}, Lcom/google/inject/internal/MoreTypes;->access$300(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v4

    .line 515
    goto :goto_0

    .line 513
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 519
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
