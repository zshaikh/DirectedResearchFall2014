.class public Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;
.super Ljava/lang/Object;
.source "FetchAppConfigMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Ljava/lang/Void;",
        "Lcom/facebook/orca/appconfig/AppConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/app/OrcaAppType;

.field private final b:Lcom/facebook/orca/appconfig/AppConfigSerialization;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaAppType;Lcom/facebook/orca/appconfig/AppConfigSerialization;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;->a:Lcom/facebook/orca/app/OrcaAppType;

    .line 34
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;->b:Lcom/facebook/orca/appconfig/AppConfigSerialization;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/appconfig/AppConfig;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlResultHelper;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;-><init>(Lorg/codehaus/jackson/JsonNode;)V

    .line 59
    const-string v0, "info"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - missing row"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 64
    const-string v1, "client_config"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/codehaus/jackson/JsonNode;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v3

    .line 71
    :goto_0
    return-object v0

    .line 67
    :cond_2
    const-string v1, "client_config"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "client_config"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    const-string v1, "client_config"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;->b:Lcom/facebook/orca/appconfig/AppConfigSerialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/appconfig/AppConfigSerialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 71
    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;->a(Ljava/lang/Void;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Void;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 41
    const-string v1, "info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT client_config FROM application WHERE app_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;->a:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v3}, Lcom/facebook/orca/app/OrcaAppType;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 45
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "format"

    const-string v3, "json"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "queries"

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "fetchAppInfo"

    const-string v2, "GET"

    const-string v3, "method/fql.multiquery"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;->a(Ljava/lang/Void;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v0

    return-object v0
.end method
