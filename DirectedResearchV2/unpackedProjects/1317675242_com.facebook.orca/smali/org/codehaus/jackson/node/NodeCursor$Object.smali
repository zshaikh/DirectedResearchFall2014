.class public final Lorg/codehaus/jackson/node/NodeCursor$Object;
.super Lorg/codehaus/jackson/node/NodeCursor;
.source "NodeCursor.java"


# instance fields
.field a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/node/NodeCursor;)V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lorg/codehaus/jackson/node/NodeCursor;-><init>(ILorg/codehaus/jackson/node/NodeCursor;)V

    .line 173
    check-cast p1, Lorg/codehaus/jackson/node/ObjectNode;

    invoke-virtual {p1}, Lorg/codehaus/jackson/node/ObjectNode;->z()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->a:Ljava/util/Iterator;

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->c:Z

    .line 175
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->b:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public b()Lorg/codehaus/jackson/JsonToken;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->c:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iput-object v1, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->b:Ljava/util/Map$Entry;

    move-object v0, v1

    .line 196
    :goto_0
    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->c:Z

    .line 192
    iget-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->b:Ljava/util/Map$Entry;

    .line 193
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->c:Z

    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public d()Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->b:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Object;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    move-object v0, p0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/NodeCursor$Object;->d()Lorg/codehaus/jackson/JsonNode;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/node/ContainerNode;

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ContainerNode;->w()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
