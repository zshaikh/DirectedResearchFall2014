.class public Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;
.super Lcom/nativex/common/Request;
.source "RedeemCurrencyRequest.java"


# instance fields
.field private balance:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/nativex/monetization/business/Balance;",
            ">;"
        }
    .end annotation
.end field

.field private monetizationJsonRequestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

.field private shouldExecute:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/nativex/common/Request;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->balance:Ljava/util/Collection;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->shouldExecute:Z

    .line 52
    const-string v0, "RedeemCurrencyRequest"

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->setRequestType(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->POST:Lcom/nativex/common/Request$HTTP_ACTION;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->setHttpAction(Lcom/nativex/common/Request$HTTP_ACTION;)V

    .line 54
    const-string v0, "PublicServices/AfppApiRestV1.svc/RedeemDeviceBalanceV2"

    invoke-static {v0}, Lcom/nativex/common/ServerConfig;->applyConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->setUrl(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public generateRequest()V
    .locals 4

    .prologue
    .line 74
    iget-object v1, p0, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->balance:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->shouldExecute:Z

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->monetizationJsonRequestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    if-nez v1, :cond_1

    .line 79
    new-instance v1, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    invoke-direct {v1}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;-><init>()V

    iput-object v1, p0, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->monetizationJsonRequestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->monetizationJsonRequestManager:Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;

    iget-object v2, p0, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->balance:Ljava/util/Collection;

    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getRedeemCurrencyRequest(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "request":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->setRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public generateResponse()Lcom/nativex/common/Response;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/nativex/monetization/communication/responses/RedeemCurrencyResponse;

    invoke-direct {v0}, Lcom/nativex/monetization/communication/responses/RedeemCurrencyResponse;-><init>()V

    return-object v0
.end method

.method protected postExecuteImmediatelyAfter()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "RedeemBalance"

    invoke-static {v0}, Lcom/nativex/common/StatsDManager;->recordTime(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method protected preExecuteJustBefore()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "RedeemBalance"

    invoke-static {v0}, Lcom/nativex/common/StatsDManager;->timestamp(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setDeviceBalance(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nativex/monetization/business/Balance;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "balances":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nativex/monetization/business/Balance;>;"
    iput-object p1, p0, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->balance:Ljava/util/Collection;

    .line 94
    return-void
.end method

.method public shouldExecute()Z
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-boolean v0, p0, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->shouldExecute:Z

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
