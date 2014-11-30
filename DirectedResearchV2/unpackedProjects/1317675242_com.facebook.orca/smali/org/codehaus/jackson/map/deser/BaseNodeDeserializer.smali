.class abstract Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/codehaus/jackson/JsonNode;",
        ">",
        "Lorg/codehaus/jackson/map/deser/StdDeserializer",
        "<TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 124
    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->d(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lorg/codehaus/jackson/node/ObjectNode;Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method protected final p(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->i()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->c()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 181
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    .line 182
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 184
    :cond_0
    :goto_0
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_2

    .line 185
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->o()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    .line 187
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;->r(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 188
    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 189
    if-eqz v3, :cond_1

    .line 190
    invoke-virtual {p0, v1, v0, v3, v2}, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;->a(Ljava/lang/String;Lorg/codehaus/jackson/node/ObjectNode;Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)V

    .line 184
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 193
    :cond_2
    return-object v0
.end method

.method protected final q(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ArrayNode;
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->i()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->b()Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 200
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    .line 201
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;->r(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 203
    :cond_0
    return-object v0
.end method

.method protected final r(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/JsonNode;
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->i()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    .line 210
    sget-object v1, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer$1;->a:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 259
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 213
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;->p(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 216
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BaseNodeDeserializer;->q(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v0

    goto :goto_0

    .line 223
    :pswitch_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->y()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    .line 224
    sget-object v2, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_INTEGER_FOR_INTS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->D()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(Ljava/math/BigInteger;)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_1
    sget-object v2, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;

    if-ne v1, v2, :cond_2

    .line 229
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->B()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(I)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->C()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(J)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 236
    :pswitch_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->y()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    .line 237
    sget-object v2, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;

    if-eq v1, v2, :cond_3

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_DECIMAL_FOR_FLOATS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    :cond_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->G()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->F()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(D)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 245
    :pswitch_5
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_6
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_7
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
