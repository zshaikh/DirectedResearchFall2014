.class public Lcom/nativex/advertiser/AdvertiserJsonRequestManager;
.super Lcom/nativex/advertiser/JsonRequestManager;
.source "AdvertiserJsonRequestManager.java"


# direct methods
.method public constructor <init>(Lcom/nativex/advertiser/Device;)V
    .locals 0
    .param p1, "device"    # Lcom/nativex/advertiser/Device;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/nativex/advertiser/JsonRequestManager;-><init>(Lcom/nativex/advertiser/Device;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getActionTakenRequestBody(I)Ljava/lang/String;
    .locals 5
    .param p1, "appId"    # I

    .prologue
    .line 39
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nativex/advertiser/DeviceManager;->getDeviceInstance(Landroid/content/Context;)Lcom/nativex/advertiser/Device;

    move-result-object v0

    .line 41
    .local v0, "device":Lcom/nativex/advertiser/Device;
    new-instance v3, Lcom/nativex/advertiser/ActionTakenRequestData;

    invoke-direct {v3}, Lcom/nativex/advertiser/ActionTakenRequestData;-><init>()V

    .line 42
    .local v3, "request":Lcom/nativex/advertiser/ActionTakenRequestData;
    invoke-virtual {p0}, Lcom/nativex/advertiser/AdvertiserJsonRequestManager;->generateUdidJsonCollection()Lcom/nativex/common/UDIDs;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nativex/advertiser/ActionTakenRequestData;->setUdids(Lcom/nativex/common/UDIDs;)V

    .line 43
    invoke-virtual {v3, p1}, Lcom/nativex/advertiser/ActionTakenRequestData;->setActionId(I)V

    .line 44
    invoke-virtual {v0}, Lcom/nativex/advertiser/Device;->isHackedAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nativex/advertiser/ActionTakenRequestData;->setIsHacked(Ljava/lang/String;)V

    .line 46
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "jsonRequest":Ljava/lang/String;
    move-object v4, v2

    .line 52
    .end local v0    # "device":Lcom/nativex/advertiser/Device;
    .end local v2    # "jsonRequest":Ljava/lang/String;
    .end local v3    # "request":Lcom/nativex/advertiser/ActionTakenRequestData;
    :goto_0
    return-object v4

    .line 48
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AdvertiserJsonRequestManager: Unexpected exception caught in getActionTakenBody()."

    invoke-static {v4}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const/4 v4, 0x0

    goto :goto_0
.end method
