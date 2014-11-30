.class public Lorg/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;
.super Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;
.source "ObjectMapper.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;


# virtual methods
.method public a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/jsontype/NamedType;",
            ">;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/TypeDeserializer;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;->a(Lorg/codehaus/jackson/type/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/jsontype/impl/StdTypeResolverBuilder;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/type/JavaType;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    sget-object v0, Lorg/codehaus/jackson/map/ObjectMapper$2;->a:[I

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper$DefaultTypeResolverBuilder;->a:Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/ObjectMapper$DefaultTyping;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    move v0, v4

    :goto_0
    return v0

    .line 163
    :pswitch_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 168
    :goto_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 173
    :goto_2
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->p()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    .line 176
    goto :goto_0

    :cond_4
    move-object v0, p1

    goto :goto_2

    :cond_5
    :pswitch_2
    move-object v0, p1

    goto :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
