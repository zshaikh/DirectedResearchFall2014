.class public Lcom/nativex/monetization/manager/JsonParserFactory;
.super Ljava/lang/Object;
.source "JsonParserFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableDeviceBalance(Ljava/lang/String;)Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;
    .locals 3
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "response":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/business/GetDeviceBalanceResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 73
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception caught while deserializing response."

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCreateSessionResponse(Ljava/lang/String;)Lcom/nativex/monetization/business/SessionResponseData;
    .locals 3
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/nativex/monetization/business/SessionResponseData;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "response":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/business/SessionResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 59
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception caught while deserializing response."

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEndSessionResponse(Ljava/lang/String;)Lcom/nativex/monetization/business/EndSessionResponseData;
    .locals 3
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    .line 40
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/nativex/monetization/business/EndSessionResponseData;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "response":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/business/EndSessionResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 45
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception caught while deserializing response."

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getOfferCache(Ljava/lang/String;)Lcom/nativex/monetization/business/GetOfferCacheResponseData;
    .locals 3
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/nativex/monetization/business/GetOfferCacheResponseData;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "response":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/business/GetOfferCacheResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 101
    :goto_0
    return-object v1

    .line 97
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception caught while deserializing response."

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRedeemDeviceBalance(Ljava/lang/String;)Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;
    .locals 3
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "response":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/business/RedeemDeviceBalanceResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 87
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception caught while deserializing response."

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRichMedia(Ljava/lang/String;)Lcom/nativex/monetization/business/RichMediaResponseData;
    .locals 3
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    .line 110
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/nativex/monetization/business/RichMediaResponseData;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "response":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/business/RichMediaResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 116
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception caught while deserializing response."

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 113
    const-string v1, "Cache.DeserializeFailed"

    invoke-static {v1}, Lcom/nativex/common/StatsDManager;->incrementCounter(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSmartOffersResponse(Ljava/lang/String;)Lcom/nativex/monetization/smartoffers/GetSmartOffersResponseData;
    .locals 3
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/nativex/monetization/smartoffers/GetSmartOffersResponseData;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "response":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/smartoffers/GetSmartOffersResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 127
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception caught while deserializing response."

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    const/4 v1, 0x0

    goto :goto_0
.end method
