.class public final Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharacterDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Character;)V
    .locals 0
    .parameter
    .parameter "nvl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    .prologue
    .line 775
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<Ljava/lang/Character;>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 776
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Character;
    .locals 5
    .parameter "jp"
    .parameter "ctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 782
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/flurry/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 785
    .local v0, t:Lcom/flurry/org/codehaus/jackson/JsonToken;
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_0

    .line 786
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v2

    .line 787
    .local v2, value:I
    if-ltz v2, :cond_2

    const v3, 0xffff

    if-gt v2, v3, :cond_2

    .line 788
    int-to-char v3, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 798
    .end local v2           #value:I
    .end local p0
    :goto_0
    return-object v3

    .line 790
    .restart local p0
    :cond_0
    sget-object v3, Lcom/flurry/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/flurry/org/codehaus/jackson/JsonToken;

    if-ne v0, v3, :cond_2

    .line 792
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 794
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_0

    .line 797
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Character;

    move-object v3, p0

    goto :goto_0

    .line 801
    .end local v1           #text:Ljava/lang/String;
    .restart local p0
    :cond_2
    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v3, v0}, Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/flurry/org/codehaus/jackson/JsonToken;)Lcom/flurry/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v3

    throw v3
.end method

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
    .line 769
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method
