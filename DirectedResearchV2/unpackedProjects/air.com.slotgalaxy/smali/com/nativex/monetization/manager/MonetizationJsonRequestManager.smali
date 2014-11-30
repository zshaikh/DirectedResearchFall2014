.class public Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;
.super Lcom/nativex/advertiser/JsonRequestManager;
.source "MonetizationJsonRequestManager.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/advertiser/DeviceManager;->getDeviceInstance(Landroid/content/Context;)Lcom/nativex/advertiser/Device;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nativex/advertiser/JsonRequestManager;-><init>(Lcom/nativex/advertiser/Device;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/nativex/advertiser/Device;)V
    .locals 0
    .param p1, "device"    # Lcom/nativex/advertiser/Device;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/nativex/advertiser/JsonRequestManager;-><init>(Lcom/nativex/advertiser/Device;)V

    .line 59
    return-void
.end method

.method public static getAvailableDeviceBalanceRequest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getAvailableDeviceBalanceRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableDeviceBalanceRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 138
    :try_start_0
    new-instance v2, Lcom/nativex/monetization/business/GetDeviceBalanceRequestData;

    invoke-direct {v2}, Lcom/nativex/monetization/business/GetDeviceBalanceRequestData;-><init>()V

    .line 139
    .local v2, "request":Lcom/nativex/monetization/business/GetDeviceBalanceRequestData;
    invoke-static {p0}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getSession(Ljava/lang/String;)Lcom/nativex/monetization/business/Session;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/business/GetDeviceBalanceRequestData;->setSession(Lcom/nativex/monetization/business/Session;)V

    .line 140
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "jsonRequest":Ljava/lang/String;
    move-object v3, v1

    .line 147
    .end local v1    # "jsonRequest":Ljava/lang/String;
    .end local v2    # "request":Lcom/nativex/monetization/business/GetDeviceBalanceRequestData;
    :goto_0
    return-object v3

    .line 143
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MonetizationJsonRequestManager: Unexpected exception caught in getAvailableDeviceBalanceRequest()"

    invoke-static {v3}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getSession(Ljava/lang/String;)Lcom/nativex/monetization/business/Session;
    .locals 1
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Lcom/nativex/monetization/business/Session;

    invoke-direct {v0}, Lcom/nativex/monetization/business/Session;-><init>()V

    .line 153
    .local v0, "session":Lcom/nativex/monetization/business/Session;
    invoke-virtual {v0, p0}, Lcom/nativex/monetization/business/Session;->setSessionId(Ljava/lang/String;)V

    .line 154
    return-object v0
.end method


# virtual methods
.method public getCommitSmartOffersRequest(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/smartoffers/SmartOfferResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/smartoffers/SmartOfferResult;>;"
    const/4 v6, 0x0

    .line 222
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v6

    .line 247
    :goto_0
    return-object v5

    .line 226
    :cond_0
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getSession(Ljava/lang/String;)Lcom/nativex/monetization/business/Session;

    move-result-object v4

    .line 227
    .local v4, "session":Lcom/nativex/monetization/business/Session;
    const/4 v2, 0x0

    .line 228
    .local v2, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nativex/advertiser/DeviceManager;->getDeviceInstance(Landroid/content/Context;)Lcom/nativex/advertiser/Device;

    move-result-object v1

    .line 229
    .local v1, "device":Lcom/nativex/advertiser/Device;
    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v1}, Lcom/nativex/advertiser/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 233
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v6

    .line 235
    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {v4, v2}, Lcom/nativex/monetization/business/Session;->setDeviceId(Ljava/lang/String;)V

    .line 239
    new-instance v0, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequestData;

    invoke-direct {v0}, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequestData;-><init>()V

    .line 240
    .local v0, "data":Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequestData;
    invoke-virtual {v0, v4}, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequestData;->setSession(Lcom/nativex/monetization/business/Session;)V

    .line 241
    invoke-virtual {v0, p1}, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequestData;->setResults(Ljava/util/List;)V

    .line 243
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 244
    .end local v0    # "data":Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequestData;
    .end local v1    # "device":Lcom/nativex/advertiser/Device;
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v4    # "session":Lcom/nativex/monetization/business/Session;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 245
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "MonetizationJsonRequestManager: Unexpected exception caught in getCommitSmartOffersRequest()"

    invoke-static {v5}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    move-object v5, v6

    .line 247
    goto :goto_0
.end method

.method public getCreateSessionRequest()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getAppId()I

    move-result v3

    int-to-long v0, v3

    .line 87
    .local v0, "appId":J
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getPublisherUserId()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "pubUserId":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getCreateSessionRequest(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getCreateSessionRequest(JLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "appId"    # J
    .param p3, "pubUserId"    # Ljava/lang/String;

    .prologue
    .line 95
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nativex/advertiser/NetworkConnectionManager;->getInstance(Landroid/content/Context;)Lcom/nativex/advertiser/NetworkConnectionManager;

    move-result-object v4

    .line 96
    .local v4, "ncm":Lcom/nativex/advertiser/NetworkConnectionManager;
    invoke-virtual {p0}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getDevice()Lcom/nativex/advertiser/Device;

    move-result-object v1

    .line 98
    .local v1, "device":Lcom/nativex/advertiser/Device;
    new-instance v0, Lcom/nativex/monetization/business/CreateSessionRequestData;

    invoke-direct {v0}, Lcom/nativex/monetization/business/CreateSessionRequestData;-><init>()V

    .line 99
    .local v0, "createSessionRequest":Lcom/nativex/monetization/business/CreateSessionRequestData;
    invoke-virtual {p0}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->generateUdidJsonCollection()Lcom/nativex/common/UDIDs;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setUdids(Lcom/nativex/common/UDIDs;)V

    .line 100
    invoke-virtual {v1}, Lcom/nativex/advertiser/Device;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setDeviceGenerationInfo(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Lcom/nativex/advertiser/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setOsVersion(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4}, Lcom/nativex/advertiser/NetworkConnectionManager;->isOnWiFi()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setOnCellular(Ljava/lang/Boolean;)V

    .line 103
    invoke-virtual {v1}, Lcom/nativex/advertiser/Device;->isHacked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setHacked(Ljava/lang/Boolean;)V

    .line 104
    invoke-virtual {v1}, Lcom/nativex/advertiser/Device;->isUsingSdk()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setUsingSDK(Ljava/lang/Boolean;)V

    .line 105
    const-string v5, "5.0.0"

    invoke-virtual {v0, v5}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setSDKVersion(Ljava/lang/String;)V

    .line 106
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setAppId(Ljava/lang/Long;)V

    .line 107
    invoke-virtual {v0, p3}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setPublisherUserId(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Lcom/nativex/advertiser/Device;->getIpAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setClientIp(Ljava/lang/String;)V

    .line 109
    const-string v5, "f4eef032-7c6a-4ab7-b851-78231cf87859"

    invoke-virtual {v0, v5}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setExternalTrackingId(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/nativex/monetization/manager/CacheManager;->getInstance()Lcom/nativex/monetization/manager/CacheManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nativex/monetization/manager/CacheManager;->isOfferCacheAvailable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setOfferCacheAvailable(Ljava/lang/Boolean;)V

    .line 112
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasPreviousSessionId()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getPreviousSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setPreviousSessionId(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->getPreviousSessionEndTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nativex/monetization/business/CreateSessionRequestData;->setPreviousSessionEndTime(Ljava/lang/String;)V

    .line 117
    :cond_0
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "jsonRequest":Ljava/lang/String;
    move-object v5, v3

    .line 123
    .end local v0    # "createSessionRequest":Lcom/nativex/monetization/business/CreateSessionRequestData;
    .end local v1    # "device":Lcom/nativex/advertiser/Device;
    .end local v3    # "jsonRequest":Ljava/lang/String;
    .end local v4    # "ncm":Lcom/nativex/advertiser/NetworkConnectionManager;
    :goto_0
    return-object v5

    .line 119
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "MonetizationJsonRequestManager: Unexpected exception caught in getCreateSessionRequest()"

    invoke-static {v5}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getEndSessionRequest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getEndSessionRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndSessionRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 68
    :try_start_0
    invoke-static {p1}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    .line 82
    :goto_0
    return-object v3

    .line 72
    :cond_0
    new-instance v2, Lcom/nativex/monetization/business/EndSessionRequestData;

    invoke-direct {v2}, Lcom/nativex/monetization/business/EndSessionRequestData;-><init>()V

    .line 73
    .local v2, "request":Lcom/nativex/monetization/business/EndSessionRequestData;
    invoke-virtual {v2, p1}, Lcom/nativex/monetization/business/EndSessionRequestData;->setSessionID(Ljava/lang/String;)V

    .line 75
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "jsonRequest":Ljava/lang/String;
    move-object v3, v1

    .line 77
    goto :goto_0

    .line 78
    .end local v1    # "jsonRequest":Ljava/lang/String;
    .end local v2    # "request":Lcom/nativex/monetization/business/EndSessionRequestData;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MonetizationJsonRequestManager: Unexpected exception caught in getEndSessionRequest()"

    invoke-static {v3}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 82
    goto :goto_0
.end method

.method public getOfferCacheRequest()Ljava/lang/String;
    .locals 6

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/CacheDBManager;->getInstance()Lcom/nativex/monetization/manager/CacheDBManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nativex/monetization/manager/CacheDBManager;->getCacheErrors()Ljava/util/List;

    move-result-object v1

    .line 185
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheErrorData;>;"
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "sessionId":Ljava/lang/String;
    new-instance v3, Lcom/nativex/monetization/business/GetOfferCacheRequestData;

    invoke-direct {v3}, Lcom/nativex/monetization/business/GetOfferCacheRequestData;-><init>()V

    .line 188
    .local v3, "request":Lcom/nativex/monetization/business/GetOfferCacheRequestData;
    invoke-static {v4}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getSession(Ljava/lang/String;)Lcom/nativex/monetization/business/Session;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/nativex/monetization/business/GetOfferCacheRequestData;->setSession(Lcom/nativex/monetization/business/Session;)V

    .line 189
    invoke-virtual {v3, v1}, Lcom/nativex/monetization/business/GetOfferCacheRequestData;->setCacheErrors(Ljava/util/List;)V

    .line 191
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "jsonRequest":Ljava/lang/String;
    move-object v5, v2

    .line 198
    .end local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/business/CacheErrorData;>;"
    .end local v2    # "jsonRequest":Ljava/lang/String;
    .end local v3    # "request":Lcom/nativex/monetization/business/GetOfferCacheRequestData;
    .end local v4    # "sessionId":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 193
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "MonetizationJsonRequestManager: Unexpected exception caught in getOfferCacheRequest()"

    invoke-static {v5}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getRedeemCurrencyRequest(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nativex/monetization/business/Balance;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "balances":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nativex/monetization/business/Balance;>;"
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v4, "payoutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 163
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nativex/monetization/business/Balance;

    .line 164
    .local v0, "balance":Lcom/nativex/monetization/business/Balance;
    invoke-virtual {v0}, Lcom/nativex/monetization/business/Balance;->getPayoutId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/nativex/monetization/business/Balance;->getPayoutId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v0    # "balance":Lcom/nativex/monetization/business/Balance;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "payoutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MonetizationJsonRequestManager: Unexpected exception caught in getRedeemCurrencyRequest()"

    invoke-static {v6}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const/4 v6, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v6

    .line 169
    .restart local v4    # "payoutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    new-instance v5, Lcom/nativex/monetization/business/RedeemDeviceBalanceRequestData;

    invoke-direct {v5}, Lcom/nativex/monetization/business/RedeemDeviceBalanceRequestData;-><init>()V

    .line 170
    .local v5, "request":Lcom/nativex/monetization/business/RedeemDeviceBalanceRequestData;
    invoke-static {p2}, Lcom/nativex/monetization/manager/MonetizationJsonRequestManager;->getSession(Ljava/lang/String;)Lcom/nativex/monetization/business/Session;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nativex/monetization/business/RedeemDeviceBalanceRequestData;->setSession(Lcom/nativex/monetization/business/Session;)V

    .line 171
    invoke-virtual {v5, v4}, Lcom/nativex/monetization/business/RedeemDeviceBalanceRequestData;->setPayoutIds(Ljava/util/List;)V

    .line 172
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .local v3, "jsonRequest":Ljava/lang/String;
    move-object v6, v3

    .line 173
    goto :goto_1
.end method

.method public getSmartOfferesRequest()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->hasSession()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v3

    .line 216
    :goto_0
    return-object v2

    .line 208
    :cond_0
    new-instance v0, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequestData;

    invoke-direct {v0}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequestData;-><init>()V

    .line 209
    .local v0, "data":Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequestData;
    const-string v2, "4"

    invoke-virtual {v0, v2}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequestData;->setPlatformId(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequestData;->setSessionId(Ljava/lang/String;)V

    .line 212
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 213
    .end local v0    # "data":Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequestData;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MonetizationJsonRequestManager: Unexpected exception caught in getSmartOfferesRequest()"

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    move-object v2, v3

    .line 216
    goto :goto_0
.end method
