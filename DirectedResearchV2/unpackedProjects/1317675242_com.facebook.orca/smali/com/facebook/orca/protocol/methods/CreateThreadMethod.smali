.class public Lcom/facebook/orca/protocol/methods/CreateThreadMethod;
.super Ljava/lang/Object;
.source "CreateThreadMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;

.field private final b:Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;->a:Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;

    .line 43
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;->b:Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 7

    .prologue
    .line 48
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 50
    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;->a(Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;)Lcom/facebook/orca/server/CreateThreadParams;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/facebook/orca/server/CreateThreadParams;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "name"

    invoke-virtual {v0}, Lcom/facebook/orca/server/CreateThreadParams;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/server/CreateThreadParams;->a()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;->b:Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;->b(Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v1, v3}, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->a(Ljava/util/List;Lcom/facebook/orca/threads/Message;Ljava/lang/String;)V

    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;->b(Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;->b:Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->b(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/protocol/base/ContentBody;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    new-instance v2, Lorg/apache/http/entity/mime/FormBodyPart;

    const-string v3, "image"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    move-object v6, v2

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;->a:Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;

    invoke-virtual {v0}, Lcom/facebook/orca/server/CreateThreadParams;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;->a(Ljava/util/List;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 68
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "to"

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "createThread"

    const-string v2, "POST"

    const-string v3, "me/threads"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;Lorg/apache/http/entity/mime/FormBodyPart;)V

    return-object v0

    :cond_1
    move-object v6, v2

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;->a(Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;->a(Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 82
    const-string v1, "tid"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
