.class final Lorg/codehaus/jackson/map/deser/ArrayDeserializers$StringDeser;
.super Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser;
.source "ArrayDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    const-class v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final p(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$StringDeser;->c:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 143
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    aput-object v2, v0, v1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 114
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$StringDeser;->p(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->c()Lorg/codehaus/jackson/map/util/ObjectBuffer;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->a()[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    move v1, v5

    .line 122
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_3

    .line 124
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    .line 125
    :goto_2
    array-length v4, v2

    if-lt v1, v4, :cond_1

    .line 126
    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    move v1, v5

    .line 129
    :cond_1
    add-int/lit8 v4, v1, 0x1

    aput-object v3, v2, v1

    move v1, v4

    .line 130
    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 131
    :cond_3
    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->a([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 132
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/util/ObjectBuffer;)V

    move-object v0, p0

    .line 133
    goto :goto_0
.end method

.method public bridge synthetic b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$StringDeser;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
