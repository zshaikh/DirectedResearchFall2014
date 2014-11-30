.class public Lcom/facebook/orca/appconfig/AppConfigSerialization;
.super Ljava/lang/Object;
.source "AppConfigSerialization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfig;
    .locals 4

    .prologue
    .line 39
    invoke-static {p1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 40
    const-string v1, "min_version"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v2, "current_version"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    const-string v3, "new_version_url"

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v3, Lcom/facebook/orca/appconfig/AppConfig;

    invoke-direct {v3, v1, v2, v0}, Lcom/facebook/orca/appconfig/AppConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/appconfig/AppConfig;
    .locals 4

    .prologue
    .line 24
    const-string v0, "min_version"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string v1, "current_version"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    const-string v2, "new_version_url"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    new-instance v3, Lcom/facebook/orca/appconfig/AppConfig;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/appconfig/AppConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public a(Lcom/facebook/orca/appconfig/AppConfig;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 32
    const-string v1, "min_version"

    invoke-virtual {p1}, Lcom/facebook/orca/appconfig/AppConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "current_version"

    invoke-virtual {p1}, Lcom/facebook/orca/appconfig/AppConfig;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "new_version_url"

    invoke-virtual {p1}, Lcom/facebook/orca/appconfig/AppConfig;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
