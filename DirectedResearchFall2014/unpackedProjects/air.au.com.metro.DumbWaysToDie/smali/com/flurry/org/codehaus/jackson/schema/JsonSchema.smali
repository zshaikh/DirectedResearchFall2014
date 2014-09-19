.class public Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;
.super Ljava/lang/Object;
.source "JsonSchema.java"


# instance fields
.field private final schema:Lcom/flurry/org/codehaus/jackson/node/ObjectNode;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/node/ObjectNode;)V
    .locals 0
    .parameter "schema"
    .annotation runtime Lcom/flurry/org/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;->schema:Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    .line 31
    return-void
.end method

.method public static getDefaultSchemaNode()Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 3

    .prologue
    .line 75
    sget-object v1, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->instance:Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 76
    .local v0, objectNode:Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    const-string v1, "type"

    const-string v2, "any"

    invoke-virtual {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    if-ne p1, p0, :cond_0

    move v2, v4

    .line 65
    :goto_0
    return v2

    .line 58
    :cond_0
    if-nez p1, :cond_1

    move v2, v3

    goto :goto_0

    .line 59
    :cond_1
    instance-of v2, p1, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    .line 61
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;

    move-object v1, v0

    .line 62
    .local v1, other:Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;->schema:Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    if-nez v2, :cond_4

    .line 63
    iget-object v2, v1, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;->schema:Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    .line 65
    :cond_4
    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;->schema:Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    iget-object v3, v1, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;->schema:Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    invoke-virtual {v2, v3}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getSchemaNode()Lcom/flurry/org/codehaus/jackson/node/ObjectNode;
    .locals 1
    .annotation runtime Lcom/flurry/org/codehaus/jackson/annotate/JsonValue;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;->schema:Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/schema/JsonSchema;->schema:Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
