.class final Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ByteDeser;
.super Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser;
.source "ArrayDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser",
        "<[B>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 260
    const-class v0, [B

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final p(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ByteDeser;->c:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 316
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 317
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 319
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->z()B

    move-result v0

    .line 327
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v2

    return-object v1

    .line 322
    :cond_2
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_3

    .line 323
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ByteDeser;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    :cond_3
    move v0, v2

    .line 325
    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 266
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 269
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    .line 270
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->h()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonParser;->a(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v1

    .line 306
    :goto_0
    return-object v1

    .line 273
    :cond_0
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_2

    .line 274
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->H()Ljava/lang/Object;

    move-result-object v1

    .line 275
    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 276
    :cond_1
    instance-of v2, v1, [B

    if-eqz v2, :cond_2

    .line 277
    move-object v0, v1

    check-cast v0, [B

    move-object p0, v0

    check-cast p0, [B

    move-object v1, p0

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->s()Z

    move-result v1

    if-nez v1, :cond_3

    .line 281
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ByteDeser;->p(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[B

    move-result-object v1

    goto :goto_0

    .line 283
    :cond_3
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->d()Lorg/codehaus/jackson/map/util/ArrayBuilders;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->b()Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v3, v1

    move v1, v6

    .line 287
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_8

    .line 290
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_4

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_6

    .line 292
    :cond_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->z()B

    move-result v4

    .line 300
    :goto_2
    array-length v5, v3

    if-lt v1, v5, :cond_5

    .line 301
    invoke-virtual {v2, v3, v1}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v3, v1

    move v1, v6

    .line 304
    :cond_5
    add-int/lit8 v5, v1, 0x1

    aput-byte v4, v3, v1

    move v1, v5

    .line 305
    goto :goto_1

    .line 295
    :cond_6
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_7

    .line 296
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ByteDeser;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    :cond_7
    move v4, v6

    .line 298
    goto :goto_2

    .line 306
    :cond_8
    invoke-virtual {v2, v3, v1}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    move-object v1, p0

    goto :goto_0
.end method

.method public bridge synthetic b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ByteDeser;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[B

    move-result-object v0

    return-object v0
.end method
