.class public Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;
.super Ljava/lang/Object;
.source "RegisterPushTokenMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/RegisterPushTokenParams;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/RegisterPushTokenParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6

    .prologue
    .line 27
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 28
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 30
    const-string v1, "token"

    invoke-virtual {p1}, Lcom/facebook/orca/server/RegisterPushTokenParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "protocol_params"

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "registerPush"

    const-string v2, "POST"

    const-string v3, "method/user.registerPushCallback"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/facebook/orca/server/RegisterPushTokenParams;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;->a(Lcom/facebook/orca/server/RegisterPushTokenParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/server/RegisterPushTokenParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->a()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/facebook/orca/server/RegisterPushTokenParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;->a(Lcom/facebook/orca/server/RegisterPushTokenParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
