.class public Lcom/nativex/monetization/business/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field private deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceId"
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SessionId"
    .end annotation
.end field

.field private sessionString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SessionIdAsString"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 58
    if-eqz p1, :cond_2

    .line 59
    instance-of v0, p1, Lcom/nativex/monetization/business/Session;

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/nativex/monetization/business/Session;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    check-cast p1, Lcom/nativex/monetization/business/Session;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/nativex/monetization/business/Session;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0

    .line 66
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/nativex/monetization/business/Session;->sessionId:Ljava/lang/String;

    check-cast p1, Lcom/nativex/monetization/business/Session;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/nativex/monetization/business/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nativex/monetization/business/Session;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nativex/monetization/business/Session;->sessionString:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nativex/monetization/business/Session;->deviceId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/nativex/monetization/business/Session;->sessionId:Ljava/lang/String;

    .line 43
    return-void
.end method
