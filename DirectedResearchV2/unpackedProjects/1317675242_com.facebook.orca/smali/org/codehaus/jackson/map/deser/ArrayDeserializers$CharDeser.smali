.class final Lorg/codehaus/jackson/map/deser/ArrayDeserializers$CharDeser;
.super Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser;
.source "ArrayDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser",
        "<[C>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 151
    const-class v0, [C

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[C
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 161
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 162
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    .line 164
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->t()[C

    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->v()I

    move-result v2

    .line 166
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->u()I

    move-result v3

    .line 168
    new-array v4, v3, [C

    .line 169
    invoke-static {v1, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    .line 199
    :goto_0
    return-object v1

    .line 172
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->s()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_3

    .line 176
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_1

    .line 177
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 179
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not convert a JSON String of length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into a char element of char array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1

    .line 183
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 185
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_4
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_8

    .line 189
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->H()Ljava/lang/Object;

    move-result-object v1

    .line 190
    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    .line 191
    :cond_5
    instance-of v2, v1, [C

    if-eqz v2, :cond_6

    .line 192
    move-object v0, v1

    check-cast v0, [C

    move-object p0, v0

    check-cast p0, [C

    move-object v1, p0

    goto :goto_0

    .line 194
    :cond_6
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 195
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto/16 :goto_0

    .line 198
    :cond_7
    instance-of v2, v1, [B

    if-eqz v2, :cond_8

    .line 199
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->a()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v2, v1, v5}, Lorg/codehaus/jackson/Base64Variant;->a([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto/16 :goto_0

    .line 203
    :cond_8
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$CharDeser;->c:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$CharDeser;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[C

    move-result-object v0

    return-object v0
.end method
