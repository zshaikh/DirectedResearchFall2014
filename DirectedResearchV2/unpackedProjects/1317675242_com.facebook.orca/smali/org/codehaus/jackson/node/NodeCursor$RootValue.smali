.class public final Lorg/codehaus/jackson/node/NodeCursor$RootValue;
.super Lorg/codehaus/jackson/node/NodeCursor;
.source "NodeCursor.java"


# instance fields
.field a:Lorg/codehaus/jackson/JsonNode;

.field protected b:Z


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lorg/codehaus/jackson/JsonToken;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/NodeCursor$RootValue;->b:Z

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/node/NodeCursor$RootValue;->b:Z

    .line 100
    iget-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$RootValue;->a:Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iput-object v1, p0, Lorg/codehaus/jackson/node/NodeCursor$RootValue;->a:Lorg/codehaus/jackson/JsonNode;

    move-object v0, v1

    .line 103
    goto :goto_0
.end method

.method public c()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$RootValue;->a:Lorg/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method
