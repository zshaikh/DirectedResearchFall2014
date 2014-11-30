.class final Lorg/codehaus/jackson/map/deser/ArrayDeserializers$FloatDeser;
.super Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser;
.source "ArrayDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser",
        "<[F>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 450
    const-class v0, [F

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$ArrayDeser;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final p(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[F
    .locals 3

    .prologue
    .line 478
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$FloatDeser;->c:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 481
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$FloatDeser;->l(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)F

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 456
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$FloatDeser;->p(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[F

    move-result-object v0

    .line 472
    :goto_0
    return-object v0

    .line 459
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->d()Lorg/codehaus/jackson/map/util/ArrayBuilders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->f()Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    move-result-object v1

    .line 460
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    move-object v2, v0

    move v0, v5

    .line 463
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_2

    .line 465
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$FloatDeser;->l(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)F

    move-result v3

    .line 466
    array-length v4, v2

    if-lt v0, v4, :cond_1

    .line 467
    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    move-object v2, v0

    move v0, v5

    .line 470
    :cond_1
    add-int/lit8 v4, v0, 0x1

    aput v3, v2, v0

    move v0, v4

    .line 471
    goto :goto_1

    .line 472
    :cond_2
    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializers$FloatDeser;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[F

    move-result-object v0

    return-object v0
.end method
