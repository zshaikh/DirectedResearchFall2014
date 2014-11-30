.class public Lcom/facebook/orca/protocol/methods/UserFqlHelper;
.super Ljava/lang/Object;
.source "UserFqlHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/orca/protocol/methods/UserFqlHelper;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    .locals 7
    .param p3    # Lorg/codehaus/jackson/JsonNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 87
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    move v1, v6

    .line 89
    :goto_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 90
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 91
    new-instance v3, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v4, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 92
    const-string v4, "uid"

    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonNode;->y()Ljava/util/Iterator;

    move-result-object v4

    .line 95
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 97
    invoke-virtual {v2, p0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    goto :goto_1

    .line 99
    :cond_0
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v6

    .line 102
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 103
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 104
    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/node/ObjectNode;

    .line 105
    if-nez p0, :cond_7

    .line 106
    new-instance v3, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v4, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 107
    const-string v4, "uid"

    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_3
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonNode;->y()Ljava/util/Iterator;

    move-result-object v4

    .line 110
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 112
    invoke-virtual {v2, p0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    goto :goto_4

    .line 102
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    :cond_3
    if-eqz p3, :cond_5

    move v1, v6

    .line 117
    :goto_5
    invoke-virtual {p3}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 118
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 119
    const-string v3, "uid2"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/node/ObjectNode;

    .line 120
    if-eqz p0, :cond_4

    const-string v3, "communication_rank"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 121
    const-string v3, "rank"

    const-string v4, "communication_rank"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;D)V

    .line 117
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 126
    :cond_5
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v2, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 127
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/node/ObjectNode;

    .line 128
    invoke-virtual {v1, p0}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_6

    .line 130
    :cond_6
    return-object v1

    :cond_7
    move-object v3, p0

    goto :goto_3
.end method

.method public varargs a([Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 26
    array-length v0, p1

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 29
    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 30
    aget-object v0, p1, v6

    goto :goto_0

    .line 35
    :cond_2
    array-length v0, p1

    move v1, v6

    move-object v2, v4

    :goto_1
    if-ge v1, v0, :cond_6

    aget-object p0, p1, v1

    .line 36
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v3

    if-lez v3, :cond_3

    .line 37
    if-nez v2, :cond_4

    .line 38
    check-cast p0, Lorg/codehaus/jackson/node/ArrayNode;

    move-object v2, p0

    .line 35
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v4

    .line 47
    :goto_2
    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 54
    array-length v1, p1

    move v2, v6

    :goto_3
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    move v4, v6

    .line 55
    :goto_4
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 56
    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    .line 55
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 54
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method
