.class public Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequestData;
.super Ljava/lang/Object;
.source "GetSmartOfferRulesRequestData.java"


# instance fields
.field private platformId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PlatformId"
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SessionId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequestData;->platformId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequestData;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public setPlatformId(Ljava/lang/String;)V
    .locals 0
    .param p1, "platformId"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequestData;->platformId:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequestData;->sessionId:Ljava/lang/String;

    .line 20
    return-void
.end method
