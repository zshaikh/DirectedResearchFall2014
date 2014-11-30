.class public final Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;
.super Ljava/lang/Object;
.source "SerializerCache.java"


# instance fields
.field protected a:I

.field protected b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected c:Lorg/codehaus/jackson/type/JavaType;

.field protected d:Z


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 294
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 302
    :goto_0
    return v0

    .line 295
    :cond_0
    check-cast p1, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    .line 296
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    iget-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    if-ne v0, v1, :cond_3

    .line 297
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 300
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->c:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p1, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->c:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 302
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->c:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
