.class public Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;
.super Ljava/lang/Object;
.source "ConfirmPhoneMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/ConfirmPhoneParams;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/ConfirmPhoneParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6

    .prologue
    .line 22
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 23
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "code"

    invoke-virtual {p1}, Lcom/facebook/orca/server/ConfirmPhoneParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "add_to_profile"

    invoke-virtual {p1}, Lcom/facebook/orca/server/ConfirmPhoneParams;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "source"

    const-string v2, "Orca Android"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "requestSmsConfirmationCode"

    const-string v2, "POST"

    const-string v3, "method/user.confirmPhone"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0

    .line 25
    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/facebook/orca/server/ConfirmPhoneParams;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;->a(Lcom/facebook/orca/server/ConfirmPhoneParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/facebook/orca/server/ConfirmPhoneParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;->a(Lcom/facebook/orca/server/ConfirmPhoneParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/server/ConfirmPhoneParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->d()V

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
