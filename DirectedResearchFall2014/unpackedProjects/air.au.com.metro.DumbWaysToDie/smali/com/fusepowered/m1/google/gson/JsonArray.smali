.class public final Lcom/fusepowered/m1/google/gson/JsonArray;
.super Lcom/fusepowered/m1/google/gson/JsonElement;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fusepowered/m1/google/gson/JsonElement;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/fusepowered/m1/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/m1/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public add(Lcom/fusepowered/m1/google/gson/JsonElement;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    sget-object p1, Lcom/fusepowered/m1/google/gson/JsonNull;->INSTANCE:Lcom/fusepowered/m1/google/gson/JsonNull;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public addAll(Lcom/fusepowered/m1/google/gson/JsonArray;)V
    .locals 2
    .parameter "array"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p1, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    return-void
.end method

.method deepCopy()Lcom/fusepowered/m1/google/gson/JsonArray;
    .locals 4

    .prologue
    .line 45
    new-instance v2, Lcom/fusepowered/m1/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/fusepowered/m1/google/gson/JsonArray;-><init>()V

    .line 46
    .local v2, result:Lcom/fusepowered/m1/google/gson/JsonArray;
    iget-object v3, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/google/gson/JsonElement;

    .line 47
    .local v0, element:Lcom/fusepowered/m1/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/fusepowered/m1/google/gson/JsonElement;->deepCopy()Lcom/fusepowered/m1/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/m1/google/gson/JsonArray;->add(Lcom/fusepowered/m1/google/gson/JsonElement;)V

    goto :goto_0

    .line 49
    .end local v0           #element:Lcom/fusepowered/m1/google/gson/JsonElement;
    :cond_0
    return-object v2
.end method

.method bridge synthetic deepCopy()Lcom/fusepowered/m1/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonArray;->deepCopy()Lcom/fusepowered/m1/google/gson/JsonArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 284
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/fusepowered/m1/google/gson/JsonArray;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/fusepowered/m1/google/gson/JsonArray;

    .end local p1
    iget-object v0, p1, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public get(I)Lcom/fusepowered/m1/google/gson/JsonElement;
    .locals 1
    .parameter "i"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    return-object p0
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;->getAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 166
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;->getAsBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 183
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBoolean()Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    return v0

    .line 279
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsByte()B
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;->getAsByte()B

    move-result v0

    return v0

    .line 239
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsCharacter()C
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;->getAsCharacter()C

    move-result v0

    return v0

    .line 247
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsDouble()D
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    return-wide v0

    .line 149
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsFloat()F
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    return v0

    .line 199
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsInt()I
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;->getAsInt()I

    move-result v0

    return v0

    .line 231
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsLong()J
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    return-wide v0

    .line 215
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 117
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsShort()S
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;->getAsShort()S

    move-result v0

    return v0

    .line 263
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/m1/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/fusepowered/m1/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fusepowered/m1/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fusepowered/m1/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
