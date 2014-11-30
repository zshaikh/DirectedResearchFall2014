.class public Lcom/nativex/common/billingtracking/InAppBillingRequest;
.super Lcom/nativex/common/Request;
.source "InAppBillingRequest.java"


# instance fields
.field private inAppBillingJsonRequest:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/nativex/common/Request;-><init>()V

    .line 33
    sget-object v0, Lcom/nativex/common/Request$HTTP_ACTION;->POST:Lcom/nativex/common/Request$HTTP_ACTION;

    invoke-virtual {p0, v0}, Lcom/nativex/common/billingtracking/InAppBillingRequest;->setHttpAction(Lcom/nativex/common/Request$HTTP_ACTION;)V

    .line 34
    const-string v0, "InAppBillingRequest"

    invoke-virtual {p0, v0}, Lcom/nativex/common/billingtracking/InAppBillingRequest;->setRequestType(Ljava/lang/String;)V

    .line 35
    const-string v0, "PublicServices/MobileTrackingApiRestV1.svc/InAppPurchase/Put"

    invoke-static {v0}, Lcom/nativex/common/ServerConfig;->applyConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/common/billingtracking/InAppBillingRequest;->setUrl(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public generateRequest()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppBillingRequest;->inAppBillingJsonRequest:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nativex/common/billingtracking/InAppBillingRequest;->setRequest(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public generateResponse()Lcom/nativex/common/Response;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/nativex/common/billingtracking/InAppBillingResponse;

    invoke-direct {v0}, Lcom/nativex/common/billingtracking/InAppBillingResponse;-><init>()V

    return-object v0
.end method

.method public setJsonData(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/nativex/common/billingtracking/InAppBillingRequest;->inAppBillingJsonRequest:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public shouldExecute()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nativex/common/billingtracking/InAppBillingRequest;->inAppBillingJsonRequest:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
