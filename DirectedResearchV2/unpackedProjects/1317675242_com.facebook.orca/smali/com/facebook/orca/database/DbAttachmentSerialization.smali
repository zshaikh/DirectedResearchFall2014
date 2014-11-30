.class public Lcom/facebook/orca/database/DbAttachmentSerialization;
.super Ljava/lang/Object;
.source "DbAttachmentSerialization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 50
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 51
    invoke-static {p1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    .line 53
    new-instance v2, Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;-><init>()V

    const-string v3, "id"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->a(I)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v2

    const-string v3, "mime_type"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v2

    const-string v3, "file_size"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->b(I)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->f()Lcom/facebook/orca/threads/AttachmentInfo;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/AttachmentInfo;

    .line 34
    new-instance v2, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v3, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 35
    const-string v3, "id"

    invoke-virtual {p0}, Lcom/facebook/orca/threads/AttachmentInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v3, "type"

    invoke-virtual {p0}, Lcom/facebook/orca/threads/AttachmentInfo;->b()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 37
    const-string v3, "mime_type"

    invoke-virtual {p0}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v3, "filename"

    invoke-virtual {p0}, Lcom/facebook/orca/threads/AttachmentInfo;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v3, "file_size"

    invoke-virtual {p0}, Lcom/facebook/orca/threads/AttachmentInfo;->e()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
