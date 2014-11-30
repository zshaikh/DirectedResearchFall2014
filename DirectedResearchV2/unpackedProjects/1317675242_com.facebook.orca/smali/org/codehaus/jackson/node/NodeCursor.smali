.class abstract Lorg/codehaus/jackson/node/NodeCursor;
.super Lorg/codehaus/jackson/JsonStreamContext;
.source "NodeCursor.java"


# instance fields
.field final d:Lorg/codehaus/jackson/node/NodeCursor;


# direct methods
.method public constructor <init>(ILorg/codehaus/jackson/node/NodeCursor;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonStreamContext;-><init>()V

    .line 23
    iput p1, p0, Lorg/codehaus/jackson/node/NodeCursor;->e:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/node/NodeCursor;->f:I

    .line 25
    iput-object p2, p0, Lorg/codehaus/jackson/node/NodeCursor;->d:Lorg/codehaus/jackson/node/NodeCursor;

    .line 26
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Lorg/codehaus/jackson/JsonToken;
.end method

.method public abstract c()Lorg/codehaus/jackson/JsonToken;
.end method

.method public abstract d()Lorg/codehaus/jackson/JsonNode;
.end method

.method public abstract e()Z
.end method

.method public final f()Lorg/codehaus/jackson/node/NodeCursor;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor;->d:Lorg/codehaus/jackson/node/NodeCursor;

    return-object v0
.end method

.method public final g()Lorg/codehaus/jackson/node/NodeCursor;
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/NodeCursor;->d()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current node"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    new-instance v1, Lorg/codehaus/jackson/node/NodeCursor$Array;

    invoke-direct {v1, v0, p0}, Lorg/codehaus/jackson/node/NodeCursor$Array;-><init>(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/node/NodeCursor;)V

    move-object v0, v1

    .line 65
    :goto_0
    return-object v0

    .line 64
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    new-instance v1, Lorg/codehaus/jackson/node/NodeCursor$Object;

    invoke-direct {v1, v0, p0}, Lorg/codehaus/jackson/node/NodeCursor$Object;-><init>(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/node/NodeCursor;)V

    move-object v0, v1

    goto :goto_0

    .line 67
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current node of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
