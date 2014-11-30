.class public Lcom/nativex/monetization/communication/requests/EndSessionRequest;
.super Lcom/nativex/common/Request;
.source "EndSessionRequest.java"


# instance fields
.field private requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nativex/common/Request;-><init>()V

    .line 46
    const-string v0, "EndSession"

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/EndSessionRequest;->setRequestType(Ljava/lang/String;)V

    .line 47
    const-string v0, "PublicServices/MobileTrackingApiRestV1.svc/Session/End/Put"

    invoke-static {v0}, Lcom/nativex/common/ServerConfig;->applyConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/EndSessionRequest;->setUrl(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->POST:Lcom/nativex/common/Request$HTTP_ACTION;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/EndSessionRequest;->setHttpAction(Lcom/nativex/common/Request$HTTP_ACTION;)V

    .line 49
    return-void
.end method


# virtual methods
.method public generateRequest()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/nativex/monetization/communication/requests/EndSessionRequest;->getRequest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/nativex/monetization/communication/requests/EndSessionRequest;->preGenerateRequest()V

    .line 61
    :cond_0
    return-void
.end method

.method public generateResponse()Lcom/nativex/common/Response;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/nativex/monetization/communication/responses/EndSessionResponse;

    invoke-direct {v0}, Lcom/nativex/monetization/communication/responses/EndSessionResponse;-><init>()V

    return-object v0
.end method

.method public preExecute()V
    .locals 0

    .prologue
    .line 82
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->clearSession()V

    .line 83
    return-void
.end method

.method public preGenerateRequest()V
    .locals 3

    .prologue
    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/nativex/monetization/communication/requests/EndSessionRequest;->requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    if-nez v2, :cond_0

    .line 66
    new-instance v2, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    invoke-direct {v2}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;-><init>()V

    iput-object v2, p0, Lcom/nativex/monetization/communication/requests/EndSessionRequest;->requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/nativex/monetization/communication/requests/EndSessionRequest;->requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    invoke-virtual {v2}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getEndSessionRequest()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "request":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nativex/monetization/communication/requests/EndSessionRequest;->setRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "request":Ljava/lang/String;
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EndSessionRequest: Exception caught while generating request"

    invoke-static {v2}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldExecute()Z
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nativex/monetization/communication/requests/EndSessionRequest;->getRequest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
