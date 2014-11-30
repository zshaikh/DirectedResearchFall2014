.class public Lcom/facebook/orca/protocol/methods/AttachmentDeserializer;
.super Ljava/lang/Object;
.source "AttachmentDeserializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->y()Ljava/util/Iterator;

    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 28
    invoke-virtual {p1, p0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 29
    new-instance v3, Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;-><init>()V

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->a(I)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v3

    const-string v4, "mime_type"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v3

    const-string v4, "filename"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v3

    const-string v4, "file_size"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->b(I)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->f()Lcom/facebook/orca/threads/AttachmentInfo;

    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
