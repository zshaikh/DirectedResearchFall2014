.class public Lcom/nativex/monetization/communication/requests/CreateSessionRequest;
.super Lcom/nativex/common/Request;
.source "CreateSessionRequest.java"


# instance fields
.field private requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nativex/common/Request;-><init>()V

    .line 46
    const-string v0, "CreateSession"

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/CreateSessionRequest;->setRequestType(Ljava/lang/String;)V

    .line 47
    const-string v0, "PublicServices/MobileTrackingApiRestV1.svc/CreateSessionV2"

    invoke-static {v0}, Lcom/nativex/common/ServerConfig;->applyConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/CreateSessionRequest;->setUrl(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->POST:Lcom/nativex/common/Request$HTTP_ACTION;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/CreateSessionRequest;->setHttpAction(Lcom/nativex/common/Request$HTTP_ACTION;)V

    .line 49
    return-void
.end method


# virtual methods
.method public generateRequest()V
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/nativex/monetization/communication/requests/CreateSessionRequest;->requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    invoke-direct {v1}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;-><init>()V

    iput-object v1, p0, Lcom/nativex/monetization/communication/requests/CreateSessionRequest;->requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/communication/requests/CreateSessionRequest;->requestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    invoke-virtual {v1}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getCreateSessionRequest()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "requestBody":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/CreateSessionRequest;->setRequest(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public generateResponse()Lcom/nativex/common/Response;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/nativex/monetization/communication/responses/CreateSessionResponse;

    invoke-direct {v0}, Lcom/nativex/monetization/communication/responses/CreateSessionResponse;-><init>()V

    return-object v0
.end method

.method protected postExecuteImmediatelyAfter()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "CreateSession"

    invoke-static {v0}, Lcom/nativex/common/StatsDManager;->recordTime(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected preExecuteJustBefore()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lcom/nativex/common/StatsDManager;->timestampCreateSession()V

    .line 54
    return-void
.end method

.method public shouldExecute()Z
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
