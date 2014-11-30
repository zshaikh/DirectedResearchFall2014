.class public Lorg/codehaus/jackson/map/deser/ArrayDeserializer;
.super Lorg/codehaus/jackson/map/deser/ContainerDeserializer;
.source "ArrayDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/ContainerDeserializer",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field protected final a:Lorg/codehaus/jackson/type/JavaType;

.field protected final b:Z

.field protected final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final e:Lorg/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lorg/codehaus/jackson/map/TypeDeserializer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/JsonDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/ArrayType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/ContainerDeserializer;-><init>(Ljava/lang/Class;)V

    .line 62
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    .line 63
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/type/ArrayType;->e()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->d:Ljava/lang/Class;

    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->d:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->b:Z

    .line 65
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->e:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 66
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->f:Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 67
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final q(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 169
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->d:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_0

    .line 175
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->p(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Byte;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 179
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 182
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 183
    const/4 v0, 0x0

    .line 192
    :goto_1
    iget-boolean v1, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->b:Z

    if-eqz v1, :cond_4

    .line 193
    new-array v1, v2, [Ljava/lang/Object;

    .line 197
    :goto_2
    const/4 v2, 0x0

    aput-object v0, v1, v2

    move-object v0, v1

    .line 198
    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->f:Lorg/codehaus/jackson/map/TypeDeserializer;

    if-nez v0, :cond_3

    .line 185
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->e:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 187
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->e:Lorg/codehaus/jackson/map/JsonDeserializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->f:Lorg/codehaus/jackson/map/TypeDeserializer;

    invoke-virtual {v0, p1, p2, v1}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 195
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->d:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    move-object v1, p0

    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->e:Lorg/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 96
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->q(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->c()Lorg/codehaus/jackson/map/util/ObjectBuffer;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->a()[Ljava/lang/Object;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->f:Lorg/codehaus/jackson/map/TypeDeserializer;

    move-object v3, v1

    move v1, v6

    .line 106
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_4

    .line 110
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_2

    .line 111
    const/4 v4, 0x0

    .line 117
    :goto_2
    array-length v5, v3

    if-lt v1, v5, :cond_1

    .line 118
    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    move v1, v6

    .line 121
    :cond_1
    add-int/lit8 v5, v1, 0x1

    aput-object v4, v3, v1

    move v1, v5

    .line 122
    goto :goto_1

    .line 112
    :cond_2
    if-nez v2, :cond_3

    .line 113
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->e:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v4, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 115
    :cond_3
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->e:Lorg/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v4, p1, p2, v2}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 126
    :cond_4
    iget-boolean v2, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->b:Z

    if-eqz v2, :cond_5

    .line 127
    invoke-virtual {v0, v3, v1}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 131
    :goto_3
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/util/ObjectBuffer;)V

    move-object v0, v1

    .line 132
    goto :goto_0

    .line 129
    :cond_5
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->d:Ljava/lang/Class;

    invoke-virtual {v0, v3, v1, v2}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->a([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_3
.end method

.method public bridge synthetic b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/ArrayDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)[Ljava/lang/Object;
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method protected p(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/Byte;
    .locals 5

    .prologue
    .line 156
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->h()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonParser;->a(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    .line 158
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Byte;

    .line 159
    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 160
    aget-byte v4, v0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v2

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-object v1
.end method
