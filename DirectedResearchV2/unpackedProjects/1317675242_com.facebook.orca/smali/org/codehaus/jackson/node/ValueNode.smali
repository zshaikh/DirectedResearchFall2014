.class public abstract Lorg/codehaus/jackson/node/ValueNode;
.super Lorg/codehaus/jackson/node/BaseJsonNode;
.source "ValueNode.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/codehaus/jackson/node/BaseJsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->A()Lorg/codehaus/jackson/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ValueNode;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
