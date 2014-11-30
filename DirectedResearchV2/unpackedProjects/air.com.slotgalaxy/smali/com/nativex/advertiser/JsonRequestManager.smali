.class public Lcom/nativex/advertiser/JsonRequestManager;
.super Ljava/lang/Object;
.source "JsonRequestManager.java"


# instance fields
.field private device:Lcom/nativex/advertiser/Device;


# direct methods
.method public constructor <init>(Lcom/nativex/advertiser/Device;)V
    .locals 0
    .param p1, "device"    # Lcom/nativex/advertiser/Device;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/nativex/advertiser/JsonRequestManager;->device:Lcom/nativex/advertiser/Device;

    .line 42
    return-void
.end method

.method public static getInAppBillingBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "storeProductId"    # Ljava/lang/String;
    .param p1, "storeTransactionId"    # Ljava/lang/String;
    .param p2, "storeTransactionTimeUTC"    # Ljava/lang/String;
    .param p3, "costPerItem"    # F
    .param p4, "currencyLocale"    # Ljava/lang/String;
    .param p5, "quantity"    # I
    .param p6, "productTitle"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "publisherSession":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    const-string v3, "InAppBilling: No session"

    invoke-static {v3}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 88
    const/4 v3, 0x0

    .line 106
    :goto_0
    return-object v3

    .line 91
    :cond_0
    const-string v3, "Date"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/Date("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 94
    :cond_1
    new-instance v1, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;

    invoke-direct {v1}, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;-><init>()V

    .line 95
    .local v1, "request":Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;
    invoke-virtual {v1, v0}, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->setPublisherSession(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, p0}, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->setStoreProductId(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, p1}, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->setStoreTransactionId(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, p2}, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->setStoreTransactionTime(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, p3}, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->setCostPerItem(F)V

    .line 100
    invoke-virtual {v1, p4}, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->setCurrencyLocale(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, p5}, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->setQuantity(I)V

    .line 102
    invoke-virtual {v1, p6}, Lcom/nativex/common/billingtracking/InAppPurchaseRequestData;->setProductTitle(Ljava/lang/String;)V

    .line 104
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "requestBody":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BillingBody: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    move-object v3, v2

    .line 106
    goto :goto_0
.end method


# virtual methods
.method protected generateUdidJsonCollection()Lcom/nativex/common/UDIDs;
    .locals 6

    .prologue
    .line 55
    :try_start_0
    new-instance v3, Lcom/nativex/common/UDIDs;

    invoke-direct {v3}, Lcom/nativex/common/UDIDs;-><init>()V

    .line 57
    .local v3, "udids":Lcom/nativex/common/UDIDs;
    const-string v4, "3"

    iget-object v5, p0, Lcom/nativex/advertiser/JsonRequestManager;->device:Lcom/nativex/advertiser/Device;

    invoke-virtual {v5}, Lcom/nativex/advertiser/Device;->getAndroidDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nativex/common/UDIDs;->addUDID(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v4, "4"

    iget-object v5, p0, Lcom/nativex/advertiser/JsonRequestManager;->device:Lcom/nativex/advertiser/Device;

    invoke-virtual {v5}, Lcom/nativex/advertiser/Device;->getAndroidID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nativex/common/UDIDs;->addUDID(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v4, p0, Lcom/nativex/advertiser/JsonRequestManager;->device:Lcom/nativex/advertiser/Device;

    invoke-virtual {v4}, Lcom/nativex/advertiser/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "deviceId":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 63
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->loadStoredAndroidId()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "androidId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/nativex/advertiser/JsonRequestManager;->device:Lcom/nativex/advertiser/Device;

    invoke-virtual {v4}, Lcom/nativex/advertiser/Device;->getAndroidID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    :cond_0
    const-string v4, "7"

    iget-object v5, p0, Lcom/nativex/advertiser/JsonRequestManager;->device:Lcom/nativex/advertiser/Device;

    invoke-virtual {v5}, Lcom/nativex/advertiser/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nativex/common/UDIDs;->addUDID(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v0    # "androidId":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/nativex/advertiser/JsonRequestManager;->device:Lcom/nativex/advertiser/Device;

    invoke-virtual {v4}, Lcom/nativex/advertiser/Device;->getAndroidID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nativex/common/SharedPreferenceManager;->storeAndroidId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 73
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v3    # "udids":Lcom/nativex/common/UDIDs;
    :goto_0
    return-object v4

    .line 70
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 71
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "AdvertiserJsonRequestManager: Unexpected exception caught in generateUdidJsonCollection()."

    invoke-static {v4, v2}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected getDevice()Lcom/nativex/advertiser/Device;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nativex/advertiser/JsonRequestManager;->device:Lcom/nativex/advertiser/Device;

    return-object v0
.end method
