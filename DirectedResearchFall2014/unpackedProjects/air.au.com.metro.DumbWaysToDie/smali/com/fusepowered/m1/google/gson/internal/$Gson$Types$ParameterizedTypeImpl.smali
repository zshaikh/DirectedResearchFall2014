.class final Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParameterizedTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;

.field private final typeArguments:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 6
    .parameter "ownerType"
    .parameter "rawType"
    .parameter "typeArguments"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    instance-of v3, p2, Ljava/lang/Class;

    if-eqz v3, :cond_2

    .line 440
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    .line 441
    .local v1, rawTypeAsClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_0
    move v3, v5

    :goto_0
    invoke-static {v3}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 442
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_1
    move v3, v5

    :goto_1
    invoke-static {v3}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 445
    .end local v1           #rawTypeAsClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    if-nez p1, :cond_5

    const/4 v3, 0x0

    :goto_2
    iput-object v3, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 446
    invoke-static {p2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 447
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Type;

    iput-object v3, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    .line 448
    const/4 v2, 0x0

    .local v2, t:I
    :goto_3
    iget-object v3, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 449
    iget-object v3, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v3, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v2

    #calls: Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V
    invoke-static {v3}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->access$000(Ljava/lang/reflect/Type;)V

    .line 451
    iget-object v3, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    iget-object v4, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    aput-object v4, v3, v2

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2           #t:I
    .restart local v1       #rawTypeAsClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    move v3, v4

    .line 441
    goto :goto_0

    :cond_4
    move v3, v4

    .line 442
    goto :goto_1

    .line 445
    .end local v1           #rawTypeAsClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5
    invoke-static {p1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_2

    .line 453
    .restart local v2       #t:I
    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 471
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1
    invoke-static {p0, p1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

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
    .line 457
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    #calls: Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->hashCodeOrZero(Ljava/lang/Object;)I
    invoke-static {v1}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->access$100(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 483
    .local v1, stringBuilder:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 486
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    :goto_0
    return-object v2

    .line 489
    :cond_0
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 491
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/fusepowered/m1/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    :cond_1
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
