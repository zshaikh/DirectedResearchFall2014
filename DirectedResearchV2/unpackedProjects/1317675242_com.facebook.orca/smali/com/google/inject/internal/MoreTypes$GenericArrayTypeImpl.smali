.class public Lcom/google/inject/internal/MoreTypes$GenericArrayTypeImpl;
.super Ljava/lang/Object;
.source "MoreTypes.java"

# interfaces
.implements Lcom/google/inject/internal/MoreTypes$CompositeType;
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/GenericArrayType;


# instance fields
.field private final componentType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    invoke-static {p1}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/MoreTypes$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    .line 544
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 555
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

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

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 560
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes;->hashCode(Ljava/lang/reflect/Type;)I

    move-result v0

    return v0
.end method

.method public isFullySpecified()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/inject/internal/MoreTypes$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    # invokes: Lcom/google/inject/internal/MoreTypes;->isFullySpecified(Ljava/lang/reflect/Type;)Z
    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->access$300(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
