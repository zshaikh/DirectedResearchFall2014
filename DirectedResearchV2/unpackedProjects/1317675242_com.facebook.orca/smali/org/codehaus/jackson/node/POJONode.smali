.class public final Lorg/codehaus/jackson/node/POJONode;
.super Lorg/codehaus/jackson/node/ValueNode;
.source "POJONode.java"


# instance fields
.field protected final a:Ljava/lang/Object;


# virtual methods
.method public a()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public a(Z)Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 46
    iget-object p0, p0, Lorg/codehaus/jackson/node/POJONode;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 124
    :goto_0
    return v0

    .line 116
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/node/POJONode;

    .line 121
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->a:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 122
    iget-object v0, p1, Lorg/codehaus/jackson/node/POJONode;->a:Ljava/lang/Object;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 124
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->a:Ljava/lang/Object;

    iget-object v1, p1, Lorg/codehaus/jackson/node/POJONode;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/codehaus/jackson/node/POJONode;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
