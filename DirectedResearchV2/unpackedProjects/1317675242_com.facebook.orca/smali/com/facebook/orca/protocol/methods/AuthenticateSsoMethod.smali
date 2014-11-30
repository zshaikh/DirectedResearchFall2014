.class public Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;
.super Ljava/lang/Object;
.source "AuthenticateSsoMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Ljava/lang/String;",
        "Lcom/facebook/orca/auth/FacebookCredentials;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/app/OrcaAppType;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaAppType;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;->a:Lcom/facebook/orca/app/OrcaAppType;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/auth/FacebookCredentials;
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 48
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/facebook/orca/auth/FacebookCredentials;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/orca/auth/FacebookCredentials;-><init>(Ljava/lang/String;J)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6

    .prologue
    .line 33
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 34
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "access_token"

    invoke-direct {v0, v1, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "new_app_id"

    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;->a:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v2}, Lcom/facebook/orca/app/OrcaAppType;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "authenticate"

    const-string v2, "POST"

    const-string v3, "method/auth.getSessionForApp"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;->a(Ljava/lang/String;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    return-object v0
.end method
