.class public Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;
.super Lorg/codehaus/jackson/map/deser/BeanDeserializer;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 42
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->i:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->s(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->h:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->h:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate abstract type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (need to add/enable type information?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 53
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->f:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    if-nez v0, :cond_4

    .line 54
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not deserialize Throwable of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without having either single-String-arg constructor; or explicit @JsonCreator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v1, v7

    move-object v2, v6

    move-object v0, v6

    .line 62
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_c

    .line 63
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->o()Ljava/lang/String;

    move-result-object v3

    .line 64
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->j:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->a(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v4

    .line 65
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    .line 67
    if-eqz v4, :cond_7

    .line 68
    if-eqz v0, :cond_5

    .line 69
    invoke-virtual {v4, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    move v8, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v8

    .line 62
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move v8, v0

    move-object v0, v2

    move-object v2, v1

    move v1, v8

    goto :goto_1

    .line 73
    :cond_5
    if-nez v2, :cond_6

    .line 74
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->j:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->b()I

    move-result v2

    .line 75
    add-int/2addr v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 77
    :cond_6
    add-int/lit8 v3, v1, 0x1

    aput-object v4, v2, v1

    .line 78
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v4, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    move v8, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v8

    .line 79
    goto :goto_2

    .line 83
    :cond_7
    const-string v4, "message"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 84
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->f:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 86
    if-eqz v2, :cond_d

    move v4, v7

    .line 87
    :goto_3
    if-ge v4, v1, :cond_8

    .line 88
    aget-object v0, v2, v4

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 89
    add-int/lit8 v5, v4, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v0, v3, v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    add-int/lit8 v0, v4, 0x2

    move v4, v0

    goto :goto_3

    :cond_8
    move v0, v1

    move-object v2, v3

    move-object v1, v6

    .line 91
    goto :goto_2

    .line 98
    :cond_9
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->l:Ljava/util/HashSet;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->l:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 99
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonParser;

    move v8, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v8

    .line 100
    goto :goto_2

    .line 102
    :cond_a
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->k:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v4, :cond_b

    .line 103
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->k:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v4, p1, p2, v0, v3}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    move v8, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v8

    .line 104
    goto :goto_2

    .line 107
    :cond_b
    invoke-virtual {p0, p1, p2, v0, v3}, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    move v8, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v8

    goto :goto_2

    .line 110
    :cond_c
    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;->f:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    if-eqz v2, :cond_0

    move v3, v7

    .line 120
    :goto_4
    if-ge v3, v1, :cond_0

    .line 121
    aget-object p0, v2, v3

    check-cast p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 122
    add-int/lit8 v4, v3, 0x1

    aget-object v4, v2, v4

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_d
    move v0, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2
.end method
