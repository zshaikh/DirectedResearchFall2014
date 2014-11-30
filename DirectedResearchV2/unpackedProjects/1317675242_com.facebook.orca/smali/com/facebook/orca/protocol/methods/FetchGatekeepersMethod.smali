.class public Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;
.super Ljava/lang/Object;
.source "FetchGatekeepersMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;Lcom/facebook/orca/protocol/base/ApiResponse;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 48
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlResultHelper;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;-><init>(Lorg/codehaus/jackson/JsonNode;)V

    .line 50
    const-string v0, "gk"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 53
    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 54
    const-string v4, "project_name"

    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    .line 55
    const-string v5, "result"

    invoke-virtual {v3, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonNode;->o()Z

    move-result v3

    .line 56
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;->a(Ljava/lang/Void;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Void;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 27
    const-string v1, "gk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT project_name, result FROM project_gating WHERE project_name IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "messaging"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "messenger_mqtt_android"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "messenger_sms_android"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "messenger_phone_verification_android"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/facebook/orca/common/util/SqlUtil;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 36
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "format"

    const-string v3, "json"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "queries"

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
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
    .line 22
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;->a(Ljava/lang/Void;Lcom/facebook/orca/protocol/base/ApiResponse;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
