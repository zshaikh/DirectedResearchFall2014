.class public Lorg/codehaus/jackson/map/deser/StdDeserializer$BigDecimalDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdScalarDeserializer",
        "<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1076
    const-class v0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 1082
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1083
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 1084
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->G()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1093
    :goto_0
    return-object v0

    .line 1087
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 1088
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1090
    const/4 v0, 0x0

    goto :goto_0

    .line 1093
    :cond_2
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializer$BigDecimalDeserializer;->c:Ljava/lang/Class;

    const-string v1, "not a valid representation"

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 1099
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializer$BigDecimalDeserializer;->c:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1072
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializer$BigDecimalDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method
