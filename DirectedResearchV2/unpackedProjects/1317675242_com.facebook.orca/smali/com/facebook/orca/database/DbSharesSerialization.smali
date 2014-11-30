.class public Lcom/facebook/orca/database/DbSharesSerialization;
.super Ljava/lang/Object;
.source "DbSharesSerialization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Collection;)Lorg/codehaus/jackson/node/ArrayNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/share/ShareProperty;",
            ">;)",
            "Lorg/codehaus/jackson/node/ArrayNode;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 87
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareProperty;

    .line 88
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Lcom/facebook/orca/share/ShareProperty;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 90
    :cond_0
    return-object v1
.end method

.method private a(Lcom/facebook/orca/share/ShareMediaPhoto;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 65
    const-string v1, "aid"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaPhoto;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "pid"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaPhoto;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "fbid"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaPhoto;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "owner"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaPhoto;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaPhoto;->e()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaPhoto;->f()I

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "width"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaPhoto;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 71
    const-string v1, "height"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaPhoto;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 73
    :cond_0
    return-object v0
.end method

.method private a(Lcom/facebook/orca/share/ShareMediaVideo;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 78
    const-string v1, "display_url"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaVideo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "source_url"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaVideo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "source_type"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaVideo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "owner"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaVideo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-object v0
.end method

.method private a(Lcom/facebook/orca/share/ShareProperty;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 95
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareProperty;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "text"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareProperty;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "href"

    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareProperty;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v0
.end method

.method private b(Ljava/util/List;)Lorg/codehaus/jackson/node/ArrayNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/ShareMedia;",
            ">;)",
            "Lorg/codehaus/jackson/node/ArrayNode;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareMedia;

    .line 48
    new-instance v3, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v4, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 49
    const-string v4, "type"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v4, "src"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v4, "href"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v4, "alt"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->e()Lcom/facebook/orca/share/ShareMediaPhoto;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 54
    const-string v4, "photo"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->e()Lcom/facebook/orca/share/ShareMediaPhoto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Lcom/facebook/orca/share/ShareMediaPhoto;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 58
    :cond_0
    :goto_1
    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->f()Lcom/facebook/orca/share/ShareMediaVideo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 56
    const-string v4, "video"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->f()Lcom/facebook/orca/share/ShareMediaVideo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Lcom/facebook/orca/share/ShareMediaVideo;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    goto :goto_1

    .line 60
    :cond_2
    return-object v1
.end method

.method private c(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/Share;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/facebook/orca/share/ShareBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/share/ShareBuilder;-><init>()V

    .line 116
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->a(Ljava/lang/String;)V

    .line 117
    const-string v1, "caption"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->b(Ljava/lang/String;)V

    .line 118
    const-string v1, "description"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->c(Ljava/lang/String;)V

    .line 119
    const-string v1, "media"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->a(Ljava/util/List;)V

    .line 120
    const-string v1, "href"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->d(Ljava/lang/String;)V

    .line 121
    const-string v1, "properties"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/database/DbSharesSerialization;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->b(Ljava/util/List;)V

    .line 122
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareBuilder;->g()Lcom/facebook/orca/share/Share;

    move-result-object v0

    return-object v0
.end method

.method private d(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMedia;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/facebook/orca/share/ShareMediaBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/share/ShareMediaBuilder;-><init>()V

    .line 136
    const-string v1, "href"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->a(Ljava/lang/String;)V

    .line 137
    const-string v1, "alt"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->b(Ljava/lang/String;)V

    .line 138
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->c(Ljava/lang/String;)V

    .line 139
    const-string v1, "src"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->d(Ljava/lang/String;)V

    .line 140
    const-string v1, "photo"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    const-string v1, "photo"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/database/DbSharesSerialization;->e(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMediaPhoto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->a(Lcom/facebook/orca/share/ShareMediaPhoto;)V

    .line 145
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMediaBuilder;->g()Lcom/facebook/orca/share/ShareMedia;

    move-result-object v0

    return-object v0

    .line 142
    :cond_1
    const-string v1, "video"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "video"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/database/DbSharesSerialization;->f(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMediaVideo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->a(Lcom/facebook/orca/share/ShareMediaVideo;)V

    goto :goto_0
.end method

.method private e(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMediaPhoto;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;-><init>()V

    .line 150
    const-string v1, "aid"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->a(Ljava/lang/String;)V

    .line 151
    const-string v1, "pid"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->b(Ljava/lang/String;)V

    .line 152
    const-string v1, "fbid"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->c(Ljava/lang/String;)V

    .line 153
    const-string v1, "owner"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->d(Ljava/lang/String;)V

    .line 154
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "width"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->b(I)V

    .line 156
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->a(I)V

    .line 158
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->g()Lcom/facebook/orca/share/ShareMediaPhoto;

    move-result-object v0

    return-object v0
.end method

.method private f(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMediaVideo;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;-><init>()V

    .line 163
    const-string v1, "display_url"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->a(Ljava/lang/String;)V

    .line 164
    const-string v1, "source_url"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->b(Ljava/lang/String;)V

    .line 165
    const-string v1, "owner"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->c(Ljava/lang/String;)V

    .line 166
    const-string v1, "source_type"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->d(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->e()Lcom/facebook/orca/share/ShareMediaVideo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 107
    invoke-static {p1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 109
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbSharesSerialization;->c(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/Share;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/share/ShareMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 128
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbSharesSerialization;->d(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMedia;

    move-result-object v0

    .line 129
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 31
    :cond_0
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/Share;

    .line 33
    new-instance v3, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v4, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 34
    const-string v4, "name"

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v4, "caption"

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v4, "description"

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v4, "href"

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v4, "media"

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/facebook/orca/database/DbSharesSerialization;->b(Ljava/util/List;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 39
    const-string v4, "properties"

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Ljava/util/Collection;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 40
    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v1}, Lorg/codehaus/jackson/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method b(Lorg/codehaus/jackson/JsonNode;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/ShareProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 173
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 174
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    new-instance v3, Lcom/facebook/orca/share/SharePropertyBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/share/SharePropertyBuilder;-><init>()V

    .line 176
    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/share/SharePropertyBuilder;->a(Ljava/lang/String;)V

    .line 177
    const-string v4, "text"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/share/SharePropertyBuilder;->b(Ljava/lang/String;)V

    .line 178
    const-string v4, "href"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/facebook/orca/share/SharePropertyBuilder;->c(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3}, Lcom/facebook/orca/share/SharePropertyBuilder;->d()Lcom/facebook/orca/share/ShareProperty;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_1
    return-object v0
.end method
