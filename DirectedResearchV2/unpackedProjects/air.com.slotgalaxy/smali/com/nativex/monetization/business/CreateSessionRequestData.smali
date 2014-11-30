.class public Lcom/nativex/monetization/business/CreateSessionRequestData;
.super Ljava/lang/Object;
.source "CreateSessionRequestData.java"


# instance fields
.field private advertiserTrackingEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsAdvertiserTrackingEnabled"
    .end annotation
.end field

.field private appId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AppId"
    .end annotation
.end field

.field private clientIp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ClientIp"
    .end annotation
.end field

.field private deviceGenerationInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceGenerationInfo"
    .end annotation
.end field

.field private externalTrackingId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExternalTrackingID"
    .end annotation
.end field

.field private isHacked:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsHacked"
    .end annotation
.end field

.field private isOnWifi:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsOnWifi"
    .end annotation
.end field

.field private isUsingSDK:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsUsingSdk"
    .end annotation
.end field

.field private offerCacheAvailable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsOfferCacheAvailable"
    .end annotation
.end field

.field private osVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OSVersion"
    .end annotation
.end field

.field private previousSessionEndTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PreviousSessionEndTimeUtc"
    .end annotation
.end field

.field private previousSessionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PreviousSessionId"
    .end annotation
.end field

.field private publisherUserId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PublisherUserId"
    .end annotation
.end field

.field private sdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PublisherSDKVersion"
    .end annotation
.end field

.field private udids:Lcom/nativex/common/UDIDs;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UDIDs"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->advertiserTrackingEnabled:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAdvertiserTrackingEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->advertiserTrackingEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAppId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->appId:Ljava/lang/Long;

    return-object v0
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->clientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceGenerationInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->deviceGenerationInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalTrackingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->externalTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousSessionEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->previousSessionEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->previousSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->publisherUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUdids()Lcom/nativex/common/UDIDs;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->udids:Lcom/nativex/common/UDIDs;

    return-object v0
.end method

.method public isHacked()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->isHacked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isOfferCacheAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->offerCacheAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isOnCellular()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->isOnWifi:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isUsingSDK()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->isUsingSDK:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAdvertiserTrackingEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "advertiserTrackingEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->advertiserTrackingEnabled:Ljava/lang/Boolean;

    .line 80
    return-void
.end method

.method public setAppId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/Long;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->appId:Ljava/lang/Long;

    .line 162
    return-void
.end method

.method public setClientIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientIp"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->clientIp:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setDeviceGenerationInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceGenerationInfo"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->deviceGenerationInfo:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setExternalTrackingId(Ljava/lang/String;)V
    .locals 0
    .param p1, "externalTrackingId"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->externalTrackingId:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setHacked(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isHacked"    # Ljava/lang/Boolean;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->isHacked:Ljava/lang/Boolean;

    .line 178
    return-void
.end method

.method public setOfferCacheAvailable(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "offerCacheAvailable"    # Ljava/lang/Boolean;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->offerCacheAvailable:Ljava/lang/Boolean;

    .line 89
    return-void
.end method

.method public setOnCellular(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isOnCellular"    # Ljava/lang/Boolean;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->isOnWifi:Ljava/lang/Boolean;

    .line 194
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->osVersion:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setPreviousSessionEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "previousSessionEndTime"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->previousSessionEndTime:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setPreviousSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "previousSessionId"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->previousSessionId:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setPublisherUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisherUserId"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->publisherUserId:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setSDKVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->sdkVersion:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setUdids(Lcom/nativex/common/UDIDs;)V
    .locals 2
    .param p1, "udids"    # Lcom/nativex/common/UDIDs;

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "UDIDs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->udids:Lcom/nativex/common/UDIDs;

    .line 101
    return-void
.end method

.method public setUsingSDK(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isUsingSDK"    # Ljava/lang/Boolean;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/nativex/monetization/business/CreateSessionRequestData;->isUsingSDK:Ljava/lang/Boolean;

    .line 210
    return-void
.end method
