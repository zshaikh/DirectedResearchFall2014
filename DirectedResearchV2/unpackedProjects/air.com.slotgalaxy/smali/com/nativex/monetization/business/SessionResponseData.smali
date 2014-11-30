.class public Lcom/nativex/monetization/business/SessionResponseData;
.super Ljava/lang/Object;
.source "SessionResponseData.java"


# instance fields
.field private cachingFrequency:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CachingFrequency"
    .end annotation
.end field

.field private checkSmartOffers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CheckSmartOffer"
    .end annotation
.end field

.field private currencyEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsCurrencyEnabled"
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ApiDeviceId"
    .end annotation
.end field

.field private externalTrackingTimeout:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExternalTrackingTimeout"
    .end annotation
.end field

.field private firstRun:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsFirstRun"
    .end annotation
.end field

.field private log:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Log"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Message;",
            ">;"
        }
    .end annotation
.end field

.field private offerwallEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsAfppOfferwallEnabled"
    .end annotation
.end field

.field private sdkPerformanceUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SdkPerformanceUrl"
    .end annotation
.end field

.field private session:Lcom/nativex/monetization/business/Session;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Session"
    .end annotation
.end field

.field private violations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Violations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Violation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->violations:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->messages:Ljava/util/List;

    .line 44
    iput-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->log:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCachingFrequency()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->cachingFrequency:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->cachingFrequency:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalTrackingTimeout()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->externalTrackingTimeout:Ljava/lang/Long;

    return-object v0
.end method

.method public getLog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/LogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->log:Ljava/util/List;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->messages:Ljava/util/List;

    return-object v0
.end method

.method public getSdkPerformanceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->sdkPerformanceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Lcom/nativex/monetization/business/Session;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->session:Lcom/nativex/monetization/business/Session;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->session:Lcom/nativex/monetization/business/Session;

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->session:Lcom/nativex/monetization/business/Session;

    invoke-virtual {v0}, Lcom/nativex/monetization/business/Session;->getSessionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getViolations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Violation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->violations:Ljava/util/List;

    return-object v0
.end method

.method public isCurrencyEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->currencyEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->currencyEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isFirstRun()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->firstRun:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->firstRun:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isOfferwallEnabled()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->offerwallEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setCachingFrequency(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "cachingFrequency"    # Ljava/lang/Integer;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/nativex/monetization/business/SessionResponseData;->cachingFrequency:Ljava/lang/Integer;

    .line 201
    return-void
.end method

.method public setCheckSmartOffers(Z)V
    .locals 1
    .param p1, "shouldCheck"    # Z

    .prologue
    .line 209
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->checkSmartOffers:Ljava/lang/Boolean;

    .line 210
    return-void
.end method

.method public setCurrencyEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "currencyEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/nativex/monetization/business/SessionResponseData;->currencyEnabled:Ljava/lang/Boolean;

    .line 171
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDeviceId"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/nativex/monetization/business/SessionResponseData;->deviceId:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setExternalTrackingTimeout(Ljava/lang/Long;)V
    .locals 0
    .param p1, "externalTrackingTimeout"    # Ljava/lang/Long;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/nativex/monetization/business/SessionResponseData;->externalTrackingTimeout:Ljava/lang/Long;

    .line 180
    return-void
.end method

.method public setFirstRun(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "firstRun"    # Ljava/lang/Boolean;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/nativex/monetization/business/SessionResponseData;->firstRun:Ljava/lang/Boolean;

    .line 189
    return-void
.end method

.method public setLog(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/LogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "log":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/LogItem;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/SessionResponseData;->log:Ljava/util/List;

    .line 98
    return-void
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/Message;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/SessionResponseData;->messages:Ljava/util/List;

    .line 125
    return-void
.end method

.method public setOfferwallEnabled(Z)V
    .locals 1
    .param p1, "offerwallEnabled"    # Z

    .prologue
    .line 81
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->offerwallEnabled:Ljava/lang/Boolean;

    .line 82
    return-void
.end method

.method public setSdkPerformanceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdkPerformanceUrl"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/nativex/monetization/business/SessionResponseData;->sdkPerformanceUrl:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setSession(Lcom/nativex/monetization/business/Session;)V
    .locals 0
    .param p1, "session"    # Lcom/nativex/monetization/business/Session;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/nativex/monetization/business/SessionResponseData;->session:Lcom/nativex/monetization/business/Session;

    .line 107
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->session:Lcom/nativex/monetization/business/Session;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/nativex/monetization/business/Session;

    invoke-direct {v0}, Lcom/nativex/monetization/business/Session;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->session:Lcom/nativex/monetization/business/Session;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->session:Lcom/nativex/monetization/business/Session;

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/business/Session;->setSessionId(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setViolations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Violation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "violations":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/common/Violation;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/SessionResponseData;->violations:Ljava/util/List;

    .line 116
    return-void
.end method

.method public shouldCheckSmartOffers()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->checkSmartOffers:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/business/SessionResponseData;->checkSmartOffers:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
