.class public Lcom/playhaven/sampleapp/billing/BillingService$CheckBillingSupported;
.super Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/sampleapp/billing/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckBillingSupported"
.end annotation


# instance fields
.field public mProductType:Ljava/lang/String;

.field final synthetic this$0:Lcom/playhaven/sampleapp/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/playhaven/sampleapp/billing/BillingService;Ljava/lang/String;)V
    .locals 1
    .param p2, "itemType"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/playhaven/sampleapp/billing/BillingService$CheckBillingSupported;->this$0:Lcom/playhaven/sampleapp/billing/BillingService;

    .line 202
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;-><init>(Lcom/playhaven/sampleapp/billing/BillingService;I)V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/sampleapp/billing/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/playhaven/sampleapp/billing/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    .line 204
    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->getStartId()I

    move-result v0

    return v0
.end method

.method protected run()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    const-string v4, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v4}, Lcom/playhaven/sampleapp/billing/BillingService$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 209
    .local v1, "request":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/playhaven/sampleapp/billing/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 210
    const-string v4, "ITEM_TYPE"

    iget-object v5, p0, Lcom/playhaven/sampleapp/billing/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    # getter for: Lcom/playhaven/sampleapp/billing/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/playhaven/sampleapp/billing/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 213
    .local v2, "response":Landroid/os/Bundle;
    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 218
    .local v3, "responseCode":I
    sget-object v4, Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;->RESULT_OK:Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;

    invoke-virtual {v4}, Lcom/playhaven/sampleapp/billing/Consts$ResponseCode;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    move v0, v4

    .line 219
    .local v0, "billingSupported":Z
    :goto_0
    iget-object v4, p0, Lcom/playhaven/sampleapp/billing/BillingService$CheckBillingSupported;->mProductType:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/playhaven/sampleapp/billing/ResponseHandler;->checkBillingSupportedResponse(ZLjava/lang/String;)V

    .line 220
    sget-wide v4, Lcom/playhaven/sampleapp/billing/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v4

    .line 218
    .end local v0    # "billingSupported":Z
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runRequest()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/playhaven/sampleapp/billing/BillingService$BillingRequest;->runRequest()Z

    move-result v0

    return v0
.end method
