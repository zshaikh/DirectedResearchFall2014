.class public final Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$LongDeserializer;
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
    name = "LongDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Long;)V
    .locals 0
    .param p2, "nvl"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 838
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 839
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Long;
    .locals 1
    .param p1, "jp"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "ctxt"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$LongDeserializer;->_parseLong(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/JsonParser;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 832
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/deser/std/StdDeserializer$LongDeserializer;->deserialize(Lcom/flurry/org/codehaus/jackson/JsonParser;Lcom/flurry/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
