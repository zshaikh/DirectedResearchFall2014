.class public Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;
.super Lcom/nativex/common/Request;
.source "GetDeviceBalanceRequest.java"


# instance fields
.field private context:Landroid/content/Context;

.field private currencyListener:Lcom/nativex/monetization/listeners/CurrencyListenerBase;

.field private showMessages:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nativex/common/Request;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;->showMessages:Z

    .line 49
    const-string v0, "GetDeviceBalance"

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;->setRequestType(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->POST:Lcom/nativex/common/Request$HTTP_ACTION;

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;->setHttpAction(Lcom/nativex/common/Request$HTTP_ACTION;)V

    .line 51
    const-string v0, "PublicServices/AfppApiRestV1.svc/GetAvailableDeviceBalanceV2"

    invoke-static {v0}, Lcom/nativex/common/ServerConfig;->applyConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;->setUrl(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public generateRequest()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getAvailableDeviceBalanceRequest()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "request":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;->setRequest(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public generateResponse()Lcom/nativex/common/Response;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/nativex/monetization/communication/responses/GetDeviceBalanceResponse;

    invoke-direct {v0}, Lcom/nativex/monetization/communication/responses/GetDeviceBalanceResponse;-><init>()V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrencyListener()Lcom/nativex/monetization/listeners/CurrencyListenerBase;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;->currencyListener:Lcom/nativex/monetization/listeners/CurrencyListenerBase;

    return-object v0
.end method

.method public getShowMessages()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;->showMessages:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;->context:Landroid/content/Context;

    .line 82
    return-void
.end method

.method public setCurencyListener(Lcom/nativex/monetization/listeners/CurrencyListenerBase;)V
    .locals 0
    .param p1, "listener"    # Lcom/nativex/monetization/listeners/CurrencyListenerBase;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;->currencyListener:Lcom/nativex/monetization/listeners/CurrencyListenerBase;

    .line 73
    return-void
.end method

.method public setShowMessages(Z)V
    .locals 0
    .param p1, "showMessages"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;->showMessages:Z

    .line 91
    return-void
.end method

.method public shouldExecute()Z
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result v0

    return v0
.end method
