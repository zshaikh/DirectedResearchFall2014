.class public Lcom/nativex/monetization/communication/ServerResponseHandler;
.super Ljava/lang/Object;
.source "ServerResponseHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fireRedeemBalanceListener(Lcom/nativex/monetization/communication/RedeemCurrencyData;)V
    .locals 3
    .param p1, "data"    # Lcom/nativex/monetization/communication/RedeemCurrencyData;

    .prologue
    .line 176
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getCurrencyListener()Lcom/nativex/monetization/listeners/CurrencyListenerBase;

    move-result-object v0

    .line 177
    .local v0, "currencyListener":Lcom/nativex/monetization/listeners/CurrencyListenerBase;
    if-nez v0, :cond_0

    .line 178
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Integration error. Currency listener cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    instance-of v1, v0, Lcom/nativex/monetization/listeners/CurrencyListenerV1;

    if-eqz v1, :cond_2

    .line 181
    check-cast v0, Lcom/nativex/monetization/listeners/CurrencyListenerV1;

    .end local v0    # "currencyListener":Lcom/nativex/monetization/listeners/CurrencyListenerBase;
    iget-object v1, p1, Lcom/nativex/monetization/communication/RedeemCurrencyData;->balances:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/nativex/monetization/listeners/CurrencyListenerV1;->onRedeem(Ljava/util/List;)V

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 182
    .restart local v0    # "currencyListener":Lcom/nativex/monetization/listeners/CurrencyListenerBase;
    :cond_2
    instance-of v1, v0, Lcom/nativex/monetization/listeners/CurrencyListenerV2;

    if-eqz v1, :cond_1

    .line 183
    check-cast v0, Lcom/nativex/monetization/listeners/CurrencyListenerV2;

    .end local v0    # "currencyListener":Lcom/nativex/monetization/listeners/CurrencyListenerBase;
    invoke-interface {v0, p1}, Lcom/nativex/monetization/listeners/CurrencyListenerV2;->onRedeem(Lcom/nativex/monetization/communication/RedeemCurrencyData;)V

    goto :goto_0
.end method

.method private getRedeemedBalances(Lcom/nativex/monetization/communication/RedeemCurrencyData;Ljava/util/List;)V
    .locals 10
    .param p1, "data"    # Lcom/nativex/monetization/communication/RedeemCurrencyData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nativex/monetization/communication/RedeemCurrencyData;",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/Receipt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "receipts":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/Receipt;>;"
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 192
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p1, Lcom/nativex/monetization/communication/RedeemCurrencyData;->receipts:Ljava/util/List;

    .line 193
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p1, Lcom/nativex/monetization/communication/RedeemCurrencyData;->balances:Ljava/util/List;

    .line 194
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v2, "balances":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nativex/monetization/business/Balance;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nativex/monetization/business/Receipt;

    .line 197
    .local v4, "receipt":Lcom/nativex/monetization/business/Receipt;
    invoke-virtual {v4}, Lcom/nativex/monetization/business/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 198
    iget-object v6, p1, Lcom/nativex/monetization/communication/RedeemCurrencyData;->allBalances:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/nativex/monetization/business/Receipt;->getPayoutId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nativex/monetization/business/Balance;

    .line 199
    .local v1, "balance":Lcom/nativex/monetization/business/Balance;
    if-eqz v1, :cond_0

    .line 200
    iget-object v6, p1, Lcom/nativex/monetization/communication/RedeemCurrencyData;->receipts:Ljava/util/List;

    invoke-virtual {v4}, Lcom/nativex/monetization/business/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 201
    iget-object v6, p1, Lcom/nativex/monetization/communication/RedeemCurrencyData;->receipts:Ljava/util/List;

    invoke-virtual {v4}, Lcom/nativex/monetization/business/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    invoke-virtual {v1}, Lcom/nativex/monetization/business/Balance;->getExternalCurrencyId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nativex/monetization/business/Balance;

    .line 204
    .local v5, "storedBalance":Lcom/nativex/monetization/business/Balance;
    if-nez v5, :cond_2

    .line 205
    new-instance v5, Lcom/nativex/monetization/business/Balance;

    .end local v5    # "storedBalance":Lcom/nativex/monetization/business/Balance;
    invoke-direct {v5}, Lcom/nativex/monetization/business/Balance;-><init>()V

    .line 206
    .restart local v5    # "storedBalance":Lcom/nativex/monetization/business/Balance;
    const-string v6, "0"

    invoke-virtual {v5, v6}, Lcom/nativex/monetization/business/Balance;->setAmount(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Lcom/nativex/monetization/business/Balance;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nativex/monetization/business/Balance;->setDisplayName(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Lcom/nativex/monetization/business/Balance;->getExternalCurrencyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nativex/monetization/business/Balance;->setExternalCurrencyId(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1}, Lcom/nativex/monetization/business/Balance;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nativex/monetization/business/Balance;->setId(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Lcom/nativex/monetization/business/Balance;->getExternalCurrencyId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_2
    invoke-virtual {v5}, Lcom/nativex/monetization/business/Balance;->getAmount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/nativex/monetization/business/Balance;->getAmount()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nativex/monetization/business/Balance;->setAmount(Ljava/lang/String;)V

    .line 213
    iget-object v6, p1, Lcom/nativex/monetization/communication/RedeemCurrencyData;->allBalances:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nativex/monetization/business/Balance;->getPayoutId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 218
    .end local v1    # "balance":Lcom/nativex/monetization/business/Balance;
    .end local v4    # "receipt":Lcom/nativex/monetization/business/Receipt;
    .end local v5    # "storedBalance":Lcom/nativex/monetization/business/Balance;
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/business/Balance;

    .line 219
    .local v0, "b":Lcom/nativex/monetization/business/Balance;
    iget-object v6, p1, Lcom/nativex/monetization/communication/RedeemCurrencyData;->balances:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    .end local v0    # "b":Lcom/nativex/monetization/business/Balance;
    .end local v2    # "balances":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nativex/monetization/business/Balance;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private handleCreateSessionExternalTracking(Lcom/nativex/monetization/business/SessionResponseData;)V
    .locals 2
    .param p1, "sessionResponse"    # Lcom/nativex/monetization/business/SessionResponseData;

    .prologue
    .line 95
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/nativex/advertiser/ReferralReceiver;->removeReferralParams(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getAppId()I

    move-result v1

    invoke-static {v1, p1}, Lcom/nativex/common/ExternalTrackingManager;->initialize(ILcom/nativex/monetization/business/SessionResponseData;)V

    .line 98
    invoke-static {}, Lcom/nativex/common/ExternalTrackingManager;->start()V

    .line 99
    return-void
.end method

.method private handleCreateSessionResponseData(Lcom/nativex/monetization/business/SessionResponseData;)V
    .locals 1
    .param p1, "sessionResponse"    # Lcom/nativex/monetization/business/SessionResponseData;

    .prologue
    .line 103
    invoke-static {p1}, Lcom/nativex/monetization/manager/SessionManager;->setSessionResponse(Lcom/nativex/monetization/business/SessionResponseData;)V

    .line 104
    invoke-virtual {p1}, Lcom/nativex/monetization/business/SessionResponseData;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/SharedPreferenceManager;->storeW3iDeviceId(Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nativex/common/SharedPreferenceManager;->storeFirstRun(Z)V

    .line 106
    invoke-virtual {p1}, Lcom/nativex/monetization/business/SessionResponseData;->isCurrencyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->setCurrencySupport(Z)V

    .line 107
    invoke-static {}, Lcom/nativex/advertiser/DeviceManager;->updateDeviceId()V

    .line 108
    return-void
.end method

.method private handleCreateSessionStatsD(Lcom/nativex/monetization/business/SessionResponseData;)V
    .locals 2
    .param p1, "sessionResponse"    # Lcom/nativex/monetization/business/SessionResponseData;

    .prologue
    const-string v1, "CreateSession"

    .line 112
    invoke-virtual {p1}, Lcom/nativex/monetization/business/SessionResponseData;->getSdkPerformanceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/StatsDManager;->setUrl(Ljava/lang/String;)V

    .line 113
    const-string v0, "CreateSession"

    invoke-static {v1}, Lcom/nativex/common/StatsDManager;->hasTimestamp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "CreateSession"

    invoke-static {v1}, Lcom/nativex/common/StatsDManager;->recordTime(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method private handleNewBalances(Lcom/nativex/monetization/communication/RedeemCurrencyData;Ljava/util/List;)V
    .locals 4
    .param p1, "data"    # Lcom/nativex/monetization/communication/RedeemCurrencyData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nativex/monetization/communication/RedeemCurrencyData;",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/business/Balance;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "newBalances":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/Balance;>;"
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->loadBalances()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p1, Lcom/nativex/monetization/communication/RedeemCurrencyData;->allBalances:Ljava/util/Map;

    .line 147
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 148
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/business/Balance;

    .line 149
    .local v0, "balance":Lcom/nativex/monetization/business/Balance;
    iget-object v2, p1, Lcom/nativex/monetization/communication/RedeemCurrencyData;->allBalances:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/nativex/monetization/business/Balance;->getPayoutId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    .end local v0    # "balance":Lcom/nativex/monetization/business/Balance;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p1, Lcom/nativex/monetization/communication/RedeemCurrencyData;->allBalances:Ljava/util/Map;

    invoke-static {v2}, Lcom/nativex/common/SharedPreferenceManager;->storeBalances(Ljava/util/Map;)V

    .line 154
    return-void
.end method


# virtual methods
.method public handleCommitSmartOffers(Lcom/nativex/common/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 254
    return-void
.end method

.method public handleCreateSession(Lcom/nativex/common/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p1}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/monetization/manager/JsonParserFactory;->getCreateSessionResponse(Ljava/lang/String;)Lcom/nativex/monetization/business/SessionResponseData;

    move-result-object v1

    .line 71
    .local v1, "sessionResponse":Lcom/nativex/monetization/business/SessionResponseData;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/nativex/monetization/business/SessionResponseData;->getSession()Lcom/nativex/monetization/business/Session;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 72
    invoke-direct {p0, v1}, Lcom/nativex/monetization/communication/ServerResponseHandler;->handleCreateSessionResponseData(Lcom/nativex/monetization/business/SessionResponseData;)V

    .line 73
    invoke-direct {p0, v1}, Lcom/nativex/monetization/communication/ServerResponseHandler;->handleCreateSessionStatsD(Lcom/nativex/monetization/business/SessionResponseData;)V

    .line 74
    invoke-direct {p0, v1}, Lcom/nativex/monetization/communication/ServerResponseHandler;->handleCreateSessionExternalTracking(Lcom/nativex/monetization/business/SessionResponseData;)V

    .line 75
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDownloadManager;->getInstance()Lcom/nativex/monetization/manager/CacheDownloadManager;

    move-result-object v2

    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/manager/CacheDownloadManager;->updateDownloadStatus(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v1}, Lcom/nativex/monetization/business/SessionResponseData;->getCachingFrequency()I

    move-result v2

    if-nez v2, :cond_2

    .line 78
    invoke-static {}, Lcom/nativex/monetization/manager/CacheManager;->getInstance()Lcom/nativex/monetization/manager/CacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nativex/monetization/manager/CacheManager;->stopCaching()V

    .line 83
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/nativex/monetization/business/SessionResponseData;->shouldCheckSmartOffers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-static {}, Lcom/nativex/monetization/smartoffers/SmartOffersManager;->doSmartOffersCheck()V

    .line 91
    .end local v1    # "sessionResponse":Lcom/nativex/monetization/business/SessionResponseData;
    :cond_1
    :goto_1
    return-void

    .line 79
    .restart local v1    # "sessionResponse":Lcom/nativex/monetization/business/SessionResponseData;
    :cond_2
    invoke-virtual {v1}, Lcom/nativex/monetization/business/SessionResponseData;->getCachingFrequency()I

    move-result v2

    if-lez v2, :cond_0

    .line 80
    invoke-static {}, Lcom/nativex/monetization/manager/CacheManager;->getInstance()Lcom/nativex/monetization/manager/CacheManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nativex/monetization/business/SessionResponseData;->getCachingFrequency()I

    move-result v3

    const v4, 0xea60

    mul-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/nativex/monetization/manager/CacheManager;->startCaching(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v1    # "sessionResponse":Lcom/nativex/monetization/business/SessionResponseData;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServerResponseHandler: Unexpected exception caught while handling CreateSession request."

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public handleEndSession(Lcom/nativex/common/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nativex/monetization/manager/SessionManager;->setSessionResponse(Lcom/nativex/monetization/business/SessionResponseData;)V

    .line 121
    invoke-static {}, Lcom/nativex/monetization/manager/CacheManager;->getInstance()Lcom/nativex/monetization/manager/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/manager/CacheManager;->stopCaching()V

    .line 122
    return-void
.end method

.method public handleGetDeviceBalance(Lcom/nativex/common/Response;)Z
    .locals 4
    .param p1, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 127
    :try_start_0
    invoke-virtual {p1}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/monetization/manager/JsonParserFactory;->getAvailableDeviceBalance(Ljava/lang/String;)Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;

    move-result-object v2

    .line 128
    .local v2, "getDeviceBalance":Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;
    if-eqz v2, :cond_0

    .line 129
    new-instance v0, Lcom/nativex/monetization/communication/RedeemCurrencyData;

    invoke-direct {v0}, Lcom/nativex/monetization/communication/RedeemCurrencyData;-><init>()V

    .line 130
    .local v0, "data":Lcom/nativex/monetization/communication/RedeemCurrencyData;
    invoke-virtual {v2}, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;->getBalances()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/nativex/monetization/communication/ServerResponseHandler;->handleNewBalances(Lcom/nativex/monetization/communication/RedeemCurrencyData;Ljava/util/List;)V

    .line 131
    iget-object v3, v0, Lcom/nativex/monetization/communication/RedeemCurrencyData;->allBalances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 132
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nativex/monetization/communication/ServerRequestManager;->redeemCurrency(Lcom/nativex/monetization/communication/RedeemCurrencyData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const/4 v3, 0x1

    .line 140
    .end local v0    # "data":Lcom/nativex/monetization/communication/RedeemCurrencyData;
    .end local v2    # "getDeviceBalance":Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;
    :goto_0
    return v3

    .line 136
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ServerResponseHandler: Unexpected exception caught while handling GetDeviceBalance request."

    invoke-static {v3}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public handleGetOfferCache(Lcom/nativex/common/Response;Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;)V
    .locals 2
    .param p1, "response"    # Lcom/nativex/common/Response;
    .param p2, "listener"    # Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;

    .prologue
    .line 227
    invoke-virtual {p1}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nativex/monetization/manager/JsonParserFactory;->getOfferCache(Ljava/lang/String;)Lcom/nativex/monetization/business/GetOfferCacheResponseData;

    move-result-object v0

    .line 228
    .local v0, "responseData":Lcom/nativex/monetization/business/GetOfferCacheResponseData;
    invoke-interface {p2, v0}, Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;->downloadComplete(Lcom/nativex/monetization/business/GetOfferCacheResponseData;)V

    .line 229
    return-void
.end method

.method public handleGetSmartOfferRules(Lcom/nativex/common/Response;)V
    .locals 2
    .param p1, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-virtual {p1}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nativex/monetization/manager/JsonParserFactory;->getSmartOffersResponse(Ljava/lang/String;)Lcom/nativex/monetization/smartoffers/GetSmartOffersResponseData;

    move-result-object v0

    .line 260
    .local v0, "responseData":Lcom/nativex/monetization/smartoffers/GetSmartOffersResponseData;
    invoke-virtual {v0}, Lcom/nativex/monetization/smartoffers/GetSmartOffersResponseData;->getOffers()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/nativex/monetization/smartoffers/SmartOffersManager;->configureSmartOffers(Ljava/util/List;)V

    .line 262
    .end local v0    # "responseData":Lcom/nativex/monetization/smartoffers/GetSmartOffersResponseData;
    :cond_0
    return-void
.end method

.method public handleRedeemCurrency(Lcom/nativex/common/Response;Lcom/nativex/monetization/communication/RedeemCurrencyData;)V
    .locals 3
    .param p1, "response"    # Lcom/nativex/common/Response;
    .param p2, "balanceData"    # Lcom/nativex/monetization/communication/RedeemCurrencyData;

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p1}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/monetization/manager/JsonParserFactory;->getRedeemDeviceBalance(Ljava/lang/String;)Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;

    move-result-object v1

    .line 161
    .local v1, "redeemDeviceBalanceResponse":Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;->getMessages()Ljava/util/List;

    move-result-object v2

    iput-object v2, p2, Lcom/nativex/monetization/communication/RedeemCurrencyData;->messages:Ljava/util/List;

    .line 163
    invoke-virtual {v1}, Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;->getReceipts()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/nativex/monetization/communication/ServerResponseHandler;->getRedeemedBalances(Lcom/nativex/monetization/communication/RedeemCurrencyData;Ljava/util/List;)V

    .line 164
    invoke-direct {p0, p2}, Lcom/nativex/monetization/communication/ServerResponseHandler;->fireRedeemBalanceListener(Lcom/nativex/monetization/communication/RedeemCurrencyData;)V

    .line 165
    iget-object v2, p2, Lcom/nativex/monetization/communication/RedeemCurrencyData;->allBalances:Ljava/util/Map;

    invoke-static {v2}, Lcom/nativex/common/SharedPreferenceManager;->storeBalances(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "redeemDeviceBalanceResponse":Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServerResponseHandler: Unexpected exception caught while handling RedeemCurrency request."

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public handleRichMedia(Lcom/nativex/common/Response;Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;)V
    .locals 5
    .param p1, "response"    # Lcom/nativex/common/Response;
    .param p2, "listener"    # Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/nativex/common/Response;->getStatusCode()I

    move-result v2

    .line 236
    .local v2, "statusCode":I
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 237
    const/16 v3, 0xcc

    if-ne v2, v3, :cond_1

    .line 238
    const-string v0, "NO AD"

    .line 243
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/monetization/manager/JsonParserFactory;->getRichMedia(Ljava/lang/String;)Lcom/nativex/monetization/business/RichMediaResponseData;

    move-result-object v1

    .line 244
    .local v1, "responseData":Lcom/nativex/monetization/business/RichMediaResponseData;
    if-nez v1, :cond_2

    .line 245
    invoke-virtual {p1}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3, v1}, Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;->downloadComplete(Ljava/lang/String;Ljava/lang/String;Lcom/nativex/monetization/business/RichMediaResponseData;)V

    .line 249
    :goto_1
    return-void

    .line 240
    .end local v1    # "responseData":Lcom/nativex/monetization/business/RichMediaResponseData;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server responded with status code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    .restart local v1    # "responseData":Lcom/nativex/monetization/business/RichMediaResponseData;
    :cond_2
    const/4 v3, 0x0

    invoke-interface {p2, v0, v3, v1}, Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;->downloadComplete(Ljava/lang/String;Ljava/lang/String;Lcom/nativex/monetization/business/RichMediaResponseData;)V

    goto :goto_1
.end method
