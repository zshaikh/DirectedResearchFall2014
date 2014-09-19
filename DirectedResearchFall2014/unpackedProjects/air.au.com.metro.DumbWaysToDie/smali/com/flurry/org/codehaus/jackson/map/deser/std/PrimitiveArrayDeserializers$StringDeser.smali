.class final Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$StringDeser;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;
.source "PrimitiveArrayDeserializers.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringDeser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final handleNonArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/String;
    .locals 6
    .parameter "jp"
    .parameter "ctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 144
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/flurry/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v5

    .line 155
    .end local v0           #str:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$StringDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 155
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_2

    move-object v3, v5

    :goto_1
    aput-object v3, v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$StringDeser;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/String;
    .locals 8
    .parameter "jp"
    .parameter "ctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v7

    if-nez v7, :cond_0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$StringDeser;->handleNonArray(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/String;

    move-result-object v7

    .line 137
    :goto_0
    return-object v7

    .line 121
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->leaseObjectBuffer()Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;

    move-result-object v0

    .line 122
    .local v0, buffer:Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;
    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;

    move-result-object v1

    .line 123
    .local v1, chunk:[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 126
    .local v2, ix:I
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->nextToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v5

    .local v5, t:Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-eq v5, v7, :cond_3

    .line 128
    sget-object v7, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v5, v7, :cond_2

    const/4 v7, 0x0

    move-object v6, v7

    .line 129
    .local v6, value:Ljava/lang/String;
    :goto_2
    array-length v7, v1

    if-lt v2, v7, :cond_1

    .line 130
    invoke-virtual {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 131
    const/4 v2, 0x0

    .line 133
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #ix:I
    .local v3, ix:I
    aput-object v6, v1, v2

    move v2, v3

    .line 134
    .end local v3           #ix:I
    .restart local v2       #ix:I
    goto :goto_1

    .line 128
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    goto :goto_2

    .line 135
    :cond_3
    const-class v7, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v7}, Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 136
    .local v4, result:[Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->returnObjectBuffer(Lcom/flurry/org/codehaus/jackson/map/util/ObjectBuffer;)V

    move-object v7, v4

    .line 137
    goto :goto_0
.end method
